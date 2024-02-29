(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1709213449)
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
      (let* ((_slots64457_
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
             (_slot-vector64459_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots64457_))))
             (_slot-table64466_
              (let ((_slot-table64461_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot64463_ _field64464_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table64461_
                      _slot64463_
                      _field64464_))
                   (let ((__tmp64607 (symbol->keyword _slot64463_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table64461_
                      __tmp64607
                      _field64464_)))
                 _slots64457_
                 (let ((__tmp64608 (length _slots64457_)))
                   (declare (not safe))
                   (iota__1 __tmp64608 '1)))
                _slot-table64461_))
             (_flags64468_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields64474_
              (list->vector
               (apply append
                      (map (lambda (_g6446964471_) (list _g6446964471_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots64457_ '5))))))
             (_properties64476_
              (let ((__tmp64611
                     (let ((__tmp64612
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots64457_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp64612)))
                    (__tmp64609
                     (let ((__tmp64610
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp64610 '()))))
                (declare (not safe))
                (cons __tmp64611 __tmp64609)))
             (_t64478_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags64468_
                 ##type-type
                 _fields64474_
                 '()
                 _slot-vector64459_
                 _slot-table64466_
                 _properties64476_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t64478_ _t64478_))
        _t64478_))
    (define class-type?
      (lambda (_obj64455_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj64455_ class::t.id))))
    (define class-type=?
      (lambda (_x64452_ _y64453_)
        (let ((__tmp64614 (##structure-ref _x64452_ '1 class::t '#f))
              (__tmp64613 (##structure-ref _y64453_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp64614 __tmp64613))))
    (define type-opaque?
      (lambda (_type64450_)
        (let ((__tmp64615
               (let ((__tmp64616
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64450_))))
                 (declare (not safe))
                 (##fxand __tmp64616 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp64615 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type64448_)
        (let ((__tmp64617
               (let ((__tmp64618
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64448_))))
                 (declare (not safe))
                 (##fxand __tmp64618 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp64617 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type64446_)
        (let ((__tmp64619
               (let ((__tmp64620
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64446_))))
                 (declare (not safe))
                 (##fxand __tmp64620 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp64619 '0))))
    (define class-type-struct?
      (lambda (_klass64444_)
        (let ((__tmp64621
               (let ((__tmp64622
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64444_))))
                 (declare (not safe))
                 (##fxand __tmp64622 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp64621 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass64442_)
        (let ((__tmp64623
               (let ((__tmp64624
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64442_))))
                 (declare (not safe))
                 (##fxand __tmp64624 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp64623 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass64440_)
        (let ((__tmp64625
               (let ((__tmp64626
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64440_))))
                 (declare (not safe))
                 (##fxand __tmp64626 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp64625 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties64406_)
        (map (lambda (_e6440764409_)
               (let* ((_g6441164418_ _e6440764409_)
                      (_E6441364422_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (error '"No clause matching" _g6441164418_))))
                      (_K6441464428_
                       (lambda (_val64425_ _key64426_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key64426_ 'direct-supers:))
                             (let ((__tmp64627 (map class-type-id _val64425_)))
                               (declare (not safe))
                               (cons _key64426_ __tmp64627))
                             (let ()
                               (declare (not safe))
                               (cons _key64426_ _val64425_))))))
                 (if (let () (declare (not safe)) (##pair? _g6441164418_))
                     (let ((_hd6441564431_
                            (let ()
                              (declare (not safe))
                              (##car _g6441164418_)))
                           (_tl6441664433_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6441164418_))))
                       (let* ((_key64436_ _hd6441564431_)
                              (_val64438_ _tl6441664433_))
                         (declare (not safe))
                         (_K6441464428_ _val64438_ _key64436_)))
                     (let () (declare (not safe)) (_E6441364422_)))))
             _properties64406_)))
    (define make-class-type-descriptor
      (lambda (_type-id64305_
               _type-name64306_
               _type-super64307_
               _precedence-list64308_
               _slot-vector64309_
               _properties64310_
               _constructor64311_
               _slot-table64312_
               _methods64313_)
        (letrec ((_make-props!64315_
                  (lambda (_key64375_)
                    (letrec* ((_ht64377_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!64378_
                               (lambda (_ht64399_ _slots64400_)
                                 (for-each
                                  (lambda (_g6440164403_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht64399_
                                       _g6440164403_
                                       '#t)))
                                  _slots64400_)))
                              (_put-alist!64379_
                               (lambda (_ht64388_ _key64389_ _alist64390_)
                                 (let ((_$e64392_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key64389_
                                           _alist64390_))))
                                   (if _$e64392_
                                       ((lambda (_g6439464396_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!64378_
                                             _ht64388_
                                             _g6439464396_)))
                                        _$e64392_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!64379_
                         _ht64377_
                         _key64375_
                         _properties64310_))
                      (for-each
                       (lambda (_mixin64381_)
                         (let ((_alist64383_
                                (##structure-ref
                                 _mixin64381_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist64383_))
                                   (let ((__tmp64629
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key64375_
                                             _alist64383_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp64629)))
                               (let ((__tmp64628
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin64381_))))
                                 (declare (not safe))
                                 (_put-slots!64378_ _ht64377_ __tmp64628))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!64379_
                                  _ht64377_
                                  _key64375_
                                  _alist64383_)))))
                       _precedence-list64308_)
                      _ht64377_))))
          (let* ((_transparent?64317_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties64310_)))
                 (_all-slots-printable?64322_
                  (let ((_$e64319_ _transparent?64317_))
                    (if _$e64319_
                        _$e64319_
                        (let ((__tmp64630
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties64310_))))
                          (declare (not safe))
                          (eq? '#t __tmp64630)))))
                 (_printable64324_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?64322_))
                      (let ()
                        (declare (not safe))
                        (_make-props!64315_ 'print:))
                      '#f))
                 (_all-slots-equalable?64329_
                  (let ((_$e64326_ _transparent?64317_))
                    (if _$e64326_
                        _$e64326_
                        (let ((__tmp64631
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties64310_))))
                          (declare (not safe))
                          (eq? '#t __tmp64631)))))
                 (_equalable64331_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?64329_))
                      (let ()
                        (declare (not safe))
                        (_make-props!64315_ 'equal:))
                      '#f))
                 (_first-new-field64333_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super64307_
                         'gerbil#class::t))
                      (let ((__tmp64632
                             (##structure-ref
                              _type-super64307_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp64632))
                      '1))
                 (_field-info-length64335_
                  (let ((__tmp64633
                         (let ((__tmp64634
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector64309_))))
                           (declare (not safe))
                           (##fx- __tmp64634 _first-new-field64333_))))
                    (declare (not safe))
                    (##fx* '3 __tmp64633)))
                 (_field-info64337_ (make-vector _field-info-length64335_ '#f))
                 (_struct?64339_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties64310_)))
                 (_final?64341_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties64310_)))
                 (_metaclass64349_
                  (let ((_metaclass6434264344_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties64310_))))
                    (if _metaclass6434264344_
                        (let ((_metaclass64347_ _metaclass6434264344_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass64347_
                                 'gerbil#class::t))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (error '"metaclass is not a class type"
                                       'class:
                                       _type-id64305_
                                       'metaclass:
                                       _metaclass64347_)))
                          _metaclass64347_)
                        '#f)))
                 (_opaque?64354_
                  (let ((_$e64351_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?64329_))))
                    (if _$e64351_
                        _$e64351_
                        (if _type-super64307_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super64307_))
                            '#f))))
                 (_type-flags64356_
                  (let ((__tmp64638 (if _final?64341_ '0 type-flag-extensible))
                        (__tmp64637 (if _opaque?64354_ type-flag-opaque '0))
                        (__tmp64636
                         (if _struct?64339_ class-type-flag-struct '0))
                        (__tmp64635
                         (if _metaclass64349_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp64638
                             __tmp64637
                             __tmp64636
                             __tmp64635))))
            (let _loop64359_ ((_i64361_ _first-new-field64333_) (_j64362_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j64362_ _field-info-length64335_))
                  (let* ((_slot64364_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector64309_ _i64361_)))
                         (_flags64372_
                          (if _transparent?64317_
                              '0
                              (let ((__tmp64640
                                     (if (or _all-slots-printable?64322_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable64324_
                                                _slot64364_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp64639
                                     (if (or _all-slots-equalable?64329_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable64331_
                                                _slot64364_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp64640 __tmp64639)))))
                    (vector-set! _field-info64337_ _j64362_ _slot64364_)
                    (vector-set!
                     _field-info64337_
                     (let () (declare (not safe)) (##fx+ _j64362_ '1))
                     _flags64372_)
                    (let ((__tmp64642
                           (let () (declare (not safe)) (##fx+ _i64361_ '1)))
                          (__tmp64641
                           (let () (declare (not safe)) (##fx+ _j64362_ '3))))
                      (declare (not safe))
                      (_loop64359_ __tmp64642 __tmp64641)))
                  '#!void))
            (if _metaclass64349_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass64349_
                   _type-id64305_
                   _type-name64306_
                   _type-flags64356_
                   _type-super64307_
                   _field-info64337_
                   _precedence-list64308_
                   _slot-vector64309_
                   _slot-table64312_
                   _properties64310_
                   _constructor64311_
                   _methods64313_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id64305_
                   _type-name64306_
                   _type-flags64356_
                   _type-super64307_
                   _field-info64337_
                   _precedence-list64308_
                   _slot-vector64309_
                   _slot-table64312_
                   _properties64310_
                   _constructor64311_
                   _methods64313_)))))))
    (define class-type-id
      (lambda (_klass64303_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64303_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass64301_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64301_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass64298_ _val64299_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64298_ _val64299_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass64293_ _val64295_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64293_
           _val64295_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass64291_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64291_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass64289_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64289_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass64286_ _val64287_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64286_ _val64287_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass64281_ _val64283_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64281_
           _val64283_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass64279_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64279_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass64277_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64277_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass64274_ _val64275_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64274_ _val64275_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass64269_ _val64271_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64269_
           _val64271_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass64267_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64267_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass64265_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64265_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass64262_ _val64263_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64262_ _val64263_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass64257_ _val64259_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64257_
           _val64259_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass64255_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64255_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass64253_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64253_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass64250_ _val64251_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64250_ _val64251_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass64245_ _val64247_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64245_
           _val64247_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass64243_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64243_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass64241_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass64241_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass64238_ _val64239_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass64238_
           _val64239_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass64233_ _val64235_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64233_
           _val64235_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass64231_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64231_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass64229_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64229_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass64226_ _val64227_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass64226_
           _val64227_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass64221_ _val64223_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64221_
           _val64223_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass64219_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64219_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass64217_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64217_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass64214_ _val64215_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64214_ _val64215_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass64209_ _val64211_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64209_
           _val64211_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass64207_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64207_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass64205_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64205_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass64202_ _val64203_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64202_ _val64203_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass64197_ _val64199_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64197_
           _val64199_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass64195_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64195_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass64193_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64193_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass64190_ _val64191_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass64190_
           _val64191_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass64185_ _val64187_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64185_
           _val64187_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass64183_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64183_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass64181_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64181_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass64178_ _val64179_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64178_ _val64179_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass64173_ _val64175_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64173_
           _val64175_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass64171_)
        (cdr (vector->list (##structure-ref _klass64171_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass64169_)
        (let ((__tmp64643
               (let ((__tmp64644
                      (##structure-ref _klass64169_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp64644))))
          (declare (not safe))
          (##fx- __tmp64643 '1))))
    (define class-type-seal!
      (lambda (_klass64167_)
        (let ((__tmp64645
               (let ((__tmp64646
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64167_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp64646))))
          (declare (not safe))
          (##structure-set!
           _klass64167_
           __tmp64645
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass64165_)
        (let ((__tmp64647
               (let ((__tmp64648
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64165_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp64648))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64165_
           __tmp64647
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct64156_ _maybe-super-struct64157_)
        (let ((_maybe-super-struct-id64159_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct64157_))))
          (let _lp64161_ ((_super-struct64163_ _maybe-sub-struct64156_))
            (if (let () (declare (not safe)) (not _super-struct64163_))
                '#f
                (if (let ((__tmp64650
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct64163_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id64159_ __tmp64650))
                    '#t
                    (let ((__tmp64649
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct64163_))))
                      (declare (not safe))
                      (_lp64161_ __tmp64649))))))))
    (define base-struct/1
      (lambda (_klass64154_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64154_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass64154_))
                _klass64154_
                (let () (declare (not safe)) (##type-super _klass64154_)))
            (if (let () (declare (not safe)) (not _klass64154_))
                '#f
                (let ()
                  (declare (not safe))
                  (error '"not a class or false" _klass64154_))))))
    (define base-struct/2
      (lambda (_klass164142_ _klass264143_)
        (let ((_s164145_
               (let () (declare (not safe)) (base-struct/1 _klass164142_)))
              (_s264146_
               (let () (declare (not safe)) (base-struct/1 _klass264143_))))
          (if (or (let () (declare (not safe)) (not _s164145_))
                  (and _s264146_
                       (let ()
                         (declare (not safe))
                         (substruct? _s164145_ _s264146_))))
              _s264146_
              (if (or (let () (declare (not safe)) (not _s264146_))
                      (and _s164145_
                           (let ()
                             (declare (not safe))
                             (substruct? _s264146_ _s164145_))))
                  _s164145_
                  (let ()
                    (declare (not safe))
                    (error '"bad mixin: incompatible struct bases"
                           _klass164142_
                           _klass264143_
                           _s164145_
                           _s264146_)))))))
    (define base-struct/list
      (lambda (_all-supers64026_)
        (let* ((_all-supers6402764052_ _all-supers64026_)
               (_E6403264056_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _all-supers6402764052_)))))
          (let ((_K6405064139_ (lambda () '#f))
                (_K6404764125_
                 (lambda (_x64123_)
                   (let () (declare (not safe)) (base-struct/1 _x64123_))))
                (_K6404264102_
                 (lambda (_y64099_ _x64100_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x64100_ _y64099_))))
                (_K6403364063_
                 (lambda (_y64060_ _x64061_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x64061_ _y64060_)))))
            (let* ((___match6460164602_
                    (lambda (_hd6403464066_ _tl6403564068_)
                      (let ((_x64071_ _hd6403464066_))
                        (letrec ((_splice-rest6403764073_
                                  (lambda (_rest6404164080_ _y64082_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6404164080_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6403364063_ _y64082_ _x64071_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6403264056_)))))
                                 (_splice-try6403964075_
                                  (lambda (_hd6404064084_
                                           _rest6404164086_
                                           _y6403664087_)
                                    (let ((_y64090_ _hd6404064084_))
                                      (let ((__tmp64652
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6404164086_)))
                                            (__tmp64651
                                             (let ()
                                               (declare (not safe))
                                               (cons _y64090_ _y6403664087_))))
                                        (declare (not safe))
                                        (_splice-loop6403864077_
                                         __tmp64652
                                         __tmp64651)))))
                                 (_splice-loop6403864077_
                                  (lambda (_rest6404164092_ _y6403664093_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6404164092_))
                                        (let ((__tmp64654
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6404164092_))))
                                          (declare (not safe))
                                          (_splice-try6403964075_
                                           __tmp64654
                                           _rest6404164092_
                                           _y6403664093_))
                                        (let ((__tmp64653
                                               (reverse _y6403664093_)))
                                          (declare (not safe))
                                          (_splice-rest6403764073_
                                           _rest6404164092_
                                           __tmp64653))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6403864077_ _tl6403564068_ '()))))))
                   (_try-match6402964135_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6402764052_))
                          (let ((_tl6404964130_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6402764052_)))
                                (_hd6404864128_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6402764052_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6404964130_))
                                (let ((_x64133_ _hd6404864128_))
                                  (declare (not safe))
                                  (base-struct/1 _x64133_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6404964130_))
                                    (let ((_tl6404664114_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6404964130_)))
                                          (_hd6404564112_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6404964130_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6404664114_))
                                          (let ((_x64110_ _hd6404864128_)
                                                (_y64117_ _hd6404564112_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6404264102_
                                               _y64117_
                                               _x64110_)))
                                          (___match6460164602_
                                           _hd6404864128_
                                           _tl6404964130_)))
                                    (___match6460164602_
                                     _hd6404864128_
                                     _tl6404964130_))))
                          (let () (declare (not safe)) (_E6403264056_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6402764052_))
                  (let () (declare (not safe)) (_K6405064139_))
                  (let () (declare (not safe)) (_try-match6402964135_))))))))
    (define base-struct
      (lambda _all-supers64024_
        (let () (declare (not safe)) (base-struct/list _all-supers64024_))))
    (define find-super-constructor
      (lambda (_super63976_)
        (let _lp63978_ ((_rest63980_ _super63976_) (_constructor63981_ '#f))
          (let* ((_rest6398263990_ _rest63980_)
                 (_else6398463998_ (lambda () _constructor63981_))
                 (_K6398664012_
                  (lambda (_rest64001_ _hd64002_)
                    (let ((_$e64004_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd64002_
                              '10
                              class::t
                              '#f))))
                      (if _$e64004_
                          ((lambda (_xconstructor64007_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor63981_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor63981_
                                            _xconstructor64007_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp63978_ _rest64001_ _xconstructor64007_))
                                 (let ()
                                   (declare (not safe))
                                   (error '"conflicting implicit constructors"
                                          _constructor63981_
                                          _xconstructor64007_))))
                           _$e64004_)
                          (let ()
                            (declare (not safe))
                            (_lp63978_ _rest64001_ _constructor63981_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6398263990_))
                (let ((_hd6398764015_
                       (let () (declare (not safe)) (##car _rest6398263990_)))
                      (_tl6398864017_
                       (let () (declare (not safe)) (##cdr _rest6398263990_))))
                  (let* ((_hd64020_ _hd6398764015_)
                         (_rest64022_ _tl6398864017_))
                    (declare (not safe))
                    (_K6398664012_ _rest64022_ _hd64020_)))
                (let () (declare (not safe)) (_else6398463998_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list63952_ _direct-slots63953_)
        (let* ((_next-slot63955_ '1)
               (_slot-table63957_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots63959_ '(__class))
               (_process-slot63963_
                (lambda (_slot63961_)
                  (if (let () (declare (not safe)) (symbol? _slot63961_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"invalid slot name" _slot63961_)))
                  (if (let ((__tmp64656
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table63957_
                                _slot63961_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp64656 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table63957_
                           _slot63961_
                           _next-slot63955_))
                        (let ((__tmp64655 (symbol->keyword _slot63961_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table63957_
                           __tmp64655
                           _next-slot63955_))
                        (set! _r-slots63959_
                              (let ()
                                (declare (not safe))
                                (cons _slot63961_ _r-slots63959_)))
                        (set! _next-slot63955_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot63955_ '1))))
                      '#!void)))
               (_process-slots63969_
                (lambda (_g6396463966_)
                  (for-each _process-slot63963_ _g6396463966_))))
          (for-each
           (lambda (_mixin63972_)
             (let ((__tmp64657
                    (let ((__tmp64658
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin63972_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp64658 '()))))
               (declare (not safe))
               (_process-slots63969_ __tmp64657)))
           (reverse _class-precedence-list63952_))
          (let ()
            (declare (not safe))
            (_process-slots63969_ _direct-slots63953_))
          (let ((_slot-vector63974_ (list->vector (reverse _r-slots63959_))))
            (values _slot-vector63974_ _slot-table63957_)))))
    (define make-class-type
      (lambda (_id63914_
               _name63915_
               _direct-supers63916_
               _direct-slots63917_
               _properties63918_
               _constructor63919_)
        (let ((_$e63924_
               (let ((__tmp64659
                      (lambda (_$obj63921_)
                        (let ((__tmp64660
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj63921_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp64660)))))
                 (declare (not safe))
                 (find __tmp64659 _direct-supers63916_))))
          (if _$e63924_
              ((lambda (_g6392663928_)
                 (let ()
                   (declare (not safe))
                   (error '"Illegal super class; not a class descriptor"
                          _g6392663928_)))
               _$e63924_)
              (let ((_$e63931_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers63916_))))
                (if _$e63931_
                    ((lambda (_g6393363935_)
                       (let ()
                         (declare (not safe))
                         (error '"Cannot extend final class" _g6393363935_)))
                     _$e63931_)
                    '#!void))))
        (let ((_g64661_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers63916_))))
          (begin
            (let ((_g64662_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g64661_) (##vector-length _g64661_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g64662_ 2)))
                  (error "Context expects 2 values" _g64662_)))
            (let ((_precedence-list63938_
                   (let () (declare (not safe)) (##vector-ref _g64661_ 0)))
                  (_struct-super63939_
                   (let () (declare (not safe)) (##vector-ref _g64661_ 1))))
              (let ((_g64663_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list63938_
                        _direct-slots63917_))))
                (begin
                  (let ((_g64664_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g64663_)
                               (##vector-length _g64663_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g64664_ 2)))
                        (error "Context expects 2 values" _g64664_)))
                  (let ((_slot-vector63941_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g64663_ 0)))
                        (_slot-table63942_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g64663_ 1))))
                    (let* ((_properties63944_
                            (let ((__tmp64667
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots63917_)))
                                  (__tmp64665
                                   (let ((__tmp64666
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers63916_))))
                                     (declare (not safe))
                                     (cons __tmp64666 _properties63918_))))
                              (declare (not safe))
                              (cons __tmp64667 __tmp64665)))
                           (_constructor*63949_
                            (let ((_$e63946_ _constructor63919_))
                              (if _$e63946_
                                  _$e63946_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers63916_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id63914_
                         _name63915_
                         _struct-super63939_
                         _precedence-list63938_
                         _slot-vector63941_
                         _properties63944_
                         _constructor*63949_
                         _slot-table63942_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass63912_)
        (let ((__tmp64668
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass63912_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass63912_ __tmp64668))))
    (define compute-precedence-list
      (lambda (_direct-supers63910_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers63910_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass63894_)
        (let ((_tid63896_
               (let () (declare (not safe)) (##type-id _klass63894_))))
          (if (let () (declare (not safe)) (class-type-final? _klass63894_))
              (lambda (_g6389763899_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6389763899_ _tid63896_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass63894_))
                  (lambda (_g6390163903_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6390163903_ _tid63896_)))
                  (lambda (_g6390563907_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass63894_ _g6390563907_))))))))
    (define if-class-slot-field
      (lambda (_klass63883_
               _slot63884_
               _if-final63885_
               _if-struct63886_
               _if-struct-field63887_
               _if-class-slot63888_)
        (let ((_field63890_
               (let ((__tmp64669
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass63883_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp64669 _slot63884_ '#f))))
          (if (let () (declare (not safe)) (not _field63890_))
              (let ()
                (declare (not safe))
                (error '"unknown slot"
                       'class:
                       _klass63883_
                       'slot:
                       _slot63884_))
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass63883_))
                  (_if-final63885_ _klass63883_ _slot63884_ _field63890_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass63883_))
                      (_if-struct63886_ _klass63883_ _slot63884_ _field63890_)
                      (if (let ((_strukt63892_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass63883_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt63892_
                                    'gerbil#class::t))
                                 (let ((__tmp64670
                                        (let ((__tmp64671
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt63892_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp64671))))
                                   (declare (not safe))
                                   (##fx< _field63890_ __tmp64670))))
                          (_if-struct-field63887_
                           _klass63883_
                           _slot63884_
                           _field63890_)
                          (_if-class-slot63888_
                           _klass63883_
                           _slot63884_
                           _field63890_))))))))
    (define make-class-slot-accessor
      (lambda (_klass63880_ _slot63881_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63880_
           _slot63881_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass63877_ _slot63878_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63877_
           _slot63878_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass63874_ _slot63875_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63874_
           _slot63875_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass63871_ _slot63872_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63871_
           _slot63872_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object63855_ _class63856_ _slot63857_)
        (apply error
               '"not an instance"
               'object:
               _object63855_
               'class:
               _class63856_
               (if _slot63857_
                   (let ((__tmp64672
                          (let ()
                            (declare (not safe))
                            (cons _slot63857_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp64672))
                   '()))))
    (define not-an-instance__0
      (lambda (_object63862_ _class63863_)
        (let ((_slot63865_ '#f))
          (declare (not safe))
          (not-an-instance__% _object63862_ _class63863_ _slot63865_))))
    (define not-an-instance
      (lambda _g64674_
        (let ((_g64673_ (let () (declare (not safe)) (##length _g64674_))))
          (cond ((let () (declare (not safe)) (##fx= _g64673_ 2))
                 (apply (lambda (_object63862_ _class63863_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object63862_ _class63863_)))
                        _g64674_))
                ((let () (declare (not safe)) (##fx= _g64673_ 3))
                 (apply (lambda (_object63867_ _class63868_ _slot63869_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object63867_
                             _class63868_
                             _slot63869_)))
                        _g64674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g64674_))))))
    (define make-final-slot-accessor
      (lambda (_klass63848_ _slot63849_ _field63850_)
        (lambda (_obj63852_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj63852_
             _field63850_
             _klass63848_
             _slot63849_)))))
    (define make-final-slot-mutator
      (lambda (_klass63841_ _slot63842_ _field63843_)
        (lambda (_obj63845_ _val63846_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj63845_
             _val63846_
             _field63843_
             _klass63841_
             _slot63842_)))))
    (define make-struct-slot-accessor
      (lambda (_klass63835_ _slot63836_ _field63837_)
        (lambda (_obj63839_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj63839_
             _field63837_
             _klass63835_
             _slot63836_)))))
    (define make-struct-slot-mutator
      (lambda (_klass63828_ _slot63829_ _field63830_)
        (lambda (_obj63832_ _val63833_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj63832_
             _val63833_
             _field63830_
             _klass63828_
             _slot63829_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass63822_ _slot63823_ _field63824_)
        (lambda (_obj63826_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj63826_
             _field63824_
             _klass63822_
             _slot63823_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass63815_ _slot63816_ _field63817_)
        (lambda (_obj63819_ _val63820_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj63819_
             _val63820_
             _field63817_
             _klass63815_
             _slot63816_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass63809_ _slot63810_ _field63811_)
        (lambda (_obj63813_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass63809_ _obj63813_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj63813_ _field63811_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj63813_ _klass63809_ _slot63810_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass63802_ _slot63803_ _field63804_)
        (lambda (_obj63806_ _val63807_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass63802_ _obj63806_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63806_ _field63804_ _val63807_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj63806_ _klass63802_ _slot63803_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass63796_ _slot63797_ _field63798_)
        (lambda (_obj63800_)
          (if (let ((__tmp64675
                     (let () (declare (not safe)) (##type-id _klass63796_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63800_ __tmp64675))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj63800_ _field63798_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass63796_ _obj63800_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj63800_ _slot63797_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj63800_
                     _klass63796_
                     _slot63797_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass63789_ _slot63790_ _field63791_)
        (lambda (_obj63793_ _val63794_)
          (if (let ((__tmp64676
                     (let () (declare (not safe)) (##type-id _klass63789_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63793_ __tmp64676))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63793_ _field63791_ _val63794_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass63789_ _obj63793_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj63793_ _slot63790_ _val63794_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj63793_
                     _klass63789_
                     _slot63790_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass63783_ _slot63784_ _field63785_)
        (lambda (_obj63787_)
          (if (let ((__tmp64677
                     (let () (declare (not safe)) (##type-id _klass63783_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63787_ __tmp64677))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj63787_ _field63785_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj63787_ _slot63784_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass63776_ _slot63777_ _field63778_)
        (lambda (_obj63780_ _val63781_)
          (if (let ((__tmp64678
                     (let () (declare (not safe)) (##type-id _klass63776_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63780_ __tmp64678))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63780_ _field63778_ _val63781_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj63780_ _slot63777_ _val63781_))))))
    (define class-slot-offset
      (lambda (_klass63773_ _slot63774_)
        (let ((__tmp64679
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass63773_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp64679 _slot63774_ '#f))))
    (define class-slot-ref
      (lambda (_klass63767_ _obj63768_ _slot63769_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass63767_ _obj63768_))
            (let ((_off63771_
                   (let ((__tmp64680 (object-type _obj63768_)))
                     (declare (not safe))
                     (class-slot-offset __tmp64680 _slot63769_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj63768_
               _off63771_
               _klass63767_
               _slot63769_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj63768_ _klass63767_)))))
    (define class-slot-set!
      (lambda (_klass63760_ _obj63761_ _slot63762_ _val63763_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass63760_ _obj63761_))
            (let ((_off63765_
                   (let ((__tmp64681 (object-type _obj63761_)))
                     (declare (not safe))
                     (class-slot-offset __tmp64681 _slot63762_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj63761_
               _val63763_
               _off63765_
               _klass63760_
               _slot63762_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj63761_ _klass63760_)))))
    (define unchecked-field-ref
      (lambda (_obj63757_ _off63758_)
        (let ((__tmp64682
               (let () (declare (not safe)) (##structure-type _obj63757_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj63757_ _off63758_ __tmp64682 '#f))))
    (define unchecked-field-set!
      (lambda (_obj63753_ _off63754_ _val63755_)
        (let ((__tmp64683
               (let () (declare (not safe)) (##structure-type _obj63753_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj63753_
           _val63755_
           _off63754_
           __tmp64683
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj63750_ _slot63751_)
        (let ((__tmp64684
               (let ((__tmp64685
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63750_))))
                 (declare (not safe))
                 (class-slot-offset __tmp64685 _slot63751_))))
          (declare (not safe))
          (unchecked-field-ref _obj63750_ __tmp64684))))
    (define unchecked-slot-set!
      (lambda (_obj63746_ _slot63747_ _val63748_)
        (let ((__tmp64686
               (let ((__tmp64687
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63746_))))
                 (declare (not safe))
                 (class-slot-offset __tmp64687 _slot63747_))))
          (declare (not safe))
          (unchecked-field-set! _obj63746_ __tmp64686 _val63748_))))
    (define slot-ref__%
      (lambda (_obj63722_ _slot63723_ _E63724_)
        (if (object? _obj63722_)
            (let* ((_klass63726_ (object-type _obj63722_))
                   (_$e63729_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass63726_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass63726_ _slot63723_))
                        '#f)))
              (if _$e63729_
                  ((lambda (_off63732_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj63722_ _off63732_)))
                   _$e63729_)
                  (_E63724_ _obj63722_ _slot63723_)))
            (_E63724_ _obj63722_ _slot63723_))))
    (define slot-ref__0
      (lambda (_obj63737_ _slot63738_)
        (let ((_E63740_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj63737_ _slot63738_ _E63740_))))
    (define slot-ref
      (lambda _g64689_
        (let ((_g64688_ (let () (declare (not safe)) (##length _g64689_))))
          (cond ((let () (declare (not safe)) (##fx= _g64688_ 2))
                 (apply (lambda (_obj63737_ _slot63738_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj63737_ _slot63738_)))
                        _g64689_))
                ((let () (declare (not safe)) (##fx= _g64688_ 3))
                 (apply (lambda (_obj63742_ _slot63743_ _E63744_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj63742_ _slot63743_ _E63744_)))
                        _g64689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g64689_))))))
    (define slot-set!__%
      (lambda (_obj63694_ _slot63695_ _val63696_ _E63697_)
        (if (object? _obj63694_)
            (let* ((_klass63699_ (object-type _obj63694_))
                   (_$e63702_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass63699_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass63699_ _slot63695_))
                        '#f)))
              (if _$e63702_
                  ((lambda (_off63705_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj63694_
                        _off63705_
                        _val63696_)))
                   _$e63702_)
                  (_E63697_ _obj63694_ _slot63695_)))
            (_E63697_ _obj63694_ _slot63695_))))
    (define slot-set!__0
      (lambda (_obj63710_ _slot63711_ _val63712_)
        (let ((_E63714_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj63710_ _slot63711_ _val63712_ _E63714_))))
    (define slot-set!
      (lambda _g64691_
        (let ((_g64690_ (let () (declare (not safe)) (##length _g64691_))))
          (cond ((let () (declare (not safe)) (##fx= _g64690_ 3))
                 (apply (lambda (_obj63710_ _slot63711_ _val63712_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj63710_ _slot63711_ _val63712_)))
                        _g64691_))
                ((let () (declare (not safe)) (##fx= _g64690_ 4))
                 (apply (lambda (_obj63716_ _slot63717_ _val63718_ _E63719_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj63716_
                             _slot63717_
                             _val63718_
                             _E63719_)))
                        _g64691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g64691_))))))
    (define __slot-error
      (lambda (_obj63690_ _slot63691_)
        (let ()
          (declare (not safe))
          (error '"Cannot find slot" 'object: _obj63690_ 'slot: _slot63691_))))
    (define subclass?
      (lambda (_maybe-sub-class63680_ _maybe-super-class63681_)
        (let* ((_maybe-super-class-id63683_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class63681_)))
               (_$e63685_
                (let ((__tmp64692
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class63680_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id63683_ __tmp64692))))
          (if _$e63685_
              _$e63685_
              (let ((__tmp64694
                     (lambda (_super-class63688_)
                       (let ((__tmp64695
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class63688_))))
                         (declare (not safe))
                         (eq? __tmp64695 _maybe-super-class-id63683_))))
                    (__tmp64693
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class63680_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp64694 __tmp64693))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass63677_ _obj63678_)
        (let ((__tmp64696
               (let () (declare (not safe)) (##type-id _klass63677_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj63678_ __tmp64696))))
    (define struct-instance?
      (lambda (_klass63674_ _obj63675_)
        (let ((__tmp64697
               (let () (declare (not safe)) (##type-id _klass63674_))))
          (declare (not safe))
          (##structure-instance-of? _obj63675_ __tmp64697))))
    (define class-instance?
      (lambda (_klass63669_ _obj63670_)
        (if (object? _obj63670_)
            (let ((_type63672_ (object-type _obj63670_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type63672_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type63672_ _klass63669_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass63664_ _k63665_)
        (let ((_obj63667_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass63664_ _k63665_))))
          (let () (declare (not safe)) (object-fill! _obj63667_ '#f))
          _obj63667_)))
    (define object-fill!
      (lambda (_obj63657_ _fill63658_)
        (let _loop63660_ ((_i63662_
                           (let ((__tmp64699
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj63657_))))
                             (declare (not safe))
                             (##fx- __tmp64699 '1))))
          (if (let () (declare (not safe)) (##fx> _i63662_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj63657_
                   _fill63658_
                   _i63662_
                   '#f
                   '#f))
                (let ((__tmp64698
                       (let () (declare (not safe)) (##fx- _i63662_ '1))))
                  (declare (not safe))
                  (_loop63660_ __tmp64698)))
              _obj63657_))))
    (define new-instance
      (lambda (_klass63655_)
        (let ((__obj64603
               (let ((__tmp64700
                      (let ((__tmp64701
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass63655_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp64701))))
                 (declare (not safe))
                 (##make-structure _klass63655_ __tmp64700))))
          (let () (declare (not safe)) (object-fill! __obj64603 '#f))
          __obj64603)))
    (define make-instance
      (lambda (_klass63645_ . _args63646_)
        (let* ((_obj63648_
                (let () (declare (not safe)) (new-instance _klass63645_)))
               (_$e63650_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass63645_ '10 class::t '#f))))
          (if _$e63650_
              ((lambda (_kons-id63653_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass63645_
                    _kons-id63653_
                    _obj63648_
                    _args63646_)))
               _$e63650_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass63645_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass63645_
                     _obj63648_
                     _args63646_))
                  (if (let ((__tmp64706
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass63645_))))
                        (declare (not safe))
                        (not __tmp64706))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass63645_
                         _obj63648_
                         _args63646_))
                      (if (let ((__tmp64704
                                 (let ((__tmp64705
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj63648_))))
                                   (declare (not safe))
                                   (##fx- __tmp64705 '1)))
                                (__tmp64703 (length _args63646_)))
                            (declare (not safe))
                            (##fx= __tmp64704 __tmp64703))
                          (apply ##structure _klass63645_ _args63646_)
                          (let ((__tmp64702
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass63645_))))
                            (declare (not safe))
                            (error '"arguments don't match object size"
                                   'class:
                                   _klass63645_
                                   'slots:
                                   __tmp64702
                                   'args:
                                   _args63646_)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj63642_ . _args63643_)
        (if (let ((__tmp64708 (length _args63643_))
                  (__tmp64707
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj63642_))))
              (declare (not safe))
              (##fx< __tmp64708 __tmp64707))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj63642_ _args63643_))
            (let ()
              (declare (not safe))
              (error '"too many arguments for struct"
                     'object:
                     _obj63642_
                     'args:
                     _args63643_)))))
    (define __struct-instance-init!
      (lambda (_obj63601_ _args63602_)
        (let _lp63604_ ((_k63606_ '1) (_rest63607_ _args63602_))
          (let* ((_rest6360863616_ _rest63607_)
                 (_else6361063624_ (lambda () _obj63601_))
                 (_K6361263630_
                  (lambda (_rest63627_ _hd63628_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj63601_ _k63606_ _hd63628_))
                    (let ((__tmp64709
                           (let () (declare (not safe)) (##fx+ _k63606_ '1))))
                      (declare (not safe))
                      (_lp63604_ __tmp64709 _rest63627_)))))
            (if (let () (declare (not safe)) (##pair? _rest6360863616_))
                (let ((_hd6361363633_
                       (let () (declare (not safe)) (##car _rest6360863616_)))
                      (_tl6361463635_
                       (let () (declare (not safe)) (##cdr _rest6360863616_))))
                  (let* ((_hd63638_ _hd6361363633_)
                         (_rest63640_ _tl6361463635_))
                    (declare (not safe))
                    (_K6361263630_ _rest63640_ _hd63638_)))
                (let () (declare (not safe)) (_else6361063624_)))))))
    (define class-instance-init!
      (lambda (_obj63598_ . _args63599_)
        (let ((__tmp64710 (object-type _obj63598_)))
          (declare (not safe))
          (__class-instance-init! __tmp64710 _obj63598_ _args63599_))))
    (define __class-instance-init!
      (lambda (_klass63542_ _obj63543_ _args63544_)
        (let _lp63546_ ((_rest63548_ _args63544_))
          (let* ((_rest6354963559_ _rest63548_)
                 (_else6355163567_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest63548_))
                        _obj63543_
                        (let ()
                          (declare (not safe))
                          (error '"unexpected class initializer arguments"
                                 'class:
                                 _klass63542_
                                 'rest:
                                 _rest63548_)))))
                 (_K6355363579_
                  (lambda (_rest63570_ _val63571_ _key63572_)
                    (let ((_$e63574_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass63542_ _key63572_))))
                      (if _$e63574_
                          ((lambda (_off63577_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj63543_
                                _off63577_
                                _val63571_))
                             (let ()
                               (declare (not safe))
                               (_lp63546_ _rest63570_)))
                           _$e63574_)
                          (let ()
                            (declare (not safe))
                            (error '"unknown slot"
                                   'class:
                                   _klass63542_
                                   'slot:
                                   _key63572_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6354963559_))
                (let ((_hd6355463582_
                       (let () (declare (not safe)) (##car _rest6354963559_)))
                      (_tl6355563584_
                       (let () (declare (not safe)) (##cdr _rest6354963559_))))
                  (let ((_key63587_ _hd6355463582_))
                    (if (let () (declare (not safe)) (##pair? _tl6355563584_))
                        (let ((_hd6355663589_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6355563584_)))
                              (_tl6355763591_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6355563584_))))
                          (let* ((_val63594_ _hd6355663589_)
                                 (_rest63596_ _tl6355763591_))
                            (declare (not safe))
                            (_K6355363579_ _rest63596_ _val63594_ _key63587_)))
                        (let () (declare (not safe)) (_else6355163567_)))))
                (let () (declare (not safe)) (_else6355163567_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass63538_ _obj63539_ _args63540_)
        (apply call-method
               _klass63538_
               'instance-init!
               _obj63539_
               _args63540_)))
    (define constructor-init!
      (lambda (_klass63533_ _kons-id63534_ _obj63535_ . _args63536_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass63533_
           _kons-id63534_
           _obj63535_
           _args63536_))))
    (define __constructor-init!
      (lambda (_klass63523_ _kons-id63524_ _obj63525_ _args63526_)
        (let ((_$e63528_
               (let ()
                 (declare (not safe))
                 (__find-method _klass63523_ _obj63525_ _kons-id63524_))))
          (if _$e63528_
              ((lambda (_kons63531_)
                 (apply _kons63531_ _obj63525_ _args63526_)
                 _obj63525_)
               _$e63528_)
              (let ()
                (declare (not safe))
                (error '"missing constructor"
                       'class:
                       _klass63523_
                       'method:
                       _kons-id63524_))))))
    (define struct-copy
      (lambda (_struct63521_)
        (if (let () (declare (not safe)) (##structure? _struct63521_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"not a structure" _struct63521_)))
        (let () (declare (not safe)) (##structure-copy _struct63521_))))
    (define struct->list
      (lambda (_obj63519_)
        (if (object? _obj63519_)
            (let () (declare (not safe)) (##vector->list _obj63519_))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj63519_)))))
    (define class->list
      (lambda (_obj63506_)
        (if (object? _obj63506_)
            (let ((_klass63508_ (object-type _obj63506_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass63508_ 'gerbil#class::t))
                  (let ((_slot-vector63510_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass63508_
                            '7
                            class::t
                            '#f))))
                    (let _loop63512_ ((_index63514_
                                       (let ((__tmp64716
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector63510_))))
                                         (declare (not safe))
                                         (##fx- __tmp64716 '1)))
                                      (_plist63515_ '()))
                      (if (let () (declare (not safe)) (##fx< _index63514_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass63508_ _plist63515_))
                          (let ((_slot63517_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector63510_
                                    _index63514_))))
                            (let ((__tmp64715
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index63514_ '1)))
                                  (__tmp64711
                                   (let ((__tmp64714
                                          (symbol->keyword _slot63517_))
                                         (__tmp64712
                                          (let ((__tmp64713
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj63506_
                                                    _index63514_))))
                                            (declare (not safe))
                                            (cons __tmp64713 _plist63515_))))
                                     (declare (not safe))
                                     (cons __tmp64714 __tmp64712))))
                              (declare (not safe))
                              (_loop63512_ __tmp64715 __tmp64711))))))
                  (let ()
                    (declare (not safe))
                    (error '"not a class type"
                           'object:
                           _obj63506_
                           'class:
                           _klass63508_))))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj63506_)))))
    (define call-method
      (lambda (_obj63497_ _id63498_ . _args63499_)
        (let ((_$e63501_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63497_ _id63498_))))
          (if _$e63501_
              ((lambda (_method63504_)
                 (apply _method63504_ _obj63497_ _args63499_))
               _$e63501_)
              (let ()
                (declare (not safe))
                (error '"cannot find method"
                       'object:
                       _obj63497_
                       'method:
                       _id63498_))))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define method-ref
      (lambda (_obj63494_ _id63495_)
        (if (object? _obj63494_)
            (let ((__tmp64717 (object-type _obj63494_)))
              (declare (not safe))
              (find-method __tmp64717 _obj63494_ _id63495_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj63488_ _id63489_)
        (let ((_$e63491_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63488_ _id63489_))))
          (if _$e63491_
              _$e63491_
              (let ()
                (declare (not safe))
                (error '"missing method"
                       'object:
                       _obj63488_
                       'method:
                       _id63489_))))))
    (define bound-method-ref
      (lambda (_obj63478_ _id63479_)
        (let ((_$e63481_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63478_ _id63479_))))
          (if _$e63481_
              ((lambda (_method63484_)
                 (lambda _args63486_
                   (apply _method63484_ _obj63478_ _args63486_)))
               _$e63481_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj63471_ _id63472_)
        (let ((_method63474_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj63471_ _id63472_))))
          (lambda _args63476_ (apply _method63474_ _obj63471_ _args63476_)))))
    (define find-method
      (lambda (_klass63467_ _obj63468_ _id63469_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63467_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass63467_ _obj63468_ _id63469_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass63467_ _obj63468_ _id63469_)))))
    (define __find-method
      (lambda (_klass63460_ _obj63461_ _id63462_)
        (let ((_$e63464_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass63460_ _obj63461_ _id63462_))))
          (if _$e63464_
              _$e63464_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass63460_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass63460_ _obj63461_ _id63462_)))))))
    (define class-find-method
      (lambda (_klass63456_ _obj63457_ _id63458_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63456_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass63456_ _obj63457_ _id63458_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins63448_ _obj63449_ _id63450_)
        (let ((__tmp64718
               (lambda (_g6345163453_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6345163453_ _obj63449_ _id63450_)))))
          (declare (not safe))
          (ormap1 __tmp64718 _mixins63448_))))
    (define builtin-find-method
      (lambda (_klass63441_ _obj63442_ _id63443_)
        (if (let () (declare (not safe)) (##type? _klass63441_))
            (let ((_$e63445_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass63441_ _obj63442_ _id63443_))))
              (if _$e63445_
                  _$e63445_
                  (let ((__tmp64719
                         (let ()
                           (declare (not safe))
                           (##type-super _klass63441_))))
                    (declare (not safe))
                    (builtin-find-method __tmp64719 _obj63442_ _id63443_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass63418_ _obj63419_ _id63420_)
        (letrec ((_metaclass-resolve-method63422_
                  (lambda ()
                    (let ((__method64604
                           (let ()
                             (declare (not safe))
                             (method-ref _klass63418_ 'direct-method-ref))))
                      (if __method64604
                          (__method64604 _klass63418_ _obj63419_ _id63420_)
                          (let ()
                            (declare (not safe))
                            (error '"Missing method"
                                   _klass63418_
                                   'direct-method-ref))))))
                 (_metaclass-resolve-method!63423_
                  (lambda ()
                    (let ((_method63438_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method63422_))))
                      (let ((__tmp64721
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass63418_
                                '11
                                class::t
                                '#f)))
                            (__tmp64720 (if _method63438_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp64721 _id63420_ __tmp64720))
                      _method63438_))))
          (let ((_$e63425_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass63418_ '11 class::t '#f))))
            (if _$e63425_
                ((lambda (_ht63428_)
                   (let ((_method63430_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht63428_ _id63420_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method63430_))
                         _method63430_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass63418_))
                             (let ((_$e63432_ _method63430_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e63432_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method63422_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e63432_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!63423_)))))
                             '#f))))
                 _$e63425_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass63418_))
                    (let ((_tab63435_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass63418_
                         _tab63435_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!63423_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass63414_ _obj63415_ _id63416_)
        (let ((__tmp64722 (##structure-ref _klass63414_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp64722 _obj63415_ _id63416_))))
    (define builtin-method-ref
      (lambda (_klass63405_ _obj63406_ _id63407_)
        (let ((_$e63409_
               (let ((__tmp64723
                      (let () (declare (not safe)) (##type-id _klass63405_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp64723 '#f))))
          (if _$e63409_
              ((lambda (_mtab63412_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab63412_ _id63407_ '#f)))
               _$e63409_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass63371_ _id63372_ _proc63373_ _rebind?63374_)
        (letrec ((_bind!63376_
                  (lambda (_ht63389_)
                    (if (and (let () (declare (not safe)) (not _rebind?63374_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht63389_ _id63372_ '#f)))
                        (let ()
                          (declare (not safe))
                          (error '"method already bound"
                                 'class:
                                 _klass63371_
                                 'method:
                                 _id63372_))
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht63389_
                           _id63372_
                           _proc63373_))))))
          (if (let () (declare (not safe)) (procedure? _proc63373_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad method; expected procedure" _proc63373_)))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass63371_ 'gerbil#class::t))
              (let ((_ht63378_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass63371_
                        '11
                        class::t
                        '#f))))
                (if _ht63378_
                    (let () (declare (not safe)) (_bind!63376_ _ht63378_))
                    (let ((_ht63380_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass63371_
                         _ht63380_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!63376_ _ht63380_)))))
              (if (let () (declare (not safe)) (##type? _klass63371_))
                  (let ((_ht63387_
                         (let ((_$e63382_
                                (let ((__tmp64724
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass63371_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp64724
                                   '#f))))
                           (if _$e63382_
                               _$e63382_
                               (let ((_ht63385_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table__% '#f '0))))
                                 (let ((__tmp64725
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass63371_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp64725
                                    _ht63385_))
                                 _ht63385_)))))
                    (declare (not safe))
                    (_bind!63376_ _ht63387_))
                  (let ()
                    (declare (not safe))
                    (error '"bad class; expected class or builtin type"
                           _klass63371_)))))))
    (define bind-method!__0
      (lambda (_klass63394_ _id63395_ _proc63396_)
        (let ((_rebind?63398_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass63394_
           _id63395_
           _proc63396_
           _rebind?63398_))))
    (define bind-method!
      (lambda _g64727_
        (let ((_g64726_ (let () (declare (not safe)) (##length _g64727_))))
          (cond ((let () (declare (not safe)) (##fx= _g64726_ 3))
                 (apply (lambda (_klass63394_ _id63395_ _proc63396_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass63394_
                             _id63395_
                             _proc63396_)))
                        _g64727_))
                ((let () (declare (not safe)) (##fx= _g64726_ 4))
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
                        _g64727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g64727_))))))
    (define make-method-specializer-table__%
      (lambda (_size-hint63351_ _seed63353_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint63351_
           procedure-hash
           eq?
           _seed63353_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_size-hint63359_ '#f) (_seed63361_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint63359_ _seed63361_))))
    (define make-method-specializer-table__1
      (lambda (_size-hint63363_)
        (let ((_seed63365_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint63363_ _seed63365_))))
    (define make-method-specializer-table
      (lambda _g64729_
        (let ((_g64728_ (let () (declare (not safe)) (##length _g64729_))))
          (cond ((let () (declare (not safe)) (##fx= _g64728_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g64729_))
                ((let () (declare (not safe)) (##fx= _g64728_ 1))
                 (apply (lambda (_size-hint63363_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _size-hint63363_)))
                        _g64729_))
                ((let () (declare (not safe)) (##fx= _g64728_ 2))
                 (apply (lambda (_size-hint63367_ _seed63368_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _size-hint63367_
                             _seed63368_)))
                        _g64729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g64729_))))))
    (define method-specializer-table-ref
      (lambda (_tab63308_ _key63309_ _default63310_)
        (let ((_table63312_
               (let () (declare (not safe)) (&raw-table-table _tab63308_)))
              (_seed63313_
               (let () (declare (not safe)) (&raw-table-seed _tab63308_))))
          (let* ((_h63315_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63309_))
                         _seed63313_))
                 (_size63318_ (vector-length _table63312_))
                 (_entries63321_ (fxquotient _size63318_ '2))
                 (_start63324_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63315_ _entries63321_)
                   '1)))
            (let _loop63328_ ((_probe63331_ _start63324_)
                              (_i63333_ '1)
                              (_deleted63335_ '#f))
              (let ((_k63338_ (vector-ref _table63312_ _probe63331_)))
                (if (let ((__tmp64736 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63338_ __tmp64736))
                    _default63310_
                    (if (let ((__tmp64735 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63338_ __tmp64735))
                        (let ((__tmp64734
                               (let ((_next-probe63341_
                                      (fx+ _start63324_
                                           _i63333_
                                           (fx* _i63333_ _i63333_))))
                                 (fxmodulo _next-probe63341_ _size63318_)))
                              (__tmp64733 (fx+ _i63333_ '1))
                              (__tmp64732
                               (let ((_$e63344_ _deleted63335_))
                                 (if _$e63344_ _$e63344_ _probe63331_))))
                          (declare (not safe))
                          (_loop63328_ __tmp64734 __tmp64733 __tmp64732))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63309_ _k63338_))
                            (vector-ref _table63312_ (fx+ _probe63331_ '1))
                            (let ((__tmp64731
                                   (let ((_next-probe63347_
                                          (fx+ _start63324_
                                               _i63333_
                                               (fx* _i63333_ _i63333_))))
                                     (fxmodulo _next-probe63347_ _size63318_)))
                                  (__tmp64730 (fx+ _i63333_ '1)))
                              (declare (not safe))
                              (_loop63328_
                               __tmp64731
                               __tmp64730
                               _deleted63335_)))))))))))
    (define method-specializer-table-set!
      (lambda (_tab63304_ _key63305_ _value63306_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63304_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63304_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63304_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _tab63304_
           _key63305_
           _value63306_))))
    (define __method-specializer-table-set!
      (lambda (_tab63259_ _key63260_ _value63261_)
        (let ((_table63264_
               (let () (declare (not safe)) (&raw-table-table _tab63259_)))
              (_seed63265_
               (let () (declare (not safe)) (&raw-table-seed _tab63259_))))
          (let* ((_h63267_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63260_))
                         _seed63265_))
                 (_size63270_ (vector-length _table63264_))
                 (_entries63273_ (fxquotient _size63270_ '2))
                 (_start63276_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63267_ _entries63273_)
                   '1)))
            (let _loop63280_ ((_probe63283_ _start63276_)
                              (_i63285_ '1)
                              (_deleted63287_ '#f))
              (let ((_k63290_ (vector-ref _table63264_ _probe63283_)))
                (if (let ((__tmp64746 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63290_ __tmp64746))
                    (if _deleted63287_
                        (begin
                          (vector-set! _table63264_ _deleted63287_ _key63260_)
                          (vector-set!
                           _table63264_
                           (fx+ _deleted63287_ '1)
                           _value63261_)
                          ((lambda ()
                             (let ((__tmp64745
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63259_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63259_
                                __tmp64745)))))
                        (begin
                          (vector-set! _table63264_ _probe63283_ _key63260_)
                          (vector-set!
                           _table63264_
                           (fx+ _probe63283_ '1)
                           _value63261_)
                          ((lambda ()
                             (let ((__tmp64743
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63259_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63259_ __tmp64743))
                             (let ((__tmp64744
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63259_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63259_
                                __tmp64744))))))
                    (if (let ((__tmp64742 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63290_ __tmp64742))
                        (let ((__tmp64741
                               (let ((_next-probe63295_
                                      (fx+ _start63276_
                                           _i63285_
                                           (fx* _i63285_ _i63285_))))
                                 (fxmodulo _next-probe63295_ _size63270_)))
                              (__tmp64740 (fx+ _i63285_ '1))
                              (__tmp64739
                               (let ((_$e63298_ _deleted63287_))
                                 (if _$e63298_ _$e63298_ _probe63283_))))
                          (declare (not safe))
                          (_loop63280_ __tmp64741 __tmp64740 __tmp64739))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63260_ _k63290_))
                            (begin
                              (vector-set!
                               _table63264_
                               _probe63283_
                               _key63260_)
                              (vector-set!
                               _table63264_
                               (fx+ _probe63283_ '1)
                               _value63261_))
                            (let ((__tmp64738
                                   (let ((_next-probe63301_
                                          (fx+ _start63276_
                                               _i63285_
                                               (fx* _i63285_ _i63285_))))
                                     (fxmodulo _next-probe63301_ _size63270_)))
                                  (__tmp64737 (fx+ _i63285_ '1)))
                              (declare (not safe))
                              (_loop63280_
                               __tmp64738
                               __tmp64737
                               _deleted63287_)))))))))))
    (define method-specializer-table-update!
      (lambda (_tab63254_
               _key63255_
               _method-specializer-table-update!63256_
               _default63257_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63254_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63254_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63254_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _tab63254_
           _key63255_
           _method-specializer-table-update!63256_
           _default63257_))))
    (define __method-specializer-table-update!
      (lambda (_tab63208_
               _key63209_
               _method-specializer-table-update!63210_
               _default63211_)
        (let ((_table63214_
               (let () (declare (not safe)) (&raw-table-table _tab63208_)))
              (_seed63215_
               (let () (declare (not safe)) (&raw-table-seed _tab63208_))))
          (let* ((_h63217_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63209_))
                         _seed63215_))
                 (_size63220_ (vector-length _table63214_))
                 (_entries63223_ (fxquotient _size63220_ '2))
                 (_start63226_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63217_ _entries63223_)
                   '1)))
            (let _loop63230_ ((_probe63233_ _start63226_)
                              (_i63235_ '1)
                              (_deleted63237_ '#f))
              (let ((_k63240_ (vector-ref _table63214_ _probe63233_)))
                (if (let ((__tmp64756 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63240_ __tmp64756))
                    (if _deleted63237_
                        (begin
                          (vector-set! _table63214_ _deleted63237_ _key63209_)
                          (vector-set!
                           _table63214_
                           (fx+ _deleted63237_ '1)
                           (_method-specializer-table-update!63210_
                            _default63211_))
                          ((lambda ()
                             (let ((__tmp64755
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63208_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63208_
                                __tmp64755)))))
                        (begin
                          (vector-set! _table63214_ _probe63233_ _key63209_)
                          (vector-set!
                           _table63214_
                           (fx+ _probe63233_ '1)
                           (_method-specializer-table-update!63210_
                            _default63211_))
                          ((lambda ()
                             (let ((__tmp64753
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63208_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63208_ __tmp64753))
                             (let ((__tmp64754
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63208_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63208_
                                __tmp64754))))))
                    (if (let ((__tmp64752 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63240_ __tmp64752))
                        (let ((__tmp64751
                               (let ((_next-probe63245_
                                      (fx+ _start63226_
                                           _i63235_
                                           (fx* _i63235_ _i63235_))))
                                 (fxmodulo _next-probe63245_ _size63220_)))
                              (__tmp64750 (fx+ _i63235_ '1))
                              (__tmp64749
                               (let ((_$e63248_ _deleted63237_))
                                 (if _$e63248_ _$e63248_ _probe63233_))))
                          (declare (not safe))
                          (_loop63230_ __tmp64751 __tmp64750 __tmp64749))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63209_ _k63240_))
                            (begin
                              (vector-set!
                               _table63214_
                               _probe63233_
                               _key63209_)
                              (vector-set!
                               _table63214_
                               (fx+ _probe63233_ '1)
                               (_method-specializer-table-update!63210_
                                (vector-ref
                                 _table63214_
                                 (fx+ _probe63233_ '1)))))
                            (let ((__tmp64748
                                   (let ((_next-probe63251_
                                          (fx+ _start63226_
                                               _i63235_
                                               (fx* _i63235_ _i63235_))))
                                     (fxmodulo _next-probe63251_ _size63220_)))
                                  (__tmp64747 (fx+ _i63235_ '1)))
                              (declare (not safe))
                              (_loop63230_
                               __tmp64748
                               __tmp64747
                               _deleted63237_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_tab63167_ _key63169_)
        (let ((_table63172_
               (let () (declare (not safe)) (&raw-table-table _tab63167_)))
              (_seed63174_
               (let () (declare (not safe)) (&raw-table-seed _tab63167_))))
          (let* ((_h63177_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63169_))
                         _seed63174_))
                 (_size63180_ (vector-length _table63172_))
                 (_entries63183_ (fxquotient _size63180_ '2))
                 (_start63186_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63177_ _entries63183_)
                   '1)))
            (let _loop63190_ ((_probe63193_ _start63186_) (_i63195_ '1))
              (let ((_k63198_ (vector-ref _table63172_ _probe63193_)))
                (if (let ((__tmp64763 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63198_ __tmp64763))
                    '#!void
                    (if (let ((__tmp64762 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63198_ __tmp64762))
                        (let ((__tmp64761
                               (let ((_next-probe63201_
                                      (fx+ _start63186_
                                           _i63195_
                                           (fx* _i63195_ _i63195_))))
                                 (fxmodulo _next-probe63201_ _size63180_)))
                              (__tmp64760 (fx+ _i63195_ '1)))
                          (declare (not safe))
                          (_loop63190_ __tmp64761 __tmp64760))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63169_ _k63198_))
                            (begin
                              (vector-set!
                               _table63172_
                               _probe63193_
                               (macro-deleted-obj))
                              (vector-set!
                               _table63172_
                               (fx+ _probe63193_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp64759
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab63167_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab63167_
                                    __tmp64759)))))
                            (let ((__tmp64758
                                   (let ((_next-probe63205_
                                          (fx+ _start63186_
                                               _i63195_
                                               (fx* _i63195_ _i63195_))))
                                     (fxmodulo _next-probe63205_ _size63180_)))
                                  (__tmp64757 (fx+ _i63195_ '1)))
                              (declare (not safe))
                              (_loop63190_ __tmp64758 __tmp64757)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_method-proc63158_ _specializer63159_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63163_ ()
            (if (let ((__tmp64764
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64764 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63163_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _method-proc63158_
           _specializer63159_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_proc63148_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63152_ ()
            (if (let ((__tmp64765
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64765 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63152_))))))
        (let ((_specializer63156_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _proc63148_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _specializer63156_)))
    (define __class-specializer-hash-key
      (lambda (_klass63146_)
        (let ((__tmp64766
               (let () (declare (not safe)) (##type-id _klass63146_))))
          (declare (not safe))
          (symbolic-hash __tmp64766))))
    (define make-class-specializer-table__%
      (lambda (_size-hint63127_ _seed63129_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint63127_
           __class-specializer-hash-key
           eq?
           _seed63129_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_size-hint63135_ '#f) (_seed63137_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint63135_ _seed63137_))))
    (define make-class-specializer-table__1
      (lambda (_size-hint63139_)
        (let ((_seed63141_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint63139_ _seed63141_))))
    (define make-class-specializer-table
      (lambda _g64768_
        (let ((_g64767_ (let () (declare (not safe)) (##length _g64768_))))
          (cond ((let () (declare (not safe)) (##fx= _g64767_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g64768_))
                ((let () (declare (not safe)) (##fx= _g64767_ 1))
                 (apply (lambda (_size-hint63139_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _size-hint63139_)))
                        _g64768_))
                ((let () (declare (not safe)) (##fx= _g64767_ 2))
                 (apply (lambda (_size-hint63143_ _seed63144_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _size-hint63143_
                             _seed63144_)))
                        _g64768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g64768_))))))
    (define class-specializer-table-ref
      (lambda (_tab63084_ _key63085_ _default63086_)
        (let ((_table63088_
               (let () (declare (not safe)) (&raw-table-table _tab63084_)))
              (_seed63089_
               (let () (declare (not safe)) (&raw-table-seed _tab63084_))))
          (let* ((_h63091_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63085_))
                         _seed63089_))
                 (_size63094_ (vector-length _table63088_))
                 (_entries63097_ (fxquotient _size63094_ '2))
                 (_start63100_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63091_ _entries63097_)
                   '1)))
            (let _loop63104_ ((_probe63107_ _start63100_)
                              (_i63109_ '1)
                              (_deleted63111_ '#f))
              (let ((_k63114_ (vector-ref _table63088_ _probe63107_)))
                (if (let ((__tmp64775 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63114_ __tmp64775))
                    _default63086_
                    (if (let ((__tmp64774 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63114_ __tmp64774))
                        (let ((__tmp64773
                               (let ((_next-probe63117_
                                      (fx+ _start63100_
                                           _i63109_
                                           (fx* _i63109_ _i63109_))))
                                 (fxmodulo _next-probe63117_ _size63094_)))
                              (__tmp64772 (fx+ _i63109_ '1))
                              (__tmp64771
                               (let ((_$e63120_ _deleted63111_))
                                 (if _$e63120_ _$e63120_ _probe63107_))))
                          (declare (not safe))
                          (_loop63104_ __tmp64773 __tmp64772 __tmp64771))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63085_ _k63114_))
                            (vector-ref _table63088_ (fx+ _probe63107_ '1))
                            (let ((__tmp64770
                                   (let ((_next-probe63123_
                                          (fx+ _start63100_
                                               _i63109_
                                               (fx* _i63109_ _i63109_))))
                                     (fxmodulo _next-probe63123_ _size63094_)))
                                  (__tmp64769 (fx+ _i63109_ '1)))
                              (declare (not safe))
                              (_loop63104_
                               __tmp64770
                               __tmp64769
                               _deleted63111_)))))))))))
    (define class-specializer-table-set!
      (lambda (_tab63080_ _key63081_ _value63082_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63080_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63080_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63080_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _tab63080_
           _key63081_
           _value63082_))))
    (define __class-specializer-table-set!
      (lambda (_tab63035_ _key63036_ _value63037_)
        (let ((_table63040_
               (let () (declare (not safe)) (&raw-table-table _tab63035_)))
              (_seed63041_
               (let () (declare (not safe)) (&raw-table-seed _tab63035_))))
          (let* ((_h63043_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63036_))
                         _seed63041_))
                 (_size63046_ (vector-length _table63040_))
                 (_entries63049_ (fxquotient _size63046_ '2))
                 (_start63052_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63043_ _entries63049_)
                   '1)))
            (let _loop63056_ ((_probe63059_ _start63052_)
                              (_i63061_ '1)
                              (_deleted63063_ '#f))
              (let ((_k63066_ (vector-ref _table63040_ _probe63059_)))
                (if (let ((__tmp64785 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63066_ __tmp64785))
                    (if _deleted63063_
                        (begin
                          (vector-set! _table63040_ _deleted63063_ _key63036_)
                          (vector-set!
                           _table63040_
                           (fx+ _deleted63063_ '1)
                           _value63037_)
                          ((lambda ()
                             (let ((__tmp64784
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63035_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63035_
                                __tmp64784)))))
                        (begin
                          (vector-set! _table63040_ _probe63059_ _key63036_)
                          (vector-set!
                           _table63040_
                           (fx+ _probe63059_ '1)
                           _value63037_)
                          ((lambda ()
                             (let ((__tmp64782
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63035_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63035_ __tmp64782))
                             (let ((__tmp64783
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63035_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63035_
                                __tmp64783))))))
                    (if (let ((__tmp64781 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63066_ __tmp64781))
                        (let ((__tmp64780
                               (let ((_next-probe63071_
                                      (fx+ _start63052_
                                           _i63061_
                                           (fx* _i63061_ _i63061_))))
                                 (fxmodulo _next-probe63071_ _size63046_)))
                              (__tmp64779 (fx+ _i63061_ '1))
                              (__tmp64778
                               (let ((_$e63074_ _deleted63063_))
                                 (if _$e63074_ _$e63074_ _probe63059_))))
                          (declare (not safe))
                          (_loop63056_ __tmp64780 __tmp64779 __tmp64778))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63036_ _k63066_))
                            (begin
                              (vector-set!
                               _table63040_
                               _probe63059_
                               _key63036_)
                              (vector-set!
                               _table63040_
                               (fx+ _probe63059_ '1)
                               _value63037_))
                            (let ((__tmp64777
                                   (let ((_next-probe63077_
                                          (fx+ _start63052_
                                               _i63061_
                                               (fx* _i63061_ _i63061_))))
                                     (fxmodulo _next-probe63077_ _size63046_)))
                                  (__tmp64776 (fx+ _i63061_ '1)))
                              (declare (not safe))
                              (_loop63056_
                               __tmp64777
                               __tmp64776
                               _deleted63063_)))))))))))
    (define class-specializer-table-update!
      (lambda (_tab63030_
               _key63031_
               _class-specializer-table-update!63032_
               _default63033_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63030_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63030_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63030_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _tab63030_
           _key63031_
           _class-specializer-table-update!63032_
           _default63033_))))
    (define __class-specializer-table-update!
      (lambda (_tab62984_
               _key62985_
               _class-specializer-table-update!62986_
               _default62987_)
        (let ((_table62990_
               (let () (declare (not safe)) (&raw-table-table _tab62984_)))
              (_seed62991_
               (let () (declare (not safe)) (&raw-table-seed _tab62984_))))
          (let* ((_h62993_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62985_))
                         _seed62991_))
                 (_size62996_ (vector-length _table62990_))
                 (_entries62999_ (fxquotient _size62996_ '2))
                 (_start63002_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62993_ _entries62999_)
                   '1)))
            (let _loop63006_ ((_probe63009_ _start63002_)
                              (_i63011_ '1)
                              (_deleted63013_ '#f))
              (let ((_k63016_ (vector-ref _table62990_ _probe63009_)))
                (if (let ((__tmp64795 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63016_ __tmp64795))
                    (if _deleted63013_
                        (begin
                          (vector-set! _table62990_ _deleted63013_ _key62985_)
                          (vector-set!
                           _table62990_
                           (fx+ _deleted63013_ '1)
                           (_class-specializer-table-update!62986_
                            _default62987_))
                          ((lambda ()
                             (let ((__tmp64794
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62984_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62984_
                                __tmp64794)))))
                        (begin
                          (vector-set! _table62990_ _probe63009_ _key62985_)
                          (vector-set!
                           _table62990_
                           (fx+ _probe63009_ '1)
                           (_class-specializer-table-update!62986_
                            _default62987_))
                          ((lambda ()
                             (let ((__tmp64792
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab62984_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab62984_ __tmp64792))
                             (let ((__tmp64793
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62984_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62984_
                                __tmp64793))))))
                    (if (let ((__tmp64791 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63016_ __tmp64791))
                        (let ((__tmp64790
                               (let ((_next-probe63021_
                                      (fx+ _start63002_
                                           _i63011_
                                           (fx* _i63011_ _i63011_))))
                                 (fxmodulo _next-probe63021_ _size62996_)))
                              (__tmp64789 (fx+ _i63011_ '1))
                              (__tmp64788
                               (let ((_$e63024_ _deleted63013_))
                                 (if _$e63024_ _$e63024_ _probe63009_))))
                          (declare (not safe))
                          (_loop63006_ __tmp64790 __tmp64789 __tmp64788))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62985_ _k63016_))
                            (begin
                              (vector-set!
                               _table62990_
                               _probe63009_
                               _key62985_)
                              (vector-set!
                               _table62990_
                               (fx+ _probe63009_ '1)
                               (_class-specializer-table-update!62986_
                                (vector-ref
                                 _table62990_
                                 (fx+ _probe63009_ '1)))))
                            (let ((__tmp64787
                                   (let ((_next-probe63027_
                                          (fx+ _start63002_
                                               _i63011_
                                               (fx* _i63011_ _i63011_))))
                                     (fxmodulo _next-probe63027_ _size62996_)))
                                  (__tmp64786 (fx+ _i63011_ '1)))
                              (declare (not safe))
                              (_loop63006_
                               __tmp64787
                               __tmp64786
                               _deleted63013_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_tab62943_ _key62945_)
        (let ((_table62948_
               (let () (declare (not safe)) (&raw-table-table _tab62943_)))
              (_seed62950_
               (let () (declare (not safe)) (&raw-table-seed _tab62943_))))
          (let* ((_h62953_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62945_))
                         _seed62950_))
                 (_size62956_ (vector-length _table62948_))
                 (_entries62959_ (fxquotient _size62956_ '2))
                 (_start62962_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62953_ _entries62959_)
                   '1)))
            (let _loop62966_ ((_probe62969_ _start62962_) (_i62971_ '1))
              (let ((_k62974_ (vector-ref _table62948_ _probe62969_)))
                (if (let ((__tmp64802 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62974_ __tmp64802))
                    '#!void
                    (if (let ((__tmp64801 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62974_ __tmp64801))
                        (let ((__tmp64800
                               (let ((_next-probe62977_
                                      (fx+ _start62962_
                                           _i62971_
                                           (fx* _i62971_ _i62971_))))
                                 (fxmodulo _next-probe62977_ _size62956_)))
                              (__tmp64799 (fx+ _i62971_ '1)))
                          (declare (not safe))
                          (_loop62966_ __tmp64800 __tmp64799))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62945_ _k62974_))
                            (begin
                              (vector-set!
                               _table62948_
                               _probe62969_
                               (macro-deleted-obj))
                              (vector-set!
                               _table62948_
                               (fx+ _probe62969_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp64798
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab62943_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab62943_
                                    __tmp64798)))))
                            (let ((__tmp64797
                                   (let ((_next-probe62981_
                                          (fx+ _start62962_
                                               _i62971_
                                               (fx* _i62971_ _i62971_))))
                                     (fxmodulo _next-probe62981_ _size62956_)))
                                  (__tmp64796 (fx+ _i62971_ '1)))
                              (declare (not safe))
                              (_loop62966_ __tmp64797 __tmp64796)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define specialize-class
      (lambda (_klass62936_)
        (let ((_$e62938_
               (let ()
                 (declare (not safe))
                 (__lookup-class-specializer _klass62936_))))
          (if _$e62938_
              _$e62938_
              (let ((_method-table62941_
                     (let ()
                       (declare (not safe))
                       (__specialize-class _klass62936_))))
                (let ()
                  (declare (not safe))
                  (__bind-class-specializer! _klass62936_ _method-table62941_))
                _method-table62941_)))))
    (define __lookup-class-specializer
      (lambda (_klass62926_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62930_ ()
            (if (let ((__tmp64803
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64803 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62930_))))))
        (let ((_method-table62934_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _klass62926_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _method-table62934_)))
    (define __bind-class-specializer!
      (lambda (_klass62917_ _method-table62918_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62922_ ()
            (if (let ((__tmp64804
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64804 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62922_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _klass62917_
           _method-table62918_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_klass62902_ _method-table62903_ _method62904_ _proc62905_)
        (let ((_$e62907_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _method-table62903_ _method62904_ '#f))))
          (if _$e62907_
              _$e62907_
              (let ((_$e62910_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _proc62905_))))
                (if _$e62910_
                    ((lambda (_specialize62913_)
                       (let ((_specialized-proc62915_
                              (_specialize62913_
                               _klass62902_
                               _method-table62903_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _method-table62903_
                          _method62904_
                          _specialized-proc62915_)))
                     _$e62910_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _method-table62903_
                       _method62904_
                       _proc62905_))))))))
    (define __specialize-class
      (lambda (_klass62829_)
        (if (let ((__tmp64810
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _klass62829_
                      'gerbil#class::t))))
              (declare (not safe))
              (not __tmp64810))
            (if (let () (declare (not safe)) (##type? _klass62829_))
                (let ((_method-table62831_
                       (let ()
                         (declare (not safe))
                         (make-symbolic-table__% '#f '0))))
                  (let _loop62833_ ((_xklass62835_ _klass62829_))
                    (if _xklass62835_
                        (begin
                          (let ((_xmethod-table6283662838_
                                 (let ((__tmp64807
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _xklass62835_))))
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    __builtin-type-methods
                                    __tmp64807
                                    '#f))))
                            (if _xmethod-table6283662838_
                                (let* ((_xmethod-table62841_
                                        _xmethod-table6283662838_)
                                       (__tmp64808
                                        (lambda (_g6284262845_ _g6284362847_)
                                          (let ()
                                            (declare (not safe))
                                            (__specialize-method
                                             _klass62829_
                                             _method-table62831_
                                             _g6284262845_
                                             _g6284362847_)))))
                                  (declare (not safe))
                                  (raw-table-for-each
                                   _xmethod-table62841_
                                   __tmp64808))
                                '#f))
                          (let ((__tmp64809
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _xklass62835_))))
                            (declare (not safe))
                            (_loop62833_ __tmp64809)))
                        '#!void))
                  _method-table62831_)
                (let ()
                  (declare (not safe))
                  (error '"bad class; cannot specialize" _klass62829_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _klass62829_))
                (let ((__method64605
                       (let ()
                         (declare (not safe))
                         (method-ref _klass62829_ 'specialize-class))))
                  (if __method64605
                      (__method64605 _klass62829_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _klass62829_
                               'specialize-class))))
                (if (let ((__tmp64806
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _klass62829_
                              '6
                              class::t
                              '#f))))
                      (declare (not safe))
                      (find class-type-metaclass? __tmp64806))
                    (let ()
                      (declare (not safe))
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _klass62829_))
                    (let ((_method-table62850_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _loop62852_ ((_rest62854_
                                         (let ()
                                           (declare (not safe))
                                           (class-precedence-list
                                            _klass62829_))))
                        (let* ((_rest6285562863_ _rest62854_)
                               (_else6285762871_
                                (lambda () _method-table62850_))
                               (_K6285962890_
                                (lambda (_rest62874_ _xklass62875_)
                                  (let ((_xmethod-table6287662878_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _xklass62875_
                                            '11
                                            class::t
                                            '#f))))
                                    (if _xmethod-table6287662878_
                                        (let* ((_xmethod-table62881_
                                                _xmethod-table6287662878_)
                                               (__tmp64805
                                                (lambda (_g6288262885_
                                                         _g6288362887_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _klass62829_
                                                     _method-table62850_
                                                     _g6288262885_
                                                     _g6288362887_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _xmethod-table62881_
                                           __tmp64805))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_loop62852_ _rest62874_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6285562863_))
                              (let ((_hd6286062893_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6285562863_)))
                                    (_tl6286162895_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6285562863_))))
                                (let* ((_xklass62898_ _hd6286062893_)
                                       (_rest62900_ _tl6286162895_))
                                  (declare (not safe))
                                  (_K6285962890_ _rest62900_ _xklass62898_)))
                              (let ()
                                (declare (not safe))
                                (_else6285762871_)))))))))))
    (define seal-class!
      (lambda (_klass62825_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass62825_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-sealed? _klass62825_))
                '#!void
                (begin
                  (if (let ()
                        (declare (not safe))
                        (class-type-final? _klass62825_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"cannot seal non-final class" _klass62825_)))
                  (if (let ()
                        (declare (not safe))
                        (class-type-metaclass? _klass62825_))
                      (let ((__method64606
                             (let ()
                               (declare (not safe))
                               (method-ref _klass62825_ 'seal-class!))))
                        (if __method64606
                            (__method64606 _klass62825_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _klass62825_
                                     'seal-class!))))
                      (if (let ((__tmp64811
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _klass62825_
                                    '6
                                    class::t
                                    '#f))))
                            (declare (not safe))
                            (find class-type-metaclass? __tmp64811))
                          (let ()
                            (declare (not safe))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass62825_))
                          (let ((_method-table62827_
                                 (let ()
                                   (declare (not safe))
                                   (specialize-class _klass62825_))))
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _klass62825_
                             _method-table62827_
                             '11
                             class::t
                             '#f))))
                  (let ()
                    (declare (not safe))
                    (&class-type-seal! _klass62825_))))
            '#!void)))
    (define next-method
      (lambda (_subklass62774_ _obj62775_ _id62776_)
        (let ((_klass62778_ (object-type _obj62775_))
              (_type-id62779_
               (let () (declare (not safe)) (##type-id _subklass62774_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62778_ 'gerbil#class::t))
              (let _lp62781_ ((_rest62783_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass62778_))))
                (let* ((_rest6278462792_ _rest62783_)
                       (_else6278662800_ (lambda () '#f))
                       (_K6278862806_
                        (lambda (_rest62803_ _klass62804_)
                          (if (let ((__tmp64814
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass62804_))))
                                (declare (not safe))
                                (eq? _type-id62779_ __tmp64814))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest62803_
                                 _obj62775_
                                 _id62776_))
                              (let ()
                                (declare (not safe))
                                (_lp62781_ _rest62803_))))))
                  (if (let () (declare (not safe)) (##pair? _rest6278462792_))
                      (let ((_hd6278962809_
                             (let ()
                               (declare (not safe))
                               (##car _rest6278462792_)))
                            (_tl6279062811_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest6278462792_))))
                        (let* ((_klass62814_ _hd6278962809_)
                               (_rest62816_ _tl6279062811_))
                          (declare (not safe))
                          (_K6278862806_ _rest62816_ _klass62814_)))
                      (let () (declare (not safe)) (_else6278662800_)))))
              (if (let () (declare (not safe)) (##type? _klass62778_))
                  (let _lp62818_ ((_klass62820_ _klass62778_))
                    (if (let ((__tmp64813
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass62820_))))
                          (declare (not safe))
                          (eq? _type-id62779_ __tmp64813))
                        (let ((__tmp64812
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62820_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp64812
                           _obj62775_
                           _id62776_))
                        (let ((_$e62822_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62820_))))
                          (if _$e62822_
                              (let ()
                                (declare (not safe))
                                (_lp62818_ _$e62822_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass62764_ _obj62765_ _id62766_ . _args62767_)
        (let ((_$e62769_
               (let ()
                 (declare (not safe))
                 (next-method _subklass62764_ _obj62765_ _id62766_))))
          (if _$e62769_
              ((lambda (_methodf62772_)
                 (apply _methodf62772_ _obj62765_ _args62767_))
               _$e62769_)
              (let ()
                (declare (not safe))
                (error '"cannot find next method"
                       'object:
                       _obj62765_
                       'method:
                       _id62766_))))))
    (define write-style (lambda (_we62762_) (macro-writeenv-style _we62762_)))
    (define write-object
      (lambda (_we62754_ _obj62755_)
        (let ((_$e62757_
               (let () (declare (not safe)) (method-ref _obj62755_ ':wr))))
          (if _$e62757_
              ((lambda (_method62760_) (_method62760_ _obj62755_ _we62754_))
               _$e62757_)
              (let ()
                (declare (not safe))
                (##default-wr _we62754_ _obj62755_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
