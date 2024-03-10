(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1710064745)
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
      (let* ((_slots61403_
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
             (_slot-vector61405_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots61403_))))
             (_slot-table61412_
              (let ((_slot-table61407_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot61409_ _field61410_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table61407_
                      _slot61409_
                      _field61410_))
                   (let ((__tmp61553 (symbol->keyword _slot61409_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table61407_
                      __tmp61553
                      _field61410_)))
                 _slots61403_
                 (iota (length _slots61403_) '1))
                _slot-table61407_))
             (_flags61414_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields61420_
              (list->vector
               (apply append
                      (map (lambda (_g6141561417_) (list _g6141561417_ '5 '#f))
                           (drop _slots61403_ '5)))))
             (_properties61422_
              (let ((__tmp61556
                     (let ((__tmp61557
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots61403_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp61557)))
                    (__tmp61554
                     (let ((__tmp61555
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp61555 '()))))
                (declare (not safe))
                (cons __tmp61556 __tmp61554)))
             (_t61424_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags61414_
                 ##type-type
                 _fields61420_
                 '()
                 _slot-vector61405_
                 _slot-table61412_
                 _properties61422_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t61424_ _t61424_))
        _t61424_))
    (define class-type?
      (lambda (_obj61401_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj61401_ class::t.id))))
    (define class-type=?
      (lambda (_x61398_ _y61399_)
        (let ((__tmp61559 (##structure-ref _x61398_ '1 class::t '#f))
              (__tmp61558 (##structure-ref _y61399_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp61559 __tmp61558))))
    (define type-opaque?
      (lambda (_type61396_)
        (let ((__tmp61560
               (let ((__tmp61561
                      (let ()
                        (declare (not safe))
                        (##type-flags _type61396_))))
                 (declare (not safe))
                 (##fxand __tmp61561 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp61560 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type61394_)
        (let ((__tmp61562
               (let ((__tmp61563
                      (let ()
                        (declare (not safe))
                        (##type-flags _type61394_))))
                 (declare (not safe))
                 (##fxand __tmp61563 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp61562 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type61392_)
        (let ((__tmp61564
               (let ((__tmp61565
                      (let ()
                        (declare (not safe))
                        (##type-flags _type61392_))))
                 (declare (not safe))
                 (##fxand __tmp61565 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp61564 '0))))
    (define class-type-struct?
      (lambda (_klass61390_)
        (let ((__tmp61566
               (let ((__tmp61567
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass61390_))))
                 (declare (not safe))
                 (##fxand __tmp61567 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp61566 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass61388_)
        (let ((__tmp61568
               (let ((__tmp61569
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass61388_))))
                 (declare (not safe))
                 (##fxand __tmp61569 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp61568 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass61386_)
        (let ((__tmp61570
               (let ((__tmp61571
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass61386_))))
                 (declare (not safe))
                 (##fxand __tmp61571 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp61570 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties61352_)
        (map (lambda (_e6135361355_)
               (let* ((_g6135761364_ _e6135361355_)
                      (_E6135961368_
                       (lambda () (error '"No clause matching" _g6135761364_)))
                      (_K6136061374_
                       (lambda (_val61371_ _key61372_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key61372_ 'direct-supers:))
                             (let ((__tmp61572 (map class-type-id _val61371_)))
                               (declare (not safe))
                               (cons _key61372_ __tmp61572))
                             (let ()
                               (declare (not safe))
                               (cons _key61372_ _val61371_))))))
                 (if (let () (declare (not safe)) (##pair? _g6135761364_))
                     (let ((_hd6136161377_
                            (let ()
                              (declare (not safe))
                              (##car _g6135761364_)))
                           (_tl6136261379_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6135761364_))))
                       (let* ((_key61382_ _hd6136161377_)
                              (_val61384_ _tl6136261379_))
                         (declare (not safe))
                         (_K6136061374_ _val61384_ _key61382_)))
                     (let () (declare (not safe)) (_E6135961368_)))))
             _properties61352_)))
    (define make-class-type-descriptor
      (lambda (_type-id61251_
               _type-name61252_
               _type-super61253_
               _precedence-list61254_
               _slot-vector61255_
               _properties61256_
               _constructor61257_
               _slot-table61258_
               _methods61259_)
        (letrec ((_make-props!61261_
                  (lambda (_key61321_)
                    (letrec* ((_ht61323_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!61324_
                               (lambda (_ht61345_ _slots61346_)
                                 (for-each
                                  (lambda (_g6134761349_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht61345_
                                       _g6134761349_
                                       '#t)))
                                  _slots61346_)))
                              (_put-alist!61325_
                               (lambda (_ht61334_ _key61335_ _alist61336_)
                                 (let ((_$e61338_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key61335_
                                           _alist61336_))))
                                   (if _$e61338_
                                       ((lambda (_g6134061342_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!61324_
                                             _ht61334_
                                             _g6134061342_)))
                                        _$e61338_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!61325_
                         _ht61323_
                         _key61321_
                         _properties61256_))
                      (for-each
                       (lambda (_mixin61327_)
                         (let ((_alist61329_
                                (##structure-ref
                                 _mixin61327_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist61329_))
                                   (let ((__tmp61573
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key61321_
                                             _alist61329_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp61573)))
                               (let ((__tmp61574
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin61327_))))
                                 (declare (not safe))
                                 (_put-slots!61324_ _ht61323_ __tmp61574))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!61325_
                                  _ht61323_
                                  _key61321_
                                  _alist61329_)))))
                       _precedence-list61254_)
                      _ht61323_))))
          (let* ((_transparent?61263_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties61256_)))
                 (_all-slots-printable?61268_
                  (let ((_$e61265_ _transparent?61263_))
                    (if _$e61265_
                        _$e61265_
                        (let ((__tmp61575
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties61256_))))
                          (declare (not safe))
                          (eq? '#t __tmp61575)))))
                 (_printable61270_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?61268_))
                      (let ()
                        (declare (not safe))
                        (_make-props!61261_ 'print:))
                      '#f))
                 (_all-slots-equalable?61275_
                  (let ((_$e61272_ _transparent?61263_))
                    (if _$e61272_
                        _$e61272_
                        (let ((__tmp61576
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties61256_))))
                          (declare (not safe))
                          (eq? '#t __tmp61576)))))
                 (_equalable61277_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?61275_))
                      (let ()
                        (declare (not safe))
                        (_make-props!61261_ 'equal:))
                      '#f))
                 (_first-new-field61279_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super61253_
                         'gerbil#class::t))
                      (let ((__tmp61577
                             (##structure-ref
                              _type-super61253_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp61577))
                      '1))
                 (_field-info-length61281_
                  (let ((__tmp61578
                         (let ((__tmp61579
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector61255_))))
                           (declare (not safe))
                           (##fx- __tmp61579 _first-new-field61279_))))
                    (declare (not safe))
                    (##fx* '3 __tmp61578)))
                 (_field-info61283_ (make-vector _field-info-length61281_ '#f))
                 (_struct?61285_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties61256_)))
                 (_final?61287_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties61256_)))
                 (_metaclass61295_
                  (let ((_metaclass6128861290_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties61256_))))
                    (if _metaclass6128861290_
                        (let ((_metaclass61293_ _metaclass6128861290_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass61293_
                                 'gerbil#class::t))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _type-id61251_
                                     'metaclass:
                                     _metaclass61293_))
                          _metaclass61293_)
                        '#f)))
                 (_opaque?61300_
                  (let ((_$e61297_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?61275_))))
                    (if _$e61297_
                        _$e61297_
                        (if _type-super61253_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super61253_))
                            '#f))))
                 (_type-flags61302_
                  (let ((__tmp61583 (if _final?61287_ '0 type-flag-extensible))
                        (__tmp61582 (if _opaque?61300_ type-flag-opaque '0))
                        (__tmp61581
                         (if _struct?61285_ class-type-flag-struct '0))
                        (__tmp61580
                         (if _metaclass61295_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp61583
                             __tmp61582
                             __tmp61581
                             __tmp61580))))
            (let _loop61305_ ((_i61307_ _first-new-field61279_) (_j61308_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j61308_ _field-info-length61281_))
                  (let* ((_slot61310_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector61255_ _i61307_)))
                         (_flags61318_
                          (if _transparent?61263_
                              '0
                              (let ((__tmp61585
                                     (if (or _all-slots-printable?61268_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable61270_
                                                _slot61310_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp61584
                                     (if (or _all-slots-equalable?61275_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable61277_
                                                _slot61310_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp61585 __tmp61584)))))
                    (vector-set! _field-info61283_ _j61308_ _slot61310_)
                    (vector-set!
                     _field-info61283_
                     (let () (declare (not safe)) (##fx+ _j61308_ '1))
                     _flags61318_)
                    (let ((__tmp61587
                           (let () (declare (not safe)) (##fx+ _i61307_ '1)))
                          (__tmp61586
                           (let () (declare (not safe)) (##fx+ _j61308_ '3))))
                      (declare (not safe))
                      (_loop61305_ __tmp61587 __tmp61586)))
                  '#!void))
            (if _metaclass61295_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass61295_
                   _type-id61251_
                   _type-name61252_
                   _type-flags61302_
                   _type-super61253_
                   _field-info61283_
                   _precedence-list61254_
                   _slot-vector61255_
                   _slot-table61258_
                   _properties61256_
                   _constructor61257_
                   _methods61259_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id61251_
                   _type-name61252_
                   _type-flags61302_
                   _type-super61253_
                   _field-info61283_
                   _precedence-list61254_
                   _slot-vector61255_
                   _slot-table61258_
                   _properties61256_
                   _constructor61257_
                   _methods61259_)))))))
    (define class-type-id
      (lambda (_klass61249_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass61249_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass61247_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass61247_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass61244_ _val61245_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass61244_ _val61245_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass61239_ _val61241_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass61239_
           _val61241_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass61237_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass61237_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass61235_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass61235_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass61232_ _val61233_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass61232_ _val61233_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass61227_ _val61229_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass61227_
           _val61229_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass61225_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass61225_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass61223_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass61223_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass61220_ _val61221_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass61220_ _val61221_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass61215_ _val61217_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass61215_
           _val61217_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass61213_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass61213_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass61211_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass61211_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass61208_ _val61209_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass61208_ _val61209_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass61203_ _val61205_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass61203_
           _val61205_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass61201_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass61201_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass61199_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass61199_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass61196_ _val61197_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass61196_ _val61197_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass61191_ _val61193_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass61191_
           _val61193_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass61189_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass61189_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass61187_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass61187_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass61184_ _val61185_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass61184_
           _val61185_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass61179_ _val61181_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass61179_
           _val61181_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass61177_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass61177_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass61175_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass61175_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass61172_ _val61173_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass61172_
           _val61173_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass61167_ _val61169_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass61167_
           _val61169_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass61165_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass61165_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass61163_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass61163_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass61160_ _val61161_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass61160_ _val61161_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass61155_ _val61157_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass61155_
           _val61157_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass61153_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass61153_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass61151_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass61151_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass61148_ _val61149_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass61148_ _val61149_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass61143_ _val61145_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass61143_
           _val61145_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass61141_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass61141_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass61139_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass61139_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass61136_ _val61137_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass61136_
           _val61137_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass61131_ _val61133_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass61131_
           _val61133_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass61129_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass61129_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass61127_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass61127_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass61124_ _val61125_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass61124_ _val61125_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass61119_ _val61121_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass61119_
           _val61121_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass61117_)
        (cdr (vector->list (##structure-ref _klass61117_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass61115_)
        (let ((__tmp61588
               (let ((__tmp61589
                      (##structure-ref _klass61115_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp61589))))
          (declare (not safe))
          (##fx- __tmp61588 '1))))
    (define class-type-seal!
      (lambda (_klass61113_)
        (let ((__tmp61590
               (let ((__tmp61591
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass61113_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp61591))))
          (declare (not safe))
          (##structure-set!
           _klass61113_
           __tmp61590
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass61111_)
        (let ((__tmp61592
               (let ((__tmp61593
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass61111_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp61593))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass61111_
           __tmp61592
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct61102_ _maybe-super-struct61103_)
        (let ((_maybe-super-struct-id61105_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct61103_))))
          (let _lp61107_ ((_super-struct61109_ _maybe-sub-struct61102_))
            (if (let () (declare (not safe)) (not _super-struct61109_))
                '#f
                (if (let ((__tmp61594
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct61109_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id61105_ __tmp61594))
                    '#t
                    (let ((__tmp61595
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct61109_))))
                      (declare (not safe))
                      (_lp61107_ __tmp61595))))))))
    (define base-struct/1
      (lambda (_klass61100_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass61100_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass61100_))
                _klass61100_
                (let () (declare (not safe)) (##type-super _klass61100_)))
            (if (let () (declare (not safe)) (not _klass61100_))
                '#f
                (error '"not a class or false" _klass61100_)))))
    (define base-struct/2
      (lambda (_klass161088_ _klass261089_)
        (let ((_s161091_
               (let () (declare (not safe)) (base-struct/1 _klass161088_)))
              (_s261092_
               (let () (declare (not safe)) (base-struct/1 _klass261089_))))
          (if (or (let () (declare (not safe)) (not _s161091_))
                  (and _s261092_
                       (let ()
                         (declare (not safe))
                         (substruct? _s161091_ _s261092_))))
              _s261092_
              (if (or (let () (declare (not safe)) (not _s261092_))
                      (and _s161091_
                           (let ()
                             (declare (not safe))
                             (substruct? _s261092_ _s161091_))))
                  _s161091_
                  (error '"bad mixin: incompatible struct bases"
                         _klass161088_
                         _klass261089_
                         _s161091_
                         _s261092_))))))
    (define base-struct/list
      (lambda (_all-supers60972_)
        (let* ((_all-supers6097360998_ _all-supers60972_)
               (_E6097861002_
                (lambda ()
                  (error '"No clause matching" _all-supers6097360998_))))
          (let ((_K6099661085_ (lambda () '#f))
                (_K6099361071_
                 (lambda (_x61069_)
                   (let () (declare (not safe)) (base-struct/1 _x61069_))))
                (_K6098861048_
                 (lambda (_y61045_ _x61046_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x61046_ _y61045_))))
                (_K6097961009_
                 (lambda (_y61006_ _x61007_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x61007_ _y61006_)))))
            (let* ((___match6154761548_
                    (lambda (_hd6098061012_ _tl6098161014_)
                      (let ((_x61017_ _hd6098061012_))
                        (letrec ((_splice-rest6098361019_
                                  (lambda (_rest6098761026_ _y61028_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6098761026_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6097961009_ _y61028_ _x61017_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6097861002_)))))
                                 (_splice-try6098561021_
                                  (lambda (_hd6098661030_
                                           _rest6098761032_
                                           _y6098261033_)
                                    (let ((_y61036_ _hd6098661030_))
                                      (let ((__tmp61597
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6098761032_)))
                                            (__tmp61596
                                             (let ()
                                               (declare (not safe))
                                               (cons _y61036_ _y6098261033_))))
                                        (declare (not safe))
                                        (_splice-loop6098461023_
                                         __tmp61597
                                         __tmp61596)))))
                                 (_splice-loop6098461023_
                                  (lambda (_rest6098761038_ _y6098261039_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6098761038_))
                                        (let ((__tmp61598
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6098761038_))))
                                          (declare (not safe))
                                          (_splice-try6098561021_
                                           __tmp61598
                                           _rest6098761038_
                                           _y6098261039_))
                                        (let ((__tmp61599
                                               (reverse _y6098261039_)))
                                          (declare (not safe))
                                          (_splice-rest6098361019_
                                           _rest6098761038_
                                           __tmp61599))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6098461023_ _tl6098161014_ '()))))))
                   (_try-match6097561081_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6097360998_))
                          (let ((_tl6099561076_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6097360998_)))
                                (_hd6099461074_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6097360998_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6099561076_))
                                (let ((_x61079_ _hd6099461074_))
                                  (declare (not safe))
                                  (base-struct/1 _x61079_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6099561076_))
                                    (let ((_tl6099261060_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6099561076_)))
                                          (_hd6099161058_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6099561076_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6099261060_))
                                          (let ((_x61056_ _hd6099461074_)
                                                (_y61063_ _hd6099161058_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6098861048_
                                               _y61063_
                                               _x61056_)))
                                          (___match6154761548_
                                           _hd6099461074_
                                           _tl6099561076_)))
                                    (___match6154761548_
                                     _hd6099461074_
                                     _tl6099561076_))))
                          (let () (declare (not safe)) (_E6097861002_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6097360998_))
                  (let () (declare (not safe)) (_K6099661085_))
                  (let () (declare (not safe)) (_try-match6097561081_))))))))
    (define base-struct
      (lambda _all-supers60970_
        (let () (declare (not safe)) (base-struct/list _all-supers60970_))))
    (define find-super-constructor
      (lambda (_super60922_)
        (let _lp60924_ ((_rest60926_ _super60922_) (_constructor60927_ '#f))
          (let* ((_rest6092860936_ _rest60926_)
                 (_else6093060944_ (lambda () _constructor60927_))
                 (_K6093260958_
                  (lambda (_rest60947_ _hd60948_)
                    (let ((_$e60950_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd60948_
                              '10
                              class::t
                              '#f))))
                      (if _$e60950_
                          ((lambda (_xconstructor60953_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor60927_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor60927_
                                            _xconstructor60953_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp60924_ _rest60947_ _xconstructor60953_))
                                 (error '"conflicting implicit constructors"
                                        _constructor60927_
                                        _xconstructor60953_)))
                           _$e60950_)
                          (let ()
                            (declare (not safe))
                            (_lp60924_ _rest60947_ _constructor60927_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6092860936_))
                (let ((_hd6093360961_
                       (let () (declare (not safe)) (##car _rest6092860936_)))
                      (_tl6093460963_
                       (let () (declare (not safe)) (##cdr _rest6092860936_))))
                  (let* ((_hd60966_ _hd6093360961_)
                         (_rest60968_ _tl6093460963_))
                    (declare (not safe))
                    (_K6093260958_ _rest60968_ _hd60966_)))
                (let () (declare (not safe)) (_else6093060944_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list60898_ _direct-slots60899_)
        (let* ((_next-slot60901_ '1)
               (_slot-table60903_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots60905_ '(__class))
               (_process-slot60909_
                (lambda (_slot60907_)
                  (if (let () (declare (not safe)) (symbol? _slot60907_))
                      '#!void
                      (error '"invalid slot name" _slot60907_))
                  (if (let ((__tmp61600
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table60903_
                                _slot60907_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp61600 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table60903_
                           _slot60907_
                           _next-slot60901_))
                        (let ((__tmp61601 (symbol->keyword _slot60907_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table60903_
                           __tmp61601
                           _next-slot60901_))
                        (set! _r-slots60905_
                              (let ()
                                (declare (not safe))
                                (cons _slot60907_ _r-slots60905_)))
                        (set! _next-slot60901_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot60901_ '1))))
                      '#!void)))
               (_process-slots60915_
                (lambda (_g6091060912_)
                  (for-each _process-slot60909_ _g6091060912_))))
          (for-each
           (lambda (_mixin60918_)
             (let ((__tmp61602
                    (let ((__tmp61603
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin60918_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp61603 '()))))
               (declare (not safe))
               (_process-slots60915_ __tmp61602)))
           (reverse _class-precedence-list60898_))
          (let ()
            (declare (not safe))
            (_process-slots60915_ _direct-slots60899_))
          (let ((_slot-vector60920_ (list->vector (reverse _r-slots60905_))))
            (values _slot-vector60920_ _slot-table60903_)))))
    (define make-class-type
      (lambda (_id60860_
               _name60861_
               _direct-supers60862_
               _direct-slots60863_
               _properties60864_
               _constructor60865_)
        (let ((_$e60870_
               (let ((__tmp61604
                      (lambda (_$obj60867_)
                        (let ((__tmp61605
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj60867_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp61605)))))
                 (declare (not safe))
                 (find __tmp61604 _direct-supers60862_))))
          (if _$e60870_
              ((lambda (_g6087260874_)
                 (error '"Illegal super class; not a class descriptor"
                        _g6087260874_))
               _$e60870_)
              (let ((_$e60877_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers60862_))))
                (if _$e60877_
                    ((lambda (_g6087960881_)
                       (error '"Cannot extend final class" _g6087960881_))
                     _$e60877_)
                    '#!void))))
        (let ((_g61606_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers60862_))))
          (begin
            (let ((_g61607_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g61606_) (##vector-length _g61606_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g61607_ 2)))
                  (error "Context expects 2 values" _g61607_)))
            (let ((_precedence-list60884_
                   (let () (declare (not safe)) (##vector-ref _g61606_ 0)))
                  (_struct-super60885_
                   (let () (declare (not safe)) (##vector-ref _g61606_ 1))))
              (let ((_g61608_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list60884_
                        _direct-slots60863_))))
                (begin
                  (let ((_g61609_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g61608_)
                               (##vector-length _g61608_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g61609_ 2)))
                        (error "Context expects 2 values" _g61609_)))
                  (let ((_slot-vector60887_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g61608_ 0)))
                        (_slot-table60888_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g61608_ 1))))
                    (let* ((_properties60890_
                            (let ((__tmp61612
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots60863_)))
                                  (__tmp61610
                                   (let ((__tmp61611
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers60862_))))
                                     (declare (not safe))
                                     (cons __tmp61611 _properties60864_))))
                              (declare (not safe))
                              (cons __tmp61612 __tmp61610)))
                           (_constructor*60895_
                            (let ((_$e60892_ _constructor60865_))
                              (if _$e60892_
                                  _$e60892_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers60862_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id60860_
                         _name60861_
                         _struct-super60885_
                         _precedence-list60884_
                         _slot-vector60887_
                         _properties60890_
                         _constructor*60895_
                         _slot-table60888_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass60858_)
        (let ((__tmp61613
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass60858_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass60858_ __tmp61613))))
    (define compute-precedence-list
      (lambda (_direct-supers60856_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers60856_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass60840_)
        (let ((_tid60842_
               (let () (declare (not safe)) (##type-id _klass60840_))))
          (if (let () (declare (not safe)) (class-type-final? _klass60840_))
              (lambda (_g6084360845_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6084360845_ _tid60842_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass60840_))
                  (lambda (_g6084760849_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6084760849_ _tid60842_)))
                  (lambda (_g6085160853_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass60840_ _g6085160853_))))))))
    (define if-class-slot-field
      (lambda (_klass60829_
               _slot60830_
               _if-final60831_
               _if-struct60832_
               _if-struct-field60833_
               _if-class-slot60834_)
        (let ((_field60836_
               (let ((__tmp61614
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass60829_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp61614 _slot60830_ '#f))))
          (if (let () (declare (not safe)) (not _field60836_))
              (error '"unknown slot" 'class: _klass60829_ 'slot: _slot60830_)
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass60829_))
                  (_if-final60831_ _klass60829_ _slot60830_ _field60836_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass60829_))
                      (_if-struct60832_ _klass60829_ _slot60830_ _field60836_)
                      (if (let ((_strukt60838_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass60829_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt60838_
                                    'gerbil#class::t))
                                 (let ((__tmp61615
                                        (let ((__tmp61616
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt60838_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp61616))))
                                   (declare (not safe))
                                   (##fx< _field60836_ __tmp61615))))
                          (_if-struct-field60833_
                           _klass60829_
                           _slot60830_
                           _field60836_)
                          (_if-class-slot60834_
                           _klass60829_
                           _slot60830_
                           _field60836_))))))))
    (define make-class-slot-accessor
      (lambda (_klass60826_ _slot60827_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass60826_
           _slot60827_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass60823_ _slot60824_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass60823_
           _slot60824_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass60820_ _slot60821_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass60820_
           _slot60821_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass60817_ _slot60818_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass60817_
           _slot60818_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object60801_ _class60802_ _slot60803_)
        (apply error
               '"not an instance"
               'object:
               _object60801_
               'class:
               _class60802_
               (if _slot60803_
                   (let ((__tmp61617
                          (let ()
                            (declare (not safe))
                            (cons _slot60803_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp61617))
                   '()))))
    (define not-an-instance__0
      (lambda (_object60808_ _class60809_)
        (let ((_slot60811_ '#f))
          (declare (not safe))
          (not-an-instance__% _object60808_ _class60809_ _slot60811_))))
    (define not-an-instance
      (lambda _g61619_
        (let ((_g61618_ (let () (declare (not safe)) (##length _g61619_))))
          (cond ((let () (declare (not safe)) (##fx= _g61618_ 2))
                 (apply (lambda (_object60808_ _class60809_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object60808_ _class60809_)))
                        _g61619_))
                ((let () (declare (not safe)) (##fx= _g61618_ 3))
                 (apply (lambda (_object60813_ _class60814_ _slot60815_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object60813_
                             _class60814_
                             _slot60815_)))
                        _g61619_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g61619_))))))
    (define make-final-slot-accessor
      (lambda (_klass60794_ _slot60795_ _field60796_)
        (lambda (_obj60798_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj60798_
             _field60796_
             _klass60794_
             _slot60795_)))))
    (define make-final-slot-mutator
      (lambda (_klass60787_ _slot60788_ _field60789_)
        (lambda (_obj60791_ _val60792_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj60791_
             _val60792_
             _field60789_
             _klass60787_
             _slot60788_)))))
    (define make-struct-slot-accessor
      (lambda (_klass60781_ _slot60782_ _field60783_)
        (lambda (_obj60785_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj60785_
             _field60783_
             _klass60781_
             _slot60782_)))))
    (define make-struct-slot-mutator
      (lambda (_klass60774_ _slot60775_ _field60776_)
        (lambda (_obj60778_ _val60779_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj60778_
             _val60779_
             _field60776_
             _klass60774_
             _slot60775_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass60768_ _slot60769_ _field60770_)
        (lambda (_obj60772_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj60772_
             _field60770_
             _klass60768_
             _slot60769_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass60761_ _slot60762_ _field60763_)
        (lambda (_obj60765_ _val60766_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj60765_
             _val60766_
             _field60763_
             _klass60761_
             _slot60762_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass60755_ _slot60756_ _field60757_)
        (lambda (_obj60759_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass60755_ _obj60759_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj60759_ _field60757_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj60759_ _klass60755_ _slot60756_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass60748_ _slot60749_ _field60750_)
        (lambda (_obj60752_ _val60753_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass60748_ _obj60752_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj60752_ _field60750_ _val60753_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj60752_ _klass60748_ _slot60749_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass60742_ _slot60743_ _field60744_)
        (lambda (_obj60746_)
          (if (let ((__tmp61620
                     (let () (declare (not safe)) (##type-id _klass60742_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj60746_ __tmp61620))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj60746_ _field60744_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass60742_ _obj60746_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj60746_ _slot60743_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj60746_
                     _klass60742_
                     _slot60743_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass60735_ _slot60736_ _field60737_)
        (lambda (_obj60739_ _val60740_)
          (if (let ((__tmp61621
                     (let () (declare (not safe)) (##type-id _klass60735_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj60739_ __tmp61621))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj60739_ _field60737_ _val60740_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass60735_ _obj60739_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj60739_ _slot60736_ _val60740_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj60739_
                     _klass60735_
                     _slot60736_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass60729_ _slot60730_ _field60731_)
        (lambda (_obj60733_)
          (if (let ((__tmp61622
                     (let () (declare (not safe)) (##type-id _klass60729_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj60733_ __tmp61622))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj60733_ _field60731_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj60733_ _slot60730_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass60722_ _slot60723_ _field60724_)
        (lambda (_obj60726_ _val60727_)
          (if (let ((__tmp61623
                     (let () (declare (not safe)) (##type-id _klass60722_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj60726_ __tmp61623))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj60726_ _field60724_ _val60727_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj60726_ _slot60723_ _val60727_))))))
    (define class-slot-offset
      (lambda (_klass60719_ _slot60720_)
        (let ((__tmp61624
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass60719_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp61624 _slot60720_ '#f))))
    (define class-slot-ref
      (lambda (_klass60713_ _obj60714_ _slot60715_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass60713_ _obj60714_))
            (let ((_off60717_
                   (let ((__tmp61625 (object-type _obj60714_)))
                     (declare (not safe))
                     (class-slot-offset __tmp61625 _slot60715_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj60714_
               _off60717_
               _klass60713_
               _slot60715_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj60714_ _klass60713_)))))
    (define class-slot-set!
      (lambda (_klass60706_ _obj60707_ _slot60708_ _val60709_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass60706_ _obj60707_))
            (let ((_off60711_
                   (let ((__tmp61626 (object-type _obj60707_)))
                     (declare (not safe))
                     (class-slot-offset __tmp61626 _slot60708_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj60707_
               _val60709_
               _off60711_
               _klass60706_
               _slot60708_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj60707_ _klass60706_)))))
    (define unchecked-field-ref
      (lambda (_obj60703_ _off60704_)
        (let ((__tmp61627
               (let () (declare (not safe)) (##structure-type _obj60703_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj60703_ _off60704_ __tmp61627 '#f))))
    (define unchecked-field-set!
      (lambda (_obj60699_ _off60700_ _val60701_)
        (let ((__tmp61628
               (let () (declare (not safe)) (##structure-type _obj60699_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj60699_
           _val60701_
           _off60700_
           __tmp61628
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj60696_ _slot60697_)
        (let ((__tmp61629
               (let ((__tmp61630
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj60696_))))
                 (declare (not safe))
                 (class-slot-offset __tmp61630 _slot60697_))))
          (declare (not safe))
          (unchecked-field-ref _obj60696_ __tmp61629))))
    (define unchecked-slot-set!
      (lambda (_obj60692_ _slot60693_ _val60694_)
        (let ((__tmp61631
               (let ((__tmp61632
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj60692_))))
                 (declare (not safe))
                 (class-slot-offset __tmp61632 _slot60693_))))
          (declare (not safe))
          (unchecked-field-set! _obj60692_ __tmp61631 _val60694_))))
    (define slot-ref__%
      (lambda (_obj60668_ _slot60669_ _E60670_)
        (if (object? _obj60668_)
            (let* ((_klass60672_ (object-type _obj60668_))
                   (_$e60675_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass60672_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass60672_ _slot60669_))
                        '#f)))
              (if _$e60675_
                  ((lambda (_off60678_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj60668_ _off60678_)))
                   _$e60675_)
                  (_E60670_ _obj60668_ _slot60669_)))
            (_E60670_ _obj60668_ _slot60669_))))
    (define slot-ref__0
      (lambda (_obj60683_ _slot60684_)
        (let ((_E60686_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj60683_ _slot60684_ _E60686_))))
    (define slot-ref
      (lambda _g61634_
        (let ((_g61633_ (let () (declare (not safe)) (##length _g61634_))))
          (cond ((let () (declare (not safe)) (##fx= _g61633_ 2))
                 (apply (lambda (_obj60683_ _slot60684_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj60683_ _slot60684_)))
                        _g61634_))
                ((let () (declare (not safe)) (##fx= _g61633_ 3))
                 (apply (lambda (_obj60688_ _slot60689_ _E60690_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj60688_ _slot60689_ _E60690_)))
                        _g61634_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g61634_))))))
    (define slot-set!__%
      (lambda (_obj60640_ _slot60641_ _val60642_ _E60643_)
        (if (object? _obj60640_)
            (let* ((_klass60645_ (object-type _obj60640_))
                   (_$e60648_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass60645_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass60645_ _slot60641_))
                        '#f)))
              (if _$e60648_
                  ((lambda (_off60651_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj60640_
                        _off60651_
                        _val60642_)))
                   _$e60648_)
                  (_E60643_ _obj60640_ _slot60641_)))
            (_E60643_ _obj60640_ _slot60641_))))
    (define slot-set!__0
      (lambda (_obj60656_ _slot60657_ _val60658_)
        (let ((_E60660_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj60656_ _slot60657_ _val60658_ _E60660_))))
    (define slot-set!
      (lambda _g61636_
        (let ((_g61635_ (let () (declare (not safe)) (##length _g61636_))))
          (cond ((let () (declare (not safe)) (##fx= _g61635_ 3))
                 (apply (lambda (_obj60656_ _slot60657_ _val60658_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj60656_ _slot60657_ _val60658_)))
                        _g61636_))
                ((let () (declare (not safe)) (##fx= _g61635_ 4))
                 (apply (lambda (_obj60662_ _slot60663_ _val60664_ _E60665_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj60662_
                             _slot60663_
                             _val60664_
                             _E60665_)))
                        _g61636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g61636_))))))
    (define __slot-error
      (lambda (_obj60636_ _slot60637_)
        (error '"Cannot find slot" 'object: _obj60636_ 'slot: _slot60637_)))
    (define subclass?
      (lambda (_maybe-sub-class60626_ _maybe-super-class60627_)
        (let* ((_maybe-super-class-id60629_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class60627_)))
               (_$e60631_
                (let ((__tmp61637
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class60626_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id60629_ __tmp61637))))
          (if _$e60631_
              _$e60631_
              (let ((__tmp61639
                     (lambda (_super-class60634_)
                       (let ((__tmp61640
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class60634_))))
                         (declare (not safe))
                         (eq? __tmp61640 _maybe-super-class-id60629_))))
                    (__tmp61638
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class60626_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp61639 __tmp61638))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass60623_ _obj60624_)
        (let ((__tmp61641
               (let () (declare (not safe)) (##type-id _klass60623_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj60624_ __tmp61641))))
    (define struct-instance?
      (lambda (_klass60620_ _obj60621_)
        (let ((__tmp61642
               (let () (declare (not safe)) (##type-id _klass60620_))))
          (declare (not safe))
          (##structure-instance-of? _obj60621_ __tmp61642))))
    (define class-instance?
      (lambda (_klass60615_ _obj60616_)
        (if (object? _obj60616_)
            (let ((_type60618_ (object-type _obj60616_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type60618_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type60618_ _klass60615_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass60610_ _k60611_)
        (let ((_obj60613_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass60610_ _k60611_))))
          (let () (declare (not safe)) (object-fill! _obj60613_ '#f))
          _obj60613_)))
    (define object-fill!
      (lambda (_obj60603_ _fill60604_)
        (let _loop60606_ ((_i60608_
                           (let ((__tmp61644
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj60603_))))
                             (declare (not safe))
                             (##fx- __tmp61644 '1))))
          (if (let () (declare (not safe)) (##fx> _i60608_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj60603_
                   _fill60604_
                   _i60608_
                   '#f
                   '#f))
                (let ((__tmp61643
                       (let () (declare (not safe)) (##fx- _i60608_ '1))))
                  (declare (not safe))
                  (_loop60606_ __tmp61643)))
              _obj60603_))))
    (define new-instance
      (lambda (_klass60601_)
        (let ((__obj61549
               (let ((__tmp61645
                      (let ((__tmp61646
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass60601_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp61646))))
                 (declare (not safe))
                 (##make-structure _klass60601_ __tmp61645))))
          (let () (declare (not safe)) (object-fill! __obj61549 '#f))
          __obj61549)))
    (define make-instance
      (lambda (_klass60591_ . _args60592_)
        (let* ((_obj60594_
                (let () (declare (not safe)) (new-instance _klass60591_)))
               (_$e60596_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass60591_ '10 class::t '#f))))
          (if _$e60596_
              ((lambda (_kons-id60599_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass60591_
                    _kons-id60599_
                    _obj60594_
                    _args60592_)))
               _$e60596_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass60591_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass60591_
                     _obj60594_
                     _args60592_))
                  (if (let ((__tmp61647
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass60591_))))
                        (declare (not safe))
                        (not __tmp61647))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass60591_
                         _obj60594_
                         _args60592_))
                      (if (let ((__tmp61649
                                 (let ((__tmp61650
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj60594_))))
                                   (declare (not safe))
                                   (##fx- __tmp61650 '1)))
                                (__tmp61648 (length _args60592_)))
                            (declare (not safe))
                            (##fx= __tmp61649 __tmp61648))
                          (apply ##structure _klass60591_ _args60592_)
                          (error '"arguments don't match object size"
                                 'class:
                                 _klass60591_
                                 'slots:
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass60591_))
                                 'args:
                                 _args60592_))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj60588_ . _args60589_)
        (if (let ((__tmp61652 (length _args60589_))
                  (__tmp61651
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj60588_))))
              (declare (not safe))
              (##fx< __tmp61652 __tmp61651))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj60588_ _args60589_))
            (error '"too many arguments for struct"
                   'object:
                   _obj60588_
                   'args:
                   _args60589_))))
    (define __struct-instance-init!
      (lambda (_obj60547_ _args60548_)
        (let _lp60550_ ((_k60552_ '1) (_rest60553_ _args60548_))
          (let* ((_rest6055460562_ _rest60553_)
                 (_else6055660570_ (lambda () _obj60547_))
                 (_K6055860576_
                  (lambda (_rest60573_ _hd60574_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj60547_ _k60552_ _hd60574_))
                    (let ((__tmp61653
                           (let () (declare (not safe)) (##fx+ _k60552_ '1))))
                      (declare (not safe))
                      (_lp60550_ __tmp61653 _rest60573_)))))
            (if (let () (declare (not safe)) (##pair? _rest6055460562_))
                (let ((_hd6055960579_
                       (let () (declare (not safe)) (##car _rest6055460562_)))
                      (_tl6056060581_
                       (let () (declare (not safe)) (##cdr _rest6055460562_))))
                  (let* ((_hd60584_ _hd6055960579_)
                         (_rest60586_ _tl6056060581_))
                    (declare (not safe))
                    (_K6055860576_ _rest60586_ _hd60584_)))
                (let () (declare (not safe)) (_else6055660570_)))))))
    (define class-instance-init!
      (lambda (_obj60544_ . _args60545_)
        (let ((__tmp61654 (object-type _obj60544_)))
          (declare (not safe))
          (__class-instance-init! __tmp61654 _obj60544_ _args60545_))))
    (define __class-instance-init!
      (lambda (_klass60488_ _obj60489_ _args60490_)
        (let _lp60492_ ((_rest60494_ _args60490_))
          (let* ((_rest6049560505_ _rest60494_)
                 (_else6049760513_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest60494_))
                        _obj60489_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass60488_
                               'rest:
                               _rest60494_))))
                 (_K6049960525_
                  (lambda (_rest60516_ _val60517_ _key60518_)
                    (let ((_$e60520_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass60488_ _key60518_))))
                      (if _$e60520_
                          ((lambda (_off60523_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj60489_
                                _off60523_
                                _val60517_))
                             (let ()
                               (declare (not safe))
                               (_lp60492_ _rest60516_)))
                           _$e60520_)
                          (error '"unknown slot"
                                 'class:
                                 _klass60488_
                                 'slot:
                                 _key60518_))))))
            (if (let () (declare (not safe)) (##pair? _rest6049560505_))
                (let ((_hd6050060528_
                       (let () (declare (not safe)) (##car _rest6049560505_)))
                      (_tl6050160530_
                       (let () (declare (not safe)) (##cdr _rest6049560505_))))
                  (let ((_key60533_ _hd6050060528_))
                    (if (let () (declare (not safe)) (##pair? _tl6050160530_))
                        (let ((_hd6050260535_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6050160530_)))
                              (_tl6050360537_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6050160530_))))
                          (let* ((_val60540_ _hd6050260535_)
                                 (_rest60542_ _tl6050360537_))
                            (declare (not safe))
                            (_K6049960525_ _rest60542_ _val60540_ _key60533_)))
                        (let () (declare (not safe)) (_else6049760513_)))))
                (let () (declare (not safe)) (_else6049760513_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass60484_ _obj60485_ _args60486_)
        (apply call-method
               _klass60484_
               'instance-init!
               _obj60485_
               _args60486_)))
    (define constructor-init!
      (lambda (_klass60479_ _kons-id60480_ _obj60481_ . _args60482_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass60479_
           _kons-id60480_
           _obj60481_
           _args60482_))))
    (define __constructor-init!
      (lambda (_klass60469_ _kons-id60470_ _obj60471_ _args60472_)
        (let ((_$e60474_
               (let ()
                 (declare (not safe))
                 (__find-method _klass60469_ _obj60471_ _kons-id60470_))))
          (if _$e60474_
              ((lambda (_kons60477_)
                 (apply _kons60477_ _obj60471_ _args60472_)
                 _obj60471_)
               _$e60474_)
              (error '"missing constructor"
                     'class:
                     _klass60469_
                     'method:
                     _kons-id60470_)))))
    (define struct-copy
      (lambda (_struct60467_)
        (if (let () (declare (not safe)) (##structure? _struct60467_))
            '#!void
            (error '"not a structure" _struct60467_))
        (let () (declare (not safe)) (##structure-copy _struct60467_))))
    (define struct->list
      (lambda (_obj60465_)
        (if (object? _obj60465_)
            (let () (declare (not safe)) (##vector->list _obj60465_))
            (error '"not an object" _obj60465_))))
    (define class->list
      (lambda (_obj60452_)
        (if (object? _obj60452_)
            (let ((_klass60454_ (object-type _obj60452_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass60454_ 'gerbil#class::t))
                  (let ((_slot-vector60456_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass60454_
                            '7
                            class::t
                            '#f))))
                    (let _loop60458_ ((_index60460_
                                       (let ((__tmp61660
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector60456_))))
                                         (declare (not safe))
                                         (##fx- __tmp61660 '1)))
                                      (_plist60461_ '()))
                      (if (let () (declare (not safe)) (##fx< _index60460_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass60454_ _plist60461_))
                          (let ((_slot60463_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector60456_
                                    _index60460_))))
                            (let ((__tmp61659
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index60460_ '1)))
                                  (__tmp61655
                                   (let ((__tmp61658
                                          (symbol->keyword _slot60463_))
                                         (__tmp61656
                                          (let ((__tmp61657
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj60452_
                                                    _index60460_))))
                                            (declare (not safe))
                                            (cons __tmp61657 _plist60461_))))
                                     (declare (not safe))
                                     (cons __tmp61658 __tmp61656))))
                              (declare (not safe))
                              (_loop60458_ __tmp61659 __tmp61655))))))
                  (error '"not a class type"
                         'object:
                         _obj60452_
                         'class:
                         _klass60454_)))
            (error '"not an object" _obj60452_))))
    (define call-method
      (lambda (_obj60443_ _id60444_ . _args60445_)
        (let ((_$e60447_
               (let ()
                 (declare (not safe))
                 (method-ref _obj60443_ _id60444_))))
          (if _$e60447_
              ((lambda (_method60450_)
                 (apply _method60450_ _obj60443_ _args60445_))
               _$e60447_)
              (error '"cannot find method"
                     'object:
                     _obj60443_
                     'method:
                     _id60444_)))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define method-ref
      (lambda (_obj60440_ _id60441_)
        (if (object? _obj60440_)
            (let ((__tmp61661 (object-type _obj60440_)))
              (declare (not safe))
              (find-method __tmp61661 _obj60440_ _id60441_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj60434_ _id60435_)
        (let ((_$e60437_
               (let ()
                 (declare (not safe))
                 (method-ref _obj60434_ _id60435_))))
          (if _$e60437_
              _$e60437_
              (error '"missing method"
                     'object:
                     _obj60434_
                     'method:
                     _id60435_)))))
    (define bound-method-ref
      (lambda (_obj60424_ _id60425_)
        (let ((_$e60427_
               (let ()
                 (declare (not safe))
                 (method-ref _obj60424_ _id60425_))))
          (if _$e60427_
              ((lambda (_method60430_)
                 (lambda _args60432_
                   (apply _method60430_ _obj60424_ _args60432_)))
               _$e60427_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj60417_ _id60418_)
        (let ((_method60420_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj60417_ _id60418_))))
          (lambda _args60422_ (apply _method60420_ _obj60417_ _args60422_)))))
    (define find-method
      (lambda (_klass60413_ _obj60414_ _id60415_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass60413_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass60413_ _obj60414_ _id60415_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass60413_ _obj60414_ _id60415_)))))
    (define __find-method
      (lambda (_klass60406_ _obj60407_ _id60408_)
        (let ((_$e60410_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass60406_ _obj60407_ _id60408_))))
          (if _$e60410_
              _$e60410_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass60406_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass60406_ _obj60407_ _id60408_)))))))
    (define mixin-find-method
      (lambda (_mixins60398_ _obj60399_ _id60400_)
        (let ((__tmp61662
               (lambda (_g6040160403_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6040160403_ _obj60399_ _id60400_)))))
          (declare (not safe))
          (ormap1 __tmp61662 _mixins60398_))))
    (define builtin-find-method
      (lambda (_klass60391_ _obj60392_ _id60393_)
        (if (let () (declare (not safe)) (##type? _klass60391_))
            (let ((_$e60395_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass60391_ _obj60392_ _id60393_))))
              (if _$e60395_
                  _$e60395_
                  (let ((__tmp61663
                         (let ()
                           (declare (not safe))
                           (##type-super _klass60391_))))
                    (declare (not safe))
                    (builtin-find-method __tmp61663 _obj60392_ _id60393_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass60368_ _obj60369_ _id60370_)
        (letrec ((_metaclass-resolve-method60372_
                  (lambda ()
                    (let ((__method61550
                           (let ()
                             (declare (not safe))
                             (method-ref _klass60368_ 'direct-method-ref))))
                      (if __method61550
                          (__method61550 _klass60368_ _obj60369_ _id60370_)
                          (error '"Missing method"
                                 _klass60368_
                                 'direct-method-ref)))))
                 (_metaclass-resolve-method!60373_
                  (lambda ()
                    (let ((_method60388_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method60372_))))
                      (let ((__tmp61665
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass60368_
                                '11
                                class::t
                                '#f)))
                            (__tmp61664 (if _method60388_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp61665 _id60370_ __tmp61664))
                      _method60388_))))
          (let ((_$e60375_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass60368_ '11 class::t '#f))))
            (if _$e60375_
                ((lambda (_ht60378_)
                   (let ((_method60380_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht60378_ _id60370_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method60380_))
                         _method60380_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass60368_))
                             (let ((_$e60382_ _method60380_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e60382_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method60372_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e60382_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!60373_)))))
                             '#f))))
                 _$e60375_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass60368_))
                    (let ((_tab60385_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass60368_
                         _tab60385_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!60373_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass60364_ _obj60365_ _id60366_)
        (let ((__tmp61666 (##structure-ref _klass60364_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp61666 _obj60365_ _id60366_))))
    (define builtin-method-ref
      (lambda (_klass60355_ _obj60356_ _id60357_)
        (let ((_$e60359_
               (let ((__tmp61667
                      (let () (declare (not safe)) (##type-id _klass60355_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp61667 '#f))))
          (if _$e60359_
              ((lambda (_mtab60362_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab60362_ _id60357_ '#f)))
               _$e60359_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass60321_ _id60322_ _proc60323_ _rebind?60324_)
        (letrec ((_bind!60326_
                  (lambda (_ht60339_)
                    (if (and (let () (declare (not safe)) (not _rebind?60324_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht60339_ _id60322_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass60321_
                               'method:
                               _id60322_)
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht60339_
                           _id60322_
                           _proc60323_))))))
          (if (let () (declare (not safe)) (procedure? _proc60323_))
              '#!void
              (error '"bad method; expected procedure" _proc60323_))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass60321_ 'gerbil#class::t))
              (let ((_ht60328_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass60321_
                        '11
                        class::t
                        '#f))))
                (if _ht60328_
                    (let () (declare (not safe)) (_bind!60326_ _ht60328_))
                    (let ((_ht60330_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass60321_
                         _ht60330_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!60326_ _ht60330_)))))
              (if (let () (declare (not safe)) (##type? _klass60321_))
                  (let ((_ht60337_
                         (let ((_$e60332_
                                (let ((__tmp61668
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass60321_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp61668
                                   '#f))))
                           (if _$e60332_
                               _$e60332_
                               (let ((_ht60335_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table__% '#f '0))))
                                 (let ((__tmp61669
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass60321_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp61669
                                    _ht60335_))
                                 _ht60335_)))))
                    (declare (not safe))
                    (_bind!60326_ _ht60337_))
                  (error '"bad class; expected class or builtin type"
                         _klass60321_))))))
    (define bind-method!__0
      (lambda (_klass60344_ _id60345_ _proc60346_)
        (let ((_rebind?60348_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass60344_
           _id60345_
           _proc60346_
           _rebind?60348_))))
    (define bind-method!
      (lambda _g61671_
        (let ((_g61670_ (let () (declare (not safe)) (##length _g61671_))))
          (cond ((let () (declare (not safe)) (##fx= _g61670_ 3))
                 (apply (lambda (_klass60344_ _id60345_ _proc60346_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass60344_
                             _id60345_
                             _proc60346_)))
                        _g61671_))
                ((let () (declare (not safe)) (##fx= _g61670_ 4))
                 (apply (lambda (_klass60350_
                                 _id60351_
                                 _proc60352_
                                 _rebind?60353_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass60350_
                             _id60351_
                             _proc60352_
                             _rebind?60353_)))
                        _g61671_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g61671_))))))
    (define make-method-specializer-table__%
      (lambda (_size-hint60301_ _seed60303_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint60301_
           procedure-hash
           eq?
           _seed60303_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_size-hint60309_ '#f) (_seed60311_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint60309_ _seed60311_))))
    (define make-method-specializer-table__1
      (lambda (_size-hint60313_)
        (let ((_seed60315_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint60313_ _seed60315_))))
    (define make-method-specializer-table
      (lambda _g61673_
        (let ((_g61672_ (let () (declare (not safe)) (##length _g61673_))))
          (cond ((let () (declare (not safe)) (##fx= _g61672_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g61673_))
                ((let () (declare (not safe)) (##fx= _g61672_ 1))
                 (apply (lambda (_size-hint60313_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _size-hint60313_)))
                        _g61673_))
                ((let () (declare (not safe)) (##fx= _g61672_ 2))
                 (apply (lambda (_size-hint60317_ _seed60318_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _size-hint60317_
                             _seed60318_)))
                        _g61673_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g61673_))))))
    (define method-specializer-table-ref
      (lambda (_tab60258_ _key60259_ _default60260_)
        (let ((_table60262_
               (let () (declare (not safe)) (&raw-table-table _tab60258_)))
              (_seed60263_
               (let () (declare (not safe)) (&raw-table-seed _tab60258_))))
          (let* ((_h60265_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key60259_))
                         _seed60263_))
                 (_size60268_ (vector-length _table60262_))
                 (_entries60271_ (fxquotient _size60268_ '2))
                 (_start60274_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60265_ _entries60271_)
                   '1)))
            (let _loop60278_ ((_probe60281_ _start60274_)
                              (_i60283_ '1)
                              (_deleted60285_ '#f))
              (let ((_k60288_ (vector-ref _table60262_ _probe60281_)))
                (if (let ((__tmp61674 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k60288_ __tmp61674))
                    _default60260_
                    (if (let ((__tmp61675 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k60288_ __tmp61675))
                        (let ((__tmp61678
                               (let ((_next-probe60291_
                                      (fx+ _start60274_
                                           _i60283_
                                           (fx* _i60283_ _i60283_))))
                                 (fxmodulo _next-probe60291_ _size60268_)))
                              (__tmp61677 (fx+ _i60283_ '1))
                              (__tmp61676
                               (let ((_$e60294_ _deleted60285_))
                                 (if _$e60294_ _$e60294_ _probe60281_))))
                          (declare (not safe))
                          (_loop60278_ __tmp61678 __tmp61677 __tmp61676))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key60259_ _k60288_))
                            (vector-ref _table60262_ (fx+ _probe60281_ '1))
                            (let ((__tmp61680
                                   (let ((_next-probe60297_
                                          (fx+ _start60274_
                                               _i60283_
                                               (fx* _i60283_ _i60283_))))
                                     (fxmodulo _next-probe60297_ _size60268_)))
                                  (__tmp61679 (fx+ _i60283_ '1)))
                              (declare (not safe))
                              (_loop60278_
                               __tmp61680
                               __tmp61679
                               _deleted60285_)))))))))))
    (define method-specializer-table-set!
      (lambda (_tab60254_ _key60255_ _value60256_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab60254_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab60254_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab60254_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _tab60254_
           _key60255_
           _value60256_))))
    (define __method-specializer-table-set!
      (lambda (_tab60209_ _key60210_ _value60211_)
        (let ((_table60214_
               (let () (declare (not safe)) (&raw-table-table _tab60209_)))
              (_seed60215_
               (let () (declare (not safe)) (&raw-table-seed _tab60209_))))
          (let* ((_h60217_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key60210_))
                         _seed60215_))
                 (_size60220_ (vector-length _table60214_))
                 (_entries60223_ (fxquotient _size60220_ '2))
                 (_start60226_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60217_ _entries60223_)
                   '1)))
            (let _loop60230_ ((_probe60233_ _start60226_)
                              (_i60235_ '1)
                              (_deleted60237_ '#f))
              (let ((_k60240_ (vector-ref _table60214_ _probe60233_)))
                (if (let ((__tmp61681 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k60240_ __tmp61681))
                    (if _deleted60237_
                        (begin
                          (vector-set! _table60214_ _deleted60237_ _key60210_)
                          (vector-set!
                           _table60214_
                           (fx+ _deleted60237_ '1)
                           _value60211_)
                          ((lambda ()
                             (let ((__tmp61682
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab60209_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab60209_
                                __tmp61682)))))
                        (begin
                          (vector-set! _table60214_ _probe60233_ _key60210_)
                          (vector-set!
                           _table60214_
                           (fx+ _probe60233_ '1)
                           _value60211_)
                          ((lambda ()
                             (let ((__tmp61683
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab60209_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab60209_ __tmp61683))
                             (let ((__tmp61684
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab60209_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab60209_
                                __tmp61684))))))
                    (if (let ((__tmp61685 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k60240_ __tmp61685))
                        (let ((__tmp61688
                               (let ((_next-probe60245_
                                      (fx+ _start60226_
                                           _i60235_
                                           (fx* _i60235_ _i60235_))))
                                 (fxmodulo _next-probe60245_ _size60220_)))
                              (__tmp61687 (fx+ _i60235_ '1))
                              (__tmp61686
                               (let ((_$e60248_ _deleted60237_))
                                 (if _$e60248_ _$e60248_ _probe60233_))))
                          (declare (not safe))
                          (_loop60230_ __tmp61688 __tmp61687 __tmp61686))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key60210_ _k60240_))
                            (begin
                              (vector-set!
                               _table60214_
                               _probe60233_
                               _key60210_)
                              (vector-set!
                               _table60214_
                               (fx+ _probe60233_ '1)
                               _value60211_))
                            (let ((__tmp61690
                                   (let ((_next-probe60251_
                                          (fx+ _start60226_
                                               _i60235_
                                               (fx* _i60235_ _i60235_))))
                                     (fxmodulo _next-probe60251_ _size60220_)))
                                  (__tmp61689 (fx+ _i60235_ '1)))
                              (declare (not safe))
                              (_loop60230_
                               __tmp61690
                               __tmp61689
                               _deleted60237_)))))))))))
    (define method-specializer-table-update!
      (lambda (_tab60204_
               _key60205_
               _method-specializer-table-update!60206_
               _default60207_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab60204_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab60204_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab60204_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _tab60204_
           _key60205_
           _method-specializer-table-update!60206_
           _default60207_))))
    (define __method-specializer-table-update!
      (lambda (_tab60158_
               _key60159_
               _method-specializer-table-update!60160_
               _default60161_)
        (let ((_table60164_
               (let () (declare (not safe)) (&raw-table-table _tab60158_)))
              (_seed60165_
               (let () (declare (not safe)) (&raw-table-seed _tab60158_))))
          (let* ((_h60167_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key60159_))
                         _seed60165_))
                 (_size60170_ (vector-length _table60164_))
                 (_entries60173_ (fxquotient _size60170_ '2))
                 (_start60176_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60167_ _entries60173_)
                   '1)))
            (let _loop60180_ ((_probe60183_ _start60176_)
                              (_i60185_ '1)
                              (_deleted60187_ '#f))
              (let ((_k60190_ (vector-ref _table60164_ _probe60183_)))
                (if (let ((__tmp61691 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k60190_ __tmp61691))
                    (if _deleted60187_
                        (begin
                          (vector-set! _table60164_ _deleted60187_ _key60159_)
                          (vector-set!
                           _table60164_
                           (fx+ _deleted60187_ '1)
                           (_method-specializer-table-update!60160_
                            _default60161_))
                          ((lambda ()
                             (let ((__tmp61692
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab60158_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab60158_
                                __tmp61692)))))
                        (begin
                          (vector-set! _table60164_ _probe60183_ _key60159_)
                          (vector-set!
                           _table60164_
                           (fx+ _probe60183_ '1)
                           (_method-specializer-table-update!60160_
                            _default60161_))
                          ((lambda ()
                             (let ((__tmp61693
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab60158_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab60158_ __tmp61693))
                             (let ((__tmp61694
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab60158_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab60158_
                                __tmp61694))))))
                    (if (let ((__tmp61695 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k60190_ __tmp61695))
                        (let ((__tmp61698
                               (let ((_next-probe60195_
                                      (fx+ _start60176_
                                           _i60185_
                                           (fx* _i60185_ _i60185_))))
                                 (fxmodulo _next-probe60195_ _size60170_)))
                              (__tmp61697 (fx+ _i60185_ '1))
                              (__tmp61696
                               (let ((_$e60198_ _deleted60187_))
                                 (if _$e60198_ _$e60198_ _probe60183_))))
                          (declare (not safe))
                          (_loop60180_ __tmp61698 __tmp61697 __tmp61696))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key60159_ _k60190_))
                            (begin
                              (vector-set!
                               _table60164_
                               _probe60183_
                               _key60159_)
                              (vector-set!
                               _table60164_
                               (fx+ _probe60183_ '1)
                               (_method-specializer-table-update!60160_
                                (vector-ref
                                 _table60164_
                                 (fx+ _probe60183_ '1)))))
                            (let ((__tmp61700
                                   (let ((_next-probe60201_
                                          (fx+ _start60176_
                                               _i60185_
                                               (fx* _i60185_ _i60185_))))
                                     (fxmodulo _next-probe60201_ _size60170_)))
                                  (__tmp61699 (fx+ _i60185_ '1)))
                              (declare (not safe))
                              (_loop60180_
                               __tmp61700
                               __tmp61699
                               _deleted60187_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_tab60117_ _key60119_)
        (let ((_table60122_
               (let () (declare (not safe)) (&raw-table-table _tab60117_)))
              (_seed60124_
               (let () (declare (not safe)) (&raw-table-seed _tab60117_))))
          (let* ((_h60127_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key60119_))
                         _seed60124_))
                 (_size60130_ (vector-length _table60122_))
                 (_entries60133_ (fxquotient _size60130_ '2))
                 (_start60136_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60127_ _entries60133_)
                   '1)))
            (let _loop60140_ ((_probe60143_ _start60136_) (_i60145_ '1))
              (let ((_k60148_ (vector-ref _table60122_ _probe60143_)))
                (if (let ((__tmp61701 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k60148_ __tmp61701))
                    '#!void
                    (if (let ((__tmp61702 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k60148_ __tmp61702))
                        (let ((__tmp61704
                               (let ((_next-probe60151_
                                      (fx+ _start60136_
                                           _i60145_
                                           (fx* _i60145_ _i60145_))))
                                 (fxmodulo _next-probe60151_ _size60130_)))
                              (__tmp61703 (fx+ _i60145_ '1)))
                          (declare (not safe))
                          (_loop60140_ __tmp61704 __tmp61703))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key60119_ _k60148_))
                            (begin
                              (vector-set!
                               _table60122_
                               _probe60143_
                               (macro-deleted-obj))
                              (vector-set!
                               _table60122_
                               (fx+ _probe60143_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp61705
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab60117_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab60117_
                                    __tmp61705)))))
                            (let ((__tmp61707
                                   (let ((_next-probe60155_
                                          (fx+ _start60136_
                                               _i60145_
                                               (fx* _i60145_ _i60145_))))
                                     (fxmodulo _next-probe60155_ _size60130_)))
                                  (__tmp61706 (fx+ _i60145_ '1)))
                              (declare (not safe))
                              (_loop60140_ __tmp61707 __tmp61706)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_method-proc60108_ _specializer60109_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again60113_ ()
            (if (let ((__tmp61708
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp61708 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again60113_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _method-proc60108_
           _specializer60109_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_proc60098_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again60102_ ()
            (if (let ((__tmp61709
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp61709 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again60102_))))))
        (let ((_specializer60106_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _proc60098_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _specializer60106_)))
    (define __class-specializer-hash-key
      (lambda (_klass60096_)
        (let ((__tmp61710
               (let () (declare (not safe)) (##type-id _klass60096_))))
          (declare (not safe))
          (symbolic-hash __tmp61710))))
    (define make-class-specializer-table__%
      (lambda (_size-hint60077_ _seed60079_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint60077_
           __class-specializer-hash-key
           eq?
           _seed60079_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_size-hint60085_ '#f) (_seed60087_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint60085_ _seed60087_))))
    (define make-class-specializer-table__1
      (lambda (_size-hint60089_)
        (let ((_seed60091_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint60089_ _seed60091_))))
    (define make-class-specializer-table
      (lambda _g61712_
        (let ((_g61711_ (let () (declare (not safe)) (##length _g61712_))))
          (cond ((let () (declare (not safe)) (##fx= _g61711_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g61712_))
                ((let () (declare (not safe)) (##fx= _g61711_ 1))
                 (apply (lambda (_size-hint60089_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _size-hint60089_)))
                        _g61712_))
                ((let () (declare (not safe)) (##fx= _g61711_ 2))
                 (apply (lambda (_size-hint60093_ _seed60094_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _size-hint60093_
                             _seed60094_)))
                        _g61712_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g61712_))))))
    (define class-specializer-table-ref
      (lambda (_tab60034_ _key60035_ _default60036_)
        (let ((_table60038_
               (let () (declare (not safe)) (&raw-table-table _tab60034_)))
              (_seed60039_
               (let () (declare (not safe)) (&raw-table-seed _tab60034_))))
          (let* ((_h60041_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key60035_))
                         _seed60039_))
                 (_size60044_ (vector-length _table60038_))
                 (_entries60047_ (fxquotient _size60044_ '2))
                 (_start60050_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60041_ _entries60047_)
                   '1)))
            (let _loop60054_ ((_probe60057_ _start60050_)
                              (_i60059_ '1)
                              (_deleted60061_ '#f))
              (let ((_k60064_ (vector-ref _table60038_ _probe60057_)))
                (if (let ((__tmp61713 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k60064_ __tmp61713))
                    _default60036_
                    (if (let ((__tmp61714 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k60064_ __tmp61714))
                        (let ((__tmp61717
                               (let ((_next-probe60067_
                                      (fx+ _start60050_
                                           _i60059_
                                           (fx* _i60059_ _i60059_))))
                                 (fxmodulo _next-probe60067_ _size60044_)))
                              (__tmp61716 (fx+ _i60059_ '1))
                              (__tmp61715
                               (let ((_$e60070_ _deleted60061_))
                                 (if _$e60070_ _$e60070_ _probe60057_))))
                          (declare (not safe))
                          (_loop60054_ __tmp61717 __tmp61716 __tmp61715))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key60035_ _k60064_))
                            (vector-ref _table60038_ (fx+ _probe60057_ '1))
                            (let ((__tmp61719
                                   (let ((_next-probe60073_
                                          (fx+ _start60050_
                                               _i60059_
                                               (fx* _i60059_ _i60059_))))
                                     (fxmodulo _next-probe60073_ _size60044_)))
                                  (__tmp61718 (fx+ _i60059_ '1)))
                              (declare (not safe))
                              (_loop60054_
                               __tmp61719
                               __tmp61718
                               _deleted60061_)))))))))))
    (define class-specializer-table-set!
      (lambda (_tab60030_ _key60031_ _value60032_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab60030_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab60030_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab60030_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _tab60030_
           _key60031_
           _value60032_))))
    (define __class-specializer-table-set!
      (lambda (_tab59985_ _key59986_ _value59987_)
        (let ((_table59990_
               (let () (declare (not safe)) (&raw-table-table _tab59985_)))
              (_seed59991_
               (let () (declare (not safe)) (&raw-table-seed _tab59985_))))
          (let* ((_h59993_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key59986_))
                         _seed59991_))
                 (_size59996_ (vector-length _table59990_))
                 (_entries59999_ (fxquotient _size59996_ '2))
                 (_start60002_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59993_ _entries59999_)
                   '1)))
            (let _loop60006_ ((_probe60009_ _start60002_)
                              (_i60011_ '1)
                              (_deleted60013_ '#f))
              (let ((_k60016_ (vector-ref _table59990_ _probe60009_)))
                (if (let ((__tmp61720 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k60016_ __tmp61720))
                    (if _deleted60013_
                        (begin
                          (vector-set! _table59990_ _deleted60013_ _key59986_)
                          (vector-set!
                           _table59990_
                           (fx+ _deleted60013_ '1)
                           _value59987_)
                          ((lambda ()
                             (let ((__tmp61721
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab59985_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab59985_
                                __tmp61721)))))
                        (begin
                          (vector-set! _table59990_ _probe60009_ _key59986_)
                          (vector-set!
                           _table59990_
                           (fx+ _probe60009_ '1)
                           _value59987_)
                          ((lambda ()
                             (let ((__tmp61722
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab59985_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab59985_ __tmp61722))
                             (let ((__tmp61723
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab59985_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab59985_
                                __tmp61723))))))
                    (if (let ((__tmp61724 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k60016_ __tmp61724))
                        (let ((__tmp61727
                               (let ((_next-probe60021_
                                      (fx+ _start60002_
                                           _i60011_
                                           (fx* _i60011_ _i60011_))))
                                 (fxmodulo _next-probe60021_ _size59996_)))
                              (__tmp61726 (fx+ _i60011_ '1))
                              (__tmp61725
                               (let ((_$e60024_ _deleted60013_))
                                 (if _$e60024_ _$e60024_ _probe60009_))))
                          (declare (not safe))
                          (_loop60006_ __tmp61727 __tmp61726 __tmp61725))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key59986_ _k60016_))
                            (begin
                              (vector-set!
                               _table59990_
                               _probe60009_
                               _key59986_)
                              (vector-set!
                               _table59990_
                               (fx+ _probe60009_ '1)
                               _value59987_))
                            (let ((__tmp61729
                                   (let ((_next-probe60027_
                                          (fx+ _start60002_
                                               _i60011_
                                               (fx* _i60011_ _i60011_))))
                                     (fxmodulo _next-probe60027_ _size59996_)))
                                  (__tmp61728 (fx+ _i60011_ '1)))
                              (declare (not safe))
                              (_loop60006_
                               __tmp61729
                               __tmp61728
                               _deleted60013_)))))))))))
    (define class-specializer-table-update!
      (lambda (_tab59980_
               _key59981_
               _class-specializer-table-update!59982_
               _default59983_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab59980_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab59980_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab59980_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _tab59980_
           _key59981_
           _class-specializer-table-update!59982_
           _default59983_))))
    (define __class-specializer-table-update!
      (lambda (_tab59934_
               _key59935_
               _class-specializer-table-update!59936_
               _default59937_)
        (let ((_table59940_
               (let () (declare (not safe)) (&raw-table-table _tab59934_)))
              (_seed59941_
               (let () (declare (not safe)) (&raw-table-seed _tab59934_))))
          (let* ((_h59943_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key59935_))
                         _seed59941_))
                 (_size59946_ (vector-length _table59940_))
                 (_entries59949_ (fxquotient _size59946_ '2))
                 (_start59952_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59943_ _entries59949_)
                   '1)))
            (let _loop59956_ ((_probe59959_ _start59952_)
                              (_i59961_ '1)
                              (_deleted59963_ '#f))
              (let ((_k59966_ (vector-ref _table59940_ _probe59959_)))
                (if (let ((__tmp61730 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k59966_ __tmp61730))
                    (if _deleted59963_
                        (begin
                          (vector-set! _table59940_ _deleted59963_ _key59935_)
                          (vector-set!
                           _table59940_
                           (fx+ _deleted59963_ '1)
                           (_class-specializer-table-update!59936_
                            _default59937_))
                          ((lambda ()
                             (let ((__tmp61731
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab59934_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab59934_
                                __tmp61731)))))
                        (begin
                          (vector-set! _table59940_ _probe59959_ _key59935_)
                          (vector-set!
                           _table59940_
                           (fx+ _probe59959_ '1)
                           (_class-specializer-table-update!59936_
                            _default59937_))
                          ((lambda ()
                             (let ((__tmp61732
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab59934_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab59934_ __tmp61732))
                             (let ((__tmp61733
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab59934_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab59934_
                                __tmp61733))))))
                    (if (let ((__tmp61734 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k59966_ __tmp61734))
                        (let ((__tmp61737
                               (let ((_next-probe59971_
                                      (fx+ _start59952_
                                           _i59961_
                                           (fx* _i59961_ _i59961_))))
                                 (fxmodulo _next-probe59971_ _size59946_)))
                              (__tmp61736 (fx+ _i59961_ '1))
                              (__tmp61735
                               (let ((_$e59974_ _deleted59963_))
                                 (if _$e59974_ _$e59974_ _probe59959_))))
                          (declare (not safe))
                          (_loop59956_ __tmp61737 __tmp61736 __tmp61735))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key59935_ _k59966_))
                            (begin
                              (vector-set!
                               _table59940_
                               _probe59959_
                               _key59935_)
                              (vector-set!
                               _table59940_
                               (fx+ _probe59959_ '1)
                               (_class-specializer-table-update!59936_
                                (vector-ref
                                 _table59940_
                                 (fx+ _probe59959_ '1)))))
                            (let ((__tmp61739
                                   (let ((_next-probe59977_
                                          (fx+ _start59952_
                                               _i59961_
                                               (fx* _i59961_ _i59961_))))
                                     (fxmodulo _next-probe59977_ _size59946_)))
                                  (__tmp61738 (fx+ _i59961_ '1)))
                              (declare (not safe))
                              (_loop59956_
                               __tmp61739
                               __tmp61738
                               _deleted59963_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_tab59893_ _key59895_)
        (let ((_table59898_
               (let () (declare (not safe)) (&raw-table-table _tab59893_)))
              (_seed59900_
               (let () (declare (not safe)) (&raw-table-seed _tab59893_))))
          (let* ((_h59903_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key59895_))
                         _seed59900_))
                 (_size59906_ (vector-length _table59898_))
                 (_entries59909_ (fxquotient _size59906_ '2))
                 (_start59912_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59903_ _entries59909_)
                   '1)))
            (let _loop59916_ ((_probe59919_ _start59912_) (_i59921_ '1))
              (let ((_k59924_ (vector-ref _table59898_ _probe59919_)))
                (if (let ((__tmp61740 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k59924_ __tmp61740))
                    '#!void
                    (if (let ((__tmp61741 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k59924_ __tmp61741))
                        (let ((__tmp61743
                               (let ((_next-probe59927_
                                      (fx+ _start59912_
                                           _i59921_
                                           (fx* _i59921_ _i59921_))))
                                 (fxmodulo _next-probe59927_ _size59906_)))
                              (__tmp61742 (fx+ _i59921_ '1)))
                          (declare (not safe))
                          (_loop59916_ __tmp61743 __tmp61742))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key59895_ _k59924_))
                            (begin
                              (vector-set!
                               _table59898_
                               _probe59919_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59898_
                               (fx+ _probe59919_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp61744
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab59893_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab59893_
                                    __tmp61744)))))
                            (let ((__tmp61746
                                   (let ((_next-probe59931_
                                          (fx+ _start59912_
                                               _i59921_
                                               (fx* _i59921_ _i59921_))))
                                     (fxmodulo _next-probe59931_ _size59906_)))
                                  (__tmp61745 (fx+ _i59921_ '1)))
                              (declare (not safe))
                              (_loop59916_ __tmp61746 __tmp61745)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define specialize-class
      (lambda (_klass59886_)
        (let ((_$e59888_
               (let ()
                 (declare (not safe))
                 (__lookup-class-specializer _klass59886_))))
          (if _$e59888_
              _$e59888_
              (let ((_method-table59891_
                     (let ()
                       (declare (not safe))
                       (__specialize-class _klass59886_))))
                (let ()
                  (declare (not safe))
                  (__bind-class-specializer! _klass59886_ _method-table59891_))
                _method-table59891_)))))
    (define __lookup-class-specializer
      (lambda (_klass59876_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again59880_ ()
            (if (let ((__tmp61747
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp61747 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again59880_))))))
        (let ((_method-table59884_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _klass59876_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _method-table59884_)))
    (define __bind-class-specializer!
      (lambda (_klass59867_ _method-table59868_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again59872_ ()
            (if (let ((__tmp61748
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp61748 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again59872_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _klass59867_
           _method-table59868_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_klass59852_ _method-table59853_ _method59854_ _proc59855_)
        (let ((_$e59857_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _method-table59853_ _method59854_ '#f))))
          (if _$e59857_
              _$e59857_
              (let ((_$e59860_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _proc59855_))))
                (if _$e59860_
                    ((lambda (_specialize59863_)
                       (let ((_specialized-proc59865_
                              (_specialize59863_
                               _klass59852_
                               _method-table59853_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _method-table59853_
                          _method59854_
                          _specialized-proc59865_)))
                     _$e59860_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _method-table59853_
                       _method59854_
                       _proc59855_))))))))
    (define __specialize-class
      (lambda (_klass59779_)
        (if (let ((__tmp61749
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _klass59779_
                      'gerbil#class::t))))
              (declare (not safe))
              (not __tmp61749))
            (if (let () (declare (not safe)) (##type? _klass59779_))
                (let ((_method-table59781_
                       (let ()
                         (declare (not safe))
                         (make-symbolic-table__% '#f '0))))
                  (let _loop59783_ ((_xklass59785_ _klass59779_))
                    (if _xklass59785_
                        (begin
                          (let ((_xmethod-table5978659788_
                                 (let ((__tmp61750
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _xklass59785_))))
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    __builtin-type-methods
                                    __tmp61750
                                    '#f))))
                            (if _xmethod-table5978659788_
                                (let* ((_xmethod-table59791_
                                        _xmethod-table5978659788_)
                                       (__tmp61751
                                        (lambda (_g5979259795_ _g5979359797_)
                                          (let ()
                                            (declare (not safe))
                                            (__specialize-method
                                             _klass59779_
                                             _method-table59781_
                                             _g5979259795_
                                             _g5979359797_)))))
                                  (declare (not safe))
                                  (raw-table-for-each
                                   _xmethod-table59791_
                                   __tmp61751))
                                '#f))
                          (let ((__tmp61752
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _xklass59785_))))
                            (declare (not safe))
                            (_loop59783_ __tmp61752)))
                        '#!void))
                  _method-table59781_)
                (error '"bad class; cannot specialize" _klass59779_))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _klass59779_))
                (let ((__method61551
                       (let ()
                         (declare (not safe))
                         (method-ref _klass59779_ 'specialize-class))))
                  (if __method61551
                      (__method61551 _klass59779_)
                      (error '"Missing method"
                             _klass59779_
                             'specialize-class)))
                (if (let ((__tmp61753
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _klass59779_
                              '6
                              class::t
                              '#f))))
                      (declare (not safe))
                      (find class-type-metaclass? __tmp61753))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _klass59779_)
                    (let ((_method-table59800_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _loop59802_ ((_rest59804_
                                         (let ()
                                           (declare (not safe))
                                           (class-precedence-list
                                            _klass59779_))))
                        (let* ((_rest5980559813_ _rest59804_)
                               (_else5980759821_
                                (lambda () _method-table59800_))
                               (_K5980959840_
                                (lambda (_rest59824_ _xklass59825_)
                                  (let ((_xmethod-table5982659828_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _xklass59825_
                                            '11
                                            class::t
                                            '#f))))
                                    (if _xmethod-table5982659828_
                                        (let* ((_xmethod-table59831_
                                                _xmethod-table5982659828_)
                                               (__tmp61754
                                                (lambda (_g5983259835_
                                                         _g5983359837_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _klass59779_
                                                     _method-table59800_
                                                     _g5983259835_
                                                     _g5983359837_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _xmethod-table59831_
                                           __tmp61754))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_loop59802_ _rest59824_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest5980559813_))
                              (let ((_hd5981059843_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest5980559813_)))
                                    (_tl5981159845_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest5980559813_))))
                                (let* ((_xklass59848_ _hd5981059843_)
                                       (_rest59850_ _tl5981159845_))
                                  (declare (not safe))
                                  (_K5980959840_ _rest59850_ _xklass59848_)))
                              (let ()
                                (declare (not safe))
                                (_else5980759821_)))))))))))
    (define seal-class!
      (lambda (_klass59775_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass59775_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-sealed? _klass59775_))
                '#!void
                (begin
                  (if (let ()
                        (declare (not safe))
                        (class-type-final? _klass59775_))
                      '#!void
                      (error '"cannot seal non-final class" _klass59775_))
                  (if (let ()
                        (declare (not safe))
                        (class-type-metaclass? _klass59775_))
                      (let ((__method61552
                             (let ()
                               (declare (not safe))
                               (method-ref _klass59775_ 'seal-class!))))
                        (if __method61552
                            (__method61552 _klass59775_)
                            (error '"Missing method"
                                   _klass59775_
                                   'seal-class!)))
                      (if (let ((__tmp61755
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _klass59775_
                                    '6
                                    class::t
                                    '#f))))
                            (declare (not safe))
                            (find class-type-metaclass? __tmp61755))
                          (error '"cannot seal class that extends metaclass without a metaclass"
                                 _klass59775_)
                          (let ((_method-table59777_
                                 (let ()
                                   (declare (not safe))
                                   (specialize-class _klass59775_))))
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _klass59775_
                             _method-table59777_
                             '11
                             class::t
                             '#f))))
                  (let ()
                    (declare (not safe))
                    (&class-type-seal! _klass59775_))))
            '#!void)))
    (define next-method
      (lambda (_subklass59724_ _obj59725_ _id59726_)
        (let ((_klass59728_ (object-type _obj59725_))
              (_type-id59729_
               (let () (declare (not safe)) (##type-id _subklass59724_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass59728_ 'gerbil#class::t))
              (let _lp59731_ ((_rest59733_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass59728_))))
                (let* ((_rest5973459742_ _rest59733_)
                       (_else5973659750_ (lambda () '#f))
                       (_K5973859756_
                        (lambda (_rest59753_ _klass59754_)
                          (if (let ((__tmp61756
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass59754_))))
                                (declare (not safe))
                                (eq? _type-id59729_ __tmp61756))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest59753_
                                 _obj59725_
                                 _id59726_))
                              (let ()
                                (declare (not safe))
                                (_lp59731_ _rest59753_))))))
                  (if (let () (declare (not safe)) (##pair? _rest5973459742_))
                      (let ((_hd5973959759_
                             (let ()
                               (declare (not safe))
                               (##car _rest5973459742_)))
                            (_tl5974059761_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest5973459742_))))
                        (let* ((_klass59764_ _hd5973959759_)
                               (_rest59766_ _tl5974059761_))
                          (declare (not safe))
                          (_K5973859756_ _rest59766_ _klass59764_)))
                      (let () (declare (not safe)) (_else5973659750_)))))
              (if (let () (declare (not safe)) (##type? _klass59728_))
                  (let _lp59768_ ((_klass59770_ _klass59728_))
                    (if (let ((__tmp61757
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass59770_))))
                          (declare (not safe))
                          (eq? _type-id59729_ __tmp61757))
                        (let ((__tmp61758
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass59770_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp61758
                           _obj59725_
                           _id59726_))
                        (let ((_$e59772_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass59770_))))
                          (if _$e59772_
                              (let ()
                                (declare (not safe))
                                (_lp59768_ _$e59772_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass59714_ _obj59715_ _id59716_ . _args59717_)
        (let ((_$e59719_
               (let ()
                 (declare (not safe))
                 (next-method _subklass59714_ _obj59715_ _id59716_))))
          (if _$e59719_
              ((lambda (_methodf59722_)
                 (apply _methodf59722_ _obj59715_ _args59717_))
               _$e59719_)
              (error '"cannot find next method"
                     'object:
                     _obj59715_
                     'method:
                     _id59716_)))))
    (define write-style (lambda (_we59712_) (macro-writeenv-style _we59712_)))
    (define write-object
      (lambda (_we59704_ _obj59705_)
        (let ((_$e59707_
               (let () (declare (not safe)) (method-ref _obj59705_ ':wr))))
          (if _$e59707_
              ((lambda (_method59710_) (_method59710_ _obj59705_ _we59704_))
               _$e59707_)
              (let ()
                (declare (not safe))
                (##default-wr _we59704_ _obj59705_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
