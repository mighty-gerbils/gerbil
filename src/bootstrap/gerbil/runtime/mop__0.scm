(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1708418154)
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
      (let* ((_slots63527_
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
             (_slot-vector63529_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots63527_))))
             (_slot-table63536_
              (let ((_slot-table63531_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot63533_ _field63534_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table63531_
                      _slot63533_
                      _field63534_))
                   (let ((__tmp63676 (symbol->keyword _slot63533_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table63531_
                      __tmp63676
                      _field63534_)))
                 _slots63527_
                 (let ((__tmp63677 (length _slots63527_)))
                   (declare (not safe))
                   (iota__1 __tmp63677 '1)))
                _slot-table63531_))
             (_flags63538_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields63544_
              (list->vector
               (apply append
                      (map (lambda (_g6353963541_) (list _g6353963541_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots63527_ '5))))))
             (_properties63546_
              (let ((__tmp63680
                     (let ((__tmp63681
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots63527_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp63681)))
                    (__tmp63678
                     (let ((__tmp63679
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp63679 '()))))
                (declare (not safe))
                (cons __tmp63680 __tmp63678)))
             (_t63548_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags63538_
                 ##type-type
                 _fields63544_
                 '()
                 _slot-vector63529_
                 _slot-table63536_
                 _properties63546_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t63548_ _t63548_))
        _t63548_))
    (define class-type?
      (lambda (_obj63525_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj63525_ class::t.id))))
    (define class-type=?
      (lambda (_x63522_ _y63523_)
        (let ((__tmp63683 (##structure-ref _x63522_ '1 class::t '#f))
              (__tmp63682 (##structure-ref _y63523_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp63683 __tmp63682))))
    (define type-opaque?
      (lambda (_type63520_)
        (let ((__tmp63684
               (let ((__tmp63685
                      (let ()
                        (declare (not safe))
                        (##type-flags _type63520_))))
                 (declare (not safe))
                 (##fxand __tmp63685 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp63684 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type63518_)
        (let ((__tmp63686
               (let ((__tmp63687
                      (let ()
                        (declare (not safe))
                        (##type-flags _type63518_))))
                 (declare (not safe))
                 (##fxand __tmp63687 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp63686 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type63516_)
        (let ((__tmp63688
               (let ((__tmp63689
                      (let ()
                        (declare (not safe))
                        (##type-flags _type63516_))))
                 (declare (not safe))
                 (##fxand __tmp63689 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp63688 '0))))
    (define class-type-struct?
      (lambda (_klass63514_)
        (let ((__tmp63690
               (let ((__tmp63691
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63514_))))
                 (declare (not safe))
                 (##fxand __tmp63691 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp63690 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass63512_)
        (let ((__tmp63692
               (let ((__tmp63693
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63512_))))
                 (declare (not safe))
                 (##fxand __tmp63693 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp63692 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass63510_)
        (let ((__tmp63694
               (let ((__tmp63695
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63510_))))
                 (declare (not safe))
                 (##fxand __tmp63695 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp63694 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties63476_)
        (map (lambda (_e6347763479_)
               (let* ((_g6348163488_ _e6347763479_)
                      (_E6348363492_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (error '"No clause matching" _g6348163488_))))
                      (_K6348463498_
                       (lambda (_val63495_ _key63496_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key63496_ 'direct-supers:))
                             (let ((__tmp63696 (map class-type-id _val63495_)))
                               (declare (not safe))
                               (cons _key63496_ __tmp63696))
                             (let ()
                               (declare (not safe))
                               (cons _key63496_ _val63495_))))))
                 (if (let () (declare (not safe)) (##pair? _g6348163488_))
                     (let ((_hd6348563501_
                            (let ()
                              (declare (not safe))
                              (##car _g6348163488_)))
                           (_tl6348663503_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6348163488_))))
                       (let* ((_key63506_ _hd6348563501_)
                              (_val63508_ _tl6348663503_))
                         (declare (not safe))
                         (_K6348463498_ _val63508_ _key63506_)))
                     (let () (declare (not safe)) (_E6348363492_)))))
             _properties63476_)))
    (define make-class-type-descriptor
      (lambda (_type-id63375_
               _type-name63376_
               _type-super63377_
               _precedence-list63378_
               _slot-vector63379_
               _properties63380_
               _constructor63381_
               _slot-table63382_
               _methods63383_)
        (letrec ((_make-props!63385_
                  (lambda (_key63445_)
                    (letrec* ((_ht63447_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!63448_
                               (lambda (_ht63469_ _slots63470_)
                                 (for-each
                                  (lambda (_g6347163473_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht63469_
                                       _g6347163473_
                                       '#t)))
                                  _slots63470_)))
                              (_put-alist!63449_
                               (lambda (_ht63458_ _key63459_ _alist63460_)
                                 (let ((_$e63462_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key63459_
                                           _alist63460_))))
                                   (if _$e63462_
                                       ((lambda (_g6346463466_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!63448_
                                             _ht63458_
                                             _g6346463466_)))
                                        _$e63462_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!63449_
                         _ht63447_
                         _key63445_
                         _properties63380_))
                      (for-each
                       (lambda (_mixin63451_)
                         (let ((_alist63453_
                                (##structure-ref
                                 _mixin63451_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist63453_))
                                   (let ((__tmp63698
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key63445_
                                             _alist63453_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp63698)))
                               (let ((__tmp63697
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin63451_))))
                                 (declare (not safe))
                                 (_put-slots!63448_ _ht63447_ __tmp63697))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!63449_
                                  _ht63447_
                                  _key63445_
                                  _alist63453_)))))
                       _precedence-list63378_)
                      _ht63447_))))
          (let* ((_transparent?63387_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties63380_)))
                 (_all-slots-printable?63392_
                  (let ((_$e63389_ _transparent?63387_))
                    (if _$e63389_
                        _$e63389_
                        (let ((__tmp63699
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties63380_))))
                          (declare (not safe))
                          (eq? '#t __tmp63699)))))
                 (_printable63394_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?63392_))
                      (let ()
                        (declare (not safe))
                        (_make-props!63385_ 'print:))
                      '#f))
                 (_all-slots-equalable?63399_
                  (let ((_$e63396_ _transparent?63387_))
                    (if _$e63396_
                        _$e63396_
                        (let ((__tmp63700
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties63380_))))
                          (declare (not safe))
                          (eq? '#t __tmp63700)))))
                 (_equalable63401_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?63399_))
                      (let ()
                        (declare (not safe))
                        (_make-props!63385_ 'equal:))
                      '#f))
                 (_first-new-field63403_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super63377_
                         'gerbil#class::t))
                      (let ((__tmp63701
                             (##structure-ref
                              _type-super63377_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp63701))
                      '1))
                 (_field-info-length63405_
                  (let ((__tmp63702
                         (let ((__tmp63703
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector63379_))))
                           (declare (not safe))
                           (##fx- __tmp63703 _first-new-field63403_))))
                    (declare (not safe))
                    (##fx* '3 __tmp63702)))
                 (_field-info63407_ (make-vector _field-info-length63405_ '#f))
                 (_struct?63409_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties63380_)))
                 (_final?63411_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties63380_)))
                 (_metaclass63419_
                  (let ((_metaclass6341263414_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties63380_))))
                    (if _metaclass6341263414_
                        (let ((_metaclass63417_ _metaclass6341263414_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass63417_
                                 'gerbil#class::t))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (error '"metaclass is not a class type"
                                       'class:
                                       _type-id63375_
                                       'metaclass:
                                       _metaclass63417_)))
                          _metaclass63417_)
                        '#f)))
                 (_opaque?63424_
                  (let ((_$e63421_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?63399_))))
                    (if _$e63421_
                        _$e63421_
                        (if _type-super63377_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super63377_))
                            '#f))))
                 (_type-flags63426_
                  (let ((__tmp63707 (if _final?63411_ '0 type-flag-extensible))
                        (__tmp63706 (if _opaque?63424_ type-flag-opaque '0))
                        (__tmp63705
                         (if _struct?63409_ class-type-flag-struct '0))
                        (__tmp63704
                         (if _metaclass63419_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp63707
                             __tmp63706
                             __tmp63705
                             __tmp63704))))
            (let _loop63429_ ((_i63431_ _first-new-field63403_) (_j63432_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j63432_ _field-info-length63405_))
                  (let* ((_slot63434_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector63379_ _i63431_)))
                         (_flags63442_
                          (if _transparent?63387_
                              '0
                              (let ((__tmp63709
                                     (if (or _all-slots-printable?63392_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable63394_
                                                _slot63434_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp63708
                                     (if (or _all-slots-equalable?63399_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable63401_
                                                _slot63434_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp63709 __tmp63708)))))
                    (vector-set! _field-info63407_ _j63432_ _slot63434_)
                    (vector-set!
                     _field-info63407_
                     (let () (declare (not safe)) (##fx+ _j63432_ '1))
                     _flags63442_)
                    (let ((__tmp63711
                           (let () (declare (not safe)) (##fx+ _i63431_ '1)))
                          (__tmp63710
                           (let () (declare (not safe)) (##fx+ _j63432_ '3))))
                      (declare (not safe))
                      (_loop63429_ __tmp63711 __tmp63710)))
                  '#!void))
            (if _metaclass63419_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass63419_
                   _type-id63375_
                   _type-name63376_
                   _type-flags63426_
                   _type-super63377_
                   _field-info63407_
                   _precedence-list63378_
                   _slot-vector63379_
                   _slot-table63382_
                   _properties63380_
                   _constructor63381_
                   _methods63383_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id63375_
                   _type-name63376_
                   _type-flags63426_
                   _type-super63377_
                   _field-info63407_
                   _precedence-list63378_
                   _slot-vector63379_
                   _slot-table63382_
                   _properties63380_
                   _constructor63381_
                   _methods63383_)))))))
    (define class-type-id
      (lambda (_klass63373_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63373_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass63371_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63371_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass63368_ _val63369_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63368_ _val63369_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass63363_ _val63365_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63363_
           _val63365_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass63361_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63361_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass63359_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63359_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass63356_ _val63357_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63356_ _val63357_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass63351_ _val63353_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63351_
           _val63353_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass63349_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63349_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass63347_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63347_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass63344_ _val63345_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63344_ _val63345_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass63339_ _val63341_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63339_
           _val63341_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass63337_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63337_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass63335_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63335_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass63332_ _val63333_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63332_ _val63333_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass63327_ _val63329_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63327_
           _val63329_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass63325_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63325_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass63323_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63323_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass63320_ _val63321_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63320_ _val63321_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass63315_ _val63317_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63315_
           _val63317_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass63313_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63313_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass63311_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass63311_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass63308_ _val63309_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass63308_
           _val63309_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass63303_ _val63305_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63303_
           _val63305_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass63301_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63301_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass63299_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63299_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass63296_ _val63297_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass63296_
           _val63297_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass63291_ _val63293_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63291_
           _val63293_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass63289_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63289_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass63287_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63287_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass63284_ _val63285_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63284_ _val63285_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass63279_ _val63281_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63279_
           _val63281_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass63277_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63277_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass63275_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63275_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass63272_ _val63273_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63272_ _val63273_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass63267_ _val63269_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63267_
           _val63269_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass63265_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63265_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass63263_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63263_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass63260_ _val63261_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass63260_
           _val63261_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass63255_ _val63257_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63255_
           _val63257_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass63253_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63253_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass63251_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63251_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass63248_ _val63249_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63248_ _val63249_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass63243_ _val63245_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63243_
           _val63245_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass63241_)
        (cdr (vector->list (##structure-ref _klass63241_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass63239_)
        (let ((__tmp63712
               (let ((__tmp63713
                      (##structure-ref _klass63239_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp63713))))
          (declare (not safe))
          (##fx- __tmp63712 '1))))
    (define class-type-seal!
      (lambda (_klass63237_)
        (let ((__tmp63714
               (let ((__tmp63715
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63237_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp63715))))
          (declare (not safe))
          (##structure-set!
           _klass63237_
           __tmp63714
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass63235_)
        (let ((__tmp63716
               (let ((__tmp63717
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63235_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp63717))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63235_
           __tmp63716
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct63226_ _maybe-super-struct63227_)
        (let ((_maybe-super-struct-id63229_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct63227_))))
          (let _lp63231_ ((_super-struct63233_ _maybe-sub-struct63226_))
            (if (let () (declare (not safe)) (not _super-struct63233_))
                '#f
                (if (let ((__tmp63719
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct63233_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id63229_ __tmp63719))
                    '#t
                    (let ((__tmp63718
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct63233_))))
                      (declare (not safe))
                      (_lp63231_ __tmp63718))))))))
    (define base-struct/1
      (lambda (_klass63224_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63224_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass63224_))
                _klass63224_
                (let () (declare (not safe)) (##type-super _klass63224_)))
            (if (let () (declare (not safe)) (not _klass63224_))
                '#f
                (let ()
                  (declare (not safe))
                  (error '"not a class or false" _klass63224_))))))
    (define base-struct/2
      (lambda (_klass163212_ _klass263213_)
        (let ((_s163215_
               (let () (declare (not safe)) (base-struct/1 _klass163212_)))
              (_s263216_
               (let () (declare (not safe)) (base-struct/1 _klass263213_))))
          (if (or (let () (declare (not safe)) (not _s163215_))
                  (and _s263216_
                       (let ()
                         (declare (not safe))
                         (substruct? _s163215_ _s263216_))))
              _s263216_
              (if (or (let () (declare (not safe)) (not _s263216_))
                      (and _s163215_
                           (let ()
                             (declare (not safe))
                             (substruct? _s263216_ _s163215_))))
                  _s163215_
                  (let ()
                    (declare (not safe))
                    (error '"bad mixin: incompatible struct bases"
                           _klass163212_
                           _klass263213_
                           _s163215_
                           _s263216_)))))))
    (define base-struct/list
      (lambda (_all-supers63096_)
        (let* ((_all-supers6309763122_ _all-supers63096_)
               (_E6310263126_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _all-supers6309763122_)))))
          (let ((_K6312063209_ (lambda () '#f))
                (_K6311763195_
                 (lambda (_x63193_)
                   (let () (declare (not safe)) (base-struct/1 _x63193_))))
                (_K6311263172_
                 (lambda (_y63169_ _x63170_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x63170_ _y63169_))))
                (_K6310363133_
                 (lambda (_y63130_ _x63131_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x63131_ _y63130_)))))
            (let* ((___match6367163672_
                    (lambda (_hd6310463136_ _tl6310563138_)
                      (let ((_x63141_ _hd6310463136_))
                        (letrec ((_splice-rest6310763143_
                                  (lambda (_rest6311163150_ _y63152_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6311163150_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6310363133_ _y63152_ _x63141_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6310263126_)))))
                                 (_splice-try6310963145_
                                  (lambda (_hd6311063154_
                                           _rest6311163156_
                                           _y6310663157_)
                                    (let ((_y63160_ _hd6311063154_))
                                      (let ((__tmp63721
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6311163156_)))
                                            (__tmp63720
                                             (let ()
                                               (declare (not safe))
                                               (cons _y63160_ _y6310663157_))))
                                        (declare (not safe))
                                        (_splice-loop6310863147_
                                         __tmp63721
                                         __tmp63720)))))
                                 (_splice-loop6310863147_
                                  (lambda (_rest6311163162_ _y6310663163_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6311163162_))
                                        (let ((__tmp63723
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6311163162_))))
                                          (declare (not safe))
                                          (_splice-try6310963145_
                                           __tmp63723
                                           _rest6311163162_
                                           _y6310663163_))
                                        (let ((__tmp63722
                                               (reverse _y6310663163_)))
                                          (declare (not safe))
                                          (_splice-rest6310763143_
                                           _rest6311163162_
                                           __tmp63722))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6310863147_ _tl6310563138_ '()))))))
                   (_try-match6309963205_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6309763122_))
                          (let ((_tl6311963200_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6309763122_)))
                                (_hd6311863198_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6309763122_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6311963200_))
                                (let ((_x63203_ _hd6311863198_))
                                  (declare (not safe))
                                  (base-struct/1 _x63203_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6311963200_))
                                    (let ((_tl6311663184_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6311963200_)))
                                          (_hd6311563182_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6311963200_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6311663184_))
                                          (let ((_x63180_ _hd6311863198_)
                                                (_y63187_ _hd6311563182_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6311263172_
                                               _y63187_
                                               _x63180_)))
                                          (___match6367163672_
                                           _hd6311863198_
                                           _tl6311963200_)))
                                    (___match6367163672_
                                     _hd6311863198_
                                     _tl6311963200_))))
                          (let () (declare (not safe)) (_E6310263126_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6309763122_))
                  (let () (declare (not safe)) (_K6312063209_))
                  (let () (declare (not safe)) (_try-match6309963205_))))))))
    (define base-struct
      (lambda _all-supers63094_
        (let () (declare (not safe)) (base-struct/list _all-supers63094_))))
    (define find-super-constructor
      (lambda (_super63046_)
        (let _lp63048_ ((_rest63050_ _super63046_) (_constructor63051_ '#f))
          (let* ((_rest6305263060_ _rest63050_)
                 (_else6305463068_ (lambda () _constructor63051_))
                 (_K6305663082_
                  (lambda (_rest63071_ _hd63072_)
                    (let ((_$e63074_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd63072_
                              '10
                              class::t
                              '#f))))
                      (if _$e63074_
                          ((lambda (_xconstructor63077_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor63051_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor63051_
                                            _xconstructor63077_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp63048_ _rest63071_ _xconstructor63077_))
                                 (let ()
                                   (declare (not safe))
                                   (error '"conflicting implicit constructors"
                                          _constructor63051_
                                          _xconstructor63077_))))
                           _$e63074_)
                          (let ()
                            (declare (not safe))
                            (_lp63048_ _rest63071_ _constructor63051_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6305263060_))
                (let ((_hd6305763085_
                       (let () (declare (not safe)) (##car _rest6305263060_)))
                      (_tl6305863087_
                       (let () (declare (not safe)) (##cdr _rest6305263060_))))
                  (let* ((_hd63090_ _hd6305763085_)
                         (_rest63092_ _tl6305863087_))
                    (declare (not safe))
                    (_K6305663082_ _rest63092_ _hd63090_)))
                (let () (declare (not safe)) (_else6305463068_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list63022_ _direct-slots63023_)
        (let* ((_next-slot63025_ '1)
               (_slot-table63027_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots63029_ '(__class))
               (_process-slot63033_
                (lambda (_slot63031_)
                  (if (let () (declare (not safe)) (symbol? _slot63031_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"invalid slot name" _slot63031_)))
                  (if (let ((__tmp63725
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table63027_
                                _slot63031_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp63725 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table63027_
                           _slot63031_
                           _next-slot63025_))
                        (let ((__tmp63724 (symbol->keyword _slot63031_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table63027_
                           __tmp63724
                           _next-slot63025_))
                        (set! _r-slots63029_
                              (let ()
                                (declare (not safe))
                                (cons _slot63031_ _r-slots63029_)))
                        (set! _next-slot63025_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot63025_ '1))))
                      '#!void)))
               (_process-slots63039_
                (lambda (_g6303463036_)
                  (for-each _process-slot63033_ _g6303463036_))))
          (for-each
           (lambda (_mixin63042_)
             (let ((__tmp63726
                    (let ((__tmp63727
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin63042_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp63727 '()))))
               (declare (not safe))
               (_process-slots63039_ __tmp63726)))
           (reverse _class-precedence-list63022_))
          (let ()
            (declare (not safe))
            (_process-slots63039_ _direct-slots63023_))
          (let ((_slot-vector63044_ (list->vector (reverse _r-slots63029_))))
            (values _slot-vector63044_ _slot-table63027_)))))
    (define make-class-type
      (lambda (_id62984_
               _name62985_
               _direct-supers62986_
               _direct-slots62987_
               _properties62988_
               _constructor62989_)
        (let ((_$e62994_
               (let ((__tmp63728
                      (lambda (_$obj62991_)
                        (let ((__tmp63729
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj62991_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp63729)))))
                 (declare (not safe))
                 (find __tmp63728 _direct-supers62986_))))
          (if _$e62994_
              ((lambda (_g6299662998_)
                 (let ()
                   (declare (not safe))
                   (error '"Illegal super class; not a class descriptor"
                          _g6299662998_)))
               _$e62994_)
              (let ((_$e63001_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers62986_))))
                (if _$e63001_
                    ((lambda (_g6300363005_)
                       (let ()
                         (declare (not safe))
                         (error '"Cannot extend final class" _g6300363005_)))
                     _$e63001_)
                    '#!void))))
        (let ((_g63730_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers62986_))))
          (begin
            (let ((_g63731_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g63730_) (##vector-length _g63730_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g63731_ 2)))
                  (error "Context expects 2 values" _g63731_)))
            (let ((_precedence-list63008_
                   (let () (declare (not safe)) (##vector-ref _g63730_ 0)))
                  (_struct-super63009_
                   (let () (declare (not safe)) (##vector-ref _g63730_ 1))))
              (let ((_g63732_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list63008_
                        _direct-slots62987_))))
                (begin
                  (let ((_g63733_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g63732_)
                               (##vector-length _g63732_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g63733_ 2)))
                        (error "Context expects 2 values" _g63733_)))
                  (let ((_slot-vector63011_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g63732_ 0)))
                        (_slot-table63012_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g63732_ 1))))
                    (let* ((_properties63014_
                            (let ((__tmp63736
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots62987_)))
                                  (__tmp63734
                                   (let ((__tmp63735
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers62986_))))
                                     (declare (not safe))
                                     (cons __tmp63735 _properties62988_))))
                              (declare (not safe))
                              (cons __tmp63736 __tmp63734)))
                           (_constructor*63019_
                            (let ((_$e63016_ _constructor62989_))
                              (if _$e63016_
                                  _$e63016_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers62986_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id62984_
                         _name62985_
                         _struct-super63009_
                         _precedence-list63008_
                         _slot-vector63011_
                         _properties63014_
                         _constructor*63019_
                         _slot-table63012_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass62982_)
        (let ((__tmp63737
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass62982_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass62982_ __tmp63737))))
    (define compute-precedence-list
      (lambda (_direct-supers62980_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers62980_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass62964_)
        (let ((_tid62966_
               (let () (declare (not safe)) (##type-id _klass62964_))))
          (if (let () (declare (not safe)) (class-type-final? _klass62964_))
              (lambda (_g6296762969_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6296762969_ _tid62966_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass62964_))
                  (lambda (_g6297162973_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6297162973_ _tid62966_)))
                  (lambda (_g6297562977_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass62964_ _g6297562977_))))))))
    (define if-class-slot-field
      (lambda (_klass62953_
               _slot62954_
               _if-final62955_
               _if-struct62956_
               _if-struct-field62957_
               _if-class-slot62958_)
        (let ((_field62960_
               (let ((__tmp63738
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass62953_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp63738 _slot62954_ '#f))))
          (if (let () (declare (not safe)) (not _field62960_))
              (let ()
                (declare (not safe))
                (error '"unknown slot"
                       'class:
                       _klass62953_
                       'slot:
                       _slot62954_))
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass62953_))
                  (_if-final62955_ _klass62953_ _slot62954_ _field62960_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass62953_))
                      (_if-struct62956_ _klass62953_ _slot62954_ _field62960_)
                      (if (let ((_strukt62962_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass62953_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt62962_
                                    'gerbil#class::t))
                                 (let ((__tmp63739
                                        (let ((__tmp63740
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt62962_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp63740))))
                                   (declare (not safe))
                                   (##fx< _field62960_ __tmp63739))))
                          (_if-struct-field62957_
                           _klass62953_
                           _slot62954_
                           _field62960_)
                          (_if-class-slot62958_
                           _klass62953_
                           _slot62954_
                           _field62960_))))))))
    (define make-class-slot-accessor
      (lambda (_klass62950_ _slot62951_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62950_
           _slot62951_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass62947_ _slot62948_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62947_
           _slot62948_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass62944_ _slot62945_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62944_
           _slot62945_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass62941_ _slot62942_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass62941_
           _slot62942_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object62925_ _class62926_ _slot62927_)
        (apply error
               '"not an instance"
               'object:
               _object62925_
               'class:
               _class62926_
               (if _slot62927_
                   (let ((__tmp63741
                          (let ()
                            (declare (not safe))
                            (cons _slot62927_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp63741))
                   '()))))
    (define not-an-instance__0
      (lambda (_object62932_ _class62933_)
        (let ((_slot62935_ '#f))
          (declare (not safe))
          (not-an-instance__% _object62932_ _class62933_ _slot62935_))))
    (define not-an-instance
      (lambda _g63743_
        (let ((_g63742_ (let () (declare (not safe)) (##length _g63743_))))
          (cond ((let () (declare (not safe)) (##fx= _g63742_ 2))
                 (apply (lambda (_object62932_ _class62933_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object62932_ _class62933_)))
                        _g63743_))
                ((let () (declare (not safe)) (##fx= _g63742_ 3))
                 (apply (lambda (_object62937_ _class62938_ _slot62939_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object62937_
                             _class62938_
                             _slot62939_)))
                        _g63743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g63743_))))))
    (define make-final-slot-accessor
      (lambda (_klass62918_ _slot62919_ _field62920_)
        (lambda (_obj62922_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj62922_
             _field62920_
             _klass62918_
             _slot62919_)))))
    (define make-final-slot-mutator
      (lambda (_klass62911_ _slot62912_ _field62913_)
        (lambda (_obj62915_ _val62916_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj62915_
             _val62916_
             _field62913_
             _klass62911_
             _slot62912_)))))
    (define make-struct-slot-accessor
      (lambda (_klass62905_ _slot62906_ _field62907_)
        (lambda (_obj62909_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj62909_
             _field62907_
             _klass62905_
             _slot62906_)))))
    (define make-struct-slot-mutator
      (lambda (_klass62898_ _slot62899_ _field62900_)
        (lambda (_obj62902_ _val62903_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj62902_
             _val62903_
             _field62900_
             _klass62898_
             _slot62899_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass62892_ _slot62893_ _field62894_)
        (lambda (_obj62896_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj62896_
             _field62894_
             _klass62892_
             _slot62893_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass62885_ _slot62886_ _field62887_)
        (lambda (_obj62889_ _val62890_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj62889_
             _val62890_
             _field62887_
             _klass62885_
             _slot62886_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass62879_ _slot62880_ _field62881_)
        (lambda (_obj62883_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass62879_ _obj62883_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj62883_ _field62881_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj62883_ _klass62879_ _slot62880_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass62872_ _slot62873_ _field62874_)
        (lambda (_obj62876_ _val62877_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass62872_ _obj62876_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj62876_ _field62874_ _val62877_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj62876_ _klass62872_ _slot62873_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass62866_ _slot62867_ _field62868_)
        (lambda (_obj62870_)
          (if (let ((__tmp63744
                     (let () (declare (not safe)) (##type-id _klass62866_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj62870_ __tmp63744))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj62870_ _field62868_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass62866_ _obj62870_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj62870_ _slot62867_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj62870_
                     _klass62866_
                     _slot62867_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass62859_ _slot62860_ _field62861_)
        (lambda (_obj62863_ _val62864_)
          (if (let ((__tmp63745
                     (let () (declare (not safe)) (##type-id _klass62859_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj62863_ __tmp63745))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj62863_ _field62861_ _val62864_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass62859_ _obj62863_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj62863_ _slot62860_ _val62864_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj62863_
                     _klass62859_
                     _slot62860_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass62853_ _slot62854_ _field62855_)
        (lambda (_obj62857_)
          (if (let ((__tmp63746
                     (let () (declare (not safe)) (##type-id _klass62853_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj62857_ __tmp63746))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj62857_ _field62855_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj62857_ _slot62854_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass62846_ _slot62847_ _field62848_)
        (lambda (_obj62850_ _val62851_)
          (if (let ((__tmp63747
                     (let () (declare (not safe)) (##type-id _klass62846_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj62850_ __tmp63747))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj62850_ _field62848_ _val62851_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj62850_ _slot62847_ _val62851_))))))
    (define class-slot-offset
      (lambda (_klass62843_ _slot62844_)
        (let ((__tmp63748
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass62843_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp63748 _slot62844_ '#f))))
    (define class-slot-ref
      (lambda (_klass62837_ _obj62838_ _slot62839_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass62837_ _obj62838_))
            (let ((_off62841_
                   (let ((__tmp63749 (object-type _obj62838_)))
                     (declare (not safe))
                     (class-slot-offset __tmp63749 _slot62839_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj62838_
               _off62841_
               _klass62837_
               _slot62839_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj62838_ _klass62837_)))))
    (define class-slot-set!
      (lambda (_klass62830_ _obj62831_ _slot62832_ _val62833_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass62830_ _obj62831_))
            (let ((_off62835_
                   (let ((__tmp63750 (object-type _obj62831_)))
                     (declare (not safe))
                     (class-slot-offset __tmp63750 _slot62832_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj62831_
               _val62833_
               _off62835_
               _klass62830_
               _slot62832_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj62831_ _klass62830_)))))
    (define unchecked-field-ref
      (lambda (_obj62827_ _off62828_)
        (let ((__tmp63751
               (let () (declare (not safe)) (##structure-type _obj62827_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj62827_ _off62828_ __tmp63751 '#f))))
    (define unchecked-field-set!
      (lambda (_obj62823_ _off62824_ _val62825_)
        (let ((__tmp63752
               (let () (declare (not safe)) (##structure-type _obj62823_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj62823_
           _val62825_
           _off62824_
           __tmp63752
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj62820_ _slot62821_)
        (let ((__tmp63753
               (let ((__tmp63754
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj62820_))))
                 (declare (not safe))
                 (class-slot-offset __tmp63754 _slot62821_))))
          (declare (not safe))
          (unchecked-field-ref _obj62820_ __tmp63753))))
    (define unchecked-slot-set!
      (lambda (_obj62816_ _slot62817_ _val62818_)
        (let ((__tmp63755
               (let ((__tmp63756
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj62816_))))
                 (declare (not safe))
                 (class-slot-offset __tmp63756 _slot62817_))))
          (declare (not safe))
          (unchecked-field-set! _obj62816_ __tmp63755 _val62818_))))
    (define slot-ref__%
      (lambda (_obj62792_ _slot62793_ _E62794_)
        (if (object? _obj62792_)
            (let* ((_klass62796_ (object-type _obj62792_))
                   (_$e62799_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass62796_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass62796_ _slot62793_))
                        '#f)))
              (if _$e62799_
                  ((lambda (_off62802_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj62792_ _off62802_)))
                   _$e62799_)
                  (_E62794_ _obj62792_ _slot62793_)))
            (_E62794_ _obj62792_ _slot62793_))))
    (define slot-ref__0
      (lambda (_obj62807_ _slot62808_)
        (let ((_E62810_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj62807_ _slot62808_ _E62810_))))
    (define slot-ref
      (lambda _g63758_
        (let ((_g63757_ (let () (declare (not safe)) (##length _g63758_))))
          (cond ((let () (declare (not safe)) (##fx= _g63757_ 2))
                 (apply (lambda (_obj62807_ _slot62808_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj62807_ _slot62808_)))
                        _g63758_))
                ((let () (declare (not safe)) (##fx= _g63757_ 3))
                 (apply (lambda (_obj62812_ _slot62813_ _E62814_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj62812_ _slot62813_ _E62814_)))
                        _g63758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g63758_))))))
    (define slot-set!__%
      (lambda (_obj62764_ _slot62765_ _val62766_ _E62767_)
        (if (object? _obj62764_)
            (let* ((_klass62769_ (object-type _obj62764_))
                   (_$e62772_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass62769_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass62769_ _slot62765_))
                        '#f)))
              (if _$e62772_
                  ((lambda (_off62775_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj62764_
                        _off62775_
                        _val62766_)))
                   _$e62772_)
                  (_E62767_ _obj62764_ _slot62765_)))
            (_E62767_ _obj62764_ _slot62765_))))
    (define slot-set!__0
      (lambda (_obj62780_ _slot62781_ _val62782_)
        (let ((_E62784_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj62780_ _slot62781_ _val62782_ _E62784_))))
    (define slot-set!
      (lambda _g63760_
        (let ((_g63759_ (let () (declare (not safe)) (##length _g63760_))))
          (cond ((let () (declare (not safe)) (##fx= _g63759_ 3))
                 (apply (lambda (_obj62780_ _slot62781_ _val62782_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj62780_ _slot62781_ _val62782_)))
                        _g63760_))
                ((let () (declare (not safe)) (##fx= _g63759_ 4))
                 (apply (lambda (_obj62786_ _slot62787_ _val62788_ _E62789_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj62786_
                             _slot62787_
                             _val62788_
                             _E62789_)))
                        _g63760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g63760_))))))
    (define __slot-error
      (lambda (_obj62760_ _slot62761_)
        (let ()
          (declare (not safe))
          (error '"Cannot find slot" 'object: _obj62760_ 'slot: _slot62761_))))
    (define subclass?
      (lambda (_maybe-sub-class62750_ _maybe-super-class62751_)
        (let* ((_maybe-super-class-id62753_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class62751_)))
               (_$e62755_
                (let ((__tmp63761
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class62750_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id62753_ __tmp63761))))
          (if _$e62755_
              _$e62755_
              (let ((__tmp63763
                     (lambda (_super-class62758_)
                       (let ((__tmp63764
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class62758_))))
                         (declare (not safe))
                         (eq? __tmp63764 _maybe-super-class-id62753_))))
                    (__tmp63762
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class62750_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp63763 __tmp63762))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass62747_ _obj62748_)
        (let ((__tmp63765
               (let () (declare (not safe)) (##type-id _klass62747_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj62748_ __tmp63765))))
    (define struct-instance?
      (lambda (_klass62744_ _obj62745_)
        (let ((__tmp63766
               (let () (declare (not safe)) (##type-id _klass62744_))))
          (declare (not safe))
          (##structure-instance-of? _obj62745_ __tmp63766))))
    (define class-instance?
      (lambda (_klass62739_ _obj62740_)
        (if (object? _obj62740_)
            (let ((_type62742_ (object-type _obj62740_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type62742_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type62742_ _klass62739_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass62734_ _k62735_)
        (let ((_obj62737_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass62734_ _k62735_))))
          (let () (declare (not safe)) (object-fill! _obj62737_ '#f))
          _obj62737_)))
    (define object-fill!
      (lambda (_obj62727_ _fill62728_)
        (let _loop62730_ ((_i62732_
                           (let ((__tmp63768
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj62727_))))
                             (declare (not safe))
                             (##fx- __tmp63768 '1))))
          (if (let () (declare (not safe)) (##fx> _i62732_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj62727_
                   _fill62728_
                   _i62732_
                   '#f
                   '#f))
                (let ((__tmp63767
                       (let () (declare (not safe)) (##fx- _i62732_ '1))))
                  (declare (not safe))
                  (_loop62730_ __tmp63767)))
              _obj62727_))))
    (define new-instance
      (lambda (_klass62725_)
        (let ((__obj63673
               (let ((__tmp63769
                      (let ((__tmp63770
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass62725_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp63770))))
                 (declare (not safe))
                 (##make-structure _klass62725_ __tmp63769))))
          (let () (declare (not safe)) (object-fill! __obj63673 '#f))
          __obj63673)))
    (define make-instance
      (lambda (_klass62715_ . _args62716_)
        (let* ((_obj62718_
                (let () (declare (not safe)) (new-instance _klass62715_)))
               (_$e62720_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass62715_ '10 class::t '#f))))
          (if _$e62720_
              ((lambda (_kons-id62723_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass62715_
                    _kons-id62723_
                    _obj62718_
                    _args62716_)))
               _$e62720_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass62715_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass62715_
                     _obj62718_
                     _args62716_))
                  (if (let ((__tmp63775
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass62715_))))
                        (declare (not safe))
                        (not __tmp63775))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass62715_
                         _obj62718_
                         _args62716_))
                      (if (let ((__tmp63773
                                 (let ((__tmp63774
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj62718_))))
                                   (declare (not safe))
                                   (##fx- __tmp63774 '1)))
                                (__tmp63772 (length _args62716_)))
                            (declare (not safe))
                            (##fx= __tmp63773 __tmp63772))
                          (apply ##structure _klass62715_ _args62716_)
                          (let ((__tmp63771
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass62715_))))
                            (declare (not safe))
                            (error '"arguments don't match object size"
                                   'class:
                                   _klass62715_
                                   'slots:
                                   __tmp63771
                                   'args:
                                   _args62716_)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj62712_ . _args62713_)
        (if (let ((__tmp63777 (length _args62713_))
                  (__tmp63776
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj62712_))))
              (declare (not safe))
              (##fx< __tmp63777 __tmp63776))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj62712_ _args62713_))
            (let ()
              (declare (not safe))
              (error '"too many arguments for struct"
                     'object:
                     _obj62712_
                     'args:
                     _args62713_)))))
    (define __struct-instance-init!
      (lambda (_obj62671_ _args62672_)
        (let _lp62674_ ((_k62676_ '1) (_rest62677_ _args62672_))
          (let* ((_rest6267862686_ _rest62677_)
                 (_else6268062694_ (lambda () _obj62671_))
                 (_K6268262700_
                  (lambda (_rest62697_ _hd62698_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj62671_ _k62676_ _hd62698_))
                    (let ((__tmp63778
                           (let () (declare (not safe)) (##fx+ _k62676_ '1))))
                      (declare (not safe))
                      (_lp62674_ __tmp63778 _rest62697_)))))
            (if (let () (declare (not safe)) (##pair? _rest6267862686_))
                (let ((_hd6268362703_
                       (let () (declare (not safe)) (##car _rest6267862686_)))
                      (_tl6268462705_
                       (let () (declare (not safe)) (##cdr _rest6267862686_))))
                  (let* ((_hd62708_ _hd6268362703_)
                         (_rest62710_ _tl6268462705_))
                    (declare (not safe))
                    (_K6268262700_ _rest62710_ _hd62708_)))
                (let () (declare (not safe)) (_else6268062694_)))))))
    (define class-instance-init!
      (lambda (_obj62668_ . _args62669_)
        (let ((__tmp63779 (object-type _obj62668_)))
          (declare (not safe))
          (__class-instance-init! __tmp63779 _obj62668_ _args62669_))))
    (define __class-instance-init!
      (lambda (_klass62612_ _obj62613_ _args62614_)
        (let _lp62616_ ((_rest62618_ _args62614_))
          (let* ((_rest6261962629_ _rest62618_)
                 (_else6262162637_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest62618_))
                        _obj62613_
                        (let ()
                          (declare (not safe))
                          (error '"unexpected class initializer arguments"
                                 'class:
                                 _klass62612_
                                 'rest:
                                 _rest62618_)))))
                 (_K6262362649_
                  (lambda (_rest62640_ _val62641_ _key62642_)
                    (let ((_$e62644_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass62612_ _key62642_))))
                      (if _$e62644_
                          ((lambda (_off62647_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj62613_
                                _off62647_
                                _val62641_))
                             (let ()
                               (declare (not safe))
                               (_lp62616_ _rest62640_)))
                           _$e62644_)
                          (let ()
                            (declare (not safe))
                            (error '"unknown slot"
                                   'class:
                                   _klass62612_
                                   'slot:
                                   _key62642_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6261962629_))
                (let ((_hd6262462652_
                       (let () (declare (not safe)) (##car _rest6261962629_)))
                      (_tl6262562654_
                       (let () (declare (not safe)) (##cdr _rest6261962629_))))
                  (let ((_key62657_ _hd6262462652_))
                    (if (let () (declare (not safe)) (##pair? _tl6262562654_))
                        (let ((_hd6262662659_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6262562654_)))
                              (_tl6262762661_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6262562654_))))
                          (let* ((_val62664_ _hd6262662659_)
                                 (_rest62666_ _tl6262762661_))
                            (declare (not safe))
                            (_K6262362649_ _rest62666_ _val62664_ _key62657_)))
                        (let () (declare (not safe)) (_else6262162637_)))))
                (let () (declare (not safe)) (_else6262162637_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass62608_ _obj62609_ _args62610_)
        (apply call-method
               _klass62608_
               'instance-init!
               _obj62609_
               _args62610_)))
    (define constructor-init!
      (lambda (_klass62603_ _kons-id62604_ _obj62605_ . _args62606_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass62603_
           _kons-id62604_
           _obj62605_
           _args62606_))))
    (define __constructor-init!
      (lambda (_klass62593_ _kons-id62594_ _obj62595_ _args62596_)
        (let ((_$e62598_
               (let ()
                 (declare (not safe))
                 (__find-method _klass62593_ _obj62595_ _kons-id62594_))))
          (if _$e62598_
              ((lambda (_kons62601_)
                 (apply _kons62601_ _obj62595_ _args62596_)
                 _obj62595_)
               _$e62598_)
              (let ()
                (declare (not safe))
                (error '"missing constructor"
                       'class:
                       _klass62593_
                       'method:
                       _kons-id62594_))))))
    (define struct-copy
      (lambda (_struct62591_)
        (if (let () (declare (not safe)) (##structure? _struct62591_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"not a structure" _struct62591_)))
        (let () (declare (not safe)) (##structure-copy _struct62591_))))
    (define struct->list
      (lambda (_obj62589_)
        (if (object? _obj62589_)
            (let () (declare (not safe)) (##vector->list _obj62589_))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj62589_)))))
    (define class->list
      (lambda (_obj62576_)
        (if (object? _obj62576_)
            (let ((_klass62578_ (object-type _obj62576_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass62578_ 'gerbil#class::t))
                  (let ((_slot-vector62580_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass62578_
                            '7
                            class::t
                            '#f))))
                    (let _loop62582_ ((_index62584_
                                       (let ((__tmp63785
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector62580_))))
                                         (declare (not safe))
                                         (##fx- __tmp63785 '1)))
                                      (_plist62585_ '()))
                      (if (let () (declare (not safe)) (##fx< _index62584_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass62578_ _plist62585_))
                          (let ((_slot62587_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector62580_
                                    _index62584_))))
                            (let ((__tmp63784
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index62584_ '1)))
                                  (__tmp63780
                                   (let ((__tmp63783
                                          (symbol->keyword _slot62587_))
                                         (__tmp63781
                                          (let ((__tmp63782
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj62576_
                                                    _index62584_))))
                                            (declare (not safe))
                                            (cons __tmp63782 _plist62585_))))
                                     (declare (not safe))
                                     (cons __tmp63783 __tmp63781))))
                              (declare (not safe))
                              (_loop62582_ __tmp63784 __tmp63780))))))
                  (let ()
                    (declare (not safe))
                    (error '"not a class type"
                           'object:
                           _obj62576_
                           'class:
                           _klass62578_))))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj62576_)))))
    (define call-method
      (lambda (_obj62567_ _id62568_ . _args62569_)
        (let ((_$e62571_
               (let ()
                 (declare (not safe))
                 (method-ref _obj62567_ _id62568_))))
          (if _$e62571_
              ((lambda (_method62574_)
                 (apply _method62574_ _obj62567_ _args62569_))
               _$e62571_)
              (let ()
                (declare (not safe))
                (error '"cannot find method"
                       'object:
                       _obj62567_
                       'method:
                       _id62568_))))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define method-ref
      (lambda (_obj62564_ _id62565_)
        (if (object? _obj62564_)
            (let ((__tmp63786 (object-type _obj62564_)))
              (declare (not safe))
              (find-method __tmp63786 _obj62564_ _id62565_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj62558_ _id62559_)
        (let ((_$e62561_
               (let ()
                 (declare (not safe))
                 (method-ref _obj62558_ _id62559_))))
          (if _$e62561_
              _$e62561_
              (let ()
                (declare (not safe))
                (error '"missing method"
                       'object:
                       _obj62558_
                       'method:
                       _id62559_))))))
    (define bound-method-ref
      (lambda (_obj62548_ _id62549_)
        (let ((_$e62551_
               (let ()
                 (declare (not safe))
                 (method-ref _obj62548_ _id62549_))))
          (if _$e62551_
              ((lambda (_method62554_)
                 (lambda _args62556_
                   (apply _method62554_ _obj62548_ _args62556_)))
               _$e62551_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj62541_ _id62542_)
        (let ((_method62544_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj62541_ _id62542_))))
          (lambda _args62546_ (apply _method62544_ _obj62541_ _args62546_)))))
    (define find-method
      (lambda (_klass62537_ _obj62538_ _id62539_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass62537_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass62537_ _obj62538_ _id62539_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass62537_ _obj62538_ _id62539_)))))
    (define __find-method
      (lambda (_klass62530_ _obj62531_ _id62532_)
        (let ((_$e62534_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass62530_ _obj62531_ _id62532_))))
          (if _$e62534_
              _$e62534_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass62530_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass62530_ _obj62531_ _id62532_)))))))
    (define class-find-method
      (lambda (_klass62526_ _obj62527_ _id62528_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass62526_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass62526_ _obj62527_ _id62528_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins62518_ _obj62519_ _id62520_)
        (let ((__tmp63787
               (lambda (_g6252162523_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6252162523_ _obj62519_ _id62520_)))))
          (declare (not safe))
          (ormap1 __tmp63787 _mixins62518_))))
    (define builtin-find-method
      (lambda (_klass62511_ _obj62512_ _id62513_)
        (if (let () (declare (not safe)) (##type? _klass62511_))
            (let ((_$e62515_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass62511_ _obj62512_ _id62513_))))
              (if _$e62515_
                  _$e62515_
                  (let ((__tmp63788
                         (let ()
                           (declare (not safe))
                           (##type-super _klass62511_))))
                    (declare (not safe))
                    (builtin-find-method __tmp63788 _obj62512_ _id62513_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass62488_ _obj62489_ _id62490_)
        (letrec ((_metaclass-resolve-method62492_
                  (lambda ()
                    (let ((__method63674
                           (let ()
                             (declare (not safe))
                             (method-ref _klass62488_ 'direct-method-ref))))
                      (if __method63674
                          (__method63674 _klass62488_ _obj62489_ _id62490_)
                          (let ()
                            (declare (not safe))
                            (error '"Missing method"
                                   _klass62488_
                                   'direct-method-ref))))))
                 (_metaclass-resolve-method!62493_
                  (lambda ()
                    (let ((_method62508_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method62492_))))
                      (let ((__tmp63790
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass62488_
                                '11
                                class::t
                                '#f)))
                            (__tmp63789 (if _method62508_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp63790 _id62490_ __tmp63789))
                      _method62508_))))
          (let ((_$e62495_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass62488_ '11 class::t '#f))))
            (if _$e62495_
                ((lambda (_ht62498_)
                   (let ((_method62500_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht62498_ _id62490_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method62500_))
                         _method62500_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass62488_))
                             (let ((_$e62502_ _method62500_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e62502_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method62492_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e62502_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!62493_)))))
                             '#f))))
                 _$e62495_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass62488_))
                    (let ((_tab62505_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass62488_
                         _tab62505_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!62493_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass62484_ _obj62485_ _id62486_)
        (let ((__tmp63791 (##structure-ref _klass62484_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp63791 _obj62485_ _id62486_))))
    (define builtin-method-ref
      (lambda (_klass62475_ _obj62476_ _id62477_)
        (let ((_$e62479_
               (let ((__tmp63792
                      (let () (declare (not safe)) (##type-id _klass62475_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp63792 '#f))))
          (if _$e62479_
              ((lambda (_mtab62482_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab62482_ _id62477_ '#f)))
               _$e62479_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass62441_ _id62442_ _proc62443_ _rebind?62444_)
        (letrec ((_bind!62446_
                  (lambda (_ht62459_)
                    (if (and (let () (declare (not safe)) (not _rebind?62444_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht62459_ _id62442_ '#f)))
                        (let ()
                          (declare (not safe))
                          (error '"method already bound"
                                 'class:
                                 _klass62441_
                                 'method:
                                 _id62442_))
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht62459_
                           _id62442_
                           _proc62443_))))))
          (if (let () (declare (not safe)) (procedure? _proc62443_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad method; expected procedure" _proc62443_)))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62441_ 'gerbil#class::t))
              (let ((_ht62448_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass62441_
                        '11
                        class::t
                        '#f))))
                (if _ht62448_
                    (let () (declare (not safe)) (_bind!62446_ _ht62448_))
                    (let ((_ht62450_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass62441_
                         _ht62450_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!62446_ _ht62450_)))))
              (if (let () (declare (not safe)) (##type? _klass62441_))
                  (let ((_ht62457_
                         (let ((_$e62452_
                                (let ((__tmp63793
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass62441_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp63793
                                   '#f))))
                           (if _$e62452_
                               _$e62452_
                               (let ((_ht62455_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table__% '#f '0))))
                                 (let ((__tmp63794
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass62441_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp63794
                                    _ht62455_))
                                 _ht62455_)))))
                    (declare (not safe))
                    (_bind!62446_ _ht62457_))
                  (let ()
                    (declare (not safe))
                    (error '"bad class; expected class or builtin type"
                           _klass62441_)))))))
    (define bind-method!__0
      (lambda (_klass62464_ _id62465_ _proc62466_)
        (let ((_rebind?62468_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass62464_
           _id62465_
           _proc62466_
           _rebind?62468_))))
    (define bind-method!
      (lambda _g63796_
        (let ((_g63795_ (let () (declare (not safe)) (##length _g63796_))))
          (cond ((let () (declare (not safe)) (##fx= _g63795_ 3))
                 (apply (lambda (_klass62464_ _id62465_ _proc62466_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass62464_
                             _id62465_
                             _proc62466_)))
                        _g63796_))
                ((let () (declare (not safe)) (##fx= _g63795_ 4))
                 (apply (lambda (_klass62470_
                                 _id62471_
                                 _proc62472_
                                 _rebind?62473_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass62470_
                             _id62471_
                             _proc62472_
                             _rebind?62473_)))
                        _g63796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g63796_))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-eq-table__% '#f '0)))
    (define bind-specializer!
      (lambda (_proc62437_ _specializer62438_)
        (let ()
          (declare (not safe))
          (eq-table-set!
           __method-specializers
           _proc62437_
           _specializer62438_))))
    (define seal-class!
      (lambda (_klass62404_)
        (letrec ((_collect-methods!62406_
                  (lambda (_mtab62422_)
                    (letrec ((_merge!62424_
                              (lambda (_tab62432_)
                                (let ((__tmp63797
                                       (lambda (_id62434_ _proc62435_)
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-set!
                                            _mtab62422_
                                            _id62434_
                                            _proc62435_)))))
                                  (declare (not safe))
                                  (raw-table-for-each _tab62432_ __tmp63797))))
                             (_collect-direct-methods!62425_
                              (lambda (_klass62427_)
                                (let ((_$e62429_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _klass62427_
                                          '11
                                          class::t
                                          '#f))))
                                  (if _$e62429_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!62424_ _$e62429_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!62425_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass62404_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62404_ 'gerbil#class::t))
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass62404_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (class-type-final? _klass62404_))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (error '"cannot seal non-final class" _klass62404_)))
                    (if (let ()
                          (declare (not safe))
                          (class-type-metaclass? _klass62404_))
                        (let ((__method63675
                               (let ()
                                 (declare (not safe))
                                 (method-ref _klass62404_ 'seal-class!))))
                          (if __method63675
                              (__method63675 _klass62404_)
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       _klass62404_
                                       'seal-class!))))
                        (if (let ((__tmp63804
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _klass62404_
                                      '6
                                      class::t
                                      '#f))))
                              (declare (not safe))
                              (find class-type-metaclass? __tmp63804))
                            (let ()
                              (declare (not safe))
                              (error '"cannot seal class that extends metaclass without a metaclass"
                                     _klass62404_))
                            (let ((_vtab62408_
                                   (let ()
                                     (declare (not safe))
                                     (make-symbolic-table__% '#f '0)))
                                  (_mtab62409_
                                   (let ()
                                     (declare (not safe))
                                     (make-symbolic-table__% '#f '0))))
                              (let ()
                                (declare (not safe))
                                (_collect-methods!62406_ _mtab62409_))
                              (let ((__tmp63798
                                     (lambda (_id62411_ _proc62412_)
                                       (let ((_$e62414_
                                              (let ()
                                                (declare (not safe))
                                                (eq-table-ref
                                                 __method-specializers
                                                 _proc62412_
                                                 '#f))))
                                         (if _$e62414_
                                             ((lambda (_specializer62417_)
                                                (let ((_proc62419_
                                                       (_specializer62417_
                                                        _klass62404_))
                                                      (_gid62420_
                                                       (let ((__tmp63799
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##type-id _klass62404_))))
                 (declare (not safe))
                 (make-symbol__1 __tmp63799 '"::[" _id62411_ '"]"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (eval (let ((__tmp63800
                                                               (let ((__tmp63801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp63802
                                     (let ((__tmp63803
                                            (let ()
                                              (declare (not safe))
                                              (cons _proc62419_ '()))))
                                       (declare (not safe))
                                       (cons 'quote __tmp63803))))
                                (declare (not safe))
                                (cons __tmp63802 '()))))
                         (declare (not safe))
                         (cons _gid62420_ __tmp63801))))
                  (declare (not safe))
                  (cons 'def __tmp63800)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (symbolic-table-set!
                                                     _vtab62408_
                                                     _id62411_
                                                     _proc62419_))))
                                              _$e62414_)
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-set!
                                                _vtab62408_
                                                _id62411_
                                                _proc62412_)))))))
                                (declare (not safe))
                                (raw-table-for-each _mtab62409_ __tmp63798))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _klass62404_
                                 _vtab62408_
                                 '11
                                 class::t
                                 '#f)))))
                    (let ()
                      (declare (not safe))
                      (&class-type-seal! _klass62404_))))
              '#!void))))
    (define next-method
      (lambda (_subklass62353_ _obj62354_ _id62355_)
        (let ((_klass62357_ (object-type _obj62354_))
              (_type-id62358_
               (let () (declare (not safe)) (##type-id _subklass62353_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62357_ 'gerbil#class::t))
              (let _lp62360_ ((_rest62362_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass62357_))))
                (let* ((_rest6236362371_ _rest62362_)
                       (_else6236562379_ (lambda () '#f))
                       (_K6236762385_
                        (lambda (_rest62382_ _klass62383_)
                          (if (let ((__tmp63807
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass62383_))))
                                (declare (not safe))
                                (eq? _type-id62358_ __tmp63807))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest62382_
                                 _obj62354_
                                 _id62355_))
                              (let ()
                                (declare (not safe))
                                (_lp62360_ _rest62382_))))))
                  (if (let () (declare (not safe)) (##pair? _rest6236362371_))
                      (let ((_hd6236862388_
                             (let ()
                               (declare (not safe))
                               (##car _rest6236362371_)))
                            (_tl6236962390_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest6236362371_))))
                        (let* ((_klass62393_ _hd6236862388_)
                               (_rest62395_ _tl6236962390_))
                          (declare (not safe))
                          (_K6236762385_ _rest62395_ _klass62393_)))
                      (let () (declare (not safe)) (_else6236562379_)))))
              (if (let () (declare (not safe)) (##type? _klass62357_))
                  (let _lp62397_ ((_klass62399_ _klass62357_))
                    (if (let ((__tmp63806
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass62399_))))
                          (declare (not safe))
                          (eq? _type-id62358_ __tmp63806))
                        (let ((__tmp63805
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62399_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp63805
                           _obj62354_
                           _id62355_))
                        (let ((_$e62401_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62399_))))
                          (if _$e62401_
                              (let ()
                                (declare (not safe))
                                (_lp62397_ _$e62401_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass62343_ _obj62344_ _id62345_ . _args62346_)
        (let ((_$e62348_
               (let ()
                 (declare (not safe))
                 (next-method _subklass62343_ _obj62344_ _id62345_))))
          (if _$e62348_
              ((lambda (_methodf62351_)
                 (apply _methodf62351_ _obj62344_ _args62346_))
               _$e62348_)
              (let ()
                (declare (not safe))
                (error '"cannot find next method"
                       'object:
                       _obj62344_
                       'method:
                       _id62345_))))))
    (define write-style (lambda (_we62341_) (macro-writeenv-style _we62341_)))
    (define write-object
      (lambda (_we62333_ _obj62334_)
        (let ((_$e62336_
               (let () (declare (not safe)) (method-ref _obj62334_ ':wr))))
          (if _$e62336_
              ((lambda (_method62339_) (_method62339_ _obj62334_ _we62333_))
               _$e62336_)
              (let ()
                (declare (not safe))
                (##default-wr _we62333_ _obj62334_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
