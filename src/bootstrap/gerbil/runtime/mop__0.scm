(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1709159706)
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
      (let* ((_slots64449_
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
             (_slot-vector64451_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots64449_))))
             (_slot-table64458_
              (let ((_slot-table64453_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot64455_ _field64456_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table64453_
                      _slot64455_
                      _field64456_))
                   (let ((__tmp64599 (symbol->keyword _slot64455_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table64453_
                      __tmp64599
                      _field64456_)))
                 _slots64449_
                 (let ((__tmp64600 (length _slots64449_)))
                   (declare (not safe))
                   (iota__1 __tmp64600 '1)))
                _slot-table64453_))
             (_flags64460_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields64466_
              (list->vector
               (apply append
                      (map (lambda (_g6446164463_) (list _g6446164463_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots64449_ '5))))))
             (_properties64468_
              (let ((__tmp64603
                     (let ((__tmp64604
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots64449_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp64604)))
                    (__tmp64601
                     (let ((__tmp64602
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp64602 '()))))
                (declare (not safe))
                (cons __tmp64603 __tmp64601)))
             (_t64470_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags64460_
                 ##type-type
                 _fields64466_
                 '()
                 _slot-vector64451_
                 _slot-table64458_
                 _properties64468_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t64470_ _t64470_))
        _t64470_))
    (define class-type?
      (lambda (_obj64447_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj64447_ class::t.id))))
    (define class-type=?
      (lambda (_x64444_ _y64445_)
        (let ((__tmp64606 (##structure-ref _x64444_ '1 class::t '#f))
              (__tmp64605 (##structure-ref _y64445_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp64606 __tmp64605))))
    (define type-opaque?
      (lambda (_type64442_)
        (let ((__tmp64607
               (let ((__tmp64608
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64442_))))
                 (declare (not safe))
                 (##fxand __tmp64608 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp64607 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type64440_)
        (let ((__tmp64609
               (let ((__tmp64610
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64440_))))
                 (declare (not safe))
                 (##fxand __tmp64610 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp64609 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type64438_)
        (let ((__tmp64611
               (let ((__tmp64612
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64438_))))
                 (declare (not safe))
                 (##fxand __tmp64612 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp64611 '0))))
    (define class-type-struct?
      (lambda (_klass64436_)
        (let ((__tmp64613
               (let ((__tmp64614
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64436_))))
                 (declare (not safe))
                 (##fxand __tmp64614 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp64613 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass64434_)
        (let ((__tmp64615
               (let ((__tmp64616
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64434_))))
                 (declare (not safe))
                 (##fxand __tmp64616 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp64615 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass64432_)
        (let ((__tmp64617
               (let ((__tmp64618
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64432_))))
                 (declare (not safe))
                 (##fxand __tmp64618 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp64617 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties64398_)
        (map (lambda (_e6439964401_)
               (let* ((_g6440364410_ _e6439964401_)
                      (_E6440564414_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (error '"No clause matching" _g6440364410_))))
                      (_K6440664420_
                       (lambda (_val64417_ _key64418_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key64418_ 'direct-supers:))
                             (let ((__tmp64619 (map class-type-id _val64417_)))
                               (declare (not safe))
                               (cons _key64418_ __tmp64619))
                             (let ()
                               (declare (not safe))
                               (cons _key64418_ _val64417_))))))
                 (if (let () (declare (not safe)) (##pair? _g6440364410_))
                     (let ((_hd6440764423_
                            (let ()
                              (declare (not safe))
                              (##car _g6440364410_)))
                           (_tl6440864425_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6440364410_))))
                       (let* ((_key64428_ _hd6440764423_)
                              (_val64430_ _tl6440864425_))
                         (declare (not safe))
                         (_K6440664420_ _val64430_ _key64428_)))
                     (let () (declare (not safe)) (_E6440564414_)))))
             _properties64398_)))
    (define make-class-type-descriptor
      (lambda (_type-id64297_
               _type-name64298_
               _type-super64299_
               _precedence-list64300_
               _slot-vector64301_
               _properties64302_
               _constructor64303_
               _slot-table64304_
               _methods64305_)
        (letrec ((_make-props!64307_
                  (lambda (_key64367_)
                    (letrec* ((_ht64369_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!64370_
                               (lambda (_ht64391_ _slots64392_)
                                 (for-each
                                  (lambda (_g6439364395_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht64391_
                                       _g6439364395_
                                       '#t)))
                                  _slots64392_)))
                              (_put-alist!64371_
                               (lambda (_ht64380_ _key64381_ _alist64382_)
                                 (let ((_$e64384_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key64381_
                                           _alist64382_))))
                                   (if _$e64384_
                                       ((lambda (_g6438664388_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!64370_
                                             _ht64380_
                                             _g6438664388_)))
                                        _$e64384_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!64371_
                         _ht64369_
                         _key64367_
                         _properties64302_))
                      (for-each
                       (lambda (_mixin64373_)
                         (let ((_alist64375_
                                (##structure-ref
                                 _mixin64373_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist64375_))
                                   (let ((__tmp64621
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key64367_
                                             _alist64375_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp64621)))
                               (let ((__tmp64620
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin64373_))))
                                 (declare (not safe))
                                 (_put-slots!64370_ _ht64369_ __tmp64620))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!64371_
                                  _ht64369_
                                  _key64367_
                                  _alist64375_)))))
                       _precedence-list64300_)
                      _ht64369_))))
          (let* ((_transparent?64309_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties64302_)))
                 (_all-slots-printable?64314_
                  (let ((_$e64311_ _transparent?64309_))
                    (if _$e64311_
                        _$e64311_
                        (let ((__tmp64622
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties64302_))))
                          (declare (not safe))
                          (eq? '#t __tmp64622)))))
                 (_printable64316_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?64314_))
                      (let ()
                        (declare (not safe))
                        (_make-props!64307_ 'print:))
                      '#f))
                 (_all-slots-equalable?64321_
                  (let ((_$e64318_ _transparent?64309_))
                    (if _$e64318_
                        _$e64318_
                        (let ((__tmp64623
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties64302_))))
                          (declare (not safe))
                          (eq? '#t __tmp64623)))))
                 (_equalable64323_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?64321_))
                      (let ()
                        (declare (not safe))
                        (_make-props!64307_ 'equal:))
                      '#f))
                 (_first-new-field64325_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super64299_
                         'gerbil#class::t))
                      (let ((__tmp64624
                             (##structure-ref
                              _type-super64299_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp64624))
                      '1))
                 (_field-info-length64327_
                  (let ((__tmp64625
                         (let ((__tmp64626
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector64301_))))
                           (declare (not safe))
                           (##fx- __tmp64626 _first-new-field64325_))))
                    (declare (not safe))
                    (##fx* '3 __tmp64625)))
                 (_field-info64329_ (make-vector _field-info-length64327_ '#f))
                 (_struct?64331_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties64302_)))
                 (_final?64333_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties64302_)))
                 (_metaclass64341_
                  (let ((_metaclass6433464336_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties64302_))))
                    (if _metaclass6433464336_
                        (let ((_metaclass64339_ _metaclass6433464336_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass64339_
                                 'gerbil#class::t))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (error '"metaclass is not a class type"
                                       'class:
                                       _type-id64297_
                                       'metaclass:
                                       _metaclass64339_)))
                          _metaclass64339_)
                        '#f)))
                 (_opaque?64346_
                  (let ((_$e64343_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?64321_))))
                    (if _$e64343_
                        _$e64343_
                        (if _type-super64299_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super64299_))
                            '#f))))
                 (_type-flags64348_
                  (let ((__tmp64630 (if _final?64333_ '0 type-flag-extensible))
                        (__tmp64629 (if _opaque?64346_ type-flag-opaque '0))
                        (__tmp64628
                         (if _struct?64331_ class-type-flag-struct '0))
                        (__tmp64627
                         (if _metaclass64341_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp64630
                             __tmp64629
                             __tmp64628
                             __tmp64627))))
            (let _loop64351_ ((_i64353_ _first-new-field64325_) (_j64354_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j64354_ _field-info-length64327_))
                  (let* ((_slot64356_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector64301_ _i64353_)))
                         (_flags64364_
                          (if _transparent?64309_
                              '0
                              (let ((__tmp64632
                                     (if (or _all-slots-printable?64314_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable64316_
                                                _slot64356_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp64631
                                     (if (or _all-slots-equalable?64321_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable64323_
                                                _slot64356_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp64632 __tmp64631)))))
                    (vector-set! _field-info64329_ _j64354_ _slot64356_)
                    (vector-set!
                     _field-info64329_
                     (let () (declare (not safe)) (##fx+ _j64354_ '1))
                     _flags64364_)
                    (let ((__tmp64634
                           (let () (declare (not safe)) (##fx+ _i64353_ '1)))
                          (__tmp64633
                           (let () (declare (not safe)) (##fx+ _j64354_ '3))))
                      (declare (not safe))
                      (_loop64351_ __tmp64634 __tmp64633)))
                  '#!void))
            (if _metaclass64341_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass64341_
                   _type-id64297_
                   _type-name64298_
                   _type-flags64348_
                   _type-super64299_
                   _field-info64329_
                   _precedence-list64300_
                   _slot-vector64301_
                   _slot-table64304_
                   _properties64302_
                   _constructor64303_
                   _methods64305_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id64297_
                   _type-name64298_
                   _type-flags64348_
                   _type-super64299_
                   _field-info64329_
                   _precedence-list64300_
                   _slot-vector64301_
                   _slot-table64304_
                   _properties64302_
                   _constructor64303_
                   _methods64305_)))))))
    (define class-type-id
      (lambda (_klass64295_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64295_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass64293_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64293_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass64290_ _val64291_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64290_ _val64291_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass64285_ _val64287_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64285_
           _val64287_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass64283_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64283_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass64281_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64281_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass64278_ _val64279_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64278_ _val64279_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass64273_ _val64275_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64273_
           _val64275_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass64271_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64271_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass64269_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64269_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass64266_ _val64267_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64266_ _val64267_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass64261_ _val64263_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64261_
           _val64263_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass64259_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64259_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass64257_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64257_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass64254_ _val64255_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64254_ _val64255_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass64249_ _val64251_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64249_
           _val64251_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass64247_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64247_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass64245_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64245_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass64242_ _val64243_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64242_ _val64243_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass64237_ _val64239_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64237_
           _val64239_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass64235_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64235_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass64233_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass64233_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass64230_ _val64231_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass64230_
           _val64231_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass64225_ _val64227_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64225_
           _val64227_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass64223_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64223_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass64221_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64221_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass64218_ _val64219_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass64218_
           _val64219_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass64213_ _val64215_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64213_
           _val64215_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass64211_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64211_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass64209_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64209_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass64206_ _val64207_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64206_ _val64207_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass64201_ _val64203_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64201_
           _val64203_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass64199_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64199_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass64197_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64197_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass64194_ _val64195_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64194_ _val64195_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass64189_ _val64191_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64189_
           _val64191_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass64187_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64187_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass64185_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64185_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass64182_ _val64183_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass64182_
           _val64183_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass64177_ _val64179_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64177_
           _val64179_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass64175_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64175_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass64173_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64173_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass64170_ _val64171_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64170_ _val64171_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass64165_ _val64167_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64165_
           _val64167_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass64163_)
        (cdr (vector->list (##structure-ref _klass64163_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass64161_)
        (let ((__tmp64635
               (let ((__tmp64636
                      (##structure-ref _klass64161_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp64636))))
          (declare (not safe))
          (##fx- __tmp64635 '1))))
    (define class-type-seal!
      (lambda (_klass64159_)
        (let ((__tmp64637
               (let ((__tmp64638
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64159_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp64638))))
          (declare (not safe))
          (##structure-set!
           _klass64159_
           __tmp64637
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass64157_)
        (let ((__tmp64639
               (let ((__tmp64640
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64157_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp64640))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64157_
           __tmp64639
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct64148_ _maybe-super-struct64149_)
        (let ((_maybe-super-struct-id64151_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct64149_))))
          (let _lp64153_ ((_super-struct64155_ _maybe-sub-struct64148_))
            (if (let () (declare (not safe)) (not _super-struct64155_))
                '#f
                (if (let ((__tmp64642
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct64155_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id64151_ __tmp64642))
                    '#t
                    (let ((__tmp64641
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct64155_))))
                      (declare (not safe))
                      (_lp64153_ __tmp64641))))))))
    (define base-struct/1
      (lambda (_klass64146_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64146_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass64146_))
                _klass64146_
                (let () (declare (not safe)) (##type-super _klass64146_)))
            (if (let () (declare (not safe)) (not _klass64146_))
                '#f
                (let ()
                  (declare (not safe))
                  (error '"not a class or false" _klass64146_))))))
    (define base-struct/2
      (lambda (_klass164134_ _klass264135_)
        (let ((_s164137_
               (let () (declare (not safe)) (base-struct/1 _klass164134_)))
              (_s264138_
               (let () (declare (not safe)) (base-struct/1 _klass264135_))))
          (if (or (let () (declare (not safe)) (not _s164137_))
                  (and _s264138_
                       (let ()
                         (declare (not safe))
                         (substruct? _s164137_ _s264138_))))
              _s264138_
              (if (or (let () (declare (not safe)) (not _s264138_))
                      (and _s164137_
                           (let ()
                             (declare (not safe))
                             (substruct? _s264138_ _s164137_))))
                  _s164137_
                  (let ()
                    (declare (not safe))
                    (error '"bad mixin: incompatible struct bases"
                           _klass164134_
                           _klass264135_
                           _s164137_
                           _s264138_)))))))
    (define base-struct/list
      (lambda (_all-supers64018_)
        (let* ((_all-supers6401964044_ _all-supers64018_)
               (_E6402464048_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _all-supers6401964044_)))))
          (let ((_K6404264131_ (lambda () '#f))
                (_K6403964117_
                 (lambda (_x64115_)
                   (let () (declare (not safe)) (base-struct/1 _x64115_))))
                (_K6403464094_
                 (lambda (_y64091_ _x64092_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x64092_ _y64091_))))
                (_K6402564055_
                 (lambda (_y64052_ _x64053_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x64053_ _y64052_)))))
            (let* ((___match6459364594_
                    (lambda (_hd6402664058_ _tl6402764060_)
                      (let ((_x64063_ _hd6402664058_))
                        (letrec ((_splice-rest6402964065_
                                  (lambda (_rest6403364072_ _y64074_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6403364072_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6402564055_ _y64074_ _x64063_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6402464048_)))))
                                 (_splice-try6403164067_
                                  (lambda (_hd6403264076_
                                           _rest6403364078_
                                           _y6402864079_)
                                    (let ((_y64082_ _hd6403264076_))
                                      (let ((__tmp64644
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6403364078_)))
                                            (__tmp64643
                                             (let ()
                                               (declare (not safe))
                                               (cons _y64082_ _y6402864079_))))
                                        (declare (not safe))
                                        (_splice-loop6403064069_
                                         __tmp64644
                                         __tmp64643)))))
                                 (_splice-loop6403064069_
                                  (lambda (_rest6403364084_ _y6402864085_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6403364084_))
                                        (let ((__tmp64646
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6403364084_))))
                                          (declare (not safe))
                                          (_splice-try6403164067_
                                           __tmp64646
                                           _rest6403364084_
                                           _y6402864085_))
                                        (let ((__tmp64645
                                               (reverse _y6402864085_)))
                                          (declare (not safe))
                                          (_splice-rest6402964065_
                                           _rest6403364084_
                                           __tmp64645))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6403064069_ _tl6402764060_ '()))))))
                   (_try-match6402164127_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6401964044_))
                          (let ((_tl6404164122_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6401964044_)))
                                (_hd6404064120_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6401964044_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6404164122_))
                                (let ((_x64125_ _hd6404064120_))
                                  (declare (not safe))
                                  (base-struct/1 _x64125_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6404164122_))
                                    (let ((_tl6403864106_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6404164122_)))
                                          (_hd6403764104_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6404164122_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6403864106_))
                                          (let ((_x64102_ _hd6404064120_)
                                                (_y64109_ _hd6403764104_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6403464094_
                                               _y64109_
                                               _x64102_)))
                                          (___match6459364594_
                                           _hd6404064120_
                                           _tl6404164122_)))
                                    (___match6459364594_
                                     _hd6404064120_
                                     _tl6404164122_))))
                          (let () (declare (not safe)) (_E6402464048_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6401964044_))
                  (let () (declare (not safe)) (_K6404264131_))
                  (let () (declare (not safe)) (_try-match6402164127_))))))))
    (define base-struct
      (lambda _all-supers64016_
        (let () (declare (not safe)) (base-struct/list _all-supers64016_))))
    (define find-super-constructor
      (lambda (_super63968_)
        (let _lp63970_ ((_rest63972_ _super63968_) (_constructor63973_ '#f))
          (let* ((_rest6397463982_ _rest63972_)
                 (_else6397663990_ (lambda () _constructor63973_))
                 (_K6397864004_
                  (lambda (_rest63993_ _hd63994_)
                    (let ((_$e63996_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd63994_
                              '10
                              class::t
                              '#f))))
                      (if _$e63996_
                          ((lambda (_xconstructor63999_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor63973_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor63973_
                                            _xconstructor63999_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp63970_ _rest63993_ _xconstructor63999_))
                                 (let ()
                                   (declare (not safe))
                                   (error '"conflicting implicit constructors"
                                          _constructor63973_
                                          _xconstructor63999_))))
                           _$e63996_)
                          (let ()
                            (declare (not safe))
                            (_lp63970_ _rest63993_ _constructor63973_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6397463982_))
                (let ((_hd6397964007_
                       (let () (declare (not safe)) (##car _rest6397463982_)))
                      (_tl6398064009_
                       (let () (declare (not safe)) (##cdr _rest6397463982_))))
                  (let* ((_hd64012_ _hd6397964007_)
                         (_rest64014_ _tl6398064009_))
                    (declare (not safe))
                    (_K6397864004_ _rest64014_ _hd64012_)))
                (let () (declare (not safe)) (_else6397663990_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list63944_ _direct-slots63945_)
        (let* ((_next-slot63947_ '1)
               (_slot-table63949_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots63951_ '(__class))
               (_process-slot63955_
                (lambda (_slot63953_)
                  (if (let () (declare (not safe)) (symbol? _slot63953_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"invalid slot name" _slot63953_)))
                  (if (let ((__tmp64648
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table63949_
                                _slot63953_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp64648 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table63949_
                           _slot63953_
                           _next-slot63947_))
                        (let ((__tmp64647 (symbol->keyword _slot63953_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table63949_
                           __tmp64647
                           _next-slot63947_))
                        (set! _r-slots63951_
                              (let ()
                                (declare (not safe))
                                (cons _slot63953_ _r-slots63951_)))
                        (set! _next-slot63947_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot63947_ '1))))
                      '#!void)))
               (_process-slots63961_
                (lambda (_g6395663958_)
                  (for-each _process-slot63955_ _g6395663958_))))
          (for-each
           (lambda (_mixin63964_)
             (let ((__tmp64649
                    (let ((__tmp64650
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin63964_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp64650 '()))))
               (declare (not safe))
               (_process-slots63961_ __tmp64649)))
           (reverse _class-precedence-list63944_))
          (let ()
            (declare (not safe))
            (_process-slots63961_ _direct-slots63945_))
          (let ((_slot-vector63966_ (list->vector (reverse _r-slots63951_))))
            (values _slot-vector63966_ _slot-table63949_)))))
    (define make-class-type
      (lambda (_id63906_
               _name63907_
               _direct-supers63908_
               _direct-slots63909_
               _properties63910_
               _constructor63911_)
        (let ((_$e63916_
               (let ((__tmp64651
                      (lambda (_$obj63913_)
                        (let ((__tmp64652
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj63913_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp64652)))))
                 (declare (not safe))
                 (find __tmp64651 _direct-supers63908_))))
          (if _$e63916_
              ((lambda (_g6391863920_)
                 (let ()
                   (declare (not safe))
                   (error '"Illegal super class; not a class descriptor"
                          _g6391863920_)))
               _$e63916_)
              (let ((_$e63923_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers63908_))))
                (if _$e63923_
                    ((lambda (_g6392563927_)
                       (let ()
                         (declare (not safe))
                         (error '"Cannot extend final class" _g6392563927_)))
                     _$e63923_)
                    '#!void))))
        (let ((_g64653_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers63908_))))
          (begin
            (let ((_g64654_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g64653_) (##vector-length _g64653_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g64654_ 2)))
                  (error "Context expects 2 values" _g64654_)))
            (let ((_precedence-list63930_
                   (let () (declare (not safe)) (##vector-ref _g64653_ 0)))
                  (_struct-super63931_
                   (let () (declare (not safe)) (##vector-ref _g64653_ 1))))
              (let ((_g64655_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list63930_
                        _direct-slots63909_))))
                (begin
                  (let ((_g64656_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g64655_)
                               (##vector-length _g64655_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g64656_ 2)))
                        (error "Context expects 2 values" _g64656_)))
                  (let ((_slot-vector63933_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g64655_ 0)))
                        (_slot-table63934_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g64655_ 1))))
                    (let* ((_properties63936_
                            (let ((__tmp64659
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots63909_)))
                                  (__tmp64657
                                   (let ((__tmp64658
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers63908_))))
                                     (declare (not safe))
                                     (cons __tmp64658 _properties63910_))))
                              (declare (not safe))
                              (cons __tmp64659 __tmp64657)))
                           (_constructor*63941_
                            (let ((_$e63938_ _constructor63911_))
                              (if _$e63938_
                                  _$e63938_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers63908_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id63906_
                         _name63907_
                         _struct-super63931_
                         _precedence-list63930_
                         _slot-vector63933_
                         _properties63936_
                         _constructor*63941_
                         _slot-table63934_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass63904_)
        (let ((__tmp64660
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass63904_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass63904_ __tmp64660))))
    (define compute-precedence-list
      (lambda (_direct-supers63902_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers63902_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass63886_)
        (let ((_tid63888_
               (let () (declare (not safe)) (##type-id _klass63886_))))
          (if (let () (declare (not safe)) (class-type-final? _klass63886_))
              (lambda (_g6388963891_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6388963891_ _tid63888_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass63886_))
                  (lambda (_g6389363895_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6389363895_ _tid63888_)))
                  (lambda (_g6389763899_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass63886_ _g6389763899_))))))))
    (define if-class-slot-field
      (lambda (_klass63875_
               _slot63876_
               _if-final63877_
               _if-struct63878_
               _if-struct-field63879_
               _if-class-slot63880_)
        (let ((_field63882_
               (let ((__tmp64661
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass63875_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp64661 _slot63876_ '#f))))
          (if (let () (declare (not safe)) (not _field63882_))
              (let ()
                (declare (not safe))
                (error '"unknown slot"
                       'class:
                       _klass63875_
                       'slot:
                       _slot63876_))
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass63875_))
                  (_if-final63877_ _klass63875_ _slot63876_ _field63882_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass63875_))
                      (_if-struct63878_ _klass63875_ _slot63876_ _field63882_)
                      (if (let ((_strukt63884_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass63875_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt63884_
                                    'gerbil#class::t))
                                 (let ((__tmp64662
                                        (let ((__tmp64663
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt63884_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp64663))))
                                   (declare (not safe))
                                   (##fx< _field63882_ __tmp64662))))
                          (_if-struct-field63879_
                           _klass63875_
                           _slot63876_
                           _field63882_)
                          (_if-class-slot63880_
                           _klass63875_
                           _slot63876_
                           _field63882_))))))))
    (define make-class-slot-accessor
      (lambda (_klass63872_ _slot63873_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63872_
           _slot63873_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass63869_ _slot63870_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63869_
           _slot63870_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass63866_ _slot63867_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63866_
           _slot63867_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass63863_ _slot63864_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63863_
           _slot63864_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object63847_ _class63848_ _slot63849_)
        (apply error
               '"not an instance"
               'object:
               _object63847_
               'class:
               _class63848_
               (if _slot63849_
                   (let ((__tmp64664
                          (let ()
                            (declare (not safe))
                            (cons _slot63849_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp64664))
                   '()))))
    (define not-an-instance__0
      (lambda (_object63854_ _class63855_)
        (let ((_slot63857_ '#f))
          (declare (not safe))
          (not-an-instance__% _object63854_ _class63855_ _slot63857_))))
    (define not-an-instance
      (lambda _g64666_
        (let ((_g64665_ (let () (declare (not safe)) (##length _g64666_))))
          (cond ((let () (declare (not safe)) (##fx= _g64665_ 2))
                 (apply (lambda (_object63854_ _class63855_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object63854_ _class63855_)))
                        _g64666_))
                ((let () (declare (not safe)) (##fx= _g64665_ 3))
                 (apply (lambda (_object63859_ _class63860_ _slot63861_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object63859_
                             _class63860_
                             _slot63861_)))
                        _g64666_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g64666_))))))
    (define make-final-slot-accessor
      (lambda (_klass63840_ _slot63841_ _field63842_)
        (lambda (_obj63844_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj63844_
             _field63842_
             _klass63840_
             _slot63841_)))))
    (define make-final-slot-mutator
      (lambda (_klass63833_ _slot63834_ _field63835_)
        (lambda (_obj63837_ _val63838_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj63837_
             _val63838_
             _field63835_
             _klass63833_
             _slot63834_)))))
    (define make-struct-slot-accessor
      (lambda (_klass63827_ _slot63828_ _field63829_)
        (lambda (_obj63831_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj63831_
             _field63829_
             _klass63827_
             _slot63828_)))))
    (define make-struct-slot-mutator
      (lambda (_klass63820_ _slot63821_ _field63822_)
        (lambda (_obj63824_ _val63825_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj63824_
             _val63825_
             _field63822_
             _klass63820_
             _slot63821_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass63814_ _slot63815_ _field63816_)
        (lambda (_obj63818_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj63818_
             _field63816_
             _klass63814_
             _slot63815_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass63807_ _slot63808_ _field63809_)
        (lambda (_obj63811_ _val63812_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj63811_
             _val63812_
             _field63809_
             _klass63807_
             _slot63808_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass63801_ _slot63802_ _field63803_)
        (lambda (_obj63805_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass63801_ _obj63805_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj63805_ _field63803_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj63805_ _klass63801_ _slot63802_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass63794_ _slot63795_ _field63796_)
        (lambda (_obj63798_ _val63799_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass63794_ _obj63798_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63798_ _field63796_ _val63799_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj63798_ _klass63794_ _slot63795_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass63788_ _slot63789_ _field63790_)
        (lambda (_obj63792_)
          (if (let ((__tmp64667
                     (let () (declare (not safe)) (##type-id _klass63788_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63792_ __tmp64667))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj63792_ _field63790_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass63788_ _obj63792_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj63792_ _slot63789_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj63792_
                     _klass63788_
                     _slot63789_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass63781_ _slot63782_ _field63783_)
        (lambda (_obj63785_ _val63786_)
          (if (let ((__tmp64668
                     (let () (declare (not safe)) (##type-id _klass63781_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63785_ __tmp64668))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63785_ _field63783_ _val63786_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass63781_ _obj63785_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj63785_ _slot63782_ _val63786_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj63785_
                     _klass63781_
                     _slot63782_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass63775_ _slot63776_ _field63777_)
        (lambda (_obj63779_)
          (if (let ((__tmp64669
                     (let () (declare (not safe)) (##type-id _klass63775_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63779_ __tmp64669))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj63779_ _field63777_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj63779_ _slot63776_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass63768_ _slot63769_ _field63770_)
        (lambda (_obj63772_ _val63773_)
          (if (let ((__tmp64670
                     (let () (declare (not safe)) (##type-id _klass63768_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63772_ __tmp64670))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63772_ _field63770_ _val63773_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj63772_ _slot63769_ _val63773_))))))
    (define class-slot-offset
      (lambda (_klass63765_ _slot63766_)
        (let ((__tmp64671
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass63765_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp64671 _slot63766_ '#f))))
    (define class-slot-ref
      (lambda (_klass63759_ _obj63760_ _slot63761_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass63759_ _obj63760_))
            (let ((_off63763_
                   (let ((__tmp64672 (object-type _obj63760_)))
                     (declare (not safe))
                     (class-slot-offset __tmp64672 _slot63761_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj63760_
               _off63763_
               _klass63759_
               _slot63761_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj63760_ _klass63759_)))))
    (define class-slot-set!
      (lambda (_klass63752_ _obj63753_ _slot63754_ _val63755_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass63752_ _obj63753_))
            (let ((_off63757_
                   (let ((__tmp64673 (object-type _obj63753_)))
                     (declare (not safe))
                     (class-slot-offset __tmp64673 _slot63754_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj63753_
               _val63755_
               _off63757_
               _klass63752_
               _slot63754_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj63753_ _klass63752_)))))
    (define unchecked-field-ref
      (lambda (_obj63749_ _off63750_)
        (let ((__tmp64674
               (let () (declare (not safe)) (##structure-type _obj63749_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj63749_ _off63750_ __tmp64674 '#f))))
    (define unchecked-field-set!
      (lambda (_obj63745_ _off63746_ _val63747_)
        (let ((__tmp64675
               (let () (declare (not safe)) (##structure-type _obj63745_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj63745_
           _val63747_
           _off63746_
           __tmp64675
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj63742_ _slot63743_)
        (let ((__tmp64676
               (let ((__tmp64677
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63742_))))
                 (declare (not safe))
                 (class-slot-offset __tmp64677 _slot63743_))))
          (declare (not safe))
          (unchecked-field-ref _obj63742_ __tmp64676))))
    (define unchecked-slot-set!
      (lambda (_obj63738_ _slot63739_ _val63740_)
        (let ((__tmp64678
               (let ((__tmp64679
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63738_))))
                 (declare (not safe))
                 (class-slot-offset __tmp64679 _slot63739_))))
          (declare (not safe))
          (unchecked-field-set! _obj63738_ __tmp64678 _val63740_))))
    (define slot-ref__%
      (lambda (_obj63714_ _slot63715_ _E63716_)
        (if (object? _obj63714_)
            (let* ((_klass63718_ (object-type _obj63714_))
                   (_$e63721_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass63718_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass63718_ _slot63715_))
                        '#f)))
              (if _$e63721_
                  ((lambda (_off63724_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj63714_ _off63724_)))
                   _$e63721_)
                  (_E63716_ _obj63714_ _slot63715_)))
            (_E63716_ _obj63714_ _slot63715_))))
    (define slot-ref__0
      (lambda (_obj63729_ _slot63730_)
        (let ((_E63732_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj63729_ _slot63730_ _E63732_))))
    (define slot-ref
      (lambda _g64681_
        (let ((_g64680_ (let () (declare (not safe)) (##length _g64681_))))
          (cond ((let () (declare (not safe)) (##fx= _g64680_ 2))
                 (apply (lambda (_obj63729_ _slot63730_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj63729_ _slot63730_)))
                        _g64681_))
                ((let () (declare (not safe)) (##fx= _g64680_ 3))
                 (apply (lambda (_obj63734_ _slot63735_ _E63736_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj63734_ _slot63735_ _E63736_)))
                        _g64681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g64681_))))))
    (define slot-set!__%
      (lambda (_obj63686_ _slot63687_ _val63688_ _E63689_)
        (if (object? _obj63686_)
            (let* ((_klass63691_ (object-type _obj63686_))
                   (_$e63694_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass63691_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass63691_ _slot63687_))
                        '#f)))
              (if _$e63694_
                  ((lambda (_off63697_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj63686_
                        _off63697_
                        _val63688_)))
                   _$e63694_)
                  (_E63689_ _obj63686_ _slot63687_)))
            (_E63689_ _obj63686_ _slot63687_))))
    (define slot-set!__0
      (lambda (_obj63702_ _slot63703_ _val63704_)
        (let ((_E63706_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj63702_ _slot63703_ _val63704_ _E63706_))))
    (define slot-set!
      (lambda _g64683_
        (let ((_g64682_ (let () (declare (not safe)) (##length _g64683_))))
          (cond ((let () (declare (not safe)) (##fx= _g64682_ 3))
                 (apply (lambda (_obj63702_ _slot63703_ _val63704_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj63702_ _slot63703_ _val63704_)))
                        _g64683_))
                ((let () (declare (not safe)) (##fx= _g64682_ 4))
                 (apply (lambda (_obj63708_ _slot63709_ _val63710_ _E63711_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj63708_
                             _slot63709_
                             _val63710_
                             _E63711_)))
                        _g64683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g64683_))))))
    (define __slot-error
      (lambda (_obj63682_ _slot63683_)
        (let ()
          (declare (not safe))
          (error '"Cannot find slot" 'object: _obj63682_ 'slot: _slot63683_))))
    (define subclass?
      (lambda (_maybe-sub-class63672_ _maybe-super-class63673_)
        (let* ((_maybe-super-class-id63675_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class63673_)))
               (_$e63677_
                (let ((__tmp64684
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class63672_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id63675_ __tmp64684))))
          (if _$e63677_
              _$e63677_
              (let ((__tmp64686
                     (lambda (_super-class63680_)
                       (let ((__tmp64687
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class63680_))))
                         (declare (not safe))
                         (eq? __tmp64687 _maybe-super-class-id63675_))))
                    (__tmp64685
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class63672_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp64686 __tmp64685))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass63669_ _obj63670_)
        (let ((__tmp64688
               (let () (declare (not safe)) (##type-id _klass63669_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj63670_ __tmp64688))))
    (define struct-instance?
      (lambda (_klass63666_ _obj63667_)
        (let ((__tmp64689
               (let () (declare (not safe)) (##type-id _klass63666_))))
          (declare (not safe))
          (##structure-instance-of? _obj63667_ __tmp64689))))
    (define class-instance?
      (lambda (_klass63661_ _obj63662_)
        (if (object? _obj63662_)
            (let ((_type63664_ (object-type _obj63662_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type63664_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type63664_ _klass63661_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass63656_ _k63657_)
        (let ((_obj63659_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass63656_ _k63657_))))
          (let () (declare (not safe)) (object-fill! _obj63659_ '#f))
          _obj63659_)))
    (define object-fill!
      (lambda (_obj63649_ _fill63650_)
        (let _loop63652_ ((_i63654_
                           (let ((__tmp64691
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj63649_))))
                             (declare (not safe))
                             (##fx- __tmp64691 '1))))
          (if (let () (declare (not safe)) (##fx> _i63654_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj63649_
                   _fill63650_
                   _i63654_
                   '#f
                   '#f))
                (let ((__tmp64690
                       (let () (declare (not safe)) (##fx- _i63654_ '1))))
                  (declare (not safe))
                  (_loop63652_ __tmp64690)))
              _obj63649_))))
    (define new-instance
      (lambda (_klass63647_)
        (let ((__obj64595
               (let ((__tmp64692
                      (let ((__tmp64693
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass63647_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp64693))))
                 (declare (not safe))
                 (##make-structure _klass63647_ __tmp64692))))
          (let () (declare (not safe)) (object-fill! __obj64595 '#f))
          __obj64595)))
    (define make-instance
      (lambda (_klass63637_ . _args63638_)
        (let* ((_obj63640_
                (let () (declare (not safe)) (new-instance _klass63637_)))
               (_$e63642_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass63637_ '10 class::t '#f))))
          (if _$e63642_
              ((lambda (_kons-id63645_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass63637_
                    _kons-id63645_
                    _obj63640_
                    _args63638_)))
               _$e63642_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass63637_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass63637_
                     _obj63640_
                     _args63638_))
                  (if (let ((__tmp64698
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass63637_))))
                        (declare (not safe))
                        (not __tmp64698))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass63637_
                         _obj63640_
                         _args63638_))
                      (if (let ((__tmp64696
                                 (let ((__tmp64697
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj63640_))))
                                   (declare (not safe))
                                   (##fx- __tmp64697 '1)))
                                (__tmp64695 (length _args63638_)))
                            (declare (not safe))
                            (##fx= __tmp64696 __tmp64695))
                          (apply ##structure _klass63637_ _args63638_)
                          (let ((__tmp64694
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass63637_))))
                            (declare (not safe))
                            (error '"arguments don't match object size"
                                   'class:
                                   _klass63637_
                                   'slots:
                                   __tmp64694
                                   'args:
                                   _args63638_)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj63634_ . _args63635_)
        (if (let ((__tmp64700 (length _args63635_))
                  (__tmp64699
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj63634_))))
              (declare (not safe))
              (##fx< __tmp64700 __tmp64699))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj63634_ _args63635_))
            (let ()
              (declare (not safe))
              (error '"too many arguments for struct"
                     'object:
                     _obj63634_
                     'args:
                     _args63635_)))))
    (define __struct-instance-init!
      (lambda (_obj63593_ _args63594_)
        (let _lp63596_ ((_k63598_ '1) (_rest63599_ _args63594_))
          (let* ((_rest6360063608_ _rest63599_)
                 (_else6360263616_ (lambda () _obj63593_))
                 (_K6360463622_
                  (lambda (_rest63619_ _hd63620_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj63593_ _k63598_ _hd63620_))
                    (let ((__tmp64701
                           (let () (declare (not safe)) (##fx+ _k63598_ '1))))
                      (declare (not safe))
                      (_lp63596_ __tmp64701 _rest63619_)))))
            (if (let () (declare (not safe)) (##pair? _rest6360063608_))
                (let ((_hd6360563625_
                       (let () (declare (not safe)) (##car _rest6360063608_)))
                      (_tl6360663627_
                       (let () (declare (not safe)) (##cdr _rest6360063608_))))
                  (let* ((_hd63630_ _hd6360563625_)
                         (_rest63632_ _tl6360663627_))
                    (declare (not safe))
                    (_K6360463622_ _rest63632_ _hd63630_)))
                (let () (declare (not safe)) (_else6360263616_)))))))
    (define class-instance-init!
      (lambda (_obj63590_ . _args63591_)
        (let ((__tmp64702 (object-type _obj63590_)))
          (declare (not safe))
          (__class-instance-init! __tmp64702 _obj63590_ _args63591_))))
    (define __class-instance-init!
      (lambda (_klass63534_ _obj63535_ _args63536_)
        (let _lp63538_ ((_rest63540_ _args63536_))
          (let* ((_rest6354163551_ _rest63540_)
                 (_else6354363559_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest63540_))
                        _obj63535_
                        (let ()
                          (declare (not safe))
                          (error '"unexpected class initializer arguments"
                                 'class:
                                 _klass63534_
                                 'rest:
                                 _rest63540_)))))
                 (_K6354563571_
                  (lambda (_rest63562_ _val63563_ _key63564_)
                    (let ((_$e63566_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass63534_ _key63564_))))
                      (if _$e63566_
                          ((lambda (_off63569_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj63535_
                                _off63569_
                                _val63563_))
                             (let ()
                               (declare (not safe))
                               (_lp63538_ _rest63562_)))
                           _$e63566_)
                          (let ()
                            (declare (not safe))
                            (error '"unknown slot"
                                   'class:
                                   _klass63534_
                                   'slot:
                                   _key63564_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6354163551_))
                (let ((_hd6354663574_
                       (let () (declare (not safe)) (##car _rest6354163551_)))
                      (_tl6354763576_
                       (let () (declare (not safe)) (##cdr _rest6354163551_))))
                  (let ((_key63579_ _hd6354663574_))
                    (if (let () (declare (not safe)) (##pair? _tl6354763576_))
                        (let ((_hd6354863581_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6354763576_)))
                              (_tl6354963583_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6354763576_))))
                          (let* ((_val63586_ _hd6354863581_)
                                 (_rest63588_ _tl6354963583_))
                            (declare (not safe))
                            (_K6354563571_ _rest63588_ _val63586_ _key63579_)))
                        (let () (declare (not safe)) (_else6354363559_)))))
                (let () (declare (not safe)) (_else6354363559_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass63530_ _obj63531_ _args63532_)
        (apply call-method
               _klass63530_
               'instance-init!
               _obj63531_
               _args63532_)))
    (define constructor-init!
      (lambda (_klass63525_ _kons-id63526_ _obj63527_ . _args63528_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass63525_
           _kons-id63526_
           _obj63527_
           _args63528_))))
    (define __constructor-init!
      (lambda (_klass63515_ _kons-id63516_ _obj63517_ _args63518_)
        (let ((_$e63520_
               (let ()
                 (declare (not safe))
                 (__find-method _klass63515_ _obj63517_ _kons-id63516_))))
          (if _$e63520_
              ((lambda (_kons63523_)
                 (apply _kons63523_ _obj63517_ _args63518_)
                 _obj63517_)
               _$e63520_)
              (let ()
                (declare (not safe))
                (error '"missing constructor"
                       'class:
                       _klass63515_
                       'method:
                       _kons-id63516_))))))
    (define struct-copy
      (lambda (_struct63513_)
        (if (let () (declare (not safe)) (##structure? _struct63513_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"not a structure" _struct63513_)))
        (let () (declare (not safe)) (##structure-copy _struct63513_))))
    (define struct->list
      (lambda (_obj63511_)
        (if (object? _obj63511_)
            (let () (declare (not safe)) (##vector->list _obj63511_))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj63511_)))))
    (define class->list
      (lambda (_obj63498_)
        (if (object? _obj63498_)
            (let ((_klass63500_ (object-type _obj63498_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass63500_ 'gerbil#class::t))
                  (let ((_slot-vector63502_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass63500_
                            '7
                            class::t
                            '#f))))
                    (let _loop63504_ ((_index63506_
                                       (let ((__tmp64708
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector63502_))))
                                         (declare (not safe))
                                         (##fx- __tmp64708 '1)))
                                      (_plist63507_ '()))
                      (if (let () (declare (not safe)) (##fx< _index63506_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass63500_ _plist63507_))
                          (let ((_slot63509_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector63502_
                                    _index63506_))))
                            (let ((__tmp64707
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index63506_ '1)))
                                  (__tmp64703
                                   (let ((__tmp64706
                                          (symbol->keyword _slot63509_))
                                         (__tmp64704
                                          (let ((__tmp64705
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj63498_
                                                    _index63506_))))
                                            (declare (not safe))
                                            (cons __tmp64705 _plist63507_))))
                                     (declare (not safe))
                                     (cons __tmp64706 __tmp64704))))
                              (declare (not safe))
                              (_loop63504_ __tmp64707 __tmp64703))))))
                  (let ()
                    (declare (not safe))
                    (error '"not a class type"
                           'object:
                           _obj63498_
                           'class:
                           _klass63500_))))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj63498_)))))
    (define call-method
      (lambda (_obj63489_ _id63490_ . _args63491_)
        (let ((_$e63493_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63489_ _id63490_))))
          (if _$e63493_
              ((lambda (_method63496_)
                 (apply _method63496_ _obj63489_ _args63491_))
               _$e63493_)
              (let ()
                (declare (not safe))
                (error '"cannot find method"
                       'object:
                       _obj63489_
                       'method:
                       _id63490_))))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define method-ref
      (lambda (_obj63486_ _id63487_)
        (if (object? _obj63486_)
            (let ((__tmp64709 (object-type _obj63486_)))
              (declare (not safe))
              (find-method __tmp64709 _obj63486_ _id63487_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj63480_ _id63481_)
        (let ((_$e63483_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63480_ _id63481_))))
          (if _$e63483_
              _$e63483_
              (let ()
                (declare (not safe))
                (error '"missing method"
                       'object:
                       _obj63480_
                       'method:
                       _id63481_))))))
    (define bound-method-ref
      (lambda (_obj63470_ _id63471_)
        (let ((_$e63473_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63470_ _id63471_))))
          (if _$e63473_
              ((lambda (_method63476_)
                 (lambda _args63478_
                   (apply _method63476_ _obj63470_ _args63478_)))
               _$e63473_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj63463_ _id63464_)
        (let ((_method63466_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj63463_ _id63464_))))
          (lambda _args63468_ (apply _method63466_ _obj63463_ _args63468_)))))
    (define find-method
      (lambda (_klass63459_ _obj63460_ _id63461_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63459_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass63459_ _obj63460_ _id63461_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass63459_ _obj63460_ _id63461_)))))
    (define __find-method
      (lambda (_klass63452_ _obj63453_ _id63454_)
        (let ((_$e63456_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass63452_ _obj63453_ _id63454_))))
          (if _$e63456_
              _$e63456_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass63452_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass63452_ _obj63453_ _id63454_)))))))
    (define class-find-method
      (lambda (_klass63448_ _obj63449_ _id63450_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63448_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass63448_ _obj63449_ _id63450_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins63440_ _obj63441_ _id63442_)
        (let ((__tmp64710
               (lambda (_g6344363445_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6344363445_ _obj63441_ _id63442_)))))
          (declare (not safe))
          (ormap1 __tmp64710 _mixins63440_))))
    (define builtin-find-method
      (lambda (_klass63433_ _obj63434_ _id63435_)
        (if (let () (declare (not safe)) (##type? _klass63433_))
            (let ((_$e63437_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass63433_ _obj63434_ _id63435_))))
              (if _$e63437_
                  _$e63437_
                  (let ((__tmp64711
                         (let ()
                           (declare (not safe))
                           (##type-super _klass63433_))))
                    (declare (not safe))
                    (builtin-find-method __tmp64711 _obj63434_ _id63435_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass63410_ _obj63411_ _id63412_)
        (letrec ((_metaclass-resolve-method63414_
                  (lambda ()
                    (let ((__method64596
                           (let ()
                             (declare (not safe))
                             (method-ref _klass63410_ 'direct-method-ref))))
                      (if __method64596
                          (__method64596 _klass63410_ _obj63411_ _id63412_)
                          (let ()
                            (declare (not safe))
                            (error '"Missing method"
                                   _klass63410_
                                   'direct-method-ref))))))
                 (_metaclass-resolve-method!63415_
                  (lambda ()
                    (let ((_method63430_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method63414_))))
                      (let ((__tmp64713
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass63410_
                                '11
                                class::t
                                '#f)))
                            (__tmp64712 (if _method63430_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp64713 _id63412_ __tmp64712))
                      _method63430_))))
          (let ((_$e63417_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass63410_ '11 class::t '#f))))
            (if _$e63417_
                ((lambda (_ht63420_)
                   (let ((_method63422_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht63420_ _id63412_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method63422_))
                         _method63422_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass63410_))
                             (let ((_$e63424_ _method63422_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e63424_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method63414_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e63424_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!63415_)))))
                             '#f))))
                 _$e63417_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass63410_))
                    (let ((_tab63427_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass63410_
                         _tab63427_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!63415_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass63406_ _obj63407_ _id63408_)
        (let ((__tmp64714 (##structure-ref _klass63406_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp64714 _obj63407_ _id63408_))))
    (define builtin-method-ref
      (lambda (_klass63397_ _obj63398_ _id63399_)
        (let ((_$e63401_
               (let ((__tmp64715
                      (let () (declare (not safe)) (##type-id _klass63397_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp64715 '#f))))
          (if _$e63401_
              ((lambda (_mtab63404_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab63404_ _id63399_ '#f)))
               _$e63401_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass63363_ _id63364_ _proc63365_ _rebind?63366_)
        (letrec ((_bind!63368_
                  (lambda (_ht63381_)
                    (if (and (let () (declare (not safe)) (not _rebind?63366_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht63381_ _id63364_ '#f)))
                        (let ()
                          (declare (not safe))
                          (error '"method already bound"
                                 'class:
                                 _klass63363_
                                 'method:
                                 _id63364_))
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht63381_
                           _id63364_
                           _proc63365_))))))
          (if (let () (declare (not safe)) (procedure? _proc63365_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad method; expected procedure" _proc63365_)))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass63363_ 'gerbil#class::t))
              (let ((_ht63370_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass63363_
                        '11
                        class::t
                        '#f))))
                (if _ht63370_
                    (let () (declare (not safe)) (_bind!63368_ _ht63370_))
                    (let ((_ht63372_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass63363_
                         _ht63372_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!63368_ _ht63372_)))))
              (if (let () (declare (not safe)) (##type? _klass63363_))
                  (let ((_ht63379_
                         (let ((_$e63374_
                                (let ((__tmp64716
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass63363_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp64716
                                   '#f))))
                           (if _$e63374_
                               _$e63374_
                               (let ((_ht63377_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table__% '#f '0))))
                                 (let ((__tmp64717
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass63363_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp64717
                                    _ht63377_))
                                 _ht63377_)))))
                    (declare (not safe))
                    (_bind!63368_ _ht63379_))
                  (let ()
                    (declare (not safe))
                    (error '"bad class; expected class or builtin type"
                           _klass63363_)))))))
    (define bind-method!__0
      (lambda (_klass63386_ _id63387_ _proc63388_)
        (let ((_rebind?63390_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass63386_
           _id63387_
           _proc63388_
           _rebind?63390_))))
    (define bind-method!
      (lambda _g64719_
        (let ((_g64718_ (let () (declare (not safe)) (##length _g64719_))))
          (cond ((let () (declare (not safe)) (##fx= _g64718_ 3))
                 (apply (lambda (_klass63386_ _id63387_ _proc63388_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass63386_
                             _id63387_
                             _proc63388_)))
                        _g64719_))
                ((let () (declare (not safe)) (##fx= _g64718_ 4))
                 (apply (lambda (_klass63392_
                                 _id63393_
                                 _proc63394_
                                 _rebind?63395_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass63392_
                             _id63393_
                             _proc63394_
                             _rebind?63395_)))
                        _g64719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g64719_))))))
    (define make-method-specializer-table__%
      (lambda (_size-hint63343_ _seed63345_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint63343_
           procedure-hash
           eq?
           _seed63345_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_size-hint63351_ '#f) (_seed63353_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint63351_ _seed63353_))))
    (define make-method-specializer-table__1
      (lambda (_size-hint63355_)
        (let ((_seed63357_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint63355_ _seed63357_))))
    (define make-method-specializer-table
      (lambda _g64721_
        (let ((_g64720_ (let () (declare (not safe)) (##length _g64721_))))
          (cond ((let () (declare (not safe)) (##fx= _g64720_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g64721_))
                ((let () (declare (not safe)) (##fx= _g64720_ 1))
                 (apply (lambda (_size-hint63355_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _size-hint63355_)))
                        _g64721_))
                ((let () (declare (not safe)) (##fx= _g64720_ 2))
                 (apply (lambda (_size-hint63359_ _seed63360_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _size-hint63359_
                             _seed63360_)))
                        _g64721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g64721_))))))
    (define method-specializer-table-ref
      (lambda (_tab63300_ _key63301_ _default63302_)
        (let ((_table63304_
               (let () (declare (not safe)) (&raw-table-table _tab63300_)))
              (_seed63305_
               (let () (declare (not safe)) (&raw-table-seed _tab63300_))))
          (let* ((_h63307_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63301_))
                         _seed63305_))
                 (_size63310_ (vector-length _table63304_))
                 (_entries63313_ (fxquotient _size63310_ '2))
                 (_start63316_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63307_ _entries63313_)
                   '1)))
            (let _loop63320_ ((_probe63323_ _start63316_)
                              (_i63325_ '1)
                              (_deleted63327_ '#f))
              (let ((_k63330_ (vector-ref _table63304_ _probe63323_)))
                (if (let ((__tmp64728 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63330_ __tmp64728))
                    _default63302_
                    (if (let ((__tmp64727 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63330_ __tmp64727))
                        (let ((__tmp64726
                               (let ((_next-probe63333_
                                      (fx+ _start63316_
                                           _i63325_
                                           (fx* _i63325_ _i63325_))))
                                 (fxmodulo _next-probe63333_ _size63310_)))
                              (__tmp64725 (fx+ _i63325_ '1))
                              (__tmp64724
                               (let ((_$e63336_ _deleted63327_))
                                 (if _$e63336_ _$e63336_ _probe63323_))))
                          (declare (not safe))
                          (_loop63320_ __tmp64726 __tmp64725 __tmp64724))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63301_ _k63330_))
                            (vector-ref _table63304_ (fx+ _probe63323_ '1))
                            (let ((__tmp64723
                                   (let ((_next-probe63339_
                                          (fx+ _start63316_
                                               _i63325_
                                               (fx* _i63325_ _i63325_))))
                                     (fxmodulo _next-probe63339_ _size63310_)))
                                  (__tmp64722 (fx+ _i63325_ '1)))
                              (declare (not safe))
                              (_loop63320_
                               __tmp64723
                               __tmp64722
                               _deleted63327_)))))))))))
    (define method-specializer-table-set!
      (lambda (_tab63296_ _key63297_ _value63298_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63296_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63296_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63296_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _tab63296_
           _key63297_
           _value63298_))))
    (define __method-specializer-table-set!
      (lambda (_tab63251_ _key63252_ _value63253_)
        (let ((_table63256_
               (let () (declare (not safe)) (&raw-table-table _tab63251_)))
              (_seed63257_
               (let () (declare (not safe)) (&raw-table-seed _tab63251_))))
          (let* ((_h63259_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63252_))
                         _seed63257_))
                 (_size63262_ (vector-length _table63256_))
                 (_entries63265_ (fxquotient _size63262_ '2))
                 (_start63268_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63259_ _entries63265_)
                   '1)))
            (let _loop63272_ ((_probe63275_ _start63268_)
                              (_i63277_ '1)
                              (_deleted63279_ '#f))
              (let ((_k63282_ (vector-ref _table63256_ _probe63275_)))
                (if (let ((__tmp64738 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63282_ __tmp64738))
                    (if _deleted63279_
                        (begin
                          (vector-set! _table63256_ _deleted63279_ _key63252_)
                          (vector-set!
                           _table63256_
                           (fx+ _deleted63279_ '1)
                           _value63253_)
                          ((lambda ()
                             (let ((__tmp64737
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63251_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63251_
                                __tmp64737)))))
                        (begin
                          (vector-set! _table63256_ _probe63275_ _key63252_)
                          (vector-set!
                           _table63256_
                           (fx+ _probe63275_ '1)
                           _value63253_)
                          ((lambda ()
                             (let ((__tmp64735
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63251_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63251_ __tmp64735))
                             (let ((__tmp64736
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63251_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63251_
                                __tmp64736))))))
                    (if (let ((__tmp64734 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63282_ __tmp64734))
                        (let ((__tmp64733
                               (let ((_next-probe63287_
                                      (fx+ _start63268_
                                           _i63277_
                                           (fx* _i63277_ _i63277_))))
                                 (fxmodulo _next-probe63287_ _size63262_)))
                              (__tmp64732 (fx+ _i63277_ '1))
                              (__tmp64731
                               (let ((_$e63290_ _deleted63279_))
                                 (if _$e63290_ _$e63290_ _probe63275_))))
                          (declare (not safe))
                          (_loop63272_ __tmp64733 __tmp64732 __tmp64731))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63252_ _k63282_))
                            (begin
                              (vector-set!
                               _table63256_
                               _probe63275_
                               _key63252_)
                              (vector-set!
                               _table63256_
                               (fx+ _probe63275_ '1)
                               _value63253_))
                            (let ((__tmp64730
                                   (let ((_next-probe63293_
                                          (fx+ _start63268_
                                               _i63277_
                                               (fx* _i63277_ _i63277_))))
                                     (fxmodulo _next-probe63293_ _size63262_)))
                                  (__tmp64729 (fx+ _i63277_ '1)))
                              (declare (not safe))
                              (_loop63272_
                               __tmp64730
                               __tmp64729
                               _deleted63279_)))))))))))
    (define method-specializer-table-update!
      (lambda (_tab63246_
               _key63247_
               _method-specializer-table-update!63248_
               _default63249_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63246_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63246_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63246_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _tab63246_
           _key63247_
           _method-specializer-table-update!63248_
           _default63249_))))
    (define __method-specializer-table-update!
      (lambda (_tab63200_
               _key63201_
               _method-specializer-table-update!63202_
               _default63203_)
        (let ((_table63206_
               (let () (declare (not safe)) (&raw-table-table _tab63200_)))
              (_seed63207_
               (let () (declare (not safe)) (&raw-table-seed _tab63200_))))
          (let* ((_h63209_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63201_))
                         _seed63207_))
                 (_size63212_ (vector-length _table63206_))
                 (_entries63215_ (fxquotient _size63212_ '2))
                 (_start63218_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63209_ _entries63215_)
                   '1)))
            (let _loop63222_ ((_probe63225_ _start63218_)
                              (_i63227_ '1)
                              (_deleted63229_ '#f))
              (let ((_k63232_ (vector-ref _table63206_ _probe63225_)))
                (if (let ((__tmp64748 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63232_ __tmp64748))
                    (if _deleted63229_
                        (begin
                          (vector-set! _table63206_ _deleted63229_ _key63201_)
                          (vector-set!
                           _table63206_
                           (fx+ _deleted63229_ '1)
                           (_method-specializer-table-update!63202_
                            _default63203_))
                          ((lambda ()
                             (let ((__tmp64747
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63200_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63200_
                                __tmp64747)))))
                        (begin
                          (vector-set! _table63206_ _probe63225_ _key63201_)
                          (vector-set!
                           _table63206_
                           (fx+ _probe63225_ '1)
                           (_method-specializer-table-update!63202_
                            _default63203_))
                          ((lambda ()
                             (let ((__tmp64745
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63200_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63200_ __tmp64745))
                             (let ((__tmp64746
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63200_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63200_
                                __tmp64746))))))
                    (if (let ((__tmp64744 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63232_ __tmp64744))
                        (let ((__tmp64743
                               (let ((_next-probe63237_
                                      (fx+ _start63218_
                                           _i63227_
                                           (fx* _i63227_ _i63227_))))
                                 (fxmodulo _next-probe63237_ _size63212_)))
                              (__tmp64742 (fx+ _i63227_ '1))
                              (__tmp64741
                               (let ((_$e63240_ _deleted63229_))
                                 (if _$e63240_ _$e63240_ _probe63225_))))
                          (declare (not safe))
                          (_loop63222_ __tmp64743 __tmp64742 __tmp64741))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63201_ _k63232_))
                            (begin
                              (vector-set!
                               _table63206_
                               _probe63225_
                               _key63201_)
                              (vector-set!
                               _table63206_
                               (fx+ _probe63225_ '1)
                               (_method-specializer-table-update!63202_
                                (vector-ref
                                 _table63206_
                                 (fx+ _probe63225_ '1)))))
                            (let ((__tmp64740
                                   (let ((_next-probe63243_
                                          (fx+ _start63218_
                                               _i63227_
                                               (fx* _i63227_ _i63227_))))
                                     (fxmodulo _next-probe63243_ _size63212_)))
                                  (__tmp64739 (fx+ _i63227_ '1)))
                              (declare (not safe))
                              (_loop63222_
                               __tmp64740
                               __tmp64739
                               _deleted63229_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_tab63159_ _key63161_)
        (let ((_table63164_
               (let () (declare (not safe)) (&raw-table-table _tab63159_)))
              (_seed63166_
               (let () (declare (not safe)) (&raw-table-seed _tab63159_))))
          (let* ((_h63169_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63161_))
                         _seed63166_))
                 (_size63172_ (vector-length _table63164_))
                 (_entries63175_ (fxquotient _size63172_ '2))
                 (_start63178_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63169_ _entries63175_)
                   '1)))
            (let _loop63182_ ((_probe63185_ _start63178_) (_i63187_ '1))
              (let ((_k63190_ (vector-ref _table63164_ _probe63185_)))
                (if (let ((__tmp64755 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63190_ __tmp64755))
                    '#!void
                    (if (let ((__tmp64754 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63190_ __tmp64754))
                        (let ((__tmp64753
                               (let ((_next-probe63193_
                                      (fx+ _start63178_
                                           _i63187_
                                           (fx* _i63187_ _i63187_))))
                                 (fxmodulo _next-probe63193_ _size63172_)))
                              (__tmp64752 (fx+ _i63187_ '1)))
                          (declare (not safe))
                          (_loop63182_ __tmp64753 __tmp64752))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63161_ _k63190_))
                            (begin
                              (vector-set!
                               _table63164_
                               _probe63185_
                               (macro-deleted-obj))
                              (vector-set!
                               _table63164_
                               (fx+ _probe63185_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp64751
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab63159_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab63159_
                                    __tmp64751)))))
                            (let ((__tmp64750
                                   (let ((_next-probe63197_
                                          (fx+ _start63178_
                                               _i63187_
                                               (fx* _i63187_ _i63187_))))
                                     (fxmodulo _next-probe63197_ _size63172_)))
                                  (__tmp64749 (fx+ _i63187_ '1)))
                              (declare (not safe))
                              (_loop63182_ __tmp64750 __tmp64749)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_method-proc63150_ _specializer63151_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63155_ ()
            (if (let ((__tmp64756
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64756 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63155_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _method-proc63150_
           _specializer63151_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_proc63140_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63144_ ()
            (if (let ((__tmp64757
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64757 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63144_))))))
        (let ((_specializer63148_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _proc63140_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _specializer63148_)))
    (define __class-specializer-hash-key
      (lambda (_klass63138_)
        (let ((__tmp64758
               (let () (declare (not safe)) (##type-id _klass63138_))))
          (declare (not safe))
          (symbolic-hash __tmp64758))))
    (define make-class-specializer-table__%
      (lambda (_size-hint63119_ _seed63121_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint63119_
           __class-specializer-hash-key
           eq?
           _seed63121_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_size-hint63127_ '#f) (_seed63129_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint63127_ _seed63129_))))
    (define make-class-specializer-table__1
      (lambda (_size-hint63131_)
        (let ((_seed63133_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint63131_ _seed63133_))))
    (define make-class-specializer-table
      (lambda _g64760_
        (let ((_g64759_ (let () (declare (not safe)) (##length _g64760_))))
          (cond ((let () (declare (not safe)) (##fx= _g64759_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g64760_))
                ((let () (declare (not safe)) (##fx= _g64759_ 1))
                 (apply (lambda (_size-hint63131_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _size-hint63131_)))
                        _g64760_))
                ((let () (declare (not safe)) (##fx= _g64759_ 2))
                 (apply (lambda (_size-hint63135_ _seed63136_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _size-hint63135_
                             _seed63136_)))
                        _g64760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g64760_))))))
    (define class-specializer-table-ref
      (lambda (_tab63076_ _key63077_ _default63078_)
        (let ((_table63080_
               (let () (declare (not safe)) (&raw-table-table _tab63076_)))
              (_seed63081_
               (let () (declare (not safe)) (&raw-table-seed _tab63076_))))
          (let* ((_h63083_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63077_))
                         _seed63081_))
                 (_size63086_ (vector-length _table63080_))
                 (_entries63089_ (fxquotient _size63086_ '2))
                 (_start63092_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63083_ _entries63089_)
                   '1)))
            (let _loop63096_ ((_probe63099_ _start63092_)
                              (_i63101_ '1)
                              (_deleted63103_ '#f))
              (let ((_k63106_ (vector-ref _table63080_ _probe63099_)))
                (if (let ((__tmp64767 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63106_ __tmp64767))
                    _default63078_
                    (if (let ((__tmp64766 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63106_ __tmp64766))
                        (let ((__tmp64765
                               (let ((_next-probe63109_
                                      (fx+ _start63092_
                                           _i63101_
                                           (fx* _i63101_ _i63101_))))
                                 (fxmodulo _next-probe63109_ _size63086_)))
                              (__tmp64764 (fx+ _i63101_ '1))
                              (__tmp64763
                               (let ((_$e63112_ _deleted63103_))
                                 (if _$e63112_ _$e63112_ _probe63099_))))
                          (declare (not safe))
                          (_loop63096_ __tmp64765 __tmp64764 __tmp64763))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63077_ _k63106_))
                            (vector-ref _table63080_ (fx+ _probe63099_ '1))
                            (let ((__tmp64762
                                   (let ((_next-probe63115_
                                          (fx+ _start63092_
                                               _i63101_
                                               (fx* _i63101_ _i63101_))))
                                     (fxmodulo _next-probe63115_ _size63086_)))
                                  (__tmp64761 (fx+ _i63101_ '1)))
                              (declare (not safe))
                              (_loop63096_
                               __tmp64762
                               __tmp64761
                               _deleted63103_)))))))))))
    (define class-specializer-table-set!
      (lambda (_tab63072_ _key63073_ _value63074_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63072_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63072_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63072_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _tab63072_
           _key63073_
           _value63074_))))
    (define __class-specializer-table-set!
      (lambda (_tab63027_ _key63028_ _value63029_)
        (let ((_table63032_
               (let () (declare (not safe)) (&raw-table-table _tab63027_)))
              (_seed63033_
               (let () (declare (not safe)) (&raw-table-seed _tab63027_))))
          (let* ((_h63035_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63028_))
                         _seed63033_))
                 (_size63038_ (vector-length _table63032_))
                 (_entries63041_ (fxquotient _size63038_ '2))
                 (_start63044_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63035_ _entries63041_)
                   '1)))
            (let _loop63048_ ((_probe63051_ _start63044_)
                              (_i63053_ '1)
                              (_deleted63055_ '#f))
              (let ((_k63058_ (vector-ref _table63032_ _probe63051_)))
                (if (let ((__tmp64777 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63058_ __tmp64777))
                    (if _deleted63055_
                        (begin
                          (vector-set! _table63032_ _deleted63055_ _key63028_)
                          (vector-set!
                           _table63032_
                           (fx+ _deleted63055_ '1)
                           _value63029_)
                          ((lambda ()
                             (let ((__tmp64776
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63027_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63027_
                                __tmp64776)))))
                        (begin
                          (vector-set! _table63032_ _probe63051_ _key63028_)
                          (vector-set!
                           _table63032_
                           (fx+ _probe63051_ '1)
                           _value63029_)
                          ((lambda ()
                             (let ((__tmp64774
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63027_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63027_ __tmp64774))
                             (let ((__tmp64775
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63027_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63027_
                                __tmp64775))))))
                    (if (let ((__tmp64773 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63058_ __tmp64773))
                        (let ((__tmp64772
                               (let ((_next-probe63063_
                                      (fx+ _start63044_
                                           _i63053_
                                           (fx* _i63053_ _i63053_))))
                                 (fxmodulo _next-probe63063_ _size63038_)))
                              (__tmp64771 (fx+ _i63053_ '1))
                              (__tmp64770
                               (let ((_$e63066_ _deleted63055_))
                                 (if _$e63066_ _$e63066_ _probe63051_))))
                          (declare (not safe))
                          (_loop63048_ __tmp64772 __tmp64771 __tmp64770))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63028_ _k63058_))
                            (begin
                              (vector-set!
                               _table63032_
                               _probe63051_
                               _key63028_)
                              (vector-set!
                               _table63032_
                               (fx+ _probe63051_ '1)
                               _value63029_))
                            (let ((__tmp64769
                                   (let ((_next-probe63069_
                                          (fx+ _start63044_
                                               _i63053_
                                               (fx* _i63053_ _i63053_))))
                                     (fxmodulo _next-probe63069_ _size63038_)))
                                  (__tmp64768 (fx+ _i63053_ '1)))
                              (declare (not safe))
                              (_loop63048_
                               __tmp64769
                               __tmp64768
                               _deleted63055_)))))))))))
    (define class-specializer-table-update!
      (lambda (_tab63022_
               _key63023_
               _class-specializer-table-update!63024_
               _default63025_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63022_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63022_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63022_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _tab63022_
           _key63023_
           _class-specializer-table-update!63024_
           _default63025_))))
    (define __class-specializer-table-update!
      (lambda (_tab62976_
               _key62977_
               _class-specializer-table-update!62978_
               _default62979_)
        (let ((_table62982_
               (let () (declare (not safe)) (&raw-table-table _tab62976_)))
              (_seed62983_
               (let () (declare (not safe)) (&raw-table-seed _tab62976_))))
          (let* ((_h62985_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62977_))
                         _seed62983_))
                 (_size62988_ (vector-length _table62982_))
                 (_entries62991_ (fxquotient _size62988_ '2))
                 (_start62994_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62985_ _entries62991_)
                   '1)))
            (let _loop62998_ ((_probe63001_ _start62994_)
                              (_i63003_ '1)
                              (_deleted63005_ '#f))
              (let ((_k63008_ (vector-ref _table62982_ _probe63001_)))
                (if (let ((__tmp64787 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63008_ __tmp64787))
                    (if _deleted63005_
                        (begin
                          (vector-set! _table62982_ _deleted63005_ _key62977_)
                          (vector-set!
                           _table62982_
                           (fx+ _deleted63005_ '1)
                           (_class-specializer-table-update!62978_
                            _default62979_))
                          ((lambda ()
                             (let ((__tmp64786
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62976_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62976_
                                __tmp64786)))))
                        (begin
                          (vector-set! _table62982_ _probe63001_ _key62977_)
                          (vector-set!
                           _table62982_
                           (fx+ _probe63001_ '1)
                           (_class-specializer-table-update!62978_
                            _default62979_))
                          ((lambda ()
                             (let ((__tmp64784
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab62976_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab62976_ __tmp64784))
                             (let ((__tmp64785
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62976_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62976_
                                __tmp64785))))))
                    (if (let ((__tmp64783 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63008_ __tmp64783))
                        (let ((__tmp64782
                               (let ((_next-probe63013_
                                      (fx+ _start62994_
                                           _i63003_
                                           (fx* _i63003_ _i63003_))))
                                 (fxmodulo _next-probe63013_ _size62988_)))
                              (__tmp64781 (fx+ _i63003_ '1))
                              (__tmp64780
                               (let ((_$e63016_ _deleted63005_))
                                 (if _$e63016_ _$e63016_ _probe63001_))))
                          (declare (not safe))
                          (_loop62998_ __tmp64782 __tmp64781 __tmp64780))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62977_ _k63008_))
                            (begin
                              (vector-set!
                               _table62982_
                               _probe63001_
                               _key62977_)
                              (vector-set!
                               _table62982_
                               (fx+ _probe63001_ '1)
                               (_class-specializer-table-update!62978_
                                (vector-ref
                                 _table62982_
                                 (fx+ _probe63001_ '1)))))
                            (let ((__tmp64779
                                   (let ((_next-probe63019_
                                          (fx+ _start62994_
                                               _i63003_
                                               (fx* _i63003_ _i63003_))))
                                     (fxmodulo _next-probe63019_ _size62988_)))
                                  (__tmp64778 (fx+ _i63003_ '1)))
                              (declare (not safe))
                              (_loop62998_
                               __tmp64779
                               __tmp64778
                               _deleted63005_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_tab62935_ _key62937_)
        (let ((_table62940_
               (let () (declare (not safe)) (&raw-table-table _tab62935_)))
              (_seed62942_
               (let () (declare (not safe)) (&raw-table-seed _tab62935_))))
          (let* ((_h62945_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62937_))
                         _seed62942_))
                 (_size62948_ (vector-length _table62940_))
                 (_entries62951_ (fxquotient _size62948_ '2))
                 (_start62954_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62945_ _entries62951_)
                   '1)))
            (let _loop62958_ ((_probe62961_ _start62954_) (_i62963_ '1))
              (let ((_k62966_ (vector-ref _table62940_ _probe62961_)))
                (if (let ((__tmp64794 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62966_ __tmp64794))
                    '#!void
                    (if (let ((__tmp64793 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62966_ __tmp64793))
                        (let ((__tmp64792
                               (let ((_next-probe62969_
                                      (fx+ _start62954_
                                           _i62963_
                                           (fx* _i62963_ _i62963_))))
                                 (fxmodulo _next-probe62969_ _size62948_)))
                              (__tmp64791 (fx+ _i62963_ '1)))
                          (declare (not safe))
                          (_loop62958_ __tmp64792 __tmp64791))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62937_ _k62966_))
                            (begin
                              (vector-set!
                               _table62940_
                               _probe62961_
                               (macro-deleted-obj))
                              (vector-set!
                               _table62940_
                               (fx+ _probe62961_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp64790
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab62935_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab62935_
                                    __tmp64790)))))
                            (let ((__tmp64789
                                   (let ((_next-probe62973_
                                          (fx+ _start62954_
                                               _i62963_
                                               (fx* _i62963_ _i62963_))))
                                     (fxmodulo _next-probe62973_ _size62948_)))
                                  (__tmp64788 (fx+ _i62963_ '1)))
                              (declare (not safe))
                              (_loop62958_ __tmp64789 __tmp64788)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define specialize-class
      (lambda (_klass62928_)
        (let ((_$e62930_
               (let ()
                 (declare (not safe))
                 (__lookup-class-specializer _klass62928_))))
          (if _$e62930_
              _$e62930_
              (let ((_method-table62933_
                     (let ()
                       (declare (not safe))
                       (__specialize-class _klass62928_))))
                (let ()
                  (declare (not safe))
                  (__bind-class-specializer! _klass62928_ _method-table62933_))
                _method-table62933_)))))
    (define __lookup-class-specializer
      (lambda (_klass62918_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62922_ ()
            (if (let ((__tmp64795
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64795 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62922_))))))
        (let ((_method-table62926_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _klass62918_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _method-table62926_)))
    (define __bind-class-specializer!
      (lambda (_klass62909_ _method-table62910_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62914_ ()
            (if (let ((__tmp64796
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64796 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62914_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _klass62909_
           _method-table62910_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_klass62894_ _method-table62895_ _method62896_ _proc62897_)
        (let ((_$e62899_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _method-table62895_ _method62896_ '#f))))
          (if _$e62899_
              _$e62899_
              (let ((_$e62902_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _proc62897_))))
                (if _$e62902_
                    ((lambda (_specialize62905_)
                       (let ((_specialized-proc62907_
                              (_specialize62905_
                               _klass62894_
                               _method-table62895_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _method-table62895_
                          _method62896_
                          _specialized-proc62907_)))
                     _$e62902_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _method-table62895_
                       _method62896_
                       _proc62897_))))))))
    (define __specialize-class
      (lambda (_klass62821_)
        (if (let ((__tmp64802
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _klass62821_
                      'gerbil#class::t))))
              (declare (not safe))
              (not __tmp64802))
            (if (let () (declare (not safe)) (##type? _klass62821_))
                (let ((_method-table62823_
                       (let ()
                         (declare (not safe))
                         (make-symbolic-table__% '#f '0))))
                  (let _loop62825_ ((_xklass62827_ _klass62821_))
                    (if _xklass62827_
                        (begin
                          (let ((_xmethod-table6282862830_
                                 (let ((__tmp64799
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _xklass62827_))))
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    __builtin-type-methods
                                    __tmp64799
                                    '#f))))
                            (if _xmethod-table6282862830_
                                (let* ((_xmethod-table62833_
                                        _xmethod-table6282862830_)
                                       (__tmp64800
                                        (lambda (_g6283462837_ _g6283562839_)
                                          (let ()
                                            (declare (not safe))
                                            (__specialize-method
                                             _klass62821_
                                             _method-table62823_
                                             _g6283462837_
                                             _g6283562839_)))))
                                  (declare (not safe))
                                  (raw-table-for-each
                                   _xmethod-table62833_
                                   __tmp64800))
                                '#f))
                          (let ((__tmp64801
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _xklass62827_))))
                            (declare (not safe))
                            (_loop62825_ __tmp64801)))
                        '#!void))
                  _method-table62823_)
                (let ()
                  (declare (not safe))
                  (error '"bad class; cannot specialize" _klass62821_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _klass62821_))
                (let ((__method64597
                       (let ()
                         (declare (not safe))
                         (method-ref _klass62821_ 'specialize-class))))
                  (if __method64597
                      (__method64597 _klass62821_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _klass62821_
                               'specialize-class))))
                (if (let ((__tmp64798
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _klass62821_
                              '6
                              class::t
                              '#f))))
                      (declare (not safe))
                      (find class-type-metaclass? __tmp64798))
                    (let ()
                      (declare (not safe))
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _klass62821_))
                    (let ((_method-table62842_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _loop62844_ ((_rest62846_
                                         (let ()
                                           (declare (not safe))
                                           (class-precedence-list
                                            _klass62821_))))
                        (let* ((_rest6284762855_ _rest62846_)
                               (_else6284962863_
                                (lambda () _method-table62842_))
                               (_K6285162882_
                                (lambda (_rest62866_ _xklass62867_)
                                  (let ((_xmethod-table6286862870_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _xklass62867_
                                            '11
                                            class::t
                                            '#f))))
                                    (if _xmethod-table6286862870_
                                        (let* ((_xmethod-table62873_
                                                _xmethod-table6286862870_)
                                               (__tmp64797
                                                (lambda (_g6287462877_
                                                         _g6287562879_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _klass62821_
                                                     _method-table62842_
                                                     _g6287462877_
                                                     _g6287562879_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _xmethod-table62873_
                                           __tmp64797))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_loop62844_ _rest62866_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6284762855_))
                              (let ((_hd6285262885_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6284762855_)))
                                    (_tl6285362887_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6284762855_))))
                                (let* ((_xklass62890_ _hd6285262885_)
                                       (_rest62892_ _tl6285362887_))
                                  (declare (not safe))
                                  (_K6285162882_ _rest62892_ _xklass62890_)))
                              (let ()
                                (declare (not safe))
                                (_else6284962863_)))))))))))
    (define seal-class!
      (lambda (_klass62817_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass62817_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-sealed? _klass62817_))
                '#!void
                (begin
                  (if (let ()
                        (declare (not safe))
                        (class-type-final? _klass62817_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"cannot seal non-final class" _klass62817_)))
                  (if (let ()
                        (declare (not safe))
                        (class-type-metaclass? _klass62817_))
                      (let ((__method64598
                             (let ()
                               (declare (not safe))
                               (method-ref _klass62817_ 'seal-class!))))
                        (if __method64598
                            (__method64598 _klass62817_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _klass62817_
                                     'seal-class!))))
                      (if (let ((__tmp64803
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _klass62817_
                                    '6
                                    class::t
                                    '#f))))
                            (declare (not safe))
                            (find class-type-metaclass? __tmp64803))
                          (let ()
                            (declare (not safe))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass62817_))
                          (let ((_method-table62819_
                                 (let ()
                                   (declare (not safe))
                                   (specialize-class _klass62817_))))
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _klass62817_
                             _method-table62819_
                             '11
                             class::t
                             '#f))))
                  (let ()
                    (declare (not safe))
                    (&class-type-seal! _klass62817_))))
            '#!void)))
    (define next-method
      (lambda (_subklass62766_ _obj62767_ _id62768_)
        (let ((_klass62770_ (object-type _obj62767_))
              (_type-id62771_
               (let () (declare (not safe)) (##type-id _subklass62766_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62770_ 'gerbil#class::t))
              (let _lp62773_ ((_rest62775_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass62770_))))
                (let* ((_rest6277662784_ _rest62775_)
                       (_else6277862792_ (lambda () '#f))
                       (_K6278062798_
                        (lambda (_rest62795_ _klass62796_)
                          (if (let ((__tmp64806
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass62796_))))
                                (declare (not safe))
                                (eq? _type-id62771_ __tmp64806))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest62795_
                                 _obj62767_
                                 _id62768_))
                              (let ()
                                (declare (not safe))
                                (_lp62773_ _rest62795_))))))
                  (if (let () (declare (not safe)) (##pair? _rest6277662784_))
                      (let ((_hd6278162801_
                             (let ()
                               (declare (not safe))
                               (##car _rest6277662784_)))
                            (_tl6278262803_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest6277662784_))))
                        (let* ((_klass62806_ _hd6278162801_)
                               (_rest62808_ _tl6278262803_))
                          (declare (not safe))
                          (_K6278062798_ _rest62808_ _klass62806_)))
                      (let () (declare (not safe)) (_else6277862792_)))))
              (if (let () (declare (not safe)) (##type? _klass62770_))
                  (let _lp62810_ ((_klass62812_ _klass62770_))
                    (if (let ((__tmp64805
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass62812_))))
                          (declare (not safe))
                          (eq? _type-id62771_ __tmp64805))
                        (let ((__tmp64804
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62812_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp64804
                           _obj62767_
                           _id62768_))
                        (let ((_$e62814_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62812_))))
                          (if _$e62814_
                              (let ()
                                (declare (not safe))
                                (_lp62810_ _$e62814_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass62756_ _obj62757_ _id62758_ . _args62759_)
        (let ((_$e62761_
               (let ()
                 (declare (not safe))
                 (next-method _subklass62756_ _obj62757_ _id62758_))))
          (if _$e62761_
              ((lambda (_methodf62764_)
                 (apply _methodf62764_ _obj62757_ _args62759_))
               _$e62761_)
              (let ()
                (declare (not safe))
                (error '"cannot find next method"
                       'object:
                       _obj62757_
                       'method:
                       _id62758_))))))
    (define write-style (lambda (_we62754_) (macro-writeenv-style _we62754_)))
    (define write-object
      (lambda (_we62746_ _obj62747_)
        (let ((_$e62749_
               (let () (declare (not safe)) (method-ref _obj62747_ ':wr))))
          (if _$e62749_
              ((lambda (_method62752_) (_method62752_ _obj62747_ _we62746_))
               _$e62749_)
              (let ()
                (declare (not safe))
                (##default-wr _we62746_ _obj62747_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
