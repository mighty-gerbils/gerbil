(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1711709196)
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
    (define t::t
      (let ((_flags64709_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_properties64710_ '((direct-slots:) (system: . #t)))
            (_slot-table64711_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _flags64709_
           '#f
           '#()
           '()
           '#(#f)
           _slot-table64711_
           _properties64710_
           '#f
           '#f))))
    (define class::t
      (let* ((_slots64685_
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
             (_slot-vector64687_ (list->vector (cons '#f _slots64685_)))
             (_slot-table64694_
              (let ((_slot-table64689_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp65950
                       (lambda (_slot64691_ _field64692_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _slot-table64689_
                            _slot64691_
                            _field64692_))
                         (let ((__tmp65951
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _slot64691_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _slot-table64689_
                            __tmp65951
                            _field64692_))))
                      (__tmp65948
                       (let ((__tmp65949
                              (let ()
                                (declare (not safe))
                                (##length _slots64685_))))
                         (declare (not safe))
                         (##iota __tmp65949 '1))))
                  (declare (not safe))
                  (##for-each __tmp65950 _slots64685_ __tmp65948))
                _slot-table64689_))
             (_flags64696_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields64702_
              (list->vector
               (apply append
                      (map (lambda (_g6469764699_) (list _g6469764699_ '5 '#f))
                           (drop _slots64685_ '5)))))
             (_properties64704_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _slots64685_)))
                    (cons (cons 'struct: '#t) '())))
             (_t64706_
              (let ((__tmp65952 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _flags64696_
                 ##type-type
                 _fields64702_
                 __tmp65952
                 _slot-vector64687_
                 _slot-table64694_
                 _properties64704_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t64706_ _t64706_))
        _t64706_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_flags64681_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_properties64682_ '((direct-slots:) (system: . #t)))
            (_slot-table64683_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp65953 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _flags64681_
           '#f
           '#()
           __tmp65953
           '#(#f)
           _slot-table64683_
           _properties64682_
           '#f
           '#f))))
    (define class-type?
      (lambda (_obj64679_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj64679_ 'class))))
    (define class-type=?
      (lambda (_x64676_ _y64677_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _x64676_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation" 'class::t _x64676_)))
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _y64677_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation" 'class::t _y64677_)))
        (let () (declare (not safe)) (__class-type=? _x64676_ _y64677_))))
    (define __class-type=?
      (lambda (_x64672_ _y64673_)
        (let ()
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _x64672_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _y64673_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_type64670_)
        (if (let () (declare (not safe)) (##type? _type64670_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     '##type?
                     _type64670_)))
        (let () (declare (not safe)) (__type-opaque? _type64670_))))
    (define __type-opaque?
      (lambda (_type64667_)
        (let ()
          (let ((__tmp65954
                 (let ((__tmp65955
                        (let ()
                          (declare (not safe))
                          (##type-flags _type64667_))))
                   (declare (not safe))
                   (##fxand __tmp65955 type-flag-opaque))))
            (declare (not safe))
            (##fx= __tmp65954 type-flag-opaque)))))
    (define type-extensible?
      (lambda (_type64665_)
        (if (let () (declare (not safe)) (##type? _type64665_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     '##type?
                     _type64665_)))
        (let () (declare (not safe)) (__type-extensible? _type64665_))))
    (define __type-extensible?
      (lambda (_type64662_)
        (let ()
          (let ((__tmp65956
                 (let ((__tmp65957
                        (let ()
                          (declare (not safe))
                          (##type-flags _type64662_))))
                   (declare (not safe))
                   (##fxand __tmp65957 type-flag-extensible))))
            (declare (not safe))
            (##fx= __tmp65956 type-flag-extensible)))))
    (define class-type-final?
      (lambda (_type64660_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type64660_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _type64660_)))
        (let () (declare (not safe)) (__class-type-final? _type64660_))))
    (define __class-type-final?
      (lambda (_type64657_)
        (let ()
          (let ((__tmp65958
                 (let ((__tmp65959
                        (let ()
                          (declare (not safe))
                          (##type-flags _type64657_))))
                   (declare (not safe))
                   (##fxand __tmp65959 type-flag-extensible))))
            (declare (not safe))
            (##fx= __tmp65958 '0)))))
    (define class-type-struct?
      (lambda (_klass64655_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64655_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass64655_)))
        (let () (declare (not safe)) (__class-type-struct? _klass64655_))))
    (define __class-type-struct?
      (lambda (_klass64652_)
        (let ()
          (let ((__tmp65960
                 (let ((__tmp65961
                        (let ()
                          (declare (not safe))
                          (##type-flags _klass64652_))))
                   (declare (not safe))
                   (##fxand __tmp65961 class-type-flag-struct))))
            (declare (not safe))
            (##fx= __tmp65960 class-type-flag-struct)))))
    (define class-type-sealed?
      (lambda (_klass64650_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64650_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass64650_)))
        (let () (declare (not safe)) (__class-type-sealed? _klass64650_))))
    (define __class-type-sealed?
      (lambda (_klass64647_)
        (let ()
          (let ((__tmp65962
                 (let ((__tmp65963
                        (let ()
                          (declare (not safe))
                          (##type-flags _klass64647_))))
                   (declare (not safe))
                   (##fxand __tmp65963 class-type-flag-sealed))))
            (declare (not safe))
            (##fx= __tmp65962 class-type-flag-sealed)))))
    (define class-type-metaclass?
      (lambda (_klass64645_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64645_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass64645_)))
        (let () (declare (not safe)) (__class-type-metaclass? _klass64645_))))
    (define __class-type-metaclass?
      (lambda (_klass64642_)
        (let ()
          (let ((__tmp65964
                 (let ((__tmp65965
                        (let ()
                          (declare (not safe))
                          (##type-flags _klass64642_))))
                   (declare (not safe))
                   (##fxand __tmp65965 class-type-flag-metaclass))))
            (declare (not safe))
            (##fx= __tmp65964 class-type-flag-metaclass)))))
    (define class-type-system?
      (lambda (_klass64640_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64640_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass64640_)))
        (let () (declare (not safe)) (__class-type-system? _klass64640_))))
    (define __class-type-system?
      (lambda (_klass64637_)
        (let ()
          (let ((__tmp65966
                 (let ((__tmp65967
                        (let ()
                          (declare (not safe))
                          (##type-flags _klass64637_))))
                   (declare (not safe))
                   (##fxand __tmp65967 class-type-flag-system))))
            (declare (not safe))
            (##fx= __tmp65966 class-type-flag-system)))))
    (define make-class-type-descriptor
      (lambda (_type-id64526_
               _type-name64527_
               _type-super64528_
               _precedence-list64529_
               _slot-vector64530_
               _properties64531_
               _constructor64532_
               _slot-table64533_
               _methods64534_)
        (let ()
          (letrec ((_make-props!64537_
                    (lambda (_key64606_)
                      (letrec* ((_ht64608_
                                 (let ()
                                   (declare (not safe))
                                   (make-symbolic-table__% '#f '0)))
                                (_put-slots!64609_
                                 (lambda (_ht64630_ _slots64631_)
                                   (for-each
                                    (lambda (_g6463264634_)
                                      (let ()
                                        (declare (not safe))
                                        (symbolic-table-set!
                                         _ht64630_
                                         _g6463264634_
                                         '#t)))
                                    _slots64631_)))
                                (_put-alist!64610_
                                 (lambda (_ht64619_ _key64620_ _alist64621_)
                                   (let ((_$e64623_
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _key64620_
                                             _alist64621_))))
                                     (if _$e64623_
                                         ((lambda (_g6462564627_)
                                            (let ()
                                              (declare (not safe))
                                              (_put-slots!64609_
                                               _ht64619_
                                               _g6462564627_)))
                                          _$e64623_)
                                         '#!void)))))
                        (let ()
                          (declare (not safe))
                          (_put-alist!64610_
                           _ht64608_
                           _key64606_
                           _properties64531_))
                        (for-each
                         (lambda (_mixin64612_)
                           (let ((_alist64614_
                                  (##structure-ref
                                   _mixin64612_
                                   '9
                                   class::t
                                   '#f)))
                             (if (or (let ()
                                       (declare (not safe))
                                       (agetq__0 'transparent: _alist64614_))
                                     (eq? '#t
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _key64606_
                                             _alist64614_))))
                                 (let ((__tmp65968
                                        (let ()
                                          (declare (not safe))
                                          (class-type-slot-list
                                           _mixin64612_))))
                                   (declare (not safe))
                                   (_put-slots!64609_ _ht64608_ __tmp65968))
                                 (let ()
                                   (declare (not safe))
                                   (_put-alist!64610_
                                    _ht64608_
                                    _key64606_
                                    _alist64614_)))))
                         _precedence-list64529_)
                        _ht64608_))))
            (let* ((_transparent?64539_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'transparent: _properties64531_)))
                   (_all-slots-printable?64544_
                    (let ((_$e64541_ _transparent?64539_))
                      (if _$e64541_
                          _$e64541_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'print: _properties64531_))))))
                   (_printable64546_
                    (if (let ()
                          (declare (not safe))
                          (not _all-slots-printable?64544_))
                        (let ()
                          (declare (not safe))
                          (_make-props!64537_ 'print:))
                        '#f))
                   (_all-slots-equalable?64551_
                    (let ((_$e64548_ _transparent?64539_))
                      (if _$e64548_
                          _$e64548_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'equal: _properties64531_))))))
                   (_equalable64553_
                    (if (let ()
                          (declare (not safe))
                          (not _all-slots-equalable?64551_))
                        (let ()
                          (declare (not safe))
                          (_make-props!64537_ 'equal:))
                        '#f))
                   (_first-new-field64555_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _type-super64528_ 'class))
                        (let ((__tmp65969
                               (##structure-ref
                                _type-super64528_
                                '7
                                class::t
                                '#f)))
                          (declare (not safe))
                          (##vector-length __tmp65969))
                        '1))
                   (_field-info-length64557_
                    (let ((__tmp65970
                           (let ((__tmp65971
                                  (let ()
                                    (declare (not safe))
                                    (##vector-length _slot-vector64530_))))
                             (declare (not safe))
                             (##fx- __tmp65971 _first-new-field64555_))))
                      (declare (not safe))
                      (##fx* '3 __tmp65970)))
                   (_field-info64559_
                    (make-vector _field-info-length64557_ '#f))
                   (_struct?64561_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'struct: _properties64531_)))
                   (_final?64563_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'final: _properties64531_)))
                   (_metaclass64571_
                    (let ((_metaclass6456464566_
                           (let ()
                             (declare (not safe))
                             (agetq__0 'metaclass: _properties64531_))))
                      (if _metaclass6456464566_
                          (let ((_metaclass64569_ _metaclass6456464566_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _metaclass64569_
                                   'class))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (error '"metaclass is not a class type"
                                         'class:
                                         _type-id64526_
                                         'metaclass:
                                         _metaclass64569_)))
                            _metaclass64569_)
                          '#f)))
                   (_system?64573_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'system: _properties64531_)))
                   (_opaque?64578_
                    (let ((_$e64575_
                           (let ()
                             (declare (not safe))
                             (not _all-slots-equalable?64551_))))
                      (if _$e64575_
                          _$e64575_
                          (if _type-super64528_
                              (let ()
                                (declare (not safe))
                                (type-opaque? _type-super64528_))
                              '#f))))
                   (_type-flags64580_
                    (let ((__tmp65976
                           (if _final?64563_ '0 type-flag-extensible))
                          (__tmp65975 (if _opaque?64578_ type-flag-opaque '0))
                          (__tmp65974
                           (if _struct?64561_ class-type-flag-struct '0))
                          (__tmp65973
                           (if _metaclass64571_ class-type-flag-metaclass '0))
                          (__tmp65972
                           (if _system?64573_ class-type-flag-system '0)))
                      (declare (not safe))
                      (##fxior type-flag-id
                               type-flag-concrete
                               __tmp65976
                               __tmp65975
                               __tmp65974
                               __tmp65973
                               __tmp65972)))
                   (_precedence-list64587_
                    (let ((_$e64582_ (memq t::t _precedence-list64529_)))
                      (if _$e64582_
                          ((lambda (_tail64585_)
                             (if (let ((__tmp65977 (cdr _tail64585_)))
                                   (declare (not safe))
                                   (null? __tmp65977))
                                 _precedence-list64529_
                                 (let ()
                                   (declare (not safe))
                                   (error '"BUG: t::t is not last in the precedence list"
                                          'precedence-list:
                                          _precedence-list64529_))))
                           _$e64582_)
                          (let ((__tmp65978 (cons t::t '())))
                            (declare (not safe))
                            (##append _precedence-list64529_ __tmp65978))))))
              (let _loop64590_ ((_i64592_ _first-new-field64555_)
                                (_j64593_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _j64593_ _field-info-length64557_))
                    (let* ((_slot64595_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _slot-vector64530_ _i64592_)))
                           (_flags64603_
                            (if _transparent?64539_
                                '0
                                (let ((__tmp65980
                                       (if (or _all-slots-printable?64544_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _printable64546_
                                                  _slot64595_
                                                  '#f)))
                                           '0
                                           '1))
                                      (__tmp65979
                                       (if (or _all-slots-equalable?64551_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _equalable64553_
                                                  _slot64595_
                                                  '#f)))
                                           '0
                                           '4)))
                                  (declare (not safe))
                                  (##fxior __tmp65980 __tmp65979)))))
                      (vector-set! _field-info64559_ _j64593_ _slot64595_)
                      (vector-set!
                       _field-info64559_
                       (let () (declare (not safe)) (##fx+ _j64593_ '1))
                       _flags64603_)
                      (let ((__tmp65982
                             (let () (declare (not safe)) (##fx+ _i64592_ '1)))
                            (__tmp65981
                             (let ()
                               (declare (not safe))
                               (##fx+ _j64593_ '3))))
                        (declare (not safe))
                        (_loop64590_ __tmp65982 __tmp65981)))
                    '#!void))
              (if _metaclass64571_
                  (let ()
                    (declare (not safe))
                    (make-instance
                     _metaclass64571_
                     _type-id64526_
                     _type-name64527_
                     _type-flags64580_
                     _type-super64528_
                     _field-info64559_
                     _precedence-list64587_
                     _slot-vector64530_
                     _slot-table64533_
                     _properties64531_
                     _constructor64532_
                     _methods64534_))
                  (let ()
                    (declare (not safe))
                    (##structure
                     class::t
                     _type-id64526_
                     _type-name64527_
                     _type-flags64580_
                     _type-super64528_
                     _field-info64559_
                     _precedence-list64587_
                     _slot-vector64530_
                     _slot-table64533_
                     _properties64531_
                     _constructor64532_
                     _methods64534_))))))))
    (define class-type-id
      (lambda (_klass64524_) (##structure-ref _klass64524_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_klass64522_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64522_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass64519_ _val64520_)
        (##structure-set! _klass64519_ _val64520_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_klass64514_ _val64516_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64514_
           _val64516_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass64512_) (##structure-ref _klass64512_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_klass64510_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64510_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass64507_ _val64508_)
        (##structure-set! _klass64507_ _val64508_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_klass64502_ _val64504_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64502_
           _val64504_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_klass64500_)
        (##structure-ref _klass64500_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_klass64498_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64498_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass64495_ _val64496_)
        (##structure-set! _klass64495_ _val64496_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_klass64490_ _val64492_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64490_
           _val64492_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_klass64488_)
        (##structure-ref _klass64488_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_klass64486_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64486_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass64483_ _val64484_)
        (##structure-set! _klass64483_ _val64484_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_klass64478_ _val64480_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64478_
           _val64480_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_klass64476_)
        (##structure-ref _klass64476_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_klass64474_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64474_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass64471_ _val64472_)
        (##structure-set! _klass64471_ _val64472_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_klass64466_ _val64468_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64466_
           _val64468_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass64464_)
        (##structure-ref _klass64464_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_klass64462_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass64462_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass64459_ _val64460_)
        (##structure-set!
         _klass64459_
         _val64460_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_klass64454_ _val64456_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64454_
           _val64456_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass64452_)
        (##structure-ref _klass64452_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_klass64450_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64450_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass64447_ _val64448_)
        (##structure-set! _klass64447_ _val64448_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_klass64442_ _val64444_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64442_
           _val64444_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass64440_)
        (##structure-ref _klass64440_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_klass64438_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64438_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass64435_ _val64436_)
        (##structure-set! _klass64435_ _val64436_ '8 class::t 'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_klass64430_ _val64432_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64430_
           _val64432_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass64428_)
        (##structure-ref _klass64428_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_klass64426_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64426_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass64423_ _val64424_)
        (##structure-set! _klass64423_ _val64424_ '9 class::t 'properties)))
    (define &class-type-properties-set!
      (lambda (_klass64418_ _val64420_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64418_
           _val64420_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass64416_)
        (##structure-ref _klass64416_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_klass64414_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64414_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass64411_ _val64412_)
        (##structure-set! _klass64411_ _val64412_ '10 class::t 'constructor)))
    (define &class-type-constructor-set!
      (lambda (_klass64406_ _val64408_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64406_
           _val64408_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass64404_)
        (##structure-ref _klass64404_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_klass64402_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64402_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass64399_ _val64400_)
        (##structure-set! _klass64399_ _val64400_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_klass64394_ _val64396_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64394_
           _val64396_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass64392_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64392_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass64392_)))
        (let () (declare (not safe)) (__class-type-slot-list _klass64392_))))
    (define __class-type-slot-list
      (lambda (_klass64389_)
        (let ()
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass64389_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_klass64387_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64387_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass64387_)))
        (let () (declare (not safe)) (__class-type-field-count _klass64387_))))
    (define __class-type-field-count
      (lambda (_klass64384_)
        (let ()
          (let ((__tmp65983
                 (let ((__tmp65984
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _klass64384_
                           '7
                           '#f
                           '#f))))
                   (declare (not safe))
                   (##vector-length __tmp65984))))
            (declare (not safe))
            (##fx- __tmp65983 '1)))))
    (define class-type-seal!
      (lambda (_klass64382_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64382_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass64382_)))
        (let () (declare (not safe)) (__class-type-seal! _klass64382_))))
    (define __class-type-seal!
      (lambda (_klass64379_)
        (let ()
          (let ((__tmp65985
                 (let ((__tmp65986
                        (let ()
                          (declare (not safe))
                          (##type-flags _klass64379_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp65986))))
            (declare (not safe))
            (##unchecked-structure-set!
             _klass64379_
             __tmp65985
             '3
             class::t
             class-type-seal!)))))
    (define substruct?
      (lambda (_maybe-sub-struct64376_ _maybe-super-struct64377_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _maybe-sub-struct64376_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _maybe-sub-struct64376_)))
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _maybe-super-struct64377_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _maybe-super-struct64377_)))
        (let ()
          (declare (not safe))
          (__substruct? _maybe-sub-struct64376_ _maybe-super-struct64377_))))
    (define __substruct?
      (lambda (_maybe-sub-struct64366_ _maybe-super-struct64367_)
        (let ()
          (let ((_maybe-super-struct-id64370_
                 (let ()
                   (declare (not safe))
                   (##type-id _maybe-super-struct64367_))))
            (let _lp64372_ ((_super-struct64374_ _maybe-sub-struct64366_))
              (if (let () (declare (not safe)) (not _super-struct64374_))
                  '#f
                  (if (eq? _maybe-super-struct-id64370_
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct64374_)))
                      '#t
                      (let ((__tmp65987
                             (let ()
                               (declare (not safe))
                               (##type-super _super-struct64374_))))
                        (declare (not safe))
                        (_lp64372_ __tmp65987)))))))))
    (define base-struct/1
      (lambda (_klass64364_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64364_ 'class))
            (if (let () (declare (not safe)) (class-type-struct? _klass64364_))
                _klass64364_
                (let () (declare (not safe)) (##type-super _klass64364_)))
            (if (let () (declare (not safe)) (not _klass64364_))
                '#f
                (let ()
                  (declare (not safe))
                  (error '"not a class or false" _klass64364_))))))
    (define base-struct/2
      (lambda (_klass164352_ _klass264353_)
        (let ((_s164355_
               (let () (declare (not safe)) (base-struct/1 _klass164352_)))
              (_s264356_
               (let () (declare (not safe)) (base-struct/1 _klass264353_))))
          (if (or (let () (declare (not safe)) (not _s164355_))
                  (and _s264356_
                       (let ()
                         (declare (not safe))
                         (substruct? _s164355_ _s264356_))))
              _s264356_
              (if (or (let () (declare (not safe)) (not _s264356_))
                      (and _s164355_
                           (let ()
                             (declare (not safe))
                             (substruct? _s264356_ _s164355_))))
                  _s164355_
                  (let ()
                    (declare (not safe))
                    (error '"bad mixin: incompatible struct bases"
                           _klass164352_
                           _klass264353_
                           _s164355_
                           _s264356_)))))))
    (define base-struct/list
      (lambda (_all-supers64236_)
        (let* ((_all-supers6423764262_ _all-supers64236_)
               (_E6424264266_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _all-supers6423764262_)))))
          (let ((_K6426064349_ (lambda () '#f))
                (_K6425764335_
                 (lambda (_x64333_)
                   (let () (declare (not safe)) (base-struct/1 _x64333_))))
                (_K6425264312_
                 (lambda (_y64309_ _x64310_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x64310_ _y64309_))))
                (_K6424364273_
                 (lambda (_y64270_ _x64271_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _x64271_ _y64270_)))))
            (let* ((___match6594265943_
                    (lambda (_hd6424464276_ _tl6424564278_)
                      (let ((_x64281_ _hd6424464276_))
                        (letrec ((_splice-rest6424764283_
                                  (lambda (_rest6425164290_ _y64292_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6425164290_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6424364273_ _y64292_ _x64281_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6424264266_)))))
                                 (_splice-try6424964285_
                                  (lambda (_hd6425064294_
                                           _rest6425164296_
                                           _y6424664297_)
                                    (let ((_y64300_ _hd6425064294_))
                                      (let ((__tmp65989
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6425164296_)))
                                            (__tmp65988
                                             (cons _y64300_ _y6424664297_)))
                                        (declare (not safe))
                                        (_splice-loop6424864287_
                                         __tmp65989
                                         __tmp65988)))))
                                 (_splice-loop6424864287_
                                  (lambda (_rest6425164302_ _y6424664303_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6425164302_))
                                        (let ((__tmp65990
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6425164302_))))
                                          (declare (not safe))
                                          (_splice-try6424964285_
                                           __tmp65990
                                           _rest6425164302_
                                           _y6424664303_))
                                        (let ((__tmp65991
                                               (reverse _y6424664303_)))
                                          (declare (not safe))
                                          (_splice-rest6424764283_
                                           _rest6425164302_
                                           __tmp65991))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6424864287_ _tl6424564278_ '()))))))
                   (_try-match6423964345_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6423764262_))
                          (let ((_tl6425964340_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6423764262_)))
                                (_hd6425864338_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6423764262_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6425964340_))
                                (let ((_x64343_ _hd6425864338_))
                                  (declare (not safe))
                                  (base-struct/1 _x64343_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6425964340_))
                                    (let ((_tl6425664324_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6425964340_)))
                                          (_hd6425564322_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6425964340_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6425664324_))
                                          (let ((_x64320_ _hd6425864338_)
                                                (_y64327_ _hd6425564322_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6425264312_
                                               _y64327_
                                               _x64320_)))
                                          (___match6594265943_
                                           _hd6425864338_
                                           _tl6425964340_)))
                                    (___match6594265943_
                                     _hd6425864338_
                                     _tl6425964340_))))
                          (let () (declare (not safe)) (_E6424264266_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6423764262_))
                  (let () (declare (not safe)) (_K6426064349_))
                  (let () (declare (not safe)) (_try-match6423964345_))))))))
    (define base-struct
      (lambda _all-supers64234_
        (let () (declare (not safe)) (base-struct/list _all-supers64234_))))
    (define find-super-constructor
      (lambda (_super64186_)
        (let _lp64188_ ((_rest64190_ _super64186_) (_constructor64191_ '#f))
          (let* ((_rest6419264200_ _rest64190_)
                 (_else6419464208_ (lambda () _constructor64191_))
                 (_K6419664222_
                  (lambda (_rest64211_ _hd64212_)
                    (let ((_$e64214_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd64212_
                              '10
                              '#f
                              '#f))))
                      (if _$e64214_
                          ((lambda (_xconstructor64217_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor64191_))
                                     (eq? _constructor64191_
                                          _xconstructor64217_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp64188_ _rest64211_ _xconstructor64217_))
                                 (let ()
                                   (declare (not safe))
                                   (error '"conflicting implicit constructors"
                                          _constructor64191_
                                          _xconstructor64217_))))
                           _$e64214_)
                          (let ()
                            (declare (not safe))
                            (_lp64188_ _rest64211_ _constructor64191_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6419264200_))
                (let ((_hd6419764225_
                       (let () (declare (not safe)) (##car _rest6419264200_)))
                      (_tl6419864227_
                       (let () (declare (not safe)) (##cdr _rest6419264200_))))
                  (let* ((_hd64230_ _hd6419764225_)
                         (_rest64232_ _tl6419864227_))
                    (declare (not safe))
                    (_K6419664222_ _rest64232_ _hd64230_)))
                (let () (declare (not safe)) (_else6419464208_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list64162_ _direct-slots64163_)
        (let* ((_next-slot64165_ '1)
               (_slot-table64167_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots64169_ '(__class))
               (_process-slot64173_
                (lambda (_slot64171_)
                  (if (let () (declare (not safe)) (symbol? _slot64171_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"invalid slot name" _slot64171_)))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _slot-table64167_
                              _slot64171_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table64167_
                           _slot64171_
                           _next-slot64165_))
                        (let ((__tmp65992
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _slot64171_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table64167_
                           __tmp65992
                           _next-slot64165_))
                        (set! _r-slots64169_ (cons _slot64171_ _r-slots64169_))
                        (set! _next-slot64165_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot64165_ '1))))
                      '#!void)))
               (_process-slots64179_
                (lambda (_g6417464176_)
                  (for-each _process-slot64173_ _g6417464176_))))
          (let ((__tmp65994
                 (lambda (_mixin64182_)
                   (let ((__tmp65995
                          (let ((__tmp65996
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _mixin64182_
                                    '9
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (__agetq 'direct-slots: __tmp65996 '()))))
                     (declare (not safe))
                     (_process-slots64179_ __tmp65995))))
                (__tmp65993 (reverse _class-precedence-list64162_)))
            (declare (not safe))
            (##for-each __tmp65994 __tmp65993))
          (let ()
            (declare (not safe))
            (_process-slots64179_ _direct-slots64163_))
          (let ((_slot-vector64184_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _r-slots64169_)))))
            (values _slot-vector64184_ _slot-table64167_)))))
    (define make-class-type
      (lambda (_id64155_
               _name64156_
               _direct-supers64157_
               _direct-slots64158_
               _properties64159_
               _constructor64160_)
        (if (let () (declare (not safe)) (symbol? _id64155_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _id64155_)))
        (if (let () (declare (not safe)) (symbol? _name64156_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _name64156_)))
        (if (let () (declare (not safe)) (list? _direct-supers64157_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'list::t
                     _direct-supers64157_)))
        (if (let () (declare (not safe)) (list? _direct-slots64158_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'list::t
                     _direct-slots64158_)))
        (if (let () (declare (not safe)) (list? _properties64159_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'list::t
                     _properties64159_)))
        (let ()
          (declare (not safe))
          (__make-class-type
           _id64155_
           _name64156_
           _direct-supers64157_
           _direct-slots64158_
           _properties64159_
           _constructor64160_))))
    (define __make-class-type
      (lambda (_id64073_
               _name64074_
               _direct-supers64075_
               _direct-slots64076_
               _properties64077_
               _constructor64078_)
        (let ()
          (let ((_$e64084_
                 (let ((__tmp65997
                        (lambda (_$obj64081_)
                          (let ((__tmp65998
                                 (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _$obj64081_
                                    'class))))
                            (declare (not safe))
                            (not __tmp65998)))))
                   (declare (not safe))
                   (__find __tmp65997 _direct-supers64075_))))
            (if _$e64084_
                ((lambda (_g6408664088_)
                   (let ()
                     (declare (not safe))
                     (error '"Illegal super class; not a class descriptor"
                            _g6408664088_)))
                 _$e64084_)
                (let ((_$e64091_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final? _direct-supers64075_))))
                  (if _$e64091_
                      ((lambda (_g6409364095_)
                         (let ()
                           (declare (not safe))
                           (error '"Cannot extend final class" _g6409364095_)))
                       _$e64091_)
                      '#!void))))
          (let ((_g65999_
                 (let ()
                   (declare (not safe))
                   (compute-precedence-list _direct-supers64075_))))
            (begin
              (let ((_g66000_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g65999_)
                           (##vector-length _g65999_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g66000_ 2)))
                    (error "Context expects 2 values" _g66000_)))
              (let ((_precedence-list64098_
                     (let () (declare (not safe)) (##vector-ref _g65999_ 0)))
                    (_struct-super64099_
                     (let () (declare (not safe)) (##vector-ref _g65999_ 1))))
                (let ((_g66001_
                       (let ()
                         (declare (not safe))
                         (compute-class-slots
                          _precedence-list64098_
                          _direct-slots64076_))))
                  (begin
                    (let ((_g66002_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g66001_)
                                 (##vector-length _g66001_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g66002_ 2)))
                          (error "Context expects 2 values" _g66002_)))
                    (let ((_slot-vector64101_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g66001_ 0)))
                          (_slot-table64102_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g66001_ 1))))
                      (let* ((_properties64104_
                              (cons (cons 'direct-slots: _direct-slots64076_)
                                    (cons (cons 'direct-supers:
                                                _direct-supers64075_)
                                          _properties64077_)))
                             (_constructor*64109_
                              (let ((_$e64106_ _constructor64078_))
                                (if _$e64106_
                                    _$e64106_
                                    (let ()
                                      (declare (not safe))
                                      (find-super-constructor
                                       _direct-supers64075_)))))
                             (_precedence-list64152_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0 'system: _properties64104_))
                                      (memq object::t _precedence-list64098_))
                                  _precedence-list64098_
                                  (let _loop64114_ ((_tail64116_
                                                     _precedence-list64098_)
                                                    (_head64117_ '()))
                                    (let* ((_tail6411864126_ _tail64116_)
                                           (_else6412064134_
                                            (lambda ()
                                              (let ((__tmp66003
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp66003
                                                 _head64117_))))
                                           (_K6412264140_
                                            (lambda (_rest64137_ _hd64138_)
                                              (if (eq? _hd64138_ t::t)
                                                  (let ((__tmp66004
                                                         (cons object::t
                                                               _tail64116_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp66004
                                                     _head64117_))
                                                  (let ((__tmp66005
                                                         (cons _hd64138_
                                                               _head64117_)))
                                                    (declare (not safe))
                                                    (_loop64114_
                                                     _rest64137_
                                                     __tmp66005))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tail6411864126_))
                                          (let ((_hd6412364143_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tail6411864126_)))
                                                (_tl6412464145_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tail6411864126_))))
                                            (let* ((_hd64148_ _hd6412364143_)
                                                   (_rest64150_
                                                    _tl6412464145_))
                                              (declare (not safe))
                                              (_K6412264140_
                                               _rest64150_
                                               _hd64148_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else6412064134_))))))))
                        (let ()
                          (declare (not safe))
                          (make-class-type-descriptor
                           _id64073_
                           _name64074_
                           _struct-super64099_
                           _precedence-list64152_
                           _slot-vector64101_
                           _properties64104_
                           _constructor*64109_
                           _slot-table64102_
                           '#f))))))))))))
    (define class-precedence-list
      (lambda (_klass64070_)
        (let ()
          (cons _klass64070_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass64070_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_direct-supers64068_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers64068_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass64066_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64066_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass64066_)))
        (let () (declare (not safe)) (__make-class-predicate _klass64066_))))
    (define __make-class-predicate
      (lambda (_klass64049_)
        (let ()
          (let ((_tid64052_
                 (let () (declare (not safe)) (##type-id _klass64049_))))
            (if (let ()
                  (declare (not safe))
                  (__class-type-final? _klass64049_))
                (lambda (_g6405364055_)
                  (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     _g6405364055_
                     _tid64052_)))
                (if (let ()
                      (declare (not safe))
                      (__class-type-struct? _klass64049_))
                    (lambda (_g6405764059_)
                      (let ()
                        (declare (not safe))
                        (##structure-instance-of? _g6405764059_ _tid64052_)))
                    (lambda (_g6406164063_)
                      (let ()
                        (declare (not safe))
                        (__class-instance? _klass64049_ _g6406164063_)))))))))
    (define make-class-slot-accessor
      (lambda (_klass64046_ _slot64047_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64046_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass64046_)))
        (if (let () (declare (not safe)) (symbol? _slot64047_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _slot64047_)))
        (let ()
          (declare (not safe))
          (__make-class-slot-accessor _klass64046_ _slot64047_))))
    (define __make-class-slot-accessor
      (lambda (_klass64036_ _slot64037_)
        (let ()
          (let ((_field64040_
                 (let ((__tmp66006
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _klass64036_
                           '8
                           '#f
                           '#f))))
                   (declare (not safe))
                   (symbolic-table-ref __tmp66006 _slot64037_ '#f))))
            (if (let () (declare (not safe)) (not _field64040_))
                (let ()
                  (declare (not safe))
                  (error '"unknown slot"
                         'class:
                         _klass64036_
                         'slot:
                         _slot64037_))
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _klass64036_))
                    (let ()
                      (declare (not safe))
                      (make-final-slot-accessor
                       _klass64036_
                       _slot64037_
                       _field64040_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _klass64036_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-accessor
                           _klass64036_
                           _slot64037_
                           _field64040_))
                        (if (let ((_strukt64043_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _klass64036_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _strukt64043_
                                      'class))
                                   (let ((__tmp66007
                                          (let ((__tmp66008
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _strukt64043_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp66008))))
                                     (declare (not safe))
                                     (##fx< _field64040_ __tmp66007))))
                            (let ()
                              (declare (not safe))
                              (make-struct-subclass-slot-accessor
                               _klass64036_
                               _slot64037_
                               _field64040_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-accessor
                               _klass64036_
                               _slot64037_
                               _field64040_))))))))))
    (define make-class-slot-mutator
      (lambda (_klass64033_ _slot64034_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64033_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass64033_)))
        (if (let () (declare (not safe)) (symbol? _slot64034_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _slot64034_)))
        (let ()
          (declare (not safe))
          (__make-class-slot-mutator _klass64033_ _slot64034_))))
    (define __make-class-slot-mutator
      (lambda (_klass64023_ _slot64024_)
        (let ()
          (let ((_field64027_
                 (let ((__tmp66009
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _klass64023_
                           '8
                           '#f
                           '#f))))
                   (declare (not safe))
                   (symbolic-table-ref __tmp66009 _slot64024_ '#f))))
            (if (let () (declare (not safe)) (not _field64027_))
                (let ()
                  (declare (not safe))
                  (error '"unknown slot"
                         'class:
                         _klass64023_
                         'slot:
                         _slot64024_))
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _klass64023_))
                    (let ()
                      (declare (not safe))
                      (make-final-slot-mutator
                       _klass64023_
                       _slot64024_
                       _field64027_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _klass64023_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-mutator
                           _klass64023_
                           _slot64024_
                           _field64027_))
                        (if (let ((_strukt64030_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _klass64023_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _strukt64030_
                                      'class))
                                   (let ((__tmp66010
                                          (let ((__tmp66011
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _strukt64030_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp66011))))
                                     (declare (not safe))
                                     (##fx< _field64027_ __tmp66010))))
                            (let ()
                              (declare (not safe))
                              (make-struct-subclass-slot-mutator
                               _klass64023_
                               _slot64024_
                               _field64027_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-mutator
                               _klass64023_
                               _slot64024_
                               _field64027_))))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass64020_ _slot64021_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64020_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass64020_)))
        (if (let () (declare (not safe)) (symbol? _slot64021_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _slot64021_)))
        (let ()
          (declare (not safe))
          (__make-class-slot-unchecked-accessor _klass64020_ _slot64021_))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_klass64010_ _slot64011_)
        (let ()
          (let ((_field64014_
                 (let ((__tmp66012
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _klass64010_
                           '8
                           '#f
                           '#f))))
                   (declare (not safe))
                   (symbolic-table-ref __tmp66012 _slot64011_ '#f))))
            (if (let () (declare (not safe)) (not _field64014_))
                (let ()
                  (declare (not safe))
                  (error '"unknown slot"
                         'class:
                         _klass64010_
                         'slot:
                         _slot64011_))
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _klass64010_))
                    (let ()
                      (declare (not safe))
                      (make-struct-slot-unchecked-accessor
                       _klass64010_
                       _slot64011_
                       _field64014_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _klass64010_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-unchecked-accessor
                           _klass64010_
                           _slot64011_
                           _field64014_))
                        (if (let ((_strukt64017_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _klass64010_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _strukt64017_
                                      'class))
                                   (let ((__tmp66013
                                          (let ((__tmp66014
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _strukt64017_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp66014))))
                                     (declare (not safe))
                                     (##fx< _field64014_ __tmp66013))))
                            (let ()
                              (declare (not safe))
                              (make-struct-slot-unchecked-accessor
                               _klass64010_
                               _slot64011_
                               _field64014_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-unchecked-accessor
                               _klass64010_
                               _slot64011_
                               _field64014_))))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass64007_ _slot64008_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64007_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass64007_)))
        (if (let () (declare (not safe)) (symbol? _slot64008_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _slot64008_)))
        (let ()
          (declare (not safe))
          (__make-class-slot-unchecked-mutator _klass64007_ _slot64008_))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_klass63997_ _slot63998_)
        (let ()
          (let ((_field64001_
                 (let ((__tmp66015
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _klass63997_
                           '8
                           '#f
                           '#f))))
                   (declare (not safe))
                   (symbolic-table-ref __tmp66015 _slot63998_ '#f))))
            (if (let () (declare (not safe)) (not _field64001_))
                (let ()
                  (declare (not safe))
                  (error '"unknown slot"
                         'class:
                         _klass63997_
                         'slot:
                         _slot63998_))
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _klass63997_))
                    (let ()
                      (declare (not safe))
                      (make-struct-slot-unchecked-mutator
                       _klass63997_
                       _slot63998_
                       _field64001_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _klass63997_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-unchecked-mutator
                           _klass63997_
                           _slot63998_
                           _field64001_))
                        (if (let ((_strukt64004_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _klass63997_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _strukt64004_
                                      'class))
                                   (let ((__tmp66016
                                          (let ((__tmp66017
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _strukt64004_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp66017))))
                                     (declare (not safe))
                                     (##fx< _field64001_ __tmp66016))))
                            (let ()
                              (declare (not safe))
                              (make-struct-slot-unchecked-mutator
                               _klass63997_
                               _slot63998_
                               _field64001_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-unchecked-mutator
                               _klass63997_
                               _slot63998_
                               _field64001_))))))))))
    (define not-an-instance__%
      (lambda (_object63981_ _class63982_ _slot63983_)
        (apply error
               '"not an instance"
               'object:
               _object63981_
               'class:
               _class63982_
               (if _slot63983_ (cons 'slot: (cons _slot63983_ '())) '()))))
    (define not-an-instance__0
      (lambda (_object63988_ _class63989_)
        (let ((_slot63991_ '#f))
          (declare (not safe))
          (not-an-instance__% _object63988_ _class63989_ _slot63991_))))
    (define not-an-instance
      (lambda _g66019_
        (let ((_g66018_ (let () (declare (not safe)) (##length _g66019_))))
          (cond ((let () (declare (not safe)) (##fx= _g66018_ 2))
                 (apply (lambda (_object63988_ _class63989_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object63988_ _class63989_)))
                        _g66019_))
                ((let () (declare (not safe)) (##fx= _g66018_ 3))
                 (apply (lambda (_object63993_ _class63994_ _slot63995_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object63993_
                             _class63994_
                             _slot63995_)))
                        _g66019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g66019_))))))
    (define make-final-slot-accessor
      (lambda (_klass63974_ _slot63975_ _field63976_)
        (lambda (_obj63978_)
          (##direct-structure-ref
           _obj63978_
           _field63976_
           _klass63974_
           _slot63975_))))
    (define make-final-slot-mutator
      (lambda (_klass63967_ _slot63968_ _field63969_)
        (lambda (_obj63971_ _val63972_)
          (##direct-structure-set!
           _obj63971_
           _val63972_
           _field63969_
           _klass63967_
           _slot63968_))))
    (define make-struct-slot-accessor
      (lambda (_klass63961_ _slot63962_ _field63963_)
        (lambda (_obj63965_)
          (##structure-ref _obj63965_ _field63963_ _klass63961_ _slot63962_))))
    (define make-struct-slot-mutator
      (lambda (_klass63954_ _slot63955_ _field63956_)
        (lambda (_obj63958_ _val63959_)
          (##structure-set!
           _obj63958_
           _val63959_
           _field63956_
           _klass63954_
           _slot63955_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass63948_ _slot63949_ _field63950_)
        (lambda (_obj63952_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj63952_
             _field63950_
             _klass63948_
             _slot63949_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass63941_ _slot63942_ _field63943_)
        (lambda (_obj63945_ _val63946_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj63945_
             _val63946_
             _field63943_
             _klass63941_
             _slot63942_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass63935_ _slot63936_ _field63937_)
        (lambda (_obj63939_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass63935_ _obj63939_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj63939_ _field63937_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj63939_ _klass63935_ _slot63936_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass63928_ _slot63929_ _field63930_)
        (lambda (_obj63932_ _val63933_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass63928_ _obj63932_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63932_ _field63930_ _val63933_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj63932_ _klass63928_ _slot63929_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass63922_ _slot63923_ _field63924_)
        (lambda (_obj63926_)
          (if (let ((__tmp66020
                     (let () (declare (not safe)) (##type-id _klass63922_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63926_ __tmp66020))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj63926_ _field63924_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass63922_ _obj63926_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj63926_ _slot63923_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj63926_
                     _klass63922_
                     _slot63923_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass63915_ _slot63916_ _field63917_)
        (lambda (_obj63919_ _val63920_)
          (if (let ((__tmp66021
                     (let () (declare (not safe)) (##type-id _klass63915_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63919_ __tmp66021))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63919_ _field63917_ _val63920_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass63915_ _obj63919_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj63919_ _slot63916_ _val63920_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj63919_
                     _klass63915_
                     _slot63916_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass63909_ _slot63910_ _field63911_)
        (lambda (_obj63913_)
          (if (let ((__tmp66022
                     (let () (declare (not safe)) (##type-id _klass63909_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63913_ __tmp66022))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj63913_ _field63911_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj63913_ _slot63910_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass63902_ _slot63903_ _field63904_)
        (lambda (_obj63906_ _val63907_)
          (if (let ((__tmp66023
                     (let () (declare (not safe)) (##type-id _klass63902_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63906_ __tmp66023))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63906_ _field63904_ _val63907_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj63906_ _slot63903_ _val63907_))))))
    (define class-slot-offset
      (lambda (_klass63899_ _slot63900_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63899_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass63899_)))
        (if (let () (declare (not safe)) (symbolic? _slot63900_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbolic::t
                     _slot63900_)))
        (let ()
          (declare (not safe))
          (__class-slot-offset _klass63899_ _slot63900_))))
    (define __class-slot-offset
      (lambda (_klass63895_ _slot63896_)
        (let ()
          (let ((__tmp66024
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass63895_ '8 '#f '#f))))
            (declare (not safe))
            (symbolic-table-ref __tmp66024 _slot63896_ '#f)))))
    (define class-slot-ref
      (lambda (_klass63891_ _obj63892_ _slot63893_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63891_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass63891_)))
        (if (let () (declare (not safe)) (symbolic? _slot63893_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbolic::t
                     _slot63893_)))
        (let ()
          (declare (not safe))
          (__class-slot-ref _klass63891_ _obj63892_ _slot63893_))))
    (define __class-slot-ref
      (lambda (_klass63884_ _obj63885_ _slot63886_)
        (let ()
          (if (let ()
                (declare (not safe))
                (__class-instance? _klass63884_ _obj63885_))
              (let ((_off63889_
                     (let ((__tmp66025
                            (let ()
                              (declare (not safe))
                              (##structure-type _obj63885_))))
                       (declare (not safe))
                       (class-slot-offset __tmp66025 _slot63886_))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _obj63885_
                 _off63889_
                 _klass63884_
                 _slot63886_))
              (let ()
                (declare (not safe))
                (not-an-instance__0 _obj63885_ _klass63884_))))))
    (define class-slot-set!
      (lambda (_klass63879_ _obj63880_ _slot63881_ _val63882_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63879_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass63879_)))
        (if (let () (declare (not safe)) (symbolic? _slot63881_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbolic::t
                     _slot63881_)))
        (let ()
          (declare (not safe))
          (__class-slot-set! _klass63879_ _obj63880_ _slot63881_ _val63882_))))
    (define __class-slot-set!
      (lambda (_klass63871_ _obj63872_ _slot63873_ _val63874_)
        (let ()
          (if (let ()
                (declare (not safe))
                (__class-instance? _klass63871_ _obj63872_))
              (let ((_off63877_
                     (let ((__tmp66026
                            (let ()
                              (declare (not safe))
                              (##structure-type _obj63872_))))
                       (declare (not safe))
                       (class-slot-offset __tmp66026 _slot63873_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _obj63872_
                 _val63874_
                 _off63877_
                 _klass63871_
                 _slot63873_))
              (let ()
                (declare (not safe))
                (not-an-instance__0 _obj63872_ _klass63871_))))))
    (define unchecked-field-ref
      (lambda (_obj63868_ _off63869_)
        (let ((__tmp66027
               (let () (declare (not safe)) (##structure-type _obj63868_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj63868_ _off63869_ __tmp66027 '#f))))
    (define unchecked-field-set!
      (lambda (_obj63864_ _off63865_ _val63866_)
        (let ((__tmp66028
               (let () (declare (not safe)) (##structure-type _obj63864_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj63864_
           _val63866_
           _off63865_
           __tmp66028
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj63861_ _slot63862_)
        (let ((__tmp66029
               (let ((__tmp66030
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63861_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp66030 _slot63862_))))
          (declare (not safe))
          (unchecked-field-ref _obj63861_ __tmp66029))))
    (define unchecked-slot-set!
      (lambda (_obj63857_ _slot63858_ _val63859_)
        (let ((__tmp66031
               (let ((__tmp66032
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63857_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp66032 _slot63858_))))
          (declare (not safe))
          (unchecked-field-set! _obj63857_ __tmp66031 _val63859_))))
    (define slot-ref__%
      (lambda (_obj63841_ _slot63842_ _E63843_)
        (if (let () (declare (not safe)) (symbol? _slot63842_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _slot63842_)))
        (if (let () (declare (not safe)) (procedure? _E63843_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _E63843_)))
        (let ()
          (declare (not safe))
          (__slot-ref__% _obj63841_ _slot63842_ _E63843_))))
    (define slot-ref__0
      (lambda (_obj63848_ _slot63849_)
        (let ((_E63851_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj63848_ _slot63849_ _E63851_))))
    (define slot-ref
      (lambda _g66034_
        (let ((_g66033_ (let () (declare (not safe)) (##length _g66034_))))
          (cond ((let () (declare (not safe)) (##fx= _g66033_ 2))
                 (apply (lambda (_obj63848_ _slot63849_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj63848_ _slot63849_)))
                        _g66034_))
                ((let () (declare (not safe)) (##fx= _g66033_ 3))
                 (apply (lambda (_obj63853_ _slot63854_ _E63855_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj63853_ _slot63854_ _E63855_)))
                        _g66034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g66034_))))))
    (define __slot-ref__%
      (lambda (_obj63815_ _slot63816_ _E63817_)
        (let ()
          (let* ((_klass63820_
                  (let () (declare (not safe)) (__class-of _obj63815_)))
                 (_$e63823_
                  (let ()
                    (declare (not safe))
                    (__class-slot-offset _klass63820_ _slot63816_))))
            (if _$e63823_
                ((lambda (_off63826_)
                   (let ()
                     (declare (not safe))
                     (unchecked-field-ref _obj63815_ _off63826_)))
                 _$e63823_)
                (let ()
                  (declare (not safe))
                  (_E63817_ _obj63815_ _slot63816_)))))))
    (define __slot-ref__0
      (lambda (_obj63831_ _slot63832_)
        (let ((_E63834_ __slot-error))
          (declare (not safe))
          (__slot-ref__% _obj63831_ _slot63832_ _E63834_))))
    (define __slot-ref
      (lambda _g66036_
        (let ((_g66035_ (let () (declare (not safe)) (##length _g66036_))))
          (cond ((let () (declare (not safe)) (##fx= _g66035_ 2))
                 (apply (lambda (_obj63831_ _slot63832_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__0 _obj63831_ _slot63832_)))
                        _g66036_))
                ((let () (declare (not safe)) (##fx= _g66035_ 3))
                 (apply (lambda (_obj63836_ _slot63837_ _E63838_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__% _obj63836_ _slot63837_ _E63838_)))
                        _g66036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g66036_))))))
    (define slot-set!__%
      (lambda (_obj63795_ _slot63796_ _val63797_ _E63798_)
        (if (let () (declare (not safe)) (symbol? _slot63796_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _slot63796_)))
        (if (let () (declare (not safe)) (procedure? _E63798_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _E63798_)))
        (let ()
          (declare (not safe))
          (__slot-set!__% _obj63795_ _slot63796_ _val63797_ _E63798_))))
    (define slot-set!__0
      (lambda (_obj63803_ _slot63804_ _val63805_)
        (let ((_E63807_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj63803_ _slot63804_ _val63805_ _E63807_))))
    (define slot-set!
      (lambda _g66038_
        (let ((_g66037_ (let () (declare (not safe)) (##length _g66038_))))
          (cond ((let () (declare (not safe)) (##fx= _g66037_ 3))
                 (apply (lambda (_obj63803_ _slot63804_ _val63805_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj63803_ _slot63804_ _val63805_)))
                        _g66038_))
                ((let () (declare (not safe)) (##fx= _g66037_ 4))
                 (apply (lambda (_obj63809_ _slot63810_ _val63811_ _E63812_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj63809_
                             _slot63810_
                             _val63811_
                             _E63812_)))
                        _g66038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g66038_))))))
    (define __slot-set!__%
      (lambda (_obj63766_ _slot63767_ _val63768_ _E63769_)
        (let ()
          (let* ((_klass63772_
                  (let () (declare (not safe)) (__class-of _obj63766_)))
                 (_$e63775_
                  (let ()
                    (declare (not safe))
                    (__class-slot-offset _klass63772_ _slot63767_))))
            (if _$e63775_
                ((lambda (_off63778_)
                   (let ()
                     (declare (not safe))
                     (unchecked-field-set! _obj63766_ _off63778_ _val63768_)))
                 _$e63775_)
                (let ()
                  (declare (not safe))
                  (_E63769_ _obj63766_ _slot63767_)))))))
    (define __slot-set!__0
      (lambda (_obj63783_ _slot63784_ _val63785_)
        (let ((_E63787_ __slot-error))
          (declare (not safe))
          (__slot-set!__% _obj63783_ _slot63784_ _val63785_ _E63787_))))
    (define __slot-set!
      (lambda _g66040_
        (let ((_g66039_ (let () (declare (not safe)) (##length _g66040_))))
          (cond ((let () (declare (not safe)) (##fx= _g66039_ 3))
                 (apply (lambda (_obj63783_ _slot63784_ _val63785_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__0
                             _obj63783_
                             _slot63784_
                             _val63785_)))
                        _g66040_))
                ((let () (declare (not safe)) (##fx= _g66039_ 4))
                 (apply (lambda (_obj63789_ _slot63790_ _val63791_ _E63792_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__%
                             _obj63789_
                             _slot63790_
                             _val63791_
                             _E63792_)))
                        _g66040_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g66040_))))))
    (define __slot-error
      (lambda (_obj63762_ _slot63763_)
        (let ()
          (declare (not safe))
          (error '"Cannot find slot" 'object: _obj63762_ 'slot: _slot63763_))))
    (define subclass?
      (lambda (_maybe-sub-class63759_ _maybe-super-class63760_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _maybe-sub-class63759_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _maybe-sub-class63759_)))
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _maybe-super-class63760_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _maybe-super-class63760_)))
        (let ()
          (declare (not safe))
          (__subclass? _maybe-sub-class63759_ _maybe-super-class63760_))))
    (define __subclass?
      (lambda (_maybe-sub-class63748_ _maybe-super-class63749_)
        (let ()
          (let* ((_maybe-super-class-id63752_
                  (let ()
                    (declare (not safe))
                    (##type-id _maybe-super-class63749_)))
                 (_$e63754_
                  (eq? _maybe-super-class-id63752_
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class63748_)))))
            (if _$e63754_
                _$e63754_
                (let ((__tmp66042
                       (lambda (_super-class63757_)
                         (eq? (let ()
                                (declare (not safe))
                                (##type-id _super-class63757_))
                              _maybe-super-class-id63752_)))
                      (__tmp66041
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _maybe-sub-class63748_
                          '6
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__ormap1 __tmp66042 __tmp66041)))))))
    (define object?
      (lambda (_o63746_) (let () (declare (not safe)) (__object? _o63746_))))
    (define __object?
      (lambda (_o63743_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _o63743_))
              (let ((__tmp66043
                     (let ()
                       (declare (not safe))
                       (##structure-type _o63743_))))
                (declare (not safe))
                (##structure-instance-of? __tmp66043 'class))
              '#f))))
    (define object-type
      (lambda (_o63741_)
        (let () (declare (not safe)) (__object-type _o63741_))))
    (define __object-type
      (lambda (_o63736_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _o63736_))
              (let ((_klass63739_
                     (let ()
                       (declare (not safe))
                       (##structure-type _o63736_))))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _klass63739_ 'class))
                    _klass63739_
                    (let ()
                      (declare (not safe))
                      (error '"not an object" _o63736_ _klass63739_))))
              (let ()
                (declare (not safe))
                (error '"not an object" _o63736_))))))
    (define direct-instance?
      (lambda (_klass63733_ _obj63734_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63733_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass63733_)))
        (let ()
          (declare (not safe))
          (__direct-instance? _klass63733_ _obj63734_))))
    (define __direct-instance?
      (lambda (_klass63729_ _obj63730_)
        (let ()
          (let ((__tmp66044
                 (let () (declare (not safe)) (##type-id _klass63729_))))
            (declare (not safe))
            (##structure-direct-instance-of? _obj63730_ __tmp66044)))))
    (define struct-instance?
      (lambda (_klass63726_ _obj63727_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63726_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass63726_)))
        (let ()
          (declare (not safe))
          (__struct-instance? _klass63726_ _obj63727_))))
    (define __struct-instance?
      (lambda (_klass63722_ _obj63723_)
        (let ()
          (let ((__tmp66045
                 (let () (declare (not safe)) (##type-id _klass63722_))))
            (declare (not safe))
            (##structure-instance-of? _obj63723_ __tmp66045)))))
    (define class-instance?
      (lambda (_klass63719_ _obj63720_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63719_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass63719_)))
        (let ()
          (declare (not safe))
          (__class-instance? _klass63719_ _obj63720_))))
    (define __class-instance?
      (lambda (_klass63713_ _obj63714_)
        (let ()
          (let ((_type63717_
                 (let () (declare (not safe)) (__class-of _obj63714_))))
            (declare (not safe))
            (__subclass? _type63717_ _klass63713_)))))
    (define make-object
      (lambda (_klass63710_ _k63711_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63710_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass63710_)))
        (if (let () (declare (not safe)) (fixnum? _k63711_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation" 'fixnum::t _k63711_)))
        (let () (declare (not safe)) (__make-object _klass63710_ _k63711_))))
    (define __make-object
      (lambda (_klass63704_ _k63705_)
        (let ()
          (if (let () (declare (not safe)) (__class-type-system? _klass63704_))
              (let ()
                (declare (not safe))
                (error '"cannot instantiate system class"
                       'class:
                       _klass63704_))
              (let ((_obj63708_
                     (let ()
                       (declare (not safe))
                       (##make-structure _klass63704_ _k63705_))))
                (let () (declare (not safe)) (object-fill! _obj63708_ '#f))
                _obj63708_)))))
    (define object-fill!
      (lambda (_obj63701_ _fill63702_)
        (if '#t
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'object::t
                     _obj63701_)))
        (let () (declare (not safe)) (__object-fill! _obj63701_ _fill63702_))))
    (define __object-fill!
      (lambda (_obj63693_ _fill63694_)
        (let ()
          (let _loop63697_ ((_i63699_
                             (let ((__tmp66047
                                    (let ()
                                      (declare (not safe))
                                      (##structure-length _obj63693_))))
                               (declare (not safe))
                               (##fx- __tmp66047 '1))))
            (if (let () (declare (not safe)) (##fx> _i63699_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _obj63693_
                     _fill63694_
                     _i63699_
                     '#f
                     '#f))
                  (let ((__tmp66046
                         (let () (declare (not safe)) (##fx- _i63699_ '1))))
                    (declare (not safe))
                    (_loop63697_ __tmp66046)))
                _obj63693_)))))
    (define new-instance
      (lambda (_klass63691_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63691_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass63691_)))
        (let () (declare (not safe)) (__new-instance _klass63691_))))
    (define __new-instance
      (lambda (_klass63688_)
        (let ()
          (let ((__obj65944
                 (let ((__tmp66048
                        (let ((__tmp66049
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _klass63688_
                                  '7
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (##vector-length __tmp66049))))
                   (declare (not safe))
                   (##make-structure _klass63688_ __tmp66048))))
            (let () (declare (not safe)) (object-fill! __obj65944 '#f))
            __obj65944))))
    (define make-instance
      (lambda (_klass63685_ . _args63686_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63685_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass63685_)))
        (apply __make-instance _klass63685_ _args63686_)))
    (define __make-instance
      (lambda (_klass63674_ . _args63675_)
        (let ()
          (let* ((_obj63678_
                  (let () (declare (not safe)) (__new-instance _klass63674_)))
                 (_$e63680_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _klass63674_ '10 '#f '#f))))
            (if _$e63680_
                ((lambda (_kons-id63683_)
                   (let ()
                     (declare (not safe))
                     (__constructor-init!
                      _klass63674_
                      _kons-id63683_
                      _obj63678_
                      _args63675_)))
                 _$e63680_)
                (if (let ()
                      (declare (not safe))
                      (__class-type-metaclass? _klass63674_))
                    (let ()
                      (declare (not safe))
                      (__metaclass-instance-init!
                       _klass63674_
                       _obj63678_
                       _args63675_))
                    (if (let ((__tmp66050
                               (let ()
                                 (declare (not safe))
                                 (__class-type-struct? _klass63674_))))
                          (declare (not safe))
                          (not __tmp66050))
                        (let ()
                          (declare (not safe))
                          (__class-instance-init!
                           _klass63674_
                           _obj63678_
                           _args63675_))
                        (if (let ((__tmp66052
                                   (let ((__tmp66053
                                          (let ()
                                            (declare (not safe))
                                            (##structure-length _obj63678_))))
                                     (declare (not safe))
                                     (##fx- __tmp66053 '1)))
                                  (__tmp66051 (length _args63675_)))
                              (declare (not safe))
                              (##fx= __tmp66052 __tmp66051))
                            (apply ##structure _klass63674_ _args63675_)
                            (let ((__tmp66054
                                   (let ()
                                     (declare (not safe))
                                     (__class-type-slot-list _klass63674_))))
                              (declare (not safe))
                              (error '"arguments don't match object size"
                                     'class:
                                     _klass63674_
                                     'slots:
                                     __tmp66054
                                     'args:
                                     _args63675_))))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj63670_ . _args63671_)
        (let ()
          (if (let ((__tmp66056 (length _args63671_))
                    (__tmp66055
                     (let ()
                       (declare (not safe))
                       (##structure-length _obj63670_))))
                (declare (not safe))
                (##fx< __tmp66056 __tmp66055))
              (let ()
                (declare (not safe))
                (__struct-instance-init! _obj63670_ _args63671_))
              (let ()
                (declare (not safe))
                (error '"too many arguments for struct"
                       'object:
                       _obj63670_
                       'args:
                       _args63671_))))))
    (define __struct-instance-init!
      (lambda (_obj63629_ _args63630_)
        (let _lp63632_ ((_k63634_ '1) (_rest63635_ _args63630_))
          (let* ((_rest6363663644_ _rest63635_)
                 (_else6363863652_ (lambda () _obj63629_))
                 (_K6364063658_
                  (lambda (_rest63655_ _hd63656_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj63629_ _k63634_ _hd63656_))
                    (let ((__tmp66057
                           (let () (declare (not safe)) (##fx+ _k63634_ '1))))
                      (declare (not safe))
                      (_lp63632_ __tmp66057 _rest63655_)))))
            (if (let () (declare (not safe)) (##pair? _rest6363663644_))
                (let ((_hd6364163661_
                       (let () (declare (not safe)) (##car _rest6363663644_)))
                      (_tl6364263663_
                       (let () (declare (not safe)) (##cdr _rest6363663644_))))
                  (let* ((_hd63666_ _hd6364163661_)
                         (_rest63668_ _tl6364263663_))
                    (declare (not safe))
                    (_K6364063658_ _rest63668_ _hd63666_)))
                (let () (declare (not safe)) (_else6363863652_)))))))
    (define class-instance-init!
      (lambda (_obj63625_ . _args63626_)
        (let ()
          (let ((__tmp66058
                 (let () (declare (not safe)) (##structure-type _obj63625_))))
            (declare (not safe))
            (__class-instance-init! __tmp66058 _obj63625_ _args63626_)))))
    (define __class-instance-init!
      (lambda (_klass63569_ _obj63570_ _args63571_)
        (let _lp63573_ ((_rest63575_ _args63571_))
          (let* ((_rest6357663586_ _rest63575_)
                 (_else6357863594_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest63575_))
                        _obj63570_
                        (let ()
                          (declare (not safe))
                          (error '"unexpected class initializer arguments"
                                 'class:
                                 _klass63569_
                                 'rest:
                                 _rest63575_)))))
                 (_K6358063606_
                  (lambda (_rest63597_ _val63598_ _key63599_)
                    (if (let ((__tmp66059
                               (let ()
                                 (declare (not safe))
                                 (keyword? _key63599_))))
                          (declare (not safe))
                          (not __tmp66059))
                        (let ()
                          (declare (not safe))
                          (error '"non keyword slot initializer"
                                 'slot:
                                 _key63599_))
                        (let ((_$e63601_
                               (let ()
                                 (declare (not safe))
                                 (__class-slot-offset
                                  _klass63569_
                                  _key63599_))))
                          (if _$e63601_
                              ((lambda (_off63604_)
                                 (let ()
                                   (declare (not safe))
                                   (unchecked-field-set!
                                    _obj63570_
                                    _off63604_
                                    _val63598_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp63573_ _rest63597_)))
                               _$e63601_)
                              (let ()
                                (declare (not safe))
                                (error '"unknown slot"
                                       'class:
                                       _klass63569_
                                       'slot:
                                       _key63599_))))))))
            (if (let () (declare (not safe)) (##pair? _rest6357663586_))
                (let ((_hd6358163609_
                       (let () (declare (not safe)) (##car _rest6357663586_)))
                      (_tl6358263611_
                       (let () (declare (not safe)) (##cdr _rest6357663586_))))
                  (let ((_key63614_ _hd6358163609_))
                    (if (let () (declare (not safe)) (##pair? _tl6358263611_))
                        (let ((_hd6358363616_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6358263611_)))
                              (_tl6358463618_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6358263611_))))
                          (let* ((_val63621_ _hd6358363616_)
                                 (_rest63623_ _tl6358463618_))
                            (declare (not safe))
                            (_K6358063606_ _rest63623_ _val63621_ _key63614_)))
                        (let () (declare (not safe)) (_else6357863594_)))))
                (let () (declare (not safe)) (_else6357863594_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass63565_ _obj63566_ _args63567_)
        (apply call-method
               _klass63565_
               'instance-init!
               _obj63566_
               _args63567_)))
    (define constructor-init!
      (lambda (_klass63559_ _kons-id63560_ _obj63561_ . _args63562_)
        (let ()
          (let ()
            (declare (not safe))
            (__constructor-init!
             _klass63559_
             _kons-id63560_
             _obj63561_
             _args63562_)))))
    (define __constructor-init!
      (lambda (_klass63549_ _kons-id63550_ _obj63551_ _args63552_)
        (let ((_$e63554_
               (let ()
                 (declare (not safe))
                 (__find-method _klass63549_ _obj63551_ _kons-id63550_))))
          (if _$e63554_
              ((lambda (_kons63557_)
                 (apply _kons63557_ _obj63551_ _args63552_)
                 _obj63551_)
               _$e63554_)
              (let ()
                (declare (not safe))
                (error '"missing constructor"
                       'class:
                       _klass63549_
                       'method:
                       _kons-id63550_))))))
    (define struct-copy
      (lambda (_struct63547_)
        (if '#t
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'object::t
                     _struct63547_)))
        (let () (declare (not safe)) (__struct-copy _struct63547_))))
    (define __struct-copy
      (lambda (_struct63544_)
        (let ()
          (let () (declare (not safe)) (##structure-copy _struct63544_)))))
    (define struct->list
      (lambda (_obj63542_)
        (if '#t
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'object::t
                     _obj63542_)))
        (let () (declare (not safe)) (__struct->list _obj63542_))))
    (define __struct->list
      (lambda (_obj63539_)
        (let () (let () (declare (not safe)) (##vector->list _obj63539_)))))
    (define class->list
      (lambda (_obj63537_)
        (if '#t
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'object::t
                     _obj63537_)))
        (let () (declare (not safe)) (__class->list _obj63537_))))
    (define __class->list
      (lambda (_obj63523_)
        (let ()
          (let* ((_klass63526_
                  (let () (declare (not safe)) (##structure-type _obj63523_)))
                 (_slot-vector63528_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _klass63526_ '7 '#f '#f))))
            (let _loop63530_ ((_index63532_
                               (let ((__tmp66065
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length _slot-vector63528_))))
                                 (declare (not safe))
                                 (##fx- __tmp66065 '1)))
                              (_plist63533_ '()))
              (if (let () (declare (not safe)) (##fx< _index63532_ '1))
                  (cons _klass63526_ _plist63533_)
                  (let ((_slot63535_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _slot-vector63528_ _index63532_))))
                    (let ((__tmp66064
                           (let ()
                             (declare (not safe))
                             (##fx- _index63532_ '1)))
                          (__tmp66060
                           (let ((__tmp66063
                                  (let ()
                                    (declare (not safe))
                                    (symbol->keyword _slot63535_)))
                                 (__tmp66061
                                  (let ((__tmp66062
                                         (let ()
                                           (declare (not safe))
                                           (unchecked-field-ref
                                            _obj63523_
                                            _index63532_))))
                                    (declare (not safe))
                                    (cons __tmp66062 _plist63533_))))
                             (declare (not safe))
                             (cons __tmp66063 __tmp66061))))
                      (declare (not safe))
                      (_loop63530_ __tmp66064 __tmp66060)))))))))
    (define call-method
      (lambda (_obj63519_ _id63520_ . _args63521_)
        (if (let () (declare (not safe)) (symbol? _id63520_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _id63520_)))
        (apply __call-method _obj63519_ _id63520_ _args63521_)))
    (define __call-method
      (lambda (_obj63509_ _id63510_ . _args63511_)
        (let ()
          (let ((_$e63514_
                 (let ()
                   (declare (not safe))
                   (__method-ref _obj63509_ _id63510_))))
            (if _$e63514_
                ((lambda (_method63517_)
                   (apply _method63517_ _obj63509_ _args63511_))
                 _$e63514_)
                (let ()
                  (declare (not safe))
                  (error '"cannot find method"
                         'object:
                         _obj63509_
                         'method:
                         _id63510_)))))))
    (define method-ref
      (lambda (_obj63506_ _id63507_)
        (if (let () (declare (not safe)) (symbol? _id63507_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _id63507_)))
        (let () (declare (not safe)) (__method-ref _obj63506_ _id63507_))))
    (define __method-ref
      (lambda (_obj63502_ _id63503_)
        (let ()
          (let ((__tmp66066
                 (let () (declare (not safe)) (__class-of _obj63502_))))
            (declare (not safe))
            (__find-method __tmp66066 _obj63502_ _id63503_)))))
    (define checked-method-ref
      (lambda (_obj63499_ _id63500_)
        (let ()
          (declare (not safe))
          (__checked-method-ref _obj63499_ _id63500_))))
    (define __checked-method-ref
      (lambda (_obj63492_ _id63493_)
        (let ()
          (let ((_$e63496_
                 (let ()
                   (declare (not safe))
                   (method-ref _obj63492_ _id63493_))))
            (if _$e63496_
                _$e63496_
                (let ()
                  (declare (not safe))
                  (error '"missing method"
                         'object:
                         _obj63492_
                         'method:
                         _id63493_)))))))
    (define bound-method-ref
      (lambda (_obj63489_ _id63490_)
        (if (let () (declare (not safe)) (symbol? _id63490_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _id63490_)))
        (let ()
          (declare (not safe))
          (__bound-method-ref _obj63489_ _id63490_))))
    (define __bound-method-ref
      (lambda (_obj63478_ _id63479_)
        (let ()
          (let ((_$e63482_
                 (let ()
                   (declare (not safe))
                   (__method-ref _obj63478_ _id63479_))))
            (if _$e63482_
                ((lambda (_method63485_)
                   (lambda _args63487_
                     (apply _method63485_ _obj63478_ _args63487_)))
                 _$e63482_)
                '#f)))))
    (define checked-bound-method-ref
      (lambda (_obj63475_ _id63476_)
        (if (let () (declare (not safe)) (symbol? _id63476_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _id63476_)))
        (let ()
          (declare (not safe))
          (__checked-bound-method-ref _obj63475_ _id63476_))))
    (define __checked-bound-method-ref
      (lambda (_obj63467_ _id63468_)
        (let ()
          (let ((_method63471_
                 (let ()
                   (declare (not safe))
                   (__checked-method-ref _obj63467_ _id63468_))))
            (lambda _args63473_
              (apply _method63471_ _obj63467_ _args63473_))))))
    (define find-method
      (lambda (_klass63463_ _obj63464_ _id63465_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63463_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass63463_)))
        (if (let () (declare (not safe)) (symbol? _id63465_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _id63465_)))
        (let ()
          (declare (not safe))
          (__find-method _klass63463_ _obj63464_ _id63465_))))
    (define __find-method
      (lambda (_klass63455_ _obj63456_ _id63457_)
        (let ()
          (let ((_$e63460_
                 (let ()
                   (declare (not safe))
                   (__direct-method-ref _klass63455_ _obj63456_ _id63457_))))
            (if _$e63460_
                _$e63460_
                (if (let ()
                      (declare (not safe))
                      (__class-type-sealed? _klass63455_))
                    '#f
                    (let ()
                      (declare (not safe))
                      (__mixin-method-ref
                       _klass63455_
                       _obj63456_
                       _id63457_))))))))
    (define mixin-find-method
      (lambda (_mixins63451_ _obj63452_ _id63453_)
        (if (let () (declare (not safe)) (symbol? _id63453_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _id63453_)))
        (let ()
          (declare (not safe))
          (__mixin-find-method _mixins63451_ _obj63452_ _id63453_))))
    (define __mixin-find-method
      (lambda (_mixins63442_ _obj63443_ _id63444_)
        (let ()
          (let ((__tmp66067
                 (lambda (_g6344663448_)
                   (let ()
                     (declare (not safe))
                     (direct-method-ref _g6344663448_ _obj63443_ _id63444_)))))
            (declare (not safe))
            (__ormap1 __tmp66067 _mixins63442_)))))
    (define direct-method-ref
      (lambda (_klass63438_ _obj63439_ _id63440_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63438_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass63438_)))
        (if (let () (declare (not safe)) (symbol? _id63440_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _id63440_)))
        (let ()
          (declare (not safe))
          (__direct-method-ref _klass63438_ _obj63439_ _id63440_))))
    (define __direct-method-ref
      (lambda (_klass63414_ _obj63415_ _id63416_)
        (let ()
          (letrec ((_metaclass-resolve-method63419_
                    (lambda ()
                      (let ((__method65945
                             (let ()
                               (declare (not safe))
                               (__method-ref
                                _klass63414_
                                'direct-method-ref))))
                        (if __method65945
                            (__method65945 _klass63414_ _obj63415_ _id63416_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _klass63414_
                                     'direct-method-ref))))))
                   (_metaclass-resolve-method!63420_
                    (lambda ()
                      (let ((_method63435_
                             (let ()
                               (declare (not safe))
                               (_metaclass-resolve-method63419_))))
                        (let ((__tmp66069
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _klass63414_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp66068
                               (if _method63435_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp66069
                           _id63416_
                           __tmp66068))
                        _method63435_))))
            (let ((_$e63422_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _klass63414_ '11 '#f '#f))))
              (if _$e63422_
                  ((lambda (_ht63425_)
                     (let ((_method63427_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref _ht63425_ _id63416_ '#f))))
                       (if (let ()
                             (declare (not safe))
                             (procedure? _method63427_))
                           _method63427_
                           (if (let ()
                                 (declare (not safe))
                                 (__class-type-metaclass? _klass63414_))
                               (let ((_$e63429_ _method63427_))
                                 (if (eq? 'resolved _$e63429_)
                                     (let ()
                                       (declare (not safe))
                                       (_metaclass-resolve-method63419_))
                                     (if (eq? 'unknown _$e63429_)
                                         '#f
                                         (let ()
                                           (declare (not safe))
                                           (_metaclass-resolve-method!63420_)))))
                               '#f))))
                   _$e63422_)
                  (if (let ()
                        (declare (not safe))
                        (__class-type-metaclass? _klass63414_))
                      (let ((_tab63432_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _klass63414_
                           _tab63432_
                           '11
                           '#f
                           '#f))
                        (let ()
                          (declare (not safe))
                          (_metaclass-resolve-method!63420_)))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_klass63410_ _obj63411_ _id63412_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63410_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass63410_)))
        (if (let () (declare (not safe)) (symbol? _id63412_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _id63412_)))
        (let ()
          (declare (not safe))
          (__mixin-method-ref _klass63410_ _obj63411_ _id63412_))))
    (define __mixin-method-ref
      (lambda (_klass63405_ _obj63406_ _id63407_)
        (let ()
          (let ((__tmp66070
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass63405_ '6 '#f '#f))))
            (declare (not safe))
            (__mixin-find-method __tmp66070 _obj63406_ _id63407_)))))
    (define bind-method!__%
      (lambda (_klass63386_ _id63387_ _proc63388_ _rebind?63389_)
        (if (let () (declare (not safe)) (symbol? _id63387_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _id63387_)))
        (if (let () (declare (not safe)) (procedure? _proc63388_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'procedure::t
                     _proc63388_)))
        (let ()
          (declare (not safe))
          (__bind-method!__%
           _klass63386_
           _id63387_
           _proc63388_
           _rebind?63389_))))
    (define bind-method!__0
      (lambda (_klass63394_ _id63395_ _proc63396_)
        (let ((_rebind?63398_ '#f))
          (declare (not safe))
          (bind-method!__%
           _klass63394_
           _id63395_
           _proc63396_
           _rebind?63398_))))
    (define bind-method!
      (lambda _g66072_
        (let ((_g66071_ (let () (declare (not safe)) (##length _g66072_))))
          (cond ((let () (declare (not safe)) (##fx= _g66071_ 3))
                 (apply (lambda (_klass63394_ _id63395_ _proc63396_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass63394_
                             _id63395_
                             _proc63396_)))
                        _g66072_))
                ((let () (declare (not safe)) (##fx= _g66071_ 4))
                 (apply (lambda (_klass63400_
                                 _id63401_
                                 _proc63402_
                                 _rebind?63403_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass63400_
                             _id63401_
                             _proc63402_
                             _rebind?63403_)))
                        _g66072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g66072_))))))
    (define __bind-method!__%
      (lambda (_klass63357_ _id63358_ _proc63359_ _rebind?63360_)
        (let ()
          (letrec ((_bind!63363_
                    (lambda (_ht63369_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (not _rebind?63360_))
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref _ht63369_ _id63358_ '#f)))
                          (let ()
                            (declare (not safe))
                            (error '"method already bound"
                                   'class:
                                   _klass63357_
                                   'method:
                                   _id63358_))
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _ht63369_
                               _id63358_
                               _proc63359_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _klass63357_ 'class))
                (let ((_ht63365_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _klass63357_
                          '11
                          '#f
                          '#f))))
                  (if _ht63365_
                      (let () (declare (not safe)) (_bind!63363_ _ht63365_))
                      (let ((_ht63367_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _klass63357_
                           _ht63367_
                           '11
                           '#f
                           '#f))
                        (let ()
                          (declare (not safe))
                          (_bind!63363_ _ht63367_)))))
                (if (let () (declare (not safe)) (##type? _klass63357_))
                    (let ((__tmp66073
                           (let ()
                             (declare (not safe))
                             (__shadow-class _klass63357_))))
                      (declare (not safe))
                      (__bind-method!
                       __tmp66073
                       _id63358_
                       _proc63359_
                       _rebind?63360_))
                    (let ()
                      (declare (not safe))
                      (error '"bad class; expected class or builtin type"
                             _klass63357_))))))))
    (define __bind-method!__0
      (lambda (_klass63374_ _id63375_ _proc63376_)
        (let ((_rebind?63378_ '#f))
          (declare (not safe))
          (__bind-method!__%
           _klass63374_
           _id63375_
           _proc63376_
           _rebind?63378_))))
    (define __bind-method!
      (lambda _g66075_
        (let ((_g66074_ (let () (declare (not safe)) (##length _g66075_))))
          (cond ((let () (declare (not safe)) (##fx= _g66074_ 3))
                 (apply (lambda (_klass63374_ _id63375_ _proc63376_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__0
                             _klass63374_
                             _id63375_
                             _proc63376_)))
                        _g66075_))
                ((let () (declare (not safe)) (##fx= _g66074_ 4))
                 (apply (lambda (_klass63380_
                                 _id63381_
                                 _proc63382_
                                 _rebind?63383_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__%
                             _klass63380_
                             _id63381_
                             _proc63382_
                             _rebind?63383_)))
                        _g66075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g66075_))))))
    (define make-method-specializer-table__%
      (lambda (_size-hint63337_ _seed63339_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint63337_
           procedure-hash
           eq?
           _seed63339_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_size-hint63345_ '#f) (_seed63347_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint63345_ _seed63347_))))
    (define make-method-specializer-table__1
      (lambda (_size-hint63349_)
        (let ((_seed63351_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint63349_ _seed63351_))))
    (define make-method-specializer-table
      (lambda _g66077_
        (let ((_g66076_ (let () (declare (not safe)) (##length _g66077_))))
          (cond ((let () (declare (not safe)) (##fx= _g66076_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g66077_))
                ((let () (declare (not safe)) (##fx= _g66076_ 1))
                 (apply (lambda (_size-hint63349_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _size-hint63349_)))
                        _g66077_))
                ((let () (declare (not safe)) (##fx= _g66076_ 2))
                 (apply (lambda (_size-hint63353_ _seed63354_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _size-hint63353_
                             _seed63354_)))
                        _g66077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g66077_))))))
    (define method-specializer-table-ref
      (lambda (_tab63294_ _key63295_ _default63296_)
        (let ((_table63298_
               (let () (declare (not safe)) (&raw-table-table _tab63294_)))
              (_seed63299_
               (let () (declare (not safe)) (&raw-table-seed _tab63294_))))
          (let* ((_h63301_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63295_))
                         _seed63299_))
                 (_size63304_ (vector-length _table63298_))
                 (_entries63307_
                  (let () (declare (not safe)) (##fxquotient _size63304_ '2)))
                 (_start63310_
                  (let ((__tmp66078
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _h63301_ _entries63307_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp66078 '1))))
            (let _loop63314_ ((_probe63317_ _start63310_)
                              (_i63319_ '1)
                              (_deleted63321_ '#f))
              (let ((_k63324_ (vector-ref _table63298_ _probe63317_)))
                (if (eq? _k63324_ (macro-unused-obj))
                    _default63296_
                    (if (eq? _k63324_ (macro-deleted-obj))
                        (let ((__tmp66081
                               (let ((_next-probe63327_
                                      (fx+ _start63310_
                                           _i63319_
                                           (fx* _i63319_ _i63319_))))
                                 (declare (not safe))
                                 (##fxmodulo _next-probe63327_ _size63304_)))
                              (__tmp66080
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i63319_ '1)))
                              (__tmp66079
                               (let ((_$e63330_ _deleted63321_))
                                 (if _$e63330_ _$e63330_ _probe63317_))))
                          (declare (not safe))
                          (_loop63314_ __tmp66081 __tmp66080 __tmp66079))
                        (if (eq? _key63295_ _k63324_)
                            (vector-ref
                             _table63298_
                             (let ()
                               (declare (not safe))
                               (##fx+ _probe63317_ '1)))
                            (let ((__tmp66083
                                   (let ((_next-probe63333_
                                          (fx+ _start63310_
                                               _i63319_
                                               (fx* _i63319_ _i63319_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _next-probe63333_
                                      _size63304_)))
                                  (__tmp66082
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _i63319_ '1))))
                              (declare (not safe))
                              (_loop63314_
                               __tmp66083
                               __tmp66082
                               _deleted63321_)))))))))))
    (define method-specializer-table-set!
      (lambda (_tab63290_ _key63291_ _value63292_)
        (if (let ((__tmp66086
                   (let () (declare (not safe)) (&raw-table-free _tab63290_)))
                  (__tmp66084
                   (let ((__tmp66085
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _tab63290_)))))
                     (declare (not safe))
                     (##fxquotient __tmp66085 '4))))
              (declare (not safe))
              (##fx< __tmp66086 __tmp66084))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63290_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _tab63290_
           _key63291_
           _value63292_))))
    (define __method-specializer-table-set!
      (lambda (_tab63245_ _key63246_ _value63247_)
        (let ((_table63250_
               (let () (declare (not safe)) (&raw-table-table _tab63245_)))
              (_seed63251_
               (let () (declare (not safe)) (&raw-table-seed _tab63245_))))
          (let* ((_h63253_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63246_))
                         _seed63251_))
                 (_size63256_ (vector-length _table63250_))
                 (_entries63259_
                  (let () (declare (not safe)) (##fxquotient _size63256_ '2)))
                 (_start63262_
                  (let ((__tmp66087
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _h63253_ _entries63259_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp66087 '1))))
            (let _loop63266_ ((_probe63269_ _start63262_)
                              (_i63271_ '1)
                              (_deleted63273_ '#f))
              (let ((_k63276_ (vector-ref _table63250_ _probe63269_)))
                (if (eq? _k63276_ (macro-unused-obj))
                    (if _deleted63273_
                        (begin
                          (vector-set! _table63250_ _deleted63273_ _key63246_)
                          (vector-set!
                           _table63250_
                           (let ()
                             (declare (not safe))
                             (##fx+ _deleted63273_ '1))
                           _value63247_)
                          ((lambda ()
                             (let ((__tmp66088
                                    (let ((__tmp66089
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _tab63245_))))
                                      (declare (not safe))
                                      (##fx+ __tmp66089 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63245_
                                __tmp66088)))))
                        (begin
                          (vector-set! _table63250_ _probe63269_ _key63246_)
                          (vector-set!
                           _table63250_
                           (let ()
                             (declare (not safe))
                             (##fx+ _probe63269_ '1))
                           _value63247_)
                          ((lambda ()
                             (let ((__tmp66090
                                    (let ((__tmp66091
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _tab63245_))))
                                      (declare (not safe))
                                      (##fx- __tmp66091 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63245_ __tmp66090))
                             (let ((__tmp66092
                                    (let ((__tmp66093
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _tab63245_))))
                                      (declare (not safe))
                                      (##fx+ __tmp66093 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63245_
                                __tmp66092))))))
                    (if (eq? _k63276_ (macro-deleted-obj))
                        (let ((__tmp66096
                               (let ((_next-probe63281_
                                      (fx+ _start63262_
                                           _i63271_
                                           (fx* _i63271_ _i63271_))))
                                 (declare (not safe))
                                 (##fxmodulo _next-probe63281_ _size63256_)))
                              (__tmp66095
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i63271_ '1)))
                              (__tmp66094
                               (let ((_$e63284_ _deleted63273_))
                                 (if _$e63284_ _$e63284_ _probe63269_))))
                          (declare (not safe))
                          (_loop63266_ __tmp66096 __tmp66095 __tmp66094))
                        (if (eq? _key63246_ _k63276_)
                            (begin
                              (vector-set!
                               _table63250_
                               _probe63269_
                               _key63246_)
                              (vector-set!
                               _table63250_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _probe63269_ '1))
                               _value63247_))
                            (let ((__tmp66098
                                   (let ((_next-probe63287_
                                          (fx+ _start63262_
                                               _i63271_
                                               (fx* _i63271_ _i63271_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _next-probe63287_
                                      _size63256_)))
                                  (__tmp66097
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _i63271_ '1))))
                              (declare (not safe))
                              (_loop63266_
                               __tmp66098
                               __tmp66097
                               _deleted63273_)))))))))))
    (define method-specializer-table-update!
      (lambda (_tab63240_
               _key63241_
               _method-specializer-table-update!63242_
               _default63243_)
        (if (let ((__tmp66101
                   (let () (declare (not safe)) (&raw-table-free _tab63240_)))
                  (__tmp66099
                   (let ((__tmp66100
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _tab63240_)))))
                     (declare (not safe))
                     (##fxquotient __tmp66100 '4))))
              (declare (not safe))
              (##fx< __tmp66101 __tmp66099))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63240_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _tab63240_
           _key63241_
           _method-specializer-table-update!63242_
           _default63243_))))
    (define __method-specializer-table-update!
      (lambda (_tab63194_
               _key63195_
               _method-specializer-table-update!63196_
               _default63197_)
        (let ((_table63200_
               (let () (declare (not safe)) (&raw-table-table _tab63194_)))
              (_seed63201_
               (let () (declare (not safe)) (&raw-table-seed _tab63194_))))
          (let* ((_h63203_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63195_))
                         _seed63201_))
                 (_size63206_ (vector-length _table63200_))
                 (_entries63209_
                  (let () (declare (not safe)) (##fxquotient _size63206_ '2)))
                 (_start63212_
                  (let ((__tmp66102
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _h63203_ _entries63209_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp66102 '1))))
            (let _loop63216_ ((_probe63219_ _start63212_)
                              (_i63221_ '1)
                              (_deleted63223_ '#f))
              (let ((_k63226_ (vector-ref _table63200_ _probe63219_)))
                (if (eq? _k63226_ (macro-unused-obj))
                    (if _deleted63223_
                        (begin
                          (vector-set! _table63200_ _deleted63223_ _key63195_)
                          (vector-set!
                           _table63200_
                           (let ()
                             (declare (not safe))
                             (##fx+ _deleted63223_ '1))
                           (_method-specializer-table-update!63196_
                            _default63197_))
                          ((lambda ()
                             (let ((__tmp66103
                                    (let ((__tmp66104
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _tab63194_))))
                                      (declare (not safe))
                                      (##fx+ __tmp66104 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63194_
                                __tmp66103)))))
                        (begin
                          (vector-set! _table63200_ _probe63219_ _key63195_)
                          (vector-set!
                           _table63200_
                           (let ()
                             (declare (not safe))
                             (##fx+ _probe63219_ '1))
                           (_method-specializer-table-update!63196_
                            _default63197_))
                          ((lambda ()
                             (let ((__tmp66105
                                    (let ((__tmp66106
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _tab63194_))))
                                      (declare (not safe))
                                      (##fx- __tmp66106 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63194_ __tmp66105))
                             (let ((__tmp66107
                                    (let ((__tmp66108
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _tab63194_))))
                                      (declare (not safe))
                                      (##fx+ __tmp66108 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63194_
                                __tmp66107))))))
                    (if (eq? _k63226_ (macro-deleted-obj))
                        (let ((__tmp66111
                               (let ((_next-probe63231_
                                      (fx+ _start63212_
                                           _i63221_
                                           (fx* _i63221_ _i63221_))))
                                 (declare (not safe))
                                 (##fxmodulo _next-probe63231_ _size63206_)))
                              (__tmp66110
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i63221_ '1)))
                              (__tmp66109
                               (let ((_$e63234_ _deleted63223_))
                                 (if _$e63234_ _$e63234_ _probe63219_))))
                          (declare (not safe))
                          (_loop63216_ __tmp66111 __tmp66110 __tmp66109))
                        (if (eq? _key63195_ _k63226_)
                            (begin
                              (vector-set!
                               _table63200_
                               _probe63219_
                               _key63195_)
                              (vector-set!
                               _table63200_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _probe63219_ '1))
                               (_method-specializer-table-update!63196_
                                (vector-ref
                                 _table63200_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _probe63219_ '1))))))
                            (let ((__tmp66113
                                   (let ((_next-probe63237_
                                          (fx+ _start63212_
                                               _i63221_
                                               (fx* _i63221_ _i63221_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _next-probe63237_
                                      _size63206_)))
                                  (__tmp66112
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _i63221_ '1))))
                              (declare (not safe))
                              (_loop63216_
                               __tmp66113
                               __tmp66112
                               _deleted63223_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_tab63153_ _key63155_)
        (let ((_table63158_
               (let () (declare (not safe)) (&raw-table-table _tab63153_)))
              (_seed63160_
               (let () (declare (not safe)) (&raw-table-seed _tab63153_))))
          (let* ((_h63163_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63155_))
                         _seed63160_))
                 (_size63166_ (vector-length _table63158_))
                 (_entries63169_
                  (let () (declare (not safe)) (##fxquotient _size63166_ '2)))
                 (_start63172_
                  (let ((__tmp66114
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _h63163_ _entries63169_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp66114 '1))))
            (let _loop63176_ ((_probe63179_ _start63172_) (_i63181_ '1))
              (let ((_k63184_ (vector-ref _table63158_ _probe63179_)))
                (if (eq? _k63184_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k63184_ (macro-deleted-obj))
                        (let ((__tmp66116
                               (let ((_next-probe63187_
                                      (fx+ _start63172_
                                           _i63181_
                                           (fx* _i63181_ _i63181_))))
                                 (declare (not safe))
                                 (##fxmodulo _next-probe63187_ _size63166_)))
                              (__tmp66115
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i63181_ '1))))
                          (declare (not safe))
                          (_loop63176_ __tmp66116 __tmp66115))
                        (if (eq? _key63155_ _k63184_)
                            (begin
                              (vector-set!
                               _table63158_
                               _probe63179_
                               (macro-deleted-obj))
                              (vector-set!
                               _table63158_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _probe63179_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp66117
                                        (let ((__tmp66118
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _tab63153_))))
                                          (declare (not safe))
                                          (##fx- __tmp66118 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab63153_
                                    __tmp66117)))))
                            (let ((__tmp66120
                                   (let ((_next-probe63191_
                                          (fx+ _start63172_
                                               _i63181_
                                               (fx* _i63181_ _i63181_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _next-probe63191_
                                      _size63166_)))
                                  (__tmp66119
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _i63181_ '1))))
                              (declare (not safe))
                              (_loop63176_ __tmp66120 __tmp66119)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_method-proc63144_ _specializer63145_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63149_ ()
            (if (let ((__tmp66121
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp66121 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63149_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _method-proc63144_
           _specializer63145_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_proc63134_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63138_ ()
            (if (let ((__tmp66122
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp66122 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63138_))))))
        (let ((_specializer63142_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _proc63134_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _specializer63142_)))
    (define __class-specializer-hash-key
      (lambda (_klass63132_)
        (let ((__tmp66123
               (let () (declare (not safe)) (##type-id _klass63132_))))
          (declare (not safe))
          (symbolic-hash __tmp66123))))
    (define make-class-specializer-table__%
      (lambda (_size-hint63113_ _seed63115_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint63113_
           __class-specializer-hash-key
           eq?
           _seed63115_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_size-hint63121_ '#f) (_seed63123_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint63121_ _seed63123_))))
    (define make-class-specializer-table__1
      (lambda (_size-hint63125_)
        (let ((_seed63127_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint63125_ _seed63127_))))
    (define make-class-specializer-table
      (lambda _g66125_
        (let ((_g66124_ (let () (declare (not safe)) (##length _g66125_))))
          (cond ((let () (declare (not safe)) (##fx= _g66124_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g66125_))
                ((let () (declare (not safe)) (##fx= _g66124_ 1))
                 (apply (lambda (_size-hint63125_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _size-hint63125_)))
                        _g66125_))
                ((let () (declare (not safe)) (##fx= _g66124_ 2))
                 (apply (lambda (_size-hint63129_ _seed63130_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _size-hint63129_
                             _seed63130_)))
                        _g66125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g66125_))))))
    (define class-specializer-table-ref
      (lambda (_tab63070_ _key63071_ _default63072_)
        (let ((_table63074_
               (let () (declare (not safe)) (&raw-table-table _tab63070_)))
              (_seed63075_
               (let () (declare (not safe)) (&raw-table-seed _tab63070_))))
          (let* ((_h63077_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63071_))
                         _seed63075_))
                 (_size63080_ (vector-length _table63074_))
                 (_entries63083_
                  (let () (declare (not safe)) (##fxquotient _size63080_ '2)))
                 (_start63086_
                  (let ((__tmp66126
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _h63077_ _entries63083_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp66126 '1))))
            (let _loop63090_ ((_probe63093_ _start63086_)
                              (_i63095_ '1)
                              (_deleted63097_ '#f))
              (let ((_k63100_ (vector-ref _table63074_ _probe63093_)))
                (if (eq? _k63100_ (macro-unused-obj))
                    _default63072_
                    (if (eq? _k63100_ (macro-deleted-obj))
                        (let ((__tmp66129
                               (let ((_next-probe63103_
                                      (fx+ _start63086_
                                           _i63095_
                                           (fx* _i63095_ _i63095_))))
                                 (declare (not safe))
                                 (##fxmodulo _next-probe63103_ _size63080_)))
                              (__tmp66128
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i63095_ '1)))
                              (__tmp66127
                               (let ((_$e63106_ _deleted63097_))
                                 (if _$e63106_ _$e63106_ _probe63093_))))
                          (declare (not safe))
                          (_loop63090_ __tmp66129 __tmp66128 __tmp66127))
                        (if (eq? _key63071_ _k63100_)
                            (vector-ref
                             _table63074_
                             (let ()
                               (declare (not safe))
                               (##fx+ _probe63093_ '1)))
                            (let ((__tmp66131
                                   (let ((_next-probe63109_
                                          (fx+ _start63086_
                                               _i63095_
                                               (fx* _i63095_ _i63095_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _next-probe63109_
                                      _size63080_)))
                                  (__tmp66130
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _i63095_ '1))))
                              (declare (not safe))
                              (_loop63090_
                               __tmp66131
                               __tmp66130
                               _deleted63097_)))))))))))
    (define class-specializer-table-set!
      (lambda (_tab63066_ _key63067_ _value63068_)
        (if (let ((__tmp66134
                   (let () (declare (not safe)) (&raw-table-free _tab63066_)))
                  (__tmp66132
                   (let ((__tmp66133
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _tab63066_)))))
                     (declare (not safe))
                     (##fxquotient __tmp66133 '4))))
              (declare (not safe))
              (##fx< __tmp66134 __tmp66132))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63066_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _tab63066_
           _key63067_
           _value63068_))))
    (define __class-specializer-table-set!
      (lambda (_tab63021_ _key63022_ _value63023_)
        (let ((_table63026_
               (let () (declare (not safe)) (&raw-table-table _tab63021_)))
              (_seed63027_
               (let () (declare (not safe)) (&raw-table-seed _tab63021_))))
          (let* ((_h63029_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63022_))
                         _seed63027_))
                 (_size63032_ (vector-length _table63026_))
                 (_entries63035_
                  (let () (declare (not safe)) (##fxquotient _size63032_ '2)))
                 (_start63038_
                  (let ((__tmp66135
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _h63029_ _entries63035_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp66135 '1))))
            (let _loop63042_ ((_probe63045_ _start63038_)
                              (_i63047_ '1)
                              (_deleted63049_ '#f))
              (let ((_k63052_ (vector-ref _table63026_ _probe63045_)))
                (if (eq? _k63052_ (macro-unused-obj))
                    (if _deleted63049_
                        (begin
                          (vector-set! _table63026_ _deleted63049_ _key63022_)
                          (vector-set!
                           _table63026_
                           (let ()
                             (declare (not safe))
                             (##fx+ _deleted63049_ '1))
                           _value63023_)
                          ((lambda ()
                             (let ((__tmp66136
                                    (let ((__tmp66137
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _tab63021_))))
                                      (declare (not safe))
                                      (##fx+ __tmp66137 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63021_
                                __tmp66136)))))
                        (begin
                          (vector-set! _table63026_ _probe63045_ _key63022_)
                          (vector-set!
                           _table63026_
                           (let ()
                             (declare (not safe))
                             (##fx+ _probe63045_ '1))
                           _value63023_)
                          ((lambda ()
                             (let ((__tmp66138
                                    (let ((__tmp66139
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _tab63021_))))
                                      (declare (not safe))
                                      (##fx- __tmp66139 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63021_ __tmp66138))
                             (let ((__tmp66140
                                    (let ((__tmp66141
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _tab63021_))))
                                      (declare (not safe))
                                      (##fx+ __tmp66141 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63021_
                                __tmp66140))))))
                    (if (eq? _k63052_ (macro-deleted-obj))
                        (let ((__tmp66144
                               (let ((_next-probe63057_
                                      (fx+ _start63038_
                                           _i63047_
                                           (fx* _i63047_ _i63047_))))
                                 (declare (not safe))
                                 (##fxmodulo _next-probe63057_ _size63032_)))
                              (__tmp66143
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i63047_ '1)))
                              (__tmp66142
                               (let ((_$e63060_ _deleted63049_))
                                 (if _$e63060_ _$e63060_ _probe63045_))))
                          (declare (not safe))
                          (_loop63042_ __tmp66144 __tmp66143 __tmp66142))
                        (if (eq? _key63022_ _k63052_)
                            (begin
                              (vector-set!
                               _table63026_
                               _probe63045_
                               _key63022_)
                              (vector-set!
                               _table63026_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _probe63045_ '1))
                               _value63023_))
                            (let ((__tmp66146
                                   (let ((_next-probe63063_
                                          (fx+ _start63038_
                                               _i63047_
                                               (fx* _i63047_ _i63047_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _next-probe63063_
                                      _size63032_)))
                                  (__tmp66145
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _i63047_ '1))))
                              (declare (not safe))
                              (_loop63042_
                               __tmp66146
                               __tmp66145
                               _deleted63049_)))))))))))
    (define class-specializer-table-update!
      (lambda (_tab63016_
               _key63017_
               _class-specializer-table-update!63018_
               _default63019_)
        (if (let ((__tmp66149
                   (let () (declare (not safe)) (&raw-table-free _tab63016_)))
                  (__tmp66147
                   (let ((__tmp66148
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _tab63016_)))))
                     (declare (not safe))
                     (##fxquotient __tmp66148 '4))))
              (declare (not safe))
              (##fx< __tmp66149 __tmp66147))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63016_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _tab63016_
           _key63017_
           _class-specializer-table-update!63018_
           _default63019_))))
    (define __class-specializer-table-update!
      (lambda (_tab62970_
               _key62971_
               _class-specializer-table-update!62972_
               _default62973_)
        (let ((_table62976_
               (let () (declare (not safe)) (&raw-table-table _tab62970_)))
              (_seed62977_
               (let () (declare (not safe)) (&raw-table-seed _tab62970_))))
          (let* ((_h62979_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62971_))
                         _seed62977_))
                 (_size62982_ (vector-length _table62976_))
                 (_entries62985_
                  (let () (declare (not safe)) (##fxquotient _size62982_ '2)))
                 (_start62988_
                  (let ((__tmp66150
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _h62979_ _entries62985_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp66150 '1))))
            (let _loop62992_ ((_probe62995_ _start62988_)
                              (_i62997_ '1)
                              (_deleted62999_ '#f))
              (let ((_k63002_ (vector-ref _table62976_ _probe62995_)))
                (if (eq? _k63002_ (macro-unused-obj))
                    (if _deleted62999_
                        (begin
                          (vector-set! _table62976_ _deleted62999_ _key62971_)
                          (vector-set!
                           _table62976_
                           (let ()
                             (declare (not safe))
                             (##fx+ _deleted62999_ '1))
                           (_class-specializer-table-update!62972_
                            _default62973_))
                          ((lambda ()
                             (let ((__tmp66151
                                    (let ((__tmp66152
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _tab62970_))))
                                      (declare (not safe))
                                      (##fx+ __tmp66152 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62970_
                                __tmp66151)))))
                        (begin
                          (vector-set! _table62976_ _probe62995_ _key62971_)
                          (vector-set!
                           _table62976_
                           (let ()
                             (declare (not safe))
                             (##fx+ _probe62995_ '1))
                           (_class-specializer-table-update!62972_
                            _default62973_))
                          ((lambda ()
                             (let ((__tmp66153
                                    (let ((__tmp66154
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _tab62970_))))
                                      (declare (not safe))
                                      (##fx- __tmp66154 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _tab62970_ __tmp66153))
                             (let ((__tmp66155
                                    (let ((__tmp66156
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _tab62970_))))
                                      (declare (not safe))
                                      (##fx+ __tmp66156 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62970_
                                __tmp66155))))))
                    (if (eq? _k63002_ (macro-deleted-obj))
                        (let ((__tmp66159
                               (let ((_next-probe63007_
                                      (fx+ _start62988_
                                           _i62997_
                                           (fx* _i62997_ _i62997_))))
                                 (declare (not safe))
                                 (##fxmodulo _next-probe63007_ _size62982_)))
                              (__tmp66158
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i62997_ '1)))
                              (__tmp66157
                               (let ((_$e63010_ _deleted62999_))
                                 (if _$e63010_ _$e63010_ _probe62995_))))
                          (declare (not safe))
                          (_loop62992_ __tmp66159 __tmp66158 __tmp66157))
                        (if (eq? _key62971_ _k63002_)
                            (begin
                              (vector-set!
                               _table62976_
                               _probe62995_
                               _key62971_)
                              (vector-set!
                               _table62976_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _probe62995_ '1))
                               (_class-specializer-table-update!62972_
                                (vector-ref
                                 _table62976_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _probe62995_ '1))))))
                            (let ((__tmp66161
                                   (let ((_next-probe63013_
                                          (fx+ _start62988_
                                               _i62997_
                                               (fx* _i62997_ _i62997_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _next-probe63013_
                                      _size62982_)))
                                  (__tmp66160
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _i62997_ '1))))
                              (declare (not safe))
                              (_loop62992_
                               __tmp66161
                               __tmp66160
                               _deleted62999_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_tab62929_ _key62931_)
        (let ((_table62934_
               (let () (declare (not safe)) (&raw-table-table _tab62929_)))
              (_seed62936_
               (let () (declare (not safe)) (&raw-table-seed _tab62929_))))
          (let* ((_h62939_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62931_))
                         _seed62936_))
                 (_size62942_ (vector-length _table62934_))
                 (_entries62945_
                  (let () (declare (not safe)) (##fxquotient _size62942_ '2)))
                 (_start62948_
                  (let ((__tmp66162
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _h62939_ _entries62945_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp66162 '1))))
            (let _loop62952_ ((_probe62955_ _start62948_) (_i62957_ '1))
              (let ((_k62960_ (vector-ref _table62934_ _probe62955_)))
                (if (eq? _k62960_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k62960_ (macro-deleted-obj))
                        (let ((__tmp66164
                               (let ((_next-probe62963_
                                      (fx+ _start62948_
                                           _i62957_
                                           (fx* _i62957_ _i62957_))))
                                 (declare (not safe))
                                 (##fxmodulo _next-probe62963_ _size62942_)))
                              (__tmp66163
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i62957_ '1))))
                          (declare (not safe))
                          (_loop62952_ __tmp66164 __tmp66163))
                        (if (eq? _key62931_ _k62960_)
                            (begin
                              (vector-set!
                               _table62934_
                               _probe62955_
                               (macro-deleted-obj))
                              (vector-set!
                               _table62934_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _probe62955_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp66165
                                        (let ((__tmp66166
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _tab62929_))))
                                          (declare (not safe))
                                          (##fx- __tmp66166 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab62929_
                                    __tmp66165)))))
                            (let ((__tmp66168
                                   (let ((_next-probe62967_
                                          (fx+ _start62948_
                                               _i62957_
                                               (fx* _i62957_ _i62957_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _next-probe62967_
                                      _size62942_)))
                                  (__tmp66167
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _i62957_ '1))))
                              (declare (not safe))
                              (_loop62952_ __tmp66168 __tmp66167)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_klass62921_)
        (let ()
          (let ((_$e62924_
                 (let ()
                   (declare (not safe))
                   (__lookup-class-specializer _klass62921_))))
            (if _$e62924_
                _$e62924_
                (let ((_method-table62927_
                       (let ()
                         (declare (not safe))
                         (__specialize-class _klass62921_))))
                  (let ()
                    (declare (not safe))
                    (__bind-class-specializer!
                     _klass62921_
                     _method-table62927_))
                  _method-table62927_))))))
    (define __lookup-class-specializer
      (lambda (_klass62911_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62915_ ()
            (if (let ((__tmp66169
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp66169 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62915_))))))
        (let ((_method-table62919_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _klass62911_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _method-table62919_)))
    (define __bind-class-specializer!
      (lambda (_klass62902_ _method-table62903_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62907_ ()
            (if (let ((__tmp66170
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp66170 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62907_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _klass62902_
           _method-table62903_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_klass62887_ _method-table62888_ _method62889_ _proc62890_)
        (let ((_$e62892_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _method-table62888_ _method62889_ '#f))))
          (if _$e62892_
              _$e62892_
              (let ((_$e62895_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _proc62890_))))
                (if _$e62895_
                    ((lambda (_specialize62898_)
                       (let ((_specialized-proc62900_
                              (_specialize62898_
                               _klass62887_
                               _method-table62888_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _method-table62888_
                          _method62889_
                          _specialized-proc62900_)))
                     _$e62895_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _method-table62888_
                       _method62889_
                       _proc62890_))))))))
    (define __specialize-class
      (lambda (_klass62833_)
        (if (let ((__tmp66171
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of? _klass62833_ 'class))))
              (declare (not safe))
              (not __tmp66171))
            (if (let () (declare (not safe)) (##type? _klass62833_))
                (let ((__tmp66172
                       (let ()
                         (declare (not safe))
                         (__shadow-class _klass62833_))))
                  (declare (not safe))
                  (__specialize-class __tmp66172))
                (let ()
                  (declare (not safe))
                  (error '"bad class; cannot specialize" _klass62833_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _klass62833_))
                (let ((__method65946
                       (let ()
                         (declare (not safe))
                         (__method-ref _klass62833_ 'specialize-class))))
                  (if __method65946
                      (__method65946 _klass62833_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _klass62833_
                               'specialize-class))))
                (if (let ((__tmp66173
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _klass62833_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp66173))
                    (let ()
                      (declare (not safe))
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _klass62833_))
                    (let ((_method-table62835_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _loop62837_ ((_rest62839_
                                         (let ()
                                           (declare (not safe))
                                           (class-precedence-list
                                            _klass62833_))))
                        (let* ((_rest6284062848_ _rest62839_)
                               (_else6284262856_
                                (lambda () _method-table62835_))
                               (_K6284462875_
                                (lambda (_rest62859_ _xklass62860_)
                                  (let ((_xmethod-table6286162863_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _xklass62860_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _xmethod-table6286162863_
                                        (let* ((_xmethod-table62866_
                                                _xmethod-table6286162863_)
                                               (__tmp66174
                                                (lambda (_g6286762870_
                                                         _g6286862872_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _klass62833_
                                                     _method-table62835_
                                                     _g6286762870_
                                                     _g6286862872_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _xmethod-table62866_
                                           __tmp66174))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_loop62837_ _rest62859_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6284062848_))
                              (let ((_hd6284562878_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6284062848_)))
                                    (_tl6284662880_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6284062848_))))
                                (let* ((_xklass62883_ _hd6284562878_)
                                       (_rest62885_ _tl6284662880_))
                                  (declare (not safe))
                                  (_K6284462875_ _rest62885_ _xklass62883_)))
                              (let ()
                                (declare (not safe))
                                (_else6284262856_)))))))))))
    (define seal-class!
      (lambda (_klass62831_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass62831_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _klass62831_)))
        (let () (declare (not safe)) (__seal-class! _klass62831_))))
    (define __seal-class!
      (lambda (_klass62826_)
        (let ()
          (if (let () (declare (not safe)) (__class-type-sealed? _klass62826_))
              '#!void
              (begin
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _klass62826_))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (error '"cannot seal non-final class" _klass62826_)))
                (if (let ()
                      (declare (not safe))
                      (__class-type-metaclass? _klass62826_))
                    (let ((__method65947
                           (let ()
                             (declare (not safe))
                             (__method-ref _klass62826_ 'seal-class!))))
                      (if __method65947
                          (__method65947 _klass62826_)
                          (let ()
                            (declare (not safe))
                            (error '"Missing method"
                                   _klass62826_
                                   'seal-class!))))
                    (if (let ((__tmp66175
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _klass62826_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp66175))
                        (let ()
                          (declare (not safe))
                          (error '"cannot seal class that extends metaclass without a metaclass"
                                 _klass62826_))
                        (let ((_method-table62829_
                               (let ()
                                 (declare (not safe))
                                 (specialize-class _klass62826_))))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _klass62826_
                           _method-table62829_
                           '11
                           '#f
                           '#f))))
                (let ()
                  (declare (not safe))
                  (__class-type-seal! _klass62826_)))))))
    (define next-method
      (lambda (_subklass62822_ _obj62823_ _id62824_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _subklass62822_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _subklass62822_)))
        (if (let () (declare (not safe)) (symbol? _id62824_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _id62824_)))
        (let ()
          (declare (not safe))
          (__next-method _subklass62822_ _obj62823_ _id62824_))))
    (define __next-method
      (lambda (_subklass62776_ _obj62777_ _id62778_)
        (let ()
          (letrec ((_find-next-method62781_
                    (lambda (_klass62783_)
                      (let _lp62785_ ((_rest62787_
                                       (let ()
                                         (declare (not safe))
                                         (class-precedence-list
                                          _klass62783_))))
                        (let* ((_rest6278862796_ _rest62787_)
                               (_else6279062804_ (lambda () '#f))
                               (_K6279262810_
                                (lambda (_rest62807_ _klass62808_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _subklass62776_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _klass62808_)))
                                      (let ()
                                        (declare (not safe))
                                        (__mixin-find-method
                                         _rest62807_
                                         _obj62777_
                                         _id62778_))
                                      (let ()
                                        (declare (not safe))
                                        (_lp62785_ _rest62807_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6278862796_))
                              (let ((_hd6279362813_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6278862796_)))
                                    (_tl6279462815_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6278862796_))))
                                (let* ((_klass62818_ _hd6279362813_)
                                       (_rest62820_ _tl6279462815_))
                                  (declare (not safe))
                                  (_K6279262810_ _rest62820_ _klass62818_)))
                              (let ()
                                (declare (not safe))
                                (_else6279062804_))))))))
            (let ((__tmp66176
                   (let () (declare (not safe)) (__class-of _obj62777_))))
              (declare (not safe))
              (_find-next-method62781_ __tmp66176))))))
    (define call-next-method
      (lambda (_subklass62771_ _obj62772_ _id62773_ . _args62774_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _subklass62771_ 'class))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'class::t
                     _subklass62771_)))
        (if (let () (declare (not safe)) (symbol? _id62773_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad argument; contract violation"
                     'symbol::t
                     _id62773_)))
        (apply __call-next-method
               _subklass62771_
               _obj62772_
               _id62773_
               _args62774_)))
    (define __call-next-method
      (lambda (_subklass62760_ _obj62761_ _id62762_ . _args62763_)
        (let ()
          (let ((_$e62766_
                 (let ()
                   (declare (not safe))
                   (__next-method _subklass62760_ _obj62761_ _id62762_))))
            (if _$e62766_
                ((lambda (_methodf62769_)
                   (apply _methodf62769_ _obj62761_ _args62763_))
                 _$e62766_)
                (let ()
                  (declare (not safe))
                  (error '"cannot find next method"
                         'object:
                         _obj62761_
                         'method:
                         _id62762_)))))))
    (define write-style (lambda (_we62758_) (macro-writeenv-style _we62758_)))
    (define write-object
      (lambda (_we62750_ _obj62751_)
        (let ((_$e62753_
               (let () (declare (not safe)) (__method-ref _obj62751_ ':wr))))
          (if _$e62753_
              ((lambda (_method62756_) (_method62756_ _obj62751_ _we62750_))
               _$e62753_)
              (let ()
                (declare (not safe))
                (##default-wr _we62750_ _obj62751_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_type62669_)
        (letrec ((_shadow-type-id62671_
                  (lambda (_type62748_)
                    (let ((__tmp66177
                           (let ()
                             (declare (not safe))
                             (##type-name _type62748_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp66177 '"::t"))))
                 (_shadow-type-name62672_
                  (lambda (_type62746_)
                    (let () (declare (not safe)) (##type-name _type62746_))))
                 (_make-shadow-class62673_
                  (lambda (_type62738_ _precedence-list62739_)
                    (let* ((_super62741_
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _precedence-list62739_))
                                (cons (car _precedence-list62739_) '())
                                '()))
                           (_klass62743_
                            (let ((__tmp66180
                                   (let ()
                                     (declare (not safe))
                                     (_shadow-type-id62671_ _type62738_)))
                                  (__tmp66179
                                   (let ()
                                     (declare (not safe))
                                     (##type-name _type62738_)))
                                  (__tmp66178
                                   (cons (cons 'struct: '#t)
                                         (cons (cons 'system: '#t)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (type-extensible?
                                                      _type62738_))
                                                   '()
                                                   (cons (cons 'final: '#t)
                                                         '()))))))
                              (declare (not safe))
                              (make-class-type
                               __tmp66180
                               __tmp66179
                               _super62741_
                               '()
                               __tmp66178
                               '#f))))
                      (let ((__tmp66181
                             (let ()
                               (declare (not safe))
                               (##type-id _type62738_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp66181
                         _klass62743_))
                      _klass62743_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _again62677_ ()
              (if (let ((__tmp66182
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp66182 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (let () (declare (not safe)) (_again62677_))))))
          (let ((_$e62681_
                 (let ((__tmp66183
                        (let () (declare (not safe)) (##type-id _type62669_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp66183 '#f))))
            (if _$e62681_
                ((lambda (_klass62684_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _klass62684_)
                 _$e62681_)
                (let _loop62686_ ((_super62688_
                                   (let ()
                                     (declare (not safe))
                                     (##type-super _type62669_)))
                                  (_hierarchy62689_ '()))
                  (if (let () (declare (not safe)) (not _super62688_))
                      (let _loop62691_ ((_rest62693_ _hierarchy62689_)
                                        (_precedence-list62694_ '()))
                        (let* ((_rest6269562703_ _rest62693_)
                               (_else6269762713_
                                (lambda ()
                                  (let ((_klass62711_
                                         (let ()
                                           (declare (not safe))
                                           (_make-shadow-class62673_
                                            _type62669_
                                            _precedence-list62694_))))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _klass62711_)))
                               (_K6269962726_
                                (lambda (_rest62716_ _type62717_)
                                  (let ((_$e62719_
                                         (let ((__tmp66184
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _type62717_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp66184
                                            '#f))))
                                    (if _$e62719_
                                        ((lambda (_klass62722_)
                                           (let ((__tmp66185
                                                  (cons _klass62722_
                                                        _precedence-list62694_)))
                                             (declare (not safe))
                                             (_loop62691_
                                              _rest62716_
                                              __tmp66185)))
                                         _$e62719_)
                                        (let* ((_klass62724_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-shadow-class62673_
                                                   _type62717_
                                                   _precedence-list62694_)))
                                               (__tmp66186
                                                (cons _klass62724_
                                                      _precedence-list62694_)))
                                          (declare (not safe))
                                          (_loop62691_
                                           _rest62716_
                                           __tmp66186)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6269562703_))
                              (let ((_hd6270062729_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6269562703_)))
                                    (_tl6270162731_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6269562703_))))
                                (let* ((_type62734_ _hd6270062729_)
                                       (_rest62736_ _tl6270162731_))
                                  (declare (not safe))
                                  (_K6269962726_ _rest62736_ _type62734_)))
                              (let ()
                                (declare (not safe))
                                (_else6269762713_)))))
                      (let ((__tmp66188
                             (let ()
                               (declare (not safe))
                               (##type-super _super62688_)))
                            (__tmp66187 (cons _super62688_ _hierarchy62689_)))
                        (declare (not safe))
                        (_loop62686_ __tmp66188 __tmp66187)))))))))
    (define class-of
      (lambda (_obj62667_)
        (let () (declare (not safe)) (__class-of _obj62667_))))
    (define __class-of
      (lambda (_obj62654_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_t62658_ (let () (declare (not safe)) (##type _obj62654_))))
            (if (fx= _t62658_ (macro-type-subtyped))
                (let ((_st62660_
                       (let () (declare (not safe)) (##subtype _obj62654_))))
                  (if (fx= _st62660_ (macro-subtype-structure))
                      (let ((_klass62662_
                             (let ()
                               (declare (not safe))
                               (##structure-type _obj62654_))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _klass62662_ 'class))
                            _klass62662_
                            (let ()
                              (declare (not safe))
                              (__shadow-class _klass62662_))))
                      (if (fx= _st62660_ (macro-subtype-boxvalues))
                          (if (let ((__tmp66189
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _obj62654_))))
                                (declare (not safe))
                                (##fx= __tmp66189 '1))
                              (let ()
                                (declare (not safe))
                                (__system-class 'box))
                              (let ()
                                (declare (not safe))
                                (__system-class 'values)))
                          (let ((_$e62664_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref __subtype-id _st62660_))))
                            (if _$e62664_
                                (let ()
                                  (declare (not safe))
                                  (__system-class _$e62664_))
                                (let ()
                                  (declare (not safe))
                                  (error '"unknown class"
                                         'subtype:
                                         _st62660_
                                         'object:
                                         _obj62654_)))))))
                (if (fx= _t62658_ (macro-type-mem2))
                    (let () (declare (not safe)) (__system-class 'pair))
                    (if (fx= _t62658_ (macro-type-fixnum))
                        (let () (declare (not safe)) (__system-class 'fixnum))
                        (if (let () (declare (not safe)) (char? _obj62654_))
                            (let ()
                              (declare (not safe))
                              (__system-class 'char))
                            (if (eq? _obj62654_ '())
                                (let ()
                                  (declare (not safe))
                                  (__system-class 'null))
                                (if (eq? _obj62654_ '#f)
                                    (let ()
                                      (declare (not safe))
                                      (__system-class 'boolean))
                                    (if (eq? _obj62654_ '#t)
                                        (let ()
                                          (declare (not safe))
                                          (__system-class 'boolean))
                                        (if (eq? _obj62654_ '#!void)
                                            (let ()
                                              (declare (not safe))
                                              (__system-class 'void))
                                            (if (eq? _obj62654_ '#!eof)
                                                (let ()
                                                  (declare (not safe))
                                                  (__system-class 'eof))
                                                (let ()
                                                  (declare (not safe))
                                                  (__system-class
                                                   'special)))))))))))))))
    (define __subtype-id (let () (declare (not safe)) (##make-vector '32 '#f)))
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
      (lambda (_id62649_)
        (let ((_$e62651_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _id62649_ '#f))))
          (if _$e62651_
              _$e62651_
              (let ()
                (declare (not safe))
                (error '"unknown system class" _id62649_))))))
    (define __make-system-class
      (lambda (_id62644_ _super62645_)
        (let ((_klass62647_
               (let ()
                 (declare (not safe))
                 (make-class-type
                  _id62644_
                  _id62644_
                  _super62645_
                  '()
                  '((system: . #t))
                  '#f))))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _id62644_ _klass62647_))
          _klass62647_)))))
