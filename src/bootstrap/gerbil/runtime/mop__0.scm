(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1709127355)
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
      (let* ((_slots64447_
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
             (_slot-vector64449_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots64447_))))
             (_slot-table64456_
              (let ((_slot-table64451_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot64453_ _field64454_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table64451_
                      _slot64453_
                      _field64454_))
                   (let ((__tmp64597 (symbol->keyword _slot64453_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table64451_
                      __tmp64597
                      _field64454_)))
                 _slots64447_
                 (let ((__tmp64598 (length _slots64447_)))
                   (declare (not safe))
                   (iota__1 __tmp64598 '1)))
                _slot-table64451_))
             (_flags64458_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields64464_
              (list->vector
               (apply append
                      (map (lambda (_g6445964461_) (list _g6445964461_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots64447_ '5))))))
             (_properties64466_
              (let ((__tmp64601
                     (let ((__tmp64602
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots64447_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp64602)))
                    (__tmp64599
                     (let ((__tmp64600
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp64600 '()))))
                (declare (not safe))
                (cons __tmp64601 __tmp64599)))
             (_t64468_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags64458_
                 ##type-type
                 _fields64464_
                 '()
                 _slot-vector64449_
                 _slot-table64456_
                 _properties64466_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t64468_ _t64468_))
        _t64468_))
    (define class-type?
      (lambda (_obj64445_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj64445_ class::t.id))))
    (define class-type=?
      (lambda (_x64442_ _y64443_)
        (let ((__tmp64604 (##structure-ref _x64442_ '1 class::t '#f))
              (__tmp64603 (##structure-ref _y64443_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp64604 __tmp64603))))
    (define type-opaque?
      (lambda (_type64440_)
        (let ((__tmp64605
               (let ((__tmp64606
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64440_))))
                 (declare (not safe))
                 (##fxand __tmp64606 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp64605 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type64438_)
        (let ((__tmp64607
               (let ((__tmp64608
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64438_))))
                 (declare (not safe))
                 (##fxand __tmp64608 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp64607 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type64436_)
        (let ((__tmp64609
               (let ((__tmp64610
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64436_))))
                 (declare (not safe))
                 (##fxand __tmp64610 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp64609 '0))))
    (define class-type-struct?
      (lambda (_klass64434_)
        (let ((__tmp64611
               (let ((__tmp64612
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64434_))))
                 (declare (not safe))
                 (##fxand __tmp64612 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp64611 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass64432_)
        (let ((__tmp64613
               (let ((__tmp64614
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64432_))))
                 (declare (not safe))
                 (##fxand __tmp64614 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp64613 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass64430_)
        (let ((__tmp64615
               (let ((__tmp64616
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64430_))))
                 (declare (not safe))
                 (##fxand __tmp64616 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp64615 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties64396_)
        (map (lambda (_e6439764399_)
               (let* ((_g6440164408_ _e6439764399_)
                      (_E6440364412_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (error '"No clause matching" _g6440164408_))))
                      (_K6440464418_
                       (lambda (_val64415_ _key64416_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key64416_ 'direct-supers:))
                             (let ((__tmp64617 (map class-type-id _val64415_)))
                               (declare (not safe))
                               (cons _key64416_ __tmp64617))
                             (let ()
                               (declare (not safe))
                               (cons _key64416_ _val64415_))))))
                 (if (let () (declare (not safe)) (##pair? _g6440164408_))
                     (let ((_hd6440564421_
                            (let ()
                              (declare (not safe))
                              (##car _g6440164408_)))
                           (_tl6440664423_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6440164408_))))
                       (let* ((_key64426_ _hd6440564421_)
                              (_val64428_ _tl6440664423_))
                         (declare (not safe))
                         (_K6440464418_ _val64428_ _key64426_)))
                     (let () (declare (not safe)) (_E6440364412_)))))
             _properties64396_)))
    (define make-class-type-descriptor
      (lambda (_type-id64295_
               _type-name64296_
               _type-super64297_
               _precedence-list64298_
               _slot-vector64299_
               _properties64300_
               _constructor64301_
               _slot-table64302_
               _methods64303_)
        (letrec ((_make-props!64305_
                  (lambda (_key64365_)
                    (letrec* ((_ht64367_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!64368_
                               (lambda (_ht64389_ _slots64390_)
                                 (for-each
                                  (lambda (_g6439164393_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht64389_
                                       _g6439164393_
                                       '#t)))
                                  _slots64390_)))
                              (_put-alist!64369_
                               (lambda (_ht64378_ _key64379_ _alist64380_)
                                 (let ((_$e64382_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key64379_
                                           _alist64380_))))
                                   (if _$e64382_
                                       ((lambda (_g6438464386_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!64368_
                                             _ht64378_
                                             _g6438464386_)))
                                        _$e64382_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!64369_
                         _ht64367_
                         _key64365_
                         _properties64300_))
                      (for-each
                       (lambda (_mixin64371_)
                         (let ((_alist64373_
                                (##structure-ref
                                 _mixin64371_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist64373_))
                                   (let ((__tmp64619
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key64365_
                                             _alist64373_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp64619)))
                               (let ((__tmp64618
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin64371_))))
                                 (declare (not safe))
                                 (_put-slots!64368_ _ht64367_ __tmp64618))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!64369_
                                  _ht64367_
                                  _key64365_
                                  _alist64373_)))))
                       _precedence-list64298_)
                      _ht64367_))))
          (let* ((_transparent?64307_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties64300_)))
                 (_all-slots-printable?64312_
                  (let ((_$e64309_ _transparent?64307_))
                    (if _$e64309_
                        _$e64309_
                        (let ((__tmp64620
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties64300_))))
                          (declare (not safe))
                          (eq? '#t __tmp64620)))))
                 (_printable64314_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?64312_))
                      (let ()
                        (declare (not safe))
                        (_make-props!64305_ 'print:))
                      '#f))
                 (_all-slots-equalable?64319_
                  (let ((_$e64316_ _transparent?64307_))
                    (if _$e64316_
                        _$e64316_
                        (let ((__tmp64621
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties64300_))))
                          (declare (not safe))
                          (eq? '#t __tmp64621)))))
                 (_equalable64321_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?64319_))
                      (let ()
                        (declare (not safe))
                        (_make-props!64305_ 'equal:))
                      '#f))
                 (_first-new-field64323_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super64297_
                         'gerbil#class::t))
                      (let ((__tmp64622
                             (##structure-ref
                              _type-super64297_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp64622))
                      '1))
                 (_field-info-length64325_
                  (let ((__tmp64623
                         (let ((__tmp64624
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector64299_))))
                           (declare (not safe))
                           (##fx- __tmp64624 _first-new-field64323_))))
                    (declare (not safe))
                    (##fx* '3 __tmp64623)))
                 (_field-info64327_ (make-vector _field-info-length64325_ '#f))
                 (_struct?64329_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties64300_)))
                 (_final?64331_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties64300_)))
                 (_metaclass64339_
                  (let ((_metaclass6433264334_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties64300_))))
                    (if _metaclass6433264334_
                        (let ((_metaclass64337_ _metaclass6433264334_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass64337_
                                 'gerbil#class::t))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (error '"metaclass is not a class type"
                                       'class:
                                       _type-id64295_
                                       'metaclass:
                                       _metaclass64337_)))
                          _metaclass64337_)
                        '#f)))
                 (_opaque?64344_
                  (let ((_$e64341_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?64319_))))
                    (if _$e64341_
                        _$e64341_
                        (if _type-super64297_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super64297_))
                            '#f))))
                 (_type-flags64346_
                  (let ((__tmp64628 (if _final?64331_ '0 type-flag-extensible))
                        (__tmp64627 (if _opaque?64344_ type-flag-opaque '0))
                        (__tmp64626
                         (if _struct?64329_ class-type-flag-struct '0))
                        (__tmp64625
                         (if _metaclass64339_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp64628
                             __tmp64627
                             __tmp64626
                             __tmp64625))))
            (let _loop64349_ ((_i64351_ _first-new-field64323_) (_j64352_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j64352_ _field-info-length64325_))
                  (let* ((_slot64354_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector64299_ _i64351_)))
                         (_flags64362_
                          (if _transparent?64307_
                              '0
                              (let ((__tmp64630
                                     (if (or _all-slots-printable?64312_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable64314_
                                                _slot64354_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp64629
                                     (if (or _all-slots-equalable?64319_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable64321_
                                                _slot64354_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp64630 __tmp64629)))))
                    (vector-set! _field-info64327_ _j64352_ _slot64354_)
                    (vector-set!
                     _field-info64327_
                     (let () (declare (not safe)) (##fx+ _j64352_ '1))
                     _flags64362_)
                    (let ((__tmp64632
                           (let () (declare (not safe)) (##fx+ _i64351_ '1)))
                          (__tmp64631
                           (let () (declare (not safe)) (##fx+ _j64352_ '3))))
                      (declare (not safe))
                      (_loop64349_ __tmp64632 __tmp64631)))
                  '#!void))
            (if _metaclass64339_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass64339_
                   _type-id64295_
                   _type-name64296_
                   _type-flags64346_
                   _type-super64297_
                   _field-info64327_
                   _precedence-list64298_
                   _slot-vector64299_
                   _slot-table64302_
                   _properties64300_
                   _constructor64301_
                   _methods64303_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id64295_
                   _type-name64296_
                   _type-flags64346_
                   _type-super64297_
                   _field-info64327_
                   _precedence-list64298_
                   _slot-vector64299_
                   _slot-table64302_
                   _properties64300_
                   _constructor64301_
                   _methods64303_)))))))
    (define class-type-id
      (lambda (_klass64293_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64293_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass64291_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64291_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass64288_ _val64289_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64288_ _val64289_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass64283_ _val64285_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64283_
           _val64285_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass64281_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64281_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass64279_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64279_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass64276_ _val64277_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64276_ _val64277_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass64271_ _val64273_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64271_
           _val64273_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass64269_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64269_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass64267_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64267_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass64264_ _val64265_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64264_ _val64265_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass64259_ _val64261_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64259_
           _val64261_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass64257_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64257_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass64255_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64255_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass64252_ _val64253_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64252_ _val64253_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass64247_ _val64249_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64247_
           _val64249_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass64245_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64245_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass64243_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64243_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass64240_ _val64241_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64240_ _val64241_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass64235_ _val64237_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64235_
           _val64237_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass64233_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64233_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass64231_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass64231_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass64228_ _val64229_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass64228_
           _val64229_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass64223_ _val64225_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64223_
           _val64225_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass64221_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64221_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass64219_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64219_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass64216_ _val64217_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass64216_
           _val64217_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass64211_ _val64213_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64211_
           _val64213_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass64209_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64209_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass64207_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64207_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass64204_ _val64205_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64204_ _val64205_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass64199_ _val64201_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64199_
           _val64201_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass64197_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64197_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass64195_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64195_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass64192_ _val64193_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64192_ _val64193_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass64187_ _val64189_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64187_
           _val64189_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass64185_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64185_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass64183_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64183_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass64180_ _val64181_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass64180_
           _val64181_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass64175_ _val64177_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64175_
           _val64177_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass64173_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64173_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass64171_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64171_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass64168_ _val64169_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64168_ _val64169_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass64163_ _val64165_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64163_
           _val64165_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass64161_)
        (cdr (vector->list (##structure-ref _klass64161_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass64159_)
        (let ((__tmp64633
               (let ((__tmp64634
                      (##structure-ref _klass64159_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp64634))))
          (declare (not safe))
          (##fx- __tmp64633 '1))))
    (define class-type-seal!
      (lambda (_klass64157_)
        (let ((__tmp64635
               (let ((__tmp64636
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64157_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp64636))))
          (declare (not safe))
          (##structure-set!
           _klass64157_
           __tmp64635
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass64155_)
        (let ((__tmp64637
               (let ((__tmp64638
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64155_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp64638))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64155_
           __tmp64637
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct64146_ _maybe-super-struct64147_)
        (let ((_maybe-super-struct-id64149_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct64147_))))
          (let _lp64151_ ((_super-struct64153_ _maybe-sub-struct64146_))
            (if (let () (declare (not safe)) (not _super-struct64153_))
                '#f
                (if (let ((__tmp64640
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct64153_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id64149_ __tmp64640))
                    '#t
                    (let ((__tmp64639
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct64153_))))
                      (declare (not safe))
                      (_lp64151_ __tmp64639))))))))
    (define base-struct/1
      (lambda (_klass64144_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64144_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass64144_))
                _klass64144_
                (let () (declare (not safe)) (##type-super _klass64144_)))
            (if (let () (declare (not safe)) (not _klass64144_))
                '#f
                (let ()
                  (declare (not safe))
                  (error '"not a class or false" _klass64144_))))))
    (define base-struct/2
      (lambda (_klass164132_ _klass264133_)
        (let ((_s164135_
               (let () (declare (not safe)) (base-struct/1 _klass164132_)))
              (_s264136_
               (let () (declare (not safe)) (base-struct/1 _klass264133_))))
          (if (or (let () (declare (not safe)) (not _s164135_))
                  (and _s264136_
                       (let ()
                         (declare (not safe))
                         (substruct? _s164135_ _s264136_))))
              _s264136_
              (if (or (let () (declare (not safe)) (not _s264136_))
                      (and _s164135_
                           (let ()
                             (declare (not safe))
                             (substruct? _s264136_ _s164135_))))
                  _s164135_
                  (let ()
                    (declare (not safe))
                    (error '"bad mixin: incompatible struct bases"
                           _klass164132_
                           _klass264133_
                           _s164135_
                           _s264136_)))))))
    (define base-struct/list
      (lambda (_all-supers64016_)
        (let* ((_all-supers6401764042_ _all-supers64016_)
               (_E6402264046_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _all-supers6401764042_)))))
          (let ((_K6404064129_ (lambda () '#f))
                (_K6403764115_
                 (lambda (_x64113_)
                   (let () (declare (not safe)) (base-struct/1 _x64113_))))
                (_K6403264092_
                 (lambda (_y64089_ _x64090_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x64090_ _y64089_))))
                (_K6402364053_
                 (lambda (_y64050_ _x64051_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x64051_ _y64050_)))))
            (let* ((___match6459164592_
                    (lambda (_hd6402464056_ _tl6402564058_)
                      (let ((_x64061_ _hd6402464056_))
                        (letrec ((_splice-rest6402764063_
                                  (lambda (_rest6403164070_ _y64072_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6403164070_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6402364053_ _y64072_ _x64061_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6402264046_)))))
                                 (_splice-try6402964065_
                                  (lambda (_hd6403064074_
                                           _rest6403164076_
                                           _y6402664077_)
                                    (let ((_y64080_ _hd6403064074_))
                                      (let ((__tmp64642
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6403164076_)))
                                            (__tmp64641
                                             (let ()
                                               (declare (not safe))
                                               (cons _y64080_ _y6402664077_))))
                                        (declare (not safe))
                                        (_splice-loop6402864067_
                                         __tmp64642
                                         __tmp64641)))))
                                 (_splice-loop6402864067_
                                  (lambda (_rest6403164082_ _y6402664083_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6403164082_))
                                        (let ((__tmp64644
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6403164082_))))
                                          (declare (not safe))
                                          (_splice-try6402964065_
                                           __tmp64644
                                           _rest6403164082_
                                           _y6402664083_))
                                        (let ((__tmp64643
                                               (reverse _y6402664083_)))
                                          (declare (not safe))
                                          (_splice-rest6402764063_
                                           _rest6403164082_
                                           __tmp64643))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6402864067_ _tl6402564058_ '()))))))
                   (_try-match6401964125_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6401764042_))
                          (let ((_tl6403964120_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6401764042_)))
                                (_hd6403864118_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6401764042_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6403964120_))
                                (let ((_x64123_ _hd6403864118_))
                                  (declare (not safe))
                                  (base-struct/1 _x64123_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6403964120_))
                                    (let ((_tl6403664104_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6403964120_)))
                                          (_hd6403564102_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6403964120_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6403664104_))
                                          (let ((_x64100_ _hd6403864118_)
                                                (_y64107_ _hd6403564102_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6403264092_
                                               _y64107_
                                               _x64100_)))
                                          (___match6459164592_
                                           _hd6403864118_
                                           _tl6403964120_)))
                                    (___match6459164592_
                                     _hd6403864118_
                                     _tl6403964120_))))
                          (let () (declare (not safe)) (_E6402264046_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6401764042_))
                  (let () (declare (not safe)) (_K6404064129_))
                  (let () (declare (not safe)) (_try-match6401964125_))))))))
    (define base-struct
      (lambda _all-supers64014_
        (let () (declare (not safe)) (base-struct/list _all-supers64014_))))
    (define find-super-constructor
      (lambda (_super63966_)
        (let _lp63968_ ((_rest63970_ _super63966_) (_constructor63971_ '#f))
          (let* ((_rest6397263980_ _rest63970_)
                 (_else6397463988_ (lambda () _constructor63971_))
                 (_K6397664002_
                  (lambda (_rest63991_ _hd63992_)
                    (let ((_$e63994_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd63992_
                              '10
                              class::t
                              '#f))))
                      (if _$e63994_
                          ((lambda (_xconstructor63997_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor63971_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor63971_
                                            _xconstructor63997_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp63968_ _rest63991_ _xconstructor63997_))
                                 (let ()
                                   (declare (not safe))
                                   (error '"conflicting implicit constructors"
                                          _constructor63971_
                                          _xconstructor63997_))))
                           _$e63994_)
                          (let ()
                            (declare (not safe))
                            (_lp63968_ _rest63991_ _constructor63971_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6397263980_))
                (let ((_hd6397764005_
                       (let () (declare (not safe)) (##car _rest6397263980_)))
                      (_tl6397864007_
                       (let () (declare (not safe)) (##cdr _rest6397263980_))))
                  (let* ((_hd64010_ _hd6397764005_)
                         (_rest64012_ _tl6397864007_))
                    (declare (not safe))
                    (_K6397664002_ _rest64012_ _hd64010_)))
                (let () (declare (not safe)) (_else6397463988_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list63942_ _direct-slots63943_)
        (let* ((_next-slot63945_ '1)
               (_slot-table63947_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots63949_ '(__class))
               (_process-slot63953_
                (lambda (_slot63951_)
                  (if (let () (declare (not safe)) (symbol? _slot63951_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"invalid slot name" _slot63951_)))
                  (if (let ((__tmp64646
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table63947_
                                _slot63951_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp64646 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table63947_
                           _slot63951_
                           _next-slot63945_))
                        (let ((__tmp64645 (symbol->keyword _slot63951_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table63947_
                           __tmp64645
                           _next-slot63945_))
                        (set! _r-slots63949_
                              (let ()
                                (declare (not safe))
                                (cons _slot63951_ _r-slots63949_)))
                        (set! _next-slot63945_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot63945_ '1))))
                      '#!void)))
               (_process-slots63959_
                (lambda (_g6395463956_)
                  (for-each _process-slot63953_ _g6395463956_))))
          (for-each
           (lambda (_mixin63962_)
             (let ((__tmp64647
                    (let ((__tmp64648
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin63962_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp64648 '()))))
               (declare (not safe))
               (_process-slots63959_ __tmp64647)))
           (reverse _class-precedence-list63942_))
          (let ()
            (declare (not safe))
            (_process-slots63959_ _direct-slots63943_))
          (let ((_slot-vector63964_ (list->vector (reverse _r-slots63949_))))
            (values _slot-vector63964_ _slot-table63947_)))))
    (define make-class-type
      (lambda (_id63904_
               _name63905_
               _direct-supers63906_
               _direct-slots63907_
               _properties63908_
               _constructor63909_)
        (let ((_$e63914_
               (let ((__tmp64649
                      (lambda (_$obj63911_)
                        (let ((__tmp64650
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj63911_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp64650)))))
                 (declare (not safe))
                 (find __tmp64649 _direct-supers63906_))))
          (if _$e63914_
              ((lambda (_g6391663918_)
                 (let ()
                   (declare (not safe))
                   (error '"Illegal super class; not a class descriptor"
                          _g6391663918_)))
               _$e63914_)
              (let ((_$e63921_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers63906_))))
                (if _$e63921_
                    ((lambda (_g6392363925_)
                       (let ()
                         (declare (not safe))
                         (error '"Cannot extend final class" _g6392363925_)))
                     _$e63921_)
                    '#!void))))
        (let ((_g64651_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers63906_))))
          (begin
            (let ((_g64652_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g64651_) (##vector-length _g64651_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g64652_ 2)))
                  (error "Context expects 2 values" _g64652_)))
            (let ((_precedence-list63928_
                   (let () (declare (not safe)) (##vector-ref _g64651_ 0)))
                  (_struct-super63929_
                   (let () (declare (not safe)) (##vector-ref _g64651_ 1))))
              (let ((_g64653_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list63928_
                        _direct-slots63907_))))
                (begin
                  (let ((_g64654_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g64653_)
                               (##vector-length _g64653_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g64654_ 2)))
                        (error "Context expects 2 values" _g64654_)))
                  (let ((_slot-vector63931_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g64653_ 0)))
                        (_slot-table63932_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g64653_ 1))))
                    (let* ((_properties63934_
                            (let ((__tmp64657
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots63907_)))
                                  (__tmp64655
                                   (let ((__tmp64656
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers63906_))))
                                     (declare (not safe))
                                     (cons __tmp64656 _properties63908_))))
                              (declare (not safe))
                              (cons __tmp64657 __tmp64655)))
                           (_constructor*63939_
                            (let ((_$e63936_ _constructor63909_))
                              (if _$e63936_
                                  _$e63936_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers63906_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id63904_
                         _name63905_
                         _struct-super63929_
                         _precedence-list63928_
                         _slot-vector63931_
                         _properties63934_
                         _constructor*63939_
                         _slot-table63932_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass63902_)
        (let ((__tmp64658
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass63902_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass63902_ __tmp64658))))
    (define compute-precedence-list
      (lambda (_direct-supers63900_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers63900_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass63884_)
        (let ((_tid63886_
               (let () (declare (not safe)) (##type-id _klass63884_))))
          (if (let () (declare (not safe)) (class-type-final? _klass63884_))
              (lambda (_g6388763889_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6388763889_ _tid63886_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass63884_))
                  (lambda (_g6389163893_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6389163893_ _tid63886_)))
                  (lambda (_g6389563897_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass63884_ _g6389563897_))))))))
    (define if-class-slot-field
      (lambda (_klass63873_
               _slot63874_
               _if-final63875_
               _if-struct63876_
               _if-struct-field63877_
               _if-class-slot63878_)
        (let ((_field63880_
               (let ((__tmp64659
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass63873_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp64659 _slot63874_ '#f))))
          (if (let () (declare (not safe)) (not _field63880_))
              (let ()
                (declare (not safe))
                (error '"unknown slot"
                       'class:
                       _klass63873_
                       'slot:
                       _slot63874_))
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass63873_))
                  (_if-final63875_ _klass63873_ _slot63874_ _field63880_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass63873_))
                      (_if-struct63876_ _klass63873_ _slot63874_ _field63880_)
                      (if (let ((_strukt63882_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass63873_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt63882_
                                    'gerbil#class::t))
                                 (let ((__tmp64660
                                        (let ((__tmp64661
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt63882_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp64661))))
                                   (declare (not safe))
                                   (##fx< _field63880_ __tmp64660))))
                          (_if-struct-field63877_
                           _klass63873_
                           _slot63874_
                           _field63880_)
                          (_if-class-slot63878_
                           _klass63873_
                           _slot63874_
                           _field63880_))))))))
    (define make-class-slot-accessor
      (lambda (_klass63870_ _slot63871_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63870_
           _slot63871_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass63867_ _slot63868_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63867_
           _slot63868_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass63864_ _slot63865_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63864_
           _slot63865_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass63861_ _slot63862_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63861_
           _slot63862_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object63845_ _class63846_ _slot63847_)
        (apply error
               '"not an instance"
               'object:
               _object63845_
               'class:
               _class63846_
               (if _slot63847_
                   (let ((__tmp64662
                          (let ()
                            (declare (not safe))
                            (cons _slot63847_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp64662))
                   '()))))
    (define not-an-instance__0
      (lambda (_object63852_ _class63853_)
        (let ((_slot63855_ '#f))
          (declare (not safe))
          (not-an-instance__% _object63852_ _class63853_ _slot63855_))))
    (define not-an-instance
      (lambda _g64664_
        (let ((_g64663_ (let () (declare (not safe)) (##length _g64664_))))
          (cond ((let () (declare (not safe)) (##fx= _g64663_ 2))
                 (apply (lambda (_object63852_ _class63853_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object63852_ _class63853_)))
                        _g64664_))
                ((let () (declare (not safe)) (##fx= _g64663_ 3))
                 (apply (lambda (_object63857_ _class63858_ _slot63859_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object63857_
                             _class63858_
                             _slot63859_)))
                        _g64664_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g64664_))))))
    (define make-final-slot-accessor
      (lambda (_klass63838_ _slot63839_ _field63840_)
        (lambda (_obj63842_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj63842_
             _field63840_
             _klass63838_
             _slot63839_)))))
    (define make-final-slot-mutator
      (lambda (_klass63831_ _slot63832_ _field63833_)
        (lambda (_obj63835_ _val63836_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj63835_
             _val63836_
             _field63833_
             _klass63831_
             _slot63832_)))))
    (define make-struct-slot-accessor
      (lambda (_klass63825_ _slot63826_ _field63827_)
        (lambda (_obj63829_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj63829_
             _field63827_
             _klass63825_
             _slot63826_)))))
    (define make-struct-slot-mutator
      (lambda (_klass63818_ _slot63819_ _field63820_)
        (lambda (_obj63822_ _val63823_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj63822_
             _val63823_
             _field63820_
             _klass63818_
             _slot63819_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass63812_ _slot63813_ _field63814_)
        (lambda (_obj63816_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj63816_
             _field63814_
             _klass63812_
             _slot63813_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass63805_ _slot63806_ _field63807_)
        (lambda (_obj63809_ _val63810_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj63809_
             _val63810_
             _field63807_
             _klass63805_
             _slot63806_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass63799_ _slot63800_ _field63801_)
        (lambda (_obj63803_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass63799_ _obj63803_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj63803_ _field63801_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj63803_ _klass63799_ _slot63800_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass63792_ _slot63793_ _field63794_)
        (lambda (_obj63796_ _val63797_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass63792_ _obj63796_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63796_ _field63794_ _val63797_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj63796_ _klass63792_ _slot63793_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass63786_ _slot63787_ _field63788_)
        (lambda (_obj63790_)
          (if (let ((__tmp64665
                     (let () (declare (not safe)) (##type-id _klass63786_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63790_ __tmp64665))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj63790_ _field63788_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass63786_ _obj63790_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj63790_ _slot63787_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj63790_
                     _klass63786_
                     _slot63787_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass63779_ _slot63780_ _field63781_)
        (lambda (_obj63783_ _val63784_)
          (if (let ((__tmp64666
                     (let () (declare (not safe)) (##type-id _klass63779_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63783_ __tmp64666))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63783_ _field63781_ _val63784_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass63779_ _obj63783_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj63783_ _slot63780_ _val63784_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj63783_
                     _klass63779_
                     _slot63780_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass63773_ _slot63774_ _field63775_)
        (lambda (_obj63777_)
          (if (let ((__tmp64667
                     (let () (declare (not safe)) (##type-id _klass63773_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63777_ __tmp64667))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj63777_ _field63775_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj63777_ _slot63774_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass63766_ _slot63767_ _field63768_)
        (lambda (_obj63770_ _val63771_)
          (if (let ((__tmp64668
                     (let () (declare (not safe)) (##type-id _klass63766_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63770_ __tmp64668))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63770_ _field63768_ _val63771_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj63770_ _slot63767_ _val63771_))))))
    (define class-slot-offset
      (lambda (_klass63763_ _slot63764_)
        (let ((__tmp64669
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass63763_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp64669 _slot63764_ '#f))))
    (define class-slot-ref
      (lambda (_klass63757_ _obj63758_ _slot63759_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass63757_ _obj63758_))
            (let ((_off63761_
                   (let ((__tmp64670 (object-type _obj63758_)))
                     (declare (not safe))
                     (class-slot-offset __tmp64670 _slot63759_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj63758_
               _off63761_
               _klass63757_
               _slot63759_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj63758_ _klass63757_)))))
    (define class-slot-set!
      (lambda (_klass63750_ _obj63751_ _slot63752_ _val63753_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass63750_ _obj63751_))
            (let ((_off63755_
                   (let ((__tmp64671 (object-type _obj63751_)))
                     (declare (not safe))
                     (class-slot-offset __tmp64671 _slot63752_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj63751_
               _val63753_
               _off63755_
               _klass63750_
               _slot63752_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj63751_ _klass63750_)))))
    (define unchecked-field-ref
      (lambda (_obj63747_ _off63748_)
        (let ((__tmp64672
               (let () (declare (not safe)) (##structure-type _obj63747_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj63747_ _off63748_ __tmp64672 '#f))))
    (define unchecked-field-set!
      (lambda (_obj63743_ _off63744_ _val63745_)
        (let ((__tmp64673
               (let () (declare (not safe)) (##structure-type _obj63743_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj63743_
           _val63745_
           _off63744_
           __tmp64673
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj63740_ _slot63741_)
        (let ((__tmp64674
               (let ((__tmp64675
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63740_))))
                 (declare (not safe))
                 (class-slot-offset __tmp64675 _slot63741_))))
          (declare (not safe))
          (unchecked-field-ref _obj63740_ __tmp64674))))
    (define unchecked-slot-set!
      (lambda (_obj63736_ _slot63737_ _val63738_)
        (let ((__tmp64676
               (let ((__tmp64677
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63736_))))
                 (declare (not safe))
                 (class-slot-offset __tmp64677 _slot63737_))))
          (declare (not safe))
          (unchecked-field-set! _obj63736_ __tmp64676 _val63738_))))
    (define slot-ref__%
      (lambda (_obj63712_ _slot63713_ _E63714_)
        (if (object? _obj63712_)
            (let* ((_klass63716_ (object-type _obj63712_))
                   (_$e63719_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass63716_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass63716_ _slot63713_))
                        '#f)))
              (if _$e63719_
                  ((lambda (_off63722_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj63712_ _off63722_)))
                   _$e63719_)
                  (_E63714_ _obj63712_ _slot63713_)))
            (_E63714_ _obj63712_ _slot63713_))))
    (define slot-ref__0
      (lambda (_obj63727_ _slot63728_)
        (let ((_E63730_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj63727_ _slot63728_ _E63730_))))
    (define slot-ref
      (lambda _g64679_
        (let ((_g64678_ (let () (declare (not safe)) (##length _g64679_))))
          (cond ((let () (declare (not safe)) (##fx= _g64678_ 2))
                 (apply (lambda (_obj63727_ _slot63728_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj63727_ _slot63728_)))
                        _g64679_))
                ((let () (declare (not safe)) (##fx= _g64678_ 3))
                 (apply (lambda (_obj63732_ _slot63733_ _E63734_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj63732_ _slot63733_ _E63734_)))
                        _g64679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g64679_))))))
    (define slot-set!__%
      (lambda (_obj63684_ _slot63685_ _val63686_ _E63687_)
        (if (object? _obj63684_)
            (let* ((_klass63689_ (object-type _obj63684_))
                   (_$e63692_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass63689_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass63689_ _slot63685_))
                        '#f)))
              (if _$e63692_
                  ((lambda (_off63695_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj63684_
                        _off63695_
                        _val63686_)))
                   _$e63692_)
                  (_E63687_ _obj63684_ _slot63685_)))
            (_E63687_ _obj63684_ _slot63685_))))
    (define slot-set!__0
      (lambda (_obj63700_ _slot63701_ _val63702_)
        (let ((_E63704_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj63700_ _slot63701_ _val63702_ _E63704_))))
    (define slot-set!
      (lambda _g64681_
        (let ((_g64680_ (let () (declare (not safe)) (##length _g64681_))))
          (cond ((let () (declare (not safe)) (##fx= _g64680_ 3))
                 (apply (lambda (_obj63700_ _slot63701_ _val63702_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj63700_ _slot63701_ _val63702_)))
                        _g64681_))
                ((let () (declare (not safe)) (##fx= _g64680_ 4))
                 (apply (lambda (_obj63706_ _slot63707_ _val63708_ _E63709_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj63706_
                             _slot63707_
                             _val63708_
                             _E63709_)))
                        _g64681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g64681_))))))
    (define __slot-error
      (lambda (_obj63680_ _slot63681_)
        (let ()
          (declare (not safe))
          (error '"Cannot find slot" 'object: _obj63680_ 'slot: _slot63681_))))
    (define subclass?
      (lambda (_maybe-sub-class63670_ _maybe-super-class63671_)
        (let* ((_maybe-super-class-id63673_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class63671_)))
               (_$e63675_
                (let ((__tmp64682
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class63670_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id63673_ __tmp64682))))
          (if _$e63675_
              _$e63675_
              (let ((__tmp64684
                     (lambda (_super-class63678_)
                       (let ((__tmp64685
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class63678_))))
                         (declare (not safe))
                         (eq? __tmp64685 _maybe-super-class-id63673_))))
                    (__tmp64683
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class63670_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp64684 __tmp64683))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass63667_ _obj63668_)
        (let ((__tmp64686
               (let () (declare (not safe)) (##type-id _klass63667_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj63668_ __tmp64686))))
    (define struct-instance?
      (lambda (_klass63664_ _obj63665_)
        (let ((__tmp64687
               (let () (declare (not safe)) (##type-id _klass63664_))))
          (declare (not safe))
          (##structure-instance-of? _obj63665_ __tmp64687))))
    (define class-instance?
      (lambda (_klass63659_ _obj63660_)
        (if (object? _obj63660_)
            (let ((_type63662_ (object-type _obj63660_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type63662_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type63662_ _klass63659_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass63654_ _k63655_)
        (let ((_obj63657_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass63654_ _k63655_))))
          (let () (declare (not safe)) (object-fill! _obj63657_ '#f))
          _obj63657_)))
    (define object-fill!
      (lambda (_obj63647_ _fill63648_)
        (let _loop63650_ ((_i63652_
                           (let ((__tmp64689
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj63647_))))
                             (declare (not safe))
                             (##fx- __tmp64689 '1))))
          (if (let () (declare (not safe)) (##fx> _i63652_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj63647_
                   _fill63648_
                   _i63652_
                   '#f
                   '#f))
                (let ((__tmp64688
                       (let () (declare (not safe)) (##fx- _i63652_ '1))))
                  (declare (not safe))
                  (_loop63650_ __tmp64688)))
              _obj63647_))))
    (define new-instance
      (lambda (_klass63645_)
        (let ((__obj64593
               (let ((__tmp64690
                      (let ((__tmp64691
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass63645_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp64691))))
                 (declare (not safe))
                 (##make-structure _klass63645_ __tmp64690))))
          (let () (declare (not safe)) (object-fill! __obj64593 '#f))
          __obj64593)))
    (define make-instance
      (lambda (_klass63635_ . _args63636_)
        (let* ((_obj63638_
                (let () (declare (not safe)) (new-instance _klass63635_)))
               (_$e63640_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass63635_ '10 class::t '#f))))
          (if _$e63640_
              ((lambda (_kons-id63643_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass63635_
                    _kons-id63643_
                    _obj63638_
                    _args63636_)))
               _$e63640_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass63635_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass63635_
                     _obj63638_
                     _args63636_))
                  (if (let ((__tmp64696
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass63635_))))
                        (declare (not safe))
                        (not __tmp64696))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass63635_
                         _obj63638_
                         _args63636_))
                      (if (let ((__tmp64694
                                 (let ((__tmp64695
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj63638_))))
                                   (declare (not safe))
                                   (##fx- __tmp64695 '1)))
                                (__tmp64693 (length _args63636_)))
                            (declare (not safe))
                            (##fx= __tmp64694 __tmp64693))
                          (apply ##structure _klass63635_ _args63636_)
                          (let ((__tmp64692
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass63635_))))
                            (declare (not safe))
                            (error '"arguments don't match object size"
                                   'class:
                                   _klass63635_
                                   'slots:
                                   __tmp64692
                                   'args:
                                   _args63636_)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj63632_ . _args63633_)
        (if (let ((__tmp64698 (length _args63633_))
                  (__tmp64697
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj63632_))))
              (declare (not safe))
              (##fx< __tmp64698 __tmp64697))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj63632_ _args63633_))
            (let ()
              (declare (not safe))
              (error '"too many arguments for struct"
                     'object:
                     _obj63632_
                     'args:
                     _args63633_)))))
    (define __struct-instance-init!
      (lambda (_obj63591_ _args63592_)
        (let _lp63594_ ((_k63596_ '1) (_rest63597_ _args63592_))
          (let* ((_rest6359863606_ _rest63597_)
                 (_else6360063614_ (lambda () _obj63591_))
                 (_K6360263620_
                  (lambda (_rest63617_ _hd63618_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj63591_ _k63596_ _hd63618_))
                    (let ((__tmp64699
                           (let () (declare (not safe)) (##fx+ _k63596_ '1))))
                      (declare (not safe))
                      (_lp63594_ __tmp64699 _rest63617_)))))
            (if (let () (declare (not safe)) (##pair? _rest6359863606_))
                (let ((_hd6360363623_
                       (let () (declare (not safe)) (##car _rest6359863606_)))
                      (_tl6360463625_
                       (let () (declare (not safe)) (##cdr _rest6359863606_))))
                  (let* ((_hd63628_ _hd6360363623_)
                         (_rest63630_ _tl6360463625_))
                    (declare (not safe))
                    (_K6360263620_ _rest63630_ _hd63628_)))
                (let () (declare (not safe)) (_else6360063614_)))))))
    (define class-instance-init!
      (lambda (_obj63588_ . _args63589_)
        (let ((__tmp64700 (object-type _obj63588_)))
          (declare (not safe))
          (__class-instance-init! __tmp64700 _obj63588_ _args63589_))))
    (define __class-instance-init!
      (lambda (_klass63532_ _obj63533_ _args63534_)
        (let _lp63536_ ((_rest63538_ _args63534_))
          (let* ((_rest6353963549_ _rest63538_)
                 (_else6354163557_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest63538_))
                        _obj63533_
                        (let ()
                          (declare (not safe))
                          (error '"unexpected class initializer arguments"
                                 'class:
                                 _klass63532_
                                 'rest:
                                 _rest63538_)))))
                 (_K6354363569_
                  (lambda (_rest63560_ _val63561_ _key63562_)
                    (let ((_$e63564_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass63532_ _key63562_))))
                      (if _$e63564_
                          ((lambda (_off63567_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj63533_
                                _off63567_
                                _val63561_))
                             (let ()
                               (declare (not safe))
                               (_lp63536_ _rest63560_)))
                           _$e63564_)
                          (let ()
                            (declare (not safe))
                            (error '"unknown slot"
                                   'class:
                                   _klass63532_
                                   'slot:
                                   _key63562_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6353963549_))
                (let ((_hd6354463572_
                       (let () (declare (not safe)) (##car _rest6353963549_)))
                      (_tl6354563574_
                       (let () (declare (not safe)) (##cdr _rest6353963549_))))
                  (let ((_key63577_ _hd6354463572_))
                    (if (let () (declare (not safe)) (##pair? _tl6354563574_))
                        (let ((_hd6354663579_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6354563574_)))
                              (_tl6354763581_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6354563574_))))
                          (let* ((_val63584_ _hd6354663579_)
                                 (_rest63586_ _tl6354763581_))
                            (declare (not safe))
                            (_K6354363569_ _rest63586_ _val63584_ _key63577_)))
                        (let () (declare (not safe)) (_else6354163557_)))))
                (let () (declare (not safe)) (_else6354163557_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass63528_ _obj63529_ _args63530_)
        (apply call-method
               _klass63528_
               'instance-init!
               _obj63529_
               _args63530_)))
    (define constructor-init!
      (lambda (_klass63523_ _kons-id63524_ _obj63525_ . _args63526_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass63523_
           _kons-id63524_
           _obj63525_
           _args63526_))))
    (define __constructor-init!
      (lambda (_klass63513_ _kons-id63514_ _obj63515_ _args63516_)
        (let ((_$e63518_
               (let ()
                 (declare (not safe))
                 (__find-method _klass63513_ _obj63515_ _kons-id63514_))))
          (if _$e63518_
              ((lambda (_kons63521_)
                 (apply _kons63521_ _obj63515_ _args63516_)
                 _obj63515_)
               _$e63518_)
              (let ()
                (declare (not safe))
                (error '"missing constructor"
                       'class:
                       _klass63513_
                       'method:
                       _kons-id63514_))))))
    (define struct-copy
      (lambda (_struct63511_)
        (if (let () (declare (not safe)) (##structure? _struct63511_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"not a structure" _struct63511_)))
        (let () (declare (not safe)) (##structure-copy _struct63511_))))
    (define struct->list
      (lambda (_obj63509_)
        (if (object? _obj63509_)
            (let () (declare (not safe)) (##vector->list _obj63509_))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj63509_)))))
    (define class->list
      (lambda (_obj63496_)
        (if (object? _obj63496_)
            (let ((_klass63498_ (object-type _obj63496_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass63498_ 'gerbil#class::t))
                  (let ((_slot-vector63500_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass63498_
                            '7
                            class::t
                            '#f))))
                    (let _loop63502_ ((_index63504_
                                       (let ((__tmp64706
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector63500_))))
                                         (declare (not safe))
                                         (##fx- __tmp64706 '1)))
                                      (_plist63505_ '()))
                      (if (let () (declare (not safe)) (##fx< _index63504_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass63498_ _plist63505_))
                          (let ((_slot63507_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector63500_
                                    _index63504_))))
                            (let ((__tmp64705
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index63504_ '1)))
                                  (__tmp64701
                                   (let ((__tmp64704
                                          (symbol->keyword _slot63507_))
                                         (__tmp64702
                                          (let ((__tmp64703
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj63496_
                                                    _index63504_))))
                                            (declare (not safe))
                                            (cons __tmp64703 _plist63505_))))
                                     (declare (not safe))
                                     (cons __tmp64704 __tmp64702))))
                              (declare (not safe))
                              (_loop63502_ __tmp64705 __tmp64701))))))
                  (let ()
                    (declare (not safe))
                    (error '"not a class type"
                           'object:
                           _obj63496_
                           'class:
                           _klass63498_))))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj63496_)))))
    (define call-method
      (lambda (_obj63487_ _id63488_ . _args63489_)
        (let ((_$e63491_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63487_ _id63488_))))
          (if _$e63491_
              ((lambda (_method63494_)
                 (apply _method63494_ _obj63487_ _args63489_))
               _$e63491_)
              (let ()
                (declare (not safe))
                (error '"cannot find method"
                       'object:
                       _obj63487_
                       'method:
                       _id63488_))))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define method-ref
      (lambda (_obj63484_ _id63485_)
        (if (object? _obj63484_)
            (let ((__tmp64707 (object-type _obj63484_)))
              (declare (not safe))
              (find-method __tmp64707 _obj63484_ _id63485_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj63478_ _id63479_)
        (let ((_$e63481_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63478_ _id63479_))))
          (if _$e63481_
              _$e63481_
              (let ()
                (declare (not safe))
                (error '"missing method"
                       'object:
                       _obj63478_
                       'method:
                       _id63479_))))))
    (define bound-method-ref
      (lambda (_obj63468_ _id63469_)
        (let ((_$e63471_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63468_ _id63469_))))
          (if _$e63471_
              ((lambda (_method63474_)
                 (lambda _args63476_
                   (apply _method63474_ _obj63468_ _args63476_)))
               _$e63471_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj63461_ _id63462_)
        (let ((_method63464_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj63461_ _id63462_))))
          (lambda _args63466_ (apply _method63464_ _obj63461_ _args63466_)))))
    (define find-method
      (lambda (_klass63457_ _obj63458_ _id63459_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63457_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass63457_ _obj63458_ _id63459_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass63457_ _obj63458_ _id63459_)))))
    (define __find-method
      (lambda (_klass63450_ _obj63451_ _id63452_)
        (let ((_$e63454_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass63450_ _obj63451_ _id63452_))))
          (if _$e63454_
              _$e63454_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass63450_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass63450_ _obj63451_ _id63452_)))))))
    (define class-find-method
      (lambda (_klass63446_ _obj63447_ _id63448_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63446_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass63446_ _obj63447_ _id63448_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins63438_ _obj63439_ _id63440_)
        (let ((__tmp64708
               (lambda (_g6344163443_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6344163443_ _obj63439_ _id63440_)))))
          (declare (not safe))
          (ormap1 __tmp64708 _mixins63438_))))
    (define builtin-find-method
      (lambda (_klass63431_ _obj63432_ _id63433_)
        (if (let () (declare (not safe)) (##type? _klass63431_))
            (let ((_$e63435_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass63431_ _obj63432_ _id63433_))))
              (if _$e63435_
                  _$e63435_
                  (let ((__tmp64709
                         (let ()
                           (declare (not safe))
                           (##type-super _klass63431_))))
                    (declare (not safe))
                    (builtin-find-method __tmp64709 _obj63432_ _id63433_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass63408_ _obj63409_ _id63410_)
        (letrec ((_metaclass-resolve-method63412_
                  (lambda ()
                    (let ((__method64594
                           (let ()
                             (declare (not safe))
                             (method-ref _klass63408_ 'direct-method-ref))))
                      (if __method64594
                          (__method64594 _klass63408_ _obj63409_ _id63410_)
                          (let ()
                            (declare (not safe))
                            (error '"Missing method"
                                   _klass63408_
                                   'direct-method-ref))))))
                 (_metaclass-resolve-method!63413_
                  (lambda ()
                    (let ((_method63428_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method63412_))))
                      (let ((__tmp64711
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass63408_
                                '11
                                class::t
                                '#f)))
                            (__tmp64710 (if _method63428_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp64711 _id63410_ __tmp64710))
                      _method63428_))))
          (let ((_$e63415_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass63408_ '11 class::t '#f))))
            (if _$e63415_
                ((lambda (_ht63418_)
                   (let ((_method63420_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht63418_ _id63410_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method63420_))
                         _method63420_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass63408_))
                             (let ((_$e63422_ _method63420_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e63422_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method63412_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e63422_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!63413_)))))
                             '#f))))
                 _$e63415_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass63408_))
                    (let ((_tab63425_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass63408_
                         _tab63425_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!63413_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass63404_ _obj63405_ _id63406_)
        (let ((__tmp64712 (##structure-ref _klass63404_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp64712 _obj63405_ _id63406_))))
    (define builtin-method-ref
      (lambda (_klass63395_ _obj63396_ _id63397_)
        (let ((_$e63399_
               (let ((__tmp64713
                      (let () (declare (not safe)) (##type-id _klass63395_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp64713 '#f))))
          (if _$e63399_
              ((lambda (_mtab63402_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab63402_ _id63397_ '#f)))
               _$e63399_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass63361_ _id63362_ _proc63363_ _rebind?63364_)
        (letrec ((_bind!63366_
                  (lambda (_ht63379_)
                    (if (and (let () (declare (not safe)) (not _rebind?63364_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht63379_ _id63362_ '#f)))
                        (let ()
                          (declare (not safe))
                          (error '"method already bound"
                                 'class:
                                 _klass63361_
                                 'method:
                                 _id63362_))
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht63379_
                           _id63362_
                           _proc63363_))))))
          (if (let () (declare (not safe)) (procedure? _proc63363_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad method; expected procedure" _proc63363_)))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass63361_ 'gerbil#class::t))
              (let ((_ht63368_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass63361_
                        '11
                        class::t
                        '#f))))
                (if _ht63368_
                    (let () (declare (not safe)) (_bind!63366_ _ht63368_))
                    (let ((_ht63370_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass63361_
                         _ht63370_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!63366_ _ht63370_)))))
              (if (let () (declare (not safe)) (##type? _klass63361_))
                  (let ((_ht63377_
                         (let ((_$e63372_
                                (let ((__tmp64714
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass63361_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp64714
                                   '#f))))
                           (if _$e63372_
                               _$e63372_
                               (let ((_ht63375_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table__% '#f '0))))
                                 (let ((__tmp64715
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass63361_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp64715
                                    _ht63375_))
                                 _ht63375_)))))
                    (declare (not safe))
                    (_bind!63366_ _ht63377_))
                  (let ()
                    (declare (not safe))
                    (error '"bad class; expected class or builtin type"
                           _klass63361_)))))))
    (define bind-method!__0
      (lambda (_klass63384_ _id63385_ _proc63386_)
        (let ((_rebind?63388_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass63384_
           _id63385_
           _proc63386_
           _rebind?63388_))))
    (define bind-method!
      (lambda _g64717_
        (let ((_g64716_ (let () (declare (not safe)) (##length _g64717_))))
          (cond ((let () (declare (not safe)) (##fx= _g64716_ 3))
                 (apply (lambda (_klass63384_ _id63385_ _proc63386_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass63384_
                             _id63385_
                             _proc63386_)))
                        _g64717_))
                ((let () (declare (not safe)) (##fx= _g64716_ 4))
                 (apply (lambda (_klass63390_
                                 _id63391_
                                 _proc63392_
                                 _rebind?63393_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass63390_
                             _id63391_
                             _proc63392_
                             _rebind?63393_)))
                        _g64717_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g64717_))))))
    (define make-method-specializer-table__%
      (lambda (_size-hint63341_ _seed63343_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint63341_
           procedure-hash
           eq?
           _seed63343_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_size-hint63349_ '#f) (_seed63351_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint63349_ _seed63351_))))
    (define make-method-specializer-table__1
      (lambda (_size-hint63353_)
        (let ((_seed63355_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint63353_ _seed63355_))))
    (define make-method-specializer-table
      (lambda _g64719_
        (let ((_g64718_ (let () (declare (not safe)) (##length _g64719_))))
          (cond ((let () (declare (not safe)) (##fx= _g64718_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g64719_))
                ((let () (declare (not safe)) (##fx= _g64718_ 1))
                 (apply (lambda (_size-hint63353_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _size-hint63353_)))
                        _g64719_))
                ((let () (declare (not safe)) (##fx= _g64718_ 2))
                 (apply (lambda (_size-hint63357_ _seed63358_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _size-hint63357_
                             _seed63358_)))
                        _g64719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g64719_))))))
    (define method-specializer-table-ref
      (lambda (_tab63298_ _key63299_ _default63300_)
        (let ((_table63302_
               (let () (declare (not safe)) (&raw-table-table _tab63298_)))
              (_seed63303_
               (let () (declare (not safe)) (&raw-table-seed _tab63298_))))
          (let* ((_h63305_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63299_))
                         _seed63303_))
                 (_size63308_ (vector-length _table63302_))
                 (_entries63311_ (fxquotient _size63308_ '2))
                 (_start63314_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63305_ _entries63311_)
                   '1)))
            (let _loop63318_ ((_probe63321_ _start63314_)
                              (_i63323_ '1)
                              (_deleted63325_ '#f))
              (let ((_k63328_ (vector-ref _table63302_ _probe63321_)))
                (if (let ((__tmp64726 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63328_ __tmp64726))
                    _default63300_
                    (if (let ((__tmp64725 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63328_ __tmp64725))
                        (let ((__tmp64724
                               (let ((_next-probe63331_
                                      (fx+ _start63314_
                                           _i63323_
                                           (fx* _i63323_ _i63323_))))
                                 (fxmodulo _next-probe63331_ _size63308_)))
                              (__tmp64723 (fx+ _i63323_ '1))
                              (__tmp64722
                               (let ((_$e63334_ _deleted63325_))
                                 (if _$e63334_ _$e63334_ _probe63321_))))
                          (declare (not safe))
                          (_loop63318_ __tmp64724 __tmp64723 __tmp64722))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63299_ _k63328_))
                            (vector-ref _table63302_ (fx+ _probe63321_ '1))
                            (let ((__tmp64721
                                   (let ((_next-probe63337_
                                          (fx+ _start63314_
                                               _i63323_
                                               (fx* _i63323_ _i63323_))))
                                     (fxmodulo _next-probe63337_ _size63308_)))
                                  (__tmp64720 (fx+ _i63323_ '1)))
                              (declare (not safe))
                              (_loop63318_
                               __tmp64721
                               __tmp64720
                               _deleted63325_)))))))))))
    (define method-specializer-table-set!
      (lambda (_tab63294_ _key63295_ _value63296_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63294_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63294_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63294_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _tab63294_
           _key63295_
           _value63296_))))
    (define __method-specializer-table-set!
      (lambda (_tab63249_ _key63250_ _value63251_)
        (let ((_table63254_
               (let () (declare (not safe)) (&raw-table-table _tab63249_)))
              (_seed63255_
               (let () (declare (not safe)) (&raw-table-seed _tab63249_))))
          (let* ((_h63257_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63250_))
                         _seed63255_))
                 (_size63260_ (vector-length _table63254_))
                 (_entries63263_ (fxquotient _size63260_ '2))
                 (_start63266_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63257_ _entries63263_)
                   '1)))
            (let _loop63270_ ((_probe63273_ _start63266_)
                              (_i63275_ '1)
                              (_deleted63277_ '#f))
              (let ((_k63280_ (vector-ref _table63254_ _probe63273_)))
                (if (let ((__tmp64736 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63280_ __tmp64736))
                    (if _deleted63277_
                        (begin
                          (vector-set! _table63254_ _deleted63277_ _key63250_)
                          (vector-set!
                           _table63254_
                           (fx+ _deleted63277_ '1)
                           _value63251_)
                          ((lambda ()
                             (let ((__tmp64735
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63249_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63249_
                                __tmp64735)))))
                        (begin
                          (vector-set! _table63254_ _probe63273_ _key63250_)
                          (vector-set!
                           _table63254_
                           (fx+ _probe63273_ '1)
                           _value63251_)
                          ((lambda ()
                             (let ((__tmp64733
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63249_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63249_ __tmp64733))
                             (let ((__tmp64734
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63249_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63249_
                                __tmp64734))))))
                    (if (let ((__tmp64732 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63280_ __tmp64732))
                        (let ((__tmp64731
                               (let ((_next-probe63285_
                                      (fx+ _start63266_
                                           _i63275_
                                           (fx* _i63275_ _i63275_))))
                                 (fxmodulo _next-probe63285_ _size63260_)))
                              (__tmp64730 (fx+ _i63275_ '1))
                              (__tmp64729
                               (let ((_$e63288_ _deleted63277_))
                                 (if _$e63288_ _$e63288_ _probe63273_))))
                          (declare (not safe))
                          (_loop63270_ __tmp64731 __tmp64730 __tmp64729))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63250_ _k63280_))
                            (begin
                              (vector-set!
                               _table63254_
                               _probe63273_
                               _key63250_)
                              (vector-set!
                               _table63254_
                               (fx+ _probe63273_ '1)
                               _value63251_))
                            (let ((__tmp64728
                                   (let ((_next-probe63291_
                                          (fx+ _start63266_
                                               _i63275_
                                               (fx* _i63275_ _i63275_))))
                                     (fxmodulo _next-probe63291_ _size63260_)))
                                  (__tmp64727 (fx+ _i63275_ '1)))
                              (declare (not safe))
                              (_loop63270_
                               __tmp64728
                               __tmp64727
                               _deleted63277_)))))))))))
    (define method-specializer-table-update!
      (lambda (_tab63244_
               _key63245_
               _method-specializer-table-update!63246_
               _default63247_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63244_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63244_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63244_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _tab63244_
           _key63245_
           _method-specializer-table-update!63246_
           _default63247_))))
    (define __method-specializer-table-update!
      (lambda (_tab63198_
               _key63199_
               _method-specializer-table-update!63200_
               _default63201_)
        (let ((_table63204_
               (let () (declare (not safe)) (&raw-table-table _tab63198_)))
              (_seed63205_
               (let () (declare (not safe)) (&raw-table-seed _tab63198_))))
          (let* ((_h63207_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63199_))
                         _seed63205_))
                 (_size63210_ (vector-length _table63204_))
                 (_entries63213_ (fxquotient _size63210_ '2))
                 (_start63216_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63207_ _entries63213_)
                   '1)))
            (let _loop63220_ ((_probe63223_ _start63216_)
                              (_i63225_ '1)
                              (_deleted63227_ '#f))
              (let ((_k63230_ (vector-ref _table63204_ _probe63223_)))
                (if (let ((__tmp64746 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63230_ __tmp64746))
                    (if _deleted63227_
                        (begin
                          (vector-set! _table63204_ _deleted63227_ _key63199_)
                          (vector-set!
                           _table63204_
                           (fx+ _deleted63227_ '1)
                           (_method-specializer-table-update!63200_
                            _default63201_))
                          ((lambda ()
                             (let ((__tmp64745
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63198_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63198_
                                __tmp64745)))))
                        (begin
                          (vector-set! _table63204_ _probe63223_ _key63199_)
                          (vector-set!
                           _table63204_
                           (fx+ _probe63223_ '1)
                           (_method-specializer-table-update!63200_
                            _default63201_))
                          ((lambda ()
                             (let ((__tmp64743
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63198_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63198_ __tmp64743))
                             (let ((__tmp64744
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63198_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63198_
                                __tmp64744))))))
                    (if (let ((__tmp64742 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63230_ __tmp64742))
                        (let ((__tmp64741
                               (let ((_next-probe63235_
                                      (fx+ _start63216_
                                           _i63225_
                                           (fx* _i63225_ _i63225_))))
                                 (fxmodulo _next-probe63235_ _size63210_)))
                              (__tmp64740 (fx+ _i63225_ '1))
                              (__tmp64739
                               (let ((_$e63238_ _deleted63227_))
                                 (if _$e63238_ _$e63238_ _probe63223_))))
                          (declare (not safe))
                          (_loop63220_ __tmp64741 __tmp64740 __tmp64739))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63199_ _k63230_))
                            (begin
                              (vector-set!
                               _table63204_
                               _probe63223_
                               _key63199_)
                              (vector-set!
                               _table63204_
                               (fx+ _probe63223_ '1)
                               (_method-specializer-table-update!63200_
                                (vector-ref
                                 _table63204_
                                 (fx+ _probe63223_ '1)))))
                            (let ((__tmp64738
                                   (let ((_next-probe63241_
                                          (fx+ _start63216_
                                               _i63225_
                                               (fx* _i63225_ _i63225_))))
                                     (fxmodulo _next-probe63241_ _size63210_)))
                                  (__tmp64737 (fx+ _i63225_ '1)))
                              (declare (not safe))
                              (_loop63220_
                               __tmp64738
                               __tmp64737
                               _deleted63227_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_tab63157_ _key63159_)
        (let ((_table63162_
               (let () (declare (not safe)) (&raw-table-table _tab63157_)))
              (_seed63164_
               (let () (declare (not safe)) (&raw-table-seed _tab63157_))))
          (let* ((_h63167_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63159_))
                         _seed63164_))
                 (_size63170_ (vector-length _table63162_))
                 (_entries63173_ (fxquotient _size63170_ '2))
                 (_start63176_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63167_ _entries63173_)
                   '1)))
            (let _loop63180_ ((_probe63183_ _start63176_) (_i63185_ '1))
              (let ((_k63188_ (vector-ref _table63162_ _probe63183_)))
                (if (let ((__tmp64753 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63188_ __tmp64753))
                    '#!void
                    (if (let ((__tmp64752 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63188_ __tmp64752))
                        (let ((__tmp64751
                               (let ((_next-probe63191_
                                      (fx+ _start63176_
                                           _i63185_
                                           (fx* _i63185_ _i63185_))))
                                 (fxmodulo _next-probe63191_ _size63170_)))
                              (__tmp64750 (fx+ _i63185_ '1)))
                          (declare (not safe))
                          (_loop63180_ __tmp64751 __tmp64750))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63159_ _k63188_))
                            (begin
                              (vector-set!
                               _table63162_
                               _probe63183_
                               (macro-deleted-obj))
                              (vector-set!
                               _table63162_
                               (fx+ _probe63183_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp64749
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab63157_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab63157_
                                    __tmp64749)))))
                            (let ((__tmp64748
                                   (let ((_next-probe63195_
                                          (fx+ _start63176_
                                               _i63185_
                                               (fx* _i63185_ _i63185_))))
                                     (fxmodulo _next-probe63195_ _size63170_)))
                                  (__tmp64747 (fx+ _i63185_ '1)))
                              (declare (not safe))
                              (_loop63180_ __tmp64748 __tmp64747)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_method-proc63148_ _specializer63149_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63153_ ()
            (if (let ((__tmp64754
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64754 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63153_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _method-proc63148_
           _specializer63149_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_proc63138_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63142_ ()
            (if (let ((__tmp64755
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64755 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63142_))))))
        (let ((_specializer63146_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _proc63138_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _specializer63146_)))
    (define __class-specializer-hash-key
      (lambda (_klass63136_)
        (let ((__tmp64756
               (let () (declare (not safe)) (##type-id _klass63136_))))
          (declare (not safe))
          (symbolic-hash __tmp64756))))
    (define make-class-specializer-table__%
      (lambda (_size-hint63117_ _seed63119_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint63117_
           __class-specializer-hash-key
           eq?
           _seed63119_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_size-hint63125_ '#f) (_seed63127_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint63125_ _seed63127_))))
    (define make-class-specializer-table__1
      (lambda (_size-hint63129_)
        (let ((_seed63131_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint63129_ _seed63131_))))
    (define make-class-specializer-table
      (lambda _g64758_
        (let ((_g64757_ (let () (declare (not safe)) (##length _g64758_))))
          (cond ((let () (declare (not safe)) (##fx= _g64757_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g64758_))
                ((let () (declare (not safe)) (##fx= _g64757_ 1))
                 (apply (lambda (_size-hint63129_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _size-hint63129_)))
                        _g64758_))
                ((let () (declare (not safe)) (##fx= _g64757_ 2))
                 (apply (lambda (_size-hint63133_ _seed63134_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _size-hint63133_
                             _seed63134_)))
                        _g64758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g64758_))))))
    (define class-specializer-table-ref
      (lambda (_tab63074_ _key63075_ _default63076_)
        (let ((_table63078_
               (let () (declare (not safe)) (&raw-table-table _tab63074_)))
              (_seed63079_
               (let () (declare (not safe)) (&raw-table-seed _tab63074_))))
          (let* ((_h63081_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63075_))
                         _seed63079_))
                 (_size63084_ (vector-length _table63078_))
                 (_entries63087_ (fxquotient _size63084_ '2))
                 (_start63090_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63081_ _entries63087_)
                   '1)))
            (let _loop63094_ ((_probe63097_ _start63090_)
                              (_i63099_ '1)
                              (_deleted63101_ '#f))
              (let ((_k63104_ (vector-ref _table63078_ _probe63097_)))
                (if (let ((__tmp64765 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63104_ __tmp64765))
                    _default63076_
                    (if (let ((__tmp64764 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63104_ __tmp64764))
                        (let ((__tmp64763
                               (let ((_next-probe63107_
                                      (fx+ _start63090_
                                           _i63099_
                                           (fx* _i63099_ _i63099_))))
                                 (fxmodulo _next-probe63107_ _size63084_)))
                              (__tmp64762 (fx+ _i63099_ '1))
                              (__tmp64761
                               (let ((_$e63110_ _deleted63101_))
                                 (if _$e63110_ _$e63110_ _probe63097_))))
                          (declare (not safe))
                          (_loop63094_ __tmp64763 __tmp64762 __tmp64761))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63075_ _k63104_))
                            (vector-ref _table63078_ (fx+ _probe63097_ '1))
                            (let ((__tmp64760
                                   (let ((_next-probe63113_
                                          (fx+ _start63090_
                                               _i63099_
                                               (fx* _i63099_ _i63099_))))
                                     (fxmodulo _next-probe63113_ _size63084_)))
                                  (__tmp64759 (fx+ _i63099_ '1)))
                              (declare (not safe))
                              (_loop63094_
                               __tmp64760
                               __tmp64759
                               _deleted63101_)))))))))))
    (define class-specializer-table-set!
      (lambda (_tab63070_ _key63071_ _value63072_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63070_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63070_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63070_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _tab63070_
           _key63071_
           _value63072_))))
    (define __class-specializer-table-set!
      (lambda (_tab63025_ _key63026_ _value63027_)
        (let ((_table63030_
               (let () (declare (not safe)) (&raw-table-table _tab63025_)))
              (_seed63031_
               (let () (declare (not safe)) (&raw-table-seed _tab63025_))))
          (let* ((_h63033_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63026_))
                         _seed63031_))
                 (_size63036_ (vector-length _table63030_))
                 (_entries63039_ (fxquotient _size63036_ '2))
                 (_start63042_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63033_ _entries63039_)
                   '1)))
            (let _loop63046_ ((_probe63049_ _start63042_)
                              (_i63051_ '1)
                              (_deleted63053_ '#f))
              (let ((_k63056_ (vector-ref _table63030_ _probe63049_)))
                (if (let ((__tmp64775 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63056_ __tmp64775))
                    (if _deleted63053_
                        (begin
                          (vector-set! _table63030_ _deleted63053_ _key63026_)
                          (vector-set!
                           _table63030_
                           (fx+ _deleted63053_ '1)
                           _value63027_)
                          ((lambda ()
                             (let ((__tmp64774
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63025_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63025_
                                __tmp64774)))))
                        (begin
                          (vector-set! _table63030_ _probe63049_ _key63026_)
                          (vector-set!
                           _table63030_
                           (fx+ _probe63049_ '1)
                           _value63027_)
                          ((lambda ()
                             (let ((__tmp64772
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63025_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63025_ __tmp64772))
                             (let ((__tmp64773
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63025_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63025_
                                __tmp64773))))))
                    (if (let ((__tmp64771 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63056_ __tmp64771))
                        (let ((__tmp64770
                               (let ((_next-probe63061_
                                      (fx+ _start63042_
                                           _i63051_
                                           (fx* _i63051_ _i63051_))))
                                 (fxmodulo _next-probe63061_ _size63036_)))
                              (__tmp64769 (fx+ _i63051_ '1))
                              (__tmp64768
                               (let ((_$e63064_ _deleted63053_))
                                 (if _$e63064_ _$e63064_ _probe63049_))))
                          (declare (not safe))
                          (_loop63046_ __tmp64770 __tmp64769 __tmp64768))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63026_ _k63056_))
                            (begin
                              (vector-set!
                               _table63030_
                               _probe63049_
                               _key63026_)
                              (vector-set!
                               _table63030_
                               (fx+ _probe63049_ '1)
                               _value63027_))
                            (let ((__tmp64767
                                   (let ((_next-probe63067_
                                          (fx+ _start63042_
                                               _i63051_
                                               (fx* _i63051_ _i63051_))))
                                     (fxmodulo _next-probe63067_ _size63036_)))
                                  (__tmp64766 (fx+ _i63051_ '1)))
                              (declare (not safe))
                              (_loop63046_
                               __tmp64767
                               __tmp64766
                               _deleted63053_)))))))))))
    (define class-specializer-table-update!
      (lambda (_tab63020_
               _key63021_
               _class-specializer-table-update!63022_
               _default63023_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63020_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63020_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63020_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _tab63020_
           _key63021_
           _class-specializer-table-update!63022_
           _default63023_))))
    (define __class-specializer-table-update!
      (lambda (_tab62974_
               _key62975_
               _class-specializer-table-update!62976_
               _default62977_)
        (let ((_table62980_
               (let () (declare (not safe)) (&raw-table-table _tab62974_)))
              (_seed62981_
               (let () (declare (not safe)) (&raw-table-seed _tab62974_))))
          (let* ((_h62983_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62975_))
                         _seed62981_))
                 (_size62986_ (vector-length _table62980_))
                 (_entries62989_ (fxquotient _size62986_ '2))
                 (_start62992_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62983_ _entries62989_)
                   '1)))
            (let _loop62996_ ((_probe62999_ _start62992_)
                              (_i63001_ '1)
                              (_deleted63003_ '#f))
              (let ((_k63006_ (vector-ref _table62980_ _probe62999_)))
                (if (let ((__tmp64785 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63006_ __tmp64785))
                    (if _deleted63003_
                        (begin
                          (vector-set! _table62980_ _deleted63003_ _key62975_)
                          (vector-set!
                           _table62980_
                           (fx+ _deleted63003_ '1)
                           (_class-specializer-table-update!62976_
                            _default62977_))
                          ((lambda ()
                             (let ((__tmp64784
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62974_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62974_
                                __tmp64784)))))
                        (begin
                          (vector-set! _table62980_ _probe62999_ _key62975_)
                          (vector-set!
                           _table62980_
                           (fx+ _probe62999_ '1)
                           (_class-specializer-table-update!62976_
                            _default62977_))
                          ((lambda ()
                             (let ((__tmp64782
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab62974_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab62974_ __tmp64782))
                             (let ((__tmp64783
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62974_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62974_
                                __tmp64783))))))
                    (if (let ((__tmp64781 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63006_ __tmp64781))
                        (let ((__tmp64780
                               (let ((_next-probe63011_
                                      (fx+ _start62992_
                                           _i63001_
                                           (fx* _i63001_ _i63001_))))
                                 (fxmodulo _next-probe63011_ _size62986_)))
                              (__tmp64779 (fx+ _i63001_ '1))
                              (__tmp64778
                               (let ((_$e63014_ _deleted63003_))
                                 (if _$e63014_ _$e63014_ _probe62999_))))
                          (declare (not safe))
                          (_loop62996_ __tmp64780 __tmp64779 __tmp64778))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62975_ _k63006_))
                            (begin
                              (vector-set!
                               _table62980_
                               _probe62999_
                               _key62975_)
                              (vector-set!
                               _table62980_
                               (fx+ _probe62999_ '1)
                               (_class-specializer-table-update!62976_
                                (vector-ref
                                 _table62980_
                                 (fx+ _probe62999_ '1)))))
                            (let ((__tmp64777
                                   (let ((_next-probe63017_
                                          (fx+ _start62992_
                                               _i63001_
                                               (fx* _i63001_ _i63001_))))
                                     (fxmodulo _next-probe63017_ _size62986_)))
                                  (__tmp64776 (fx+ _i63001_ '1)))
                              (declare (not safe))
                              (_loop62996_
                               __tmp64777
                               __tmp64776
                               _deleted63003_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_tab62933_ _key62935_)
        (let ((_table62938_
               (let () (declare (not safe)) (&raw-table-table _tab62933_)))
              (_seed62940_
               (let () (declare (not safe)) (&raw-table-seed _tab62933_))))
          (let* ((_h62943_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62935_))
                         _seed62940_))
                 (_size62946_ (vector-length _table62938_))
                 (_entries62949_ (fxquotient _size62946_ '2))
                 (_start62952_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62943_ _entries62949_)
                   '1)))
            (let _loop62956_ ((_probe62959_ _start62952_) (_i62961_ '1))
              (let ((_k62964_ (vector-ref _table62938_ _probe62959_)))
                (if (let ((__tmp64792 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62964_ __tmp64792))
                    '#!void
                    (if (let ((__tmp64791 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62964_ __tmp64791))
                        (let ((__tmp64790
                               (let ((_next-probe62967_
                                      (fx+ _start62952_
                                           _i62961_
                                           (fx* _i62961_ _i62961_))))
                                 (fxmodulo _next-probe62967_ _size62946_)))
                              (__tmp64789 (fx+ _i62961_ '1)))
                          (declare (not safe))
                          (_loop62956_ __tmp64790 __tmp64789))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62935_ _k62964_))
                            (begin
                              (vector-set!
                               _table62938_
                               _probe62959_
                               (macro-deleted-obj))
                              (vector-set!
                               _table62938_
                               (fx+ _probe62959_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp64788
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab62933_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab62933_
                                    __tmp64788)))))
                            (let ((__tmp64787
                                   (let ((_next-probe62971_
                                          (fx+ _start62952_
                                               _i62961_
                                               (fx* _i62961_ _i62961_))))
                                     (fxmodulo _next-probe62971_ _size62946_)))
                                  (__tmp64786 (fx+ _i62961_ '1)))
                              (declare (not safe))
                              (_loop62956_ __tmp64787 __tmp64786)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define specialize-class
      (lambda (_klass62926_)
        (let ((_$e62928_
               (let ()
                 (declare (not safe))
                 (__lookup-class-specializer _klass62926_))))
          (if _$e62928_
              _$e62928_
              (let ((_method-table62931_
                     (let ()
                       (declare (not safe))
                       (__specialize-class _klass62926_))))
                (let ()
                  (declare (not safe))
                  (__bind-class-specializer! _klass62926_ _method-table62931_))
                _method-table62931_)))))
    (define __lookup-class-specializer
      (lambda (_klass62916_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62920_ ()
            (if (let ((__tmp64793
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64793 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62920_))))))
        (let ((_method-table62924_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _klass62916_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _method-table62924_)))
    (define __bind-class-specializer!
      (lambda (_klass62907_ _method-table62908_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62912_ ()
            (if (let ((__tmp64794
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64794 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62912_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _klass62907_
           _method-table62908_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_klass62892_ _method-table62893_ _method62894_ _proc62895_)
        (let ((_$e62897_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _method-table62893_ _method62894_ '#f))))
          (if _$e62897_
              _$e62897_
              (let ((_$e62900_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _proc62895_))))
                (if _$e62900_
                    ((lambda (_specialize62903_)
                       (let ((_specialized-proc62905_
                              (_specialize62903_
                               _klass62892_
                               _method-table62893_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _method-table62893_
                          _method62894_
                          _specialized-proc62905_)))
                     _$e62900_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _method-table62893_
                       _method62894_
                       _proc62895_))))))))
    (define __specialize-class
      (lambda (_klass62819_)
        (if (let ((__tmp64800
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _klass62819_
                      'gerbil#class::t))))
              (declare (not safe))
              (not __tmp64800))
            (if (let () (declare (not safe)) (##type? _klass62819_))
                (let ((_method-table62821_
                       (let ()
                         (declare (not safe))
                         (make-symbolic-table__% '#f '0))))
                  (let _loop62823_ ((_xklass62825_ _klass62819_))
                    (if _xklass62825_
                        (begin
                          (let ((_xmethod-table6282662828_
                                 (let ((__tmp64797
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _xklass62825_))))
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    __builtin-type-methods
                                    __tmp64797
                                    '#f))))
                            (if _xmethod-table6282662828_
                                (let* ((_xmethod-table62831_
                                        _xmethod-table6282662828_)
                                       (__tmp64798
                                        (lambda (_g6283262835_ _g6283362837_)
                                          (let ()
                                            (declare (not safe))
                                            (__specialize-method
                                             _klass62819_
                                             _method-table62821_
                                             _g6283262835_
                                             _g6283362837_)))))
                                  (declare (not safe))
                                  (raw-table-for-each
                                   _xmethod-table62831_
                                   __tmp64798))
                                '#f))
                          (let ((__tmp64799
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _xklass62825_))))
                            (declare (not safe))
                            (_loop62823_ __tmp64799)))
                        '#!void))
                  _method-table62821_)
                (let ()
                  (declare (not safe))
                  (error '"bad class; cannot specialize" _klass62819_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _klass62819_))
                (let ((__method64595
                       (let ()
                         (declare (not safe))
                         (method-ref _klass62819_ 'specialize-class))))
                  (if __method64595
                      (__method64595 _klass62819_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _klass62819_
                               'specialize-class))))
                (if (let ((__tmp64796
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _klass62819_
                              '6
                              class::t
                              '#f))))
                      (declare (not safe))
                      (find class-type-metaclass? __tmp64796))
                    (let ()
                      (declare (not safe))
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _klass62819_))
                    (let ((_method-table62840_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _loop62842_ ((_rest62844_
                                         (let ()
                                           (declare (not safe))
                                           (class-precedence-list
                                            _klass62819_))))
                        (let* ((_rest6284562853_ _rest62844_)
                               (_else6284762861_
                                (lambda () _method-table62840_))
                               (_K6284962880_
                                (lambda (_rest62864_ _xklass62865_)
                                  (let ((_xmethod-table6286662868_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _xklass62865_
                                            '11
                                            class::t
                                            '#f))))
                                    (if _xmethod-table6286662868_
                                        (let* ((_xmethod-table62871_
                                                _xmethod-table6286662868_)
                                               (__tmp64795
                                                (lambda (_g6287262875_
                                                         _g6287362877_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _klass62819_
                                                     _method-table62840_
                                                     _g6287262875_
                                                     _g6287362877_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _xmethod-table62871_
                                           __tmp64795))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_loop62842_ _rest62864_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6284562853_))
                              (let ((_hd6285062883_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6284562853_)))
                                    (_tl6285162885_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6284562853_))))
                                (let* ((_xklass62888_ _hd6285062883_)
                                       (_rest62890_ _tl6285162885_))
                                  (declare (not safe))
                                  (_K6284962880_ _rest62890_ _xklass62888_)))
                              (let ()
                                (declare (not safe))
                                (_else6284762861_)))))))))))
    (define seal-class!
      (lambda (_klass62815_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass62815_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-sealed? _klass62815_))
                '#!void
                (begin
                  (if (let ()
                        (declare (not safe))
                        (class-type-final? _klass62815_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"cannot seal non-final class" _klass62815_)))
                  (if (let ()
                        (declare (not safe))
                        (class-type-metaclass? _klass62815_))
                      (let ((__method64596
                             (let ()
                               (declare (not safe))
                               (method-ref _klass62815_ 'seal-class!))))
                        (if __method64596
                            (__method64596 _klass62815_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _klass62815_
                                     'seal-class!))))
                      (if (let ((__tmp64801
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _klass62815_
                                    '6
                                    class::t
                                    '#f))))
                            (declare (not safe))
                            (find class-type-metaclass? __tmp64801))
                          (let ()
                            (declare (not safe))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass62815_))
                          (let ((_method-table62817_
                                 (let ()
                                   (declare (not safe))
                                   (specialize-class _klass62815_))))
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _klass62815_
                             _method-table62817_
                             '11
                             class::t
                             '#f))))
                  (let ()
                    (declare (not safe))
                    (&class-type-seal! _klass62815_))))
            '#!void)))
    (define next-method
      (lambda (_subklass62764_ _obj62765_ _id62766_)
        (let ((_klass62768_ (object-type _obj62765_))
              (_type-id62769_
               (let () (declare (not safe)) (##type-id _subklass62764_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62768_ 'gerbil#class::t))
              (let _lp62771_ ((_rest62773_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass62768_))))
                (let* ((_rest6277462782_ _rest62773_)
                       (_else6277662790_ (lambda () '#f))
                       (_K6277862796_
                        (lambda (_rest62793_ _klass62794_)
                          (if (let ((__tmp64804
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass62794_))))
                                (declare (not safe))
                                (eq? _type-id62769_ __tmp64804))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest62793_
                                 _obj62765_
                                 _id62766_))
                              (let ()
                                (declare (not safe))
                                (_lp62771_ _rest62793_))))))
                  (if (let () (declare (not safe)) (##pair? _rest6277462782_))
                      (let ((_hd6277962799_
                             (let ()
                               (declare (not safe))
                               (##car _rest6277462782_)))
                            (_tl6278062801_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest6277462782_))))
                        (let* ((_klass62804_ _hd6277962799_)
                               (_rest62806_ _tl6278062801_))
                          (declare (not safe))
                          (_K6277862796_ _rest62806_ _klass62804_)))
                      (let () (declare (not safe)) (_else6277662790_)))))
              (if (let () (declare (not safe)) (##type? _klass62768_))
                  (let _lp62808_ ((_klass62810_ _klass62768_))
                    (if (let ((__tmp64803
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass62810_))))
                          (declare (not safe))
                          (eq? _type-id62769_ __tmp64803))
                        (let ((__tmp64802
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62810_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp64802
                           _obj62765_
                           _id62766_))
                        (let ((_$e62812_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62810_))))
                          (if _$e62812_
                              (let ()
                                (declare (not safe))
                                (_lp62808_ _$e62812_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass62754_ _obj62755_ _id62756_ . _args62757_)
        (let ((_$e62759_
               (let ()
                 (declare (not safe))
                 (next-method _subklass62754_ _obj62755_ _id62756_))))
          (if _$e62759_
              ((lambda (_methodf62762_)
                 (apply _methodf62762_ _obj62755_ _args62757_))
               _$e62759_)
              (let ()
                (declare (not safe))
                (error '"cannot find next method"
                       'object:
                       _obj62755_
                       'method:
                       _id62756_))))))
    (define write-style (lambda (_we62752_) (macro-writeenv-style _we62752_)))
    (define write-object
      (lambda (_we62744_ _obj62745_)
        (let ((_$e62747_
               (let () (declare (not safe)) (method-ref _obj62745_ ':wr))))
          (if _$e62747_
              ((lambda (_method62750_) (_method62750_ _obj62745_ _we62744_))
               _$e62747_)
              (let ()
                (declare (not safe))
                (##default-wr _we62744_ _obj62745_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
