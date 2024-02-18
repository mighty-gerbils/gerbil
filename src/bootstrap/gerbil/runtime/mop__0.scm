(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1708280331)
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
      (let* ((_slots85391_
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
             (_slot-vector85393_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots85391_))))
             (_slot-table85400_
              (let ((_slot-table85395_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table '#f '0))))
                (for-each
                 (lambda (_slot85397_ _field85398_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table85395_
                      _slot85397_
                      _field85398_))
                   (let ((__tmp89607 (symbol->keyword _slot85397_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table85395_
                      __tmp89607
                      _field85398_)))
                 _slots85391_
                 (let ((__tmp89608 (length _slots85391_)))
                   (declare (not safe))
                   (iota __tmp89608 '1)))
                _slot-table85395_))
             (_flags85402_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields85408_
              (list->vector
               (apply append
                      (map (lambda (_g8540385405_) (list _g8540385405_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots85391_ '5))))))
             (_properties85410_
              (let ((__tmp89611
                     (let ((__tmp89612
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots85391_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp89612)))
                    (__tmp89609
                     (let ((__tmp89610
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp89610 '()))))
                (declare (not safe))
                (cons __tmp89611 __tmp89609)))
             (_t85412_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags85402_
                 ##type-type
                 _fields85408_
                 '()
                 _slot-vector85393_
                 _slot-table85400_
                 _properties85410_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t85412_ _t85412_))
        _t85412_))
    (define class-type?
      (lambda (_obj85389_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj85389_ class::t.id))))
    (define class-type=?
      (lambda (_x85386_ _y85387_)
        (let ((__tmp89614 (##structure-ref _x85386_ '1 class::t '#f))
              (__tmp89613 (##structure-ref _y85387_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp89614 __tmp89613))))
    (define type-opaque?
      (lambda (_type85384_)
        (let ((__tmp89615
               (let ((__tmp89616
                      (let ()
                        (declare (not safe))
                        (##type-flags _type85384_))))
                 (declare (not safe))
                 (##fxand __tmp89616 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp89615 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type85382_)
        (let ((__tmp89617
               (let ((__tmp89618
                      (let ()
                        (declare (not safe))
                        (##type-flags _type85382_))))
                 (declare (not safe))
                 (##fxand __tmp89618 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp89617 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type85380_)
        (let ((__tmp89619
               (let ((__tmp89620
                      (let ()
                        (declare (not safe))
                        (##type-flags _type85380_))))
                 (declare (not safe))
                 (##fxand __tmp89620 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp89619 '0))))
    (define class-type-struct?
      (lambda (_klass85378_)
        (let ((__tmp89621
               (let ((__tmp89622
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85378_))))
                 (declare (not safe))
                 (##fxand __tmp89622 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp89621 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass85376_)
        (let ((__tmp89623
               (let ((__tmp89624
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85376_))))
                 (declare (not safe))
                 (##fxand __tmp89624 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp89623 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass85374_)
        (let ((__tmp89625
               (let ((__tmp89626
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85374_))))
                 (declare (not safe))
                 (##fxand __tmp89626 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp89625 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties85340_)
        (map (lambda (_e8534185343_)
               (let* ((_g8534585352_ _e8534185343_)
                      (_E8534785356_
                       (lambda () (error '"No clause matching" _g8534585352_)))
                      (_K8534885362_
                       (lambda (_val85359_ _key85360_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key85360_ 'direct-supers:))
                             (let ((__tmp89627 (map class-type-id _val85359_)))
                               (declare (not safe))
                               (cons _key85360_ __tmp89627))
                             (let ()
                               (declare (not safe))
                               (cons _key85360_ _val85359_))))))
                 (if (let () (declare (not safe)) (##pair? _g8534585352_))
                     (let ((_hd8534985365_
                            (let ()
                              (declare (not safe))
                              (##car _g8534585352_)))
                           (_tl8535085367_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8534585352_))))
                       (let* ((_key85370_ _hd8534985365_)
                              (_val85372_ _tl8535085367_))
                         (declare (not safe))
                         (_K8534885362_ _val85372_ _key85370_)))
                     (let () (declare (not safe)) (_E8534785356_)))))
             _properties85340_)))
    (define make-class-type-descriptor
      (lambda (_type-id85239_
               _type-name85240_
               _type-super85241_
               _precedence-list85242_
               _slot-vector85243_
               _properties85244_
               _constructor85245_
               _slot-table85246_
               _methods85247_)
        (letrec ((_make-props!85249_
                  (lambda (_key85309_)
                    (letrec* ((_ht85311_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table '#f '0)))
                              (_put-slots!85312_
                               (lambda (_ht85333_ _slots85334_)
                                 (for-each
                                  (lambda (_g8533585337_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht85333_
                                       _g8533585337_
                                       '#t)))
                                  _slots85334_)))
                              (_put-alist!85313_
                               (lambda (_ht85322_ _key85323_ _alist85324_)
                                 (let ((_$e85326_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key85323_ _alist85324_))))
                                   (if _$e85326_
                                       ((lambda (_g8532885330_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!85312_
                                             _ht85322_
                                             _g8532885330_)))
                                        _$e85326_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!85313_
                         _ht85311_
                         _key85309_
                         _properties85244_))
                      (for-each
                       (lambda (_mixin85315_)
                         (let ((_alist85317_
                                (##structure-ref
                                 _mixin85315_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist85317_))
                                   (let ((__tmp89629
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key85309_
                                                     _alist85317_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp89629)))
                               (let ((__tmp89628
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin85315_))))
                                 (declare (not safe))
                                 (_put-slots!85312_ _ht85311_ __tmp89628))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!85313_
                                  _ht85311_
                                  _key85309_
                                  _alist85317_)))))
                       _precedence-list85242_)
                      _ht85311_))))
          (let* ((_transparent?85251_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties85244_)))
                 (_all-slots-printable?85256_
                  (let ((_$e85253_ _transparent?85251_))
                    (if _$e85253_
                        _$e85253_
                        (let ((__tmp89630
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties85244_))))
                          (declare (not safe))
                          (eq? '#t __tmp89630)))))
                 (_printable85258_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?85256_))
                      (let ()
                        (declare (not safe))
                        (_make-props!85249_ 'print:))
                      '#f))
                 (_all-slots-equalable?85263_
                  (let ((_$e85260_ _transparent?85251_))
                    (if _$e85260_
                        _$e85260_
                        (let ((__tmp89631
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties85244_))))
                          (declare (not safe))
                          (eq? '#t __tmp89631)))))
                 (_equalable85265_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?85263_))
                      (let ()
                        (declare (not safe))
                        (_make-props!85249_ 'equal:))
                      '#f))
                 (_first-new-field85267_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super85241_
                         'gerbil#class::t))
                      (let ((__tmp89632
                             (##structure-ref
                              _type-super85241_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp89632))
                      '1))
                 (_field-info-length85269_
                  (let ((__tmp89633
                         (let ((__tmp89634
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector85243_))))
                           (declare (not safe))
                           (##fx- __tmp89634 _first-new-field85267_))))
                    (declare (not safe))
                    (##fx* '3 __tmp89633)))
                 (_field-info85271_ (make-vector _field-info-length85269_ '#f))
                 (_struct?85273_
                  (let ()
                    (declare (not safe))
                    (assgetq 'struct: _properties85244_)))
                 (_final?85275_
                  (let ()
                    (declare (not safe))
                    (assgetq 'final: _properties85244_)))
                 (_metaclass85283_
                  (let ((_metaclass8527685278_
                         (let ()
                           (declare (not safe))
                           (assgetq 'metaclass: _properties85244_))))
                    (if _metaclass8527685278_
                        (let ((_metaclass85281_ _metaclass8527685278_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass85281_
                                 'gerbil#class::t))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _type-id85239_
                                     'metaclass:
                                     _metaclass85281_))
                          _metaclass85281_)
                        '#f)))
                 (_opaque?85288_
                  (let ((_$e85285_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?85263_))))
                    (if _$e85285_
                        _$e85285_
                        (if _type-super85241_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super85241_))
                            '#f))))
                 (_type-flags85290_
                  (let ((__tmp89638 (if _final?85275_ '0 type-flag-extensible))
                        (__tmp89637 (if _opaque?85288_ type-flag-opaque '0))
                        (__tmp89636
                         (if _struct?85273_ class-type-flag-struct '0))
                        (__tmp89635
                         (if _metaclass85283_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp89638
                             __tmp89637
                             __tmp89636
                             __tmp89635))))
            (let _loop85293_ ((_i85295_ _first-new-field85267_) (_j85296_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j85296_ _field-info-length85269_))
                  (let* ((_slot85298_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector85243_ _i85295_)))
                         (_flags85306_
                          (if _transparent?85251_
                              '0
                              (let ((__tmp89640
                                     (if (or _all-slots-printable?85256_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable85258_
                                                _slot85298_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp89639
                                     (if (or _all-slots-equalable?85263_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable85265_
                                                _slot85298_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp89640 __tmp89639)))))
                    (vector-set! _field-info85271_ _j85296_ _slot85298_)
                    (vector-set!
                     _field-info85271_
                     (let () (declare (not safe)) (##fx+ _j85296_ '1))
                     _flags85306_)
                    (let ((__tmp89642
                           (let () (declare (not safe)) (##fx+ _i85295_ '1)))
                          (__tmp89641
                           (let () (declare (not safe)) (##fx+ _j85296_ '3))))
                      (declare (not safe))
                      (_loop85293_ __tmp89642 __tmp89641)))
                  '#!void))
            (if _metaclass85283_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass85283_
                   _type-id85239_
                   _type-name85240_
                   _type-flags85290_
                   _type-super85241_
                   _field-info85271_
                   _precedence-list85242_
                   _slot-vector85243_
                   _slot-table85246_
                   _properties85244_
                   _constructor85245_
                   _methods85247_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id85239_
                   _type-name85240_
                   _type-flags85290_
                   _type-super85241_
                   _field-info85271_
                   _precedence-list85242_
                   _slot-vector85243_
                   _slot-table85246_
                   _properties85244_
                   _constructor85245_
                   _methods85247_)))))))
    (define class-type-id
      (lambda (_klass85237_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85237_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass85235_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85235_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass85232_ _val85233_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85232_ _val85233_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass85227_ _val85229_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85227_
           _val85229_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass85225_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85225_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass85223_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85223_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass85220_ _val85221_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85220_ _val85221_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass85215_ _val85217_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85215_
           _val85217_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass85213_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85213_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass85211_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85211_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass85208_ _val85209_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85208_ _val85209_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass85203_ _val85205_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85203_
           _val85205_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass85201_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85201_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass85199_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85199_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass85196_ _val85197_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85196_ _val85197_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass85191_ _val85193_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85191_
           _val85193_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass85189_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85189_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass85187_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85187_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass85184_ _val85185_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85184_ _val85185_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass85179_ _val85181_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85179_
           _val85181_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass85177_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85177_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass85175_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass85175_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass85172_ _val85173_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass85172_
           _val85173_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass85167_ _val85169_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85167_
           _val85169_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass85165_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85165_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass85163_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85163_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass85160_ _val85161_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass85160_
           _val85161_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass85155_ _val85157_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85155_
           _val85157_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass85153_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85153_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass85151_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85151_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass85148_ _val85149_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85148_ _val85149_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass85143_ _val85145_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85143_
           _val85145_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass85141_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85141_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass85139_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85139_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass85136_ _val85137_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85136_ _val85137_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass85131_ _val85133_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85131_
           _val85133_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass85129_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85129_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass85127_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85127_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass85124_ _val85125_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass85124_
           _val85125_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass85119_ _val85121_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85119_
           _val85121_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass85117_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85117_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass85115_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85115_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass85112_ _val85113_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85112_ _val85113_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass85107_ _val85109_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85107_
           _val85109_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass85105_)
        (cdr (vector->list (##structure-ref _klass85105_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass85103_)
        (let ((__tmp89643
               (let ((__tmp89644
                      (##structure-ref _klass85103_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp89644))))
          (declare (not safe))
          (##fx- __tmp89643 '1))))
    (define class-type-seal!
      (lambda (_klass85101_)
        (let ((__tmp89645
               (let ((__tmp89646
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85101_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp89646))))
          (declare (not safe))
          (##structure-set!
           _klass85101_
           __tmp89645
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass85099_)
        (let ((__tmp89647
               (let ((__tmp89648
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85099_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp89648))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85099_
           __tmp89647
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct85090_ _maybe-super-struct85091_)
        (let ((_maybe-super-struct-id85093_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct85091_))))
          (let _lp85095_ ((_super-struct85097_ _maybe-sub-struct85090_))
            (if (let () (declare (not safe)) (not _super-struct85097_))
                '#f
                (if (let ((__tmp89650
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct85097_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id85093_ __tmp89650))
                    '#t
                    (let ((__tmp89649
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct85097_))))
                      (declare (not safe))
                      (_lp85095_ __tmp89649))))))))
    (define base-struct/1
      (lambda (_klass85088_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass85088_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass85088_))
                _klass85088_
                (let () (declare (not safe)) (##type-super _klass85088_)))
            (if (let () (declare (not safe)) (not _klass85088_))
                '#f
                (error '"not a class or false" _klass85088_)))))
    (define base-struct/2
      (lambda (_klass185076_ _klass285077_)
        (let ((_s185079_
               (let () (declare (not safe)) (base-struct/1 _klass185076_)))
              (_s285080_
               (let () (declare (not safe)) (base-struct/1 _klass285077_))))
          (if (or (let () (declare (not safe)) (not _s185079_))
                  (and _s285080_
                       (let ()
                         (declare (not safe))
                         (substruct? _s185079_ _s285080_))))
              _s285080_
              (if (or (let () (declare (not safe)) (not _s285080_))
                      (and _s185079_
                           (let ()
                             (declare (not safe))
                             (substruct? _s285080_ _s185079_))))
                  _s185079_
                  (error '"bad mixin: incompatible struct bases"
                         _klass185076_
                         _klass285077_
                         _s185079_
                         _s285080_))))))
    (define base-struct/list
      (lambda (_all-supers84960_)
        (let* ((_all-supers8496184986_ _all-supers84960_)
               (_E8496684990_
                (lambda ()
                  (error '"No clause matching" _all-supers8496184986_))))
          (let ((_K8498485073_ (lambda () '#f))
                (_K8498185059_
                 (lambda (_x85057_)
                   (let () (declare (not safe)) (base-struct/1 _x85057_))))
                (_K8497685036_
                 (lambda (_y85033_ _x85034_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x85034_ _y85033_))))
                (_K8496784997_
                 (lambda (_y84994_ _x84995_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x84995_ _y84994_)))))
            (let* ((___match8960289603_
                    (lambda (_hd8496885000_ _tl8496985002_)
                      (let ((_x85005_ _hd8496885000_))
                        (letrec ((_splice-rest8497185007_
                                  (lambda (_rest8497585014_ _y85016_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8497585014_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8496784997_ _y85016_ _x85005_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8496684990_)))))
                                 (_splice-try8497385009_
                                  (lambda (_hd8497485018_
                                           _rest8497585020_
                                           _y8497085021_)
                                    (let ((_y85024_ _hd8497485018_))
                                      (let ((__tmp89652
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8497585020_)))
                                            (__tmp89651
                                             (let ()
                                               (declare (not safe))
                                               (cons _y85024_ _y8497085021_))))
                                        (declare (not safe))
                                        (_splice-loop8497285011_
                                         __tmp89652
                                         __tmp89651)))))
                                 (_splice-loop8497285011_
                                  (lambda (_rest8497585026_ _y8497085027_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8497585026_))
                                        (let ((__tmp89654
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8497585026_))))
                                          (declare (not safe))
                                          (_splice-try8497385009_
                                           __tmp89654
                                           _rest8497585026_
                                           _y8497085027_))
                                        (let ((__tmp89653
                                               (reverse _y8497085027_)))
                                          (declare (not safe))
                                          (_splice-rest8497185007_
                                           _rest8497585026_
                                           __tmp89653))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8497285011_ _tl8496985002_ '()))))))
                   (_try-match8496385069_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8496184986_))
                          (let ((_tl8498385064_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8496184986_)))
                                (_hd8498285062_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8496184986_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8498385064_))
                                (let ((_x85067_ _hd8498285062_))
                                  (declare (not safe))
                                  (base-struct/1 _x85067_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8498385064_))
                                    (let ((_tl8498085048_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8498385064_)))
                                          (_hd8497985046_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8498385064_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8498085048_))
                                          (let ((_x85044_ _hd8498285062_)
                                                (_y85051_ _hd8497985046_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8497685036_
                                               _y85051_
                                               _x85044_)))
                                          (___match8960289603_
                                           _hd8498285062_
                                           _tl8498385064_)))
                                    (___match8960289603_
                                     _hd8498285062_
                                     _tl8498385064_))))
                          (let () (declare (not safe)) (_E8496684990_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8496184986_))
                  (let () (declare (not safe)) (_K8498485073_))
                  (let () (declare (not safe)) (_try-match8496385069_))))))))
    (define base-struct
      (lambda _all-supers84958_
        (let () (declare (not safe)) (base-struct/list _all-supers84958_))))
    (define find-super-constructor
      (lambda (_super84910_)
        (let _lp84912_ ((_rest84914_ _super84910_) (_constructor84915_ '#f))
          (let* ((_rest8491684924_ _rest84914_)
                 (_else8491884932_ (lambda () _constructor84915_))
                 (_K8492084946_
                  (lambda (_rest84935_ _hd84936_)
                    (let ((_$e84938_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd84936_
                              '10
                              class::t
                              '#f))))
                      (if _$e84938_
                          ((lambda (_xconstructor84941_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor84915_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor84915_
                                            _xconstructor84941_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp84912_ _rest84935_ _xconstructor84941_))
                                 (error '"conflicting implicit constructors"
                                        _constructor84915_
                                        _xconstructor84941_)))
                           _$e84938_)
                          (let ()
                            (declare (not safe))
                            (_lp84912_ _rest84935_ _constructor84915_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8491684924_))
                (let ((_hd8492184949_
                       (let () (declare (not safe)) (##car _rest8491684924_)))
                      (_tl8492284951_
                       (let () (declare (not safe)) (##cdr _rest8491684924_))))
                  (let* ((_hd84954_ _hd8492184949_)
                         (_rest84956_ _tl8492284951_))
                    (declare (not safe))
                    (_K8492084946_ _rest84956_ _hd84954_)))
                (let () (declare (not safe)) (_else8491884932_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list84886_ _direct-slots84887_)
        (let* ((_next-slot84889_ '1)
               (_slot-table84891_
                (let () (declare (not safe)) (make-symbolic-table '#f '0)))
               (_r-slots84893_ '(__class))
               (_process-slot84897_
                (lambda (_slot84895_)
                  (if (let () (declare (not safe)) (symbol? _slot84895_))
                      '#!void
                      (error '"invalid slot name" _slot84895_))
                  (if (let ((__tmp89656
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table84891_
                                _slot84895_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp89656 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table84891_
                           _slot84895_
                           _next-slot84889_))
                        (let ((__tmp89655 (symbol->keyword _slot84895_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table84891_
                           __tmp89655
                           _next-slot84889_))
                        (set! _r-slots84893_
                              (let ()
                                (declare (not safe))
                                (cons _slot84895_ _r-slots84893_)))
                        (set! _next-slot84889_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot84889_ '1))))
                      '#!void)))
               (_process-slots84903_
                (lambda (_g8489884900_)
                  (for-each _process-slot84897_ _g8489884900_))))
          (for-each
           (lambda (_mixin84906_)
             (let ((__tmp89657
                    (let ((__tmp89658
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin84906_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp89658 '()))))
               (declare (not safe))
               (_process-slots84903_ __tmp89657)))
           (reverse _class-precedence-list84886_))
          (let ()
            (declare (not safe))
            (_process-slots84903_ _direct-slots84887_))
          (let ((_slot-vector84908_ (list->vector (reverse _r-slots84893_))))
            (values _slot-vector84908_ _slot-table84891_)))))
    (define make-class-type
      (lambda (_id84848_
               _name84849_
               _direct-supers84850_
               _direct-slots84851_
               _properties84852_
               _constructor84853_)
        (let ((_$e84858_
               (let ((__tmp89659
                      (lambda (_$obj84855_)
                        (let ((__tmp89660
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj84855_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp89660)))))
                 (declare (not safe))
                 (find __tmp89659 _direct-supers84850_))))
          (if _$e84858_
              ((lambda (_g8486084862_)
                 (error '"Illegal super class; not a class descriptor"
                        _g8486084862_))
               _$e84858_)
              (let ((_$e84865_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers84850_))))
                (if _$e84865_
                    ((lambda (_g8486784869_)
                       (error '"Cannot extend final class" _g8486784869_))
                     _$e84865_)
                    '#!void))))
        (let ((_g89661_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers84850_))))
          (begin
            (let ((_g89662_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g89661_) (##vector-length _g89661_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g89662_ 2)))
                  (error "Context expects 2 values" _g89662_)))
            (let ((_precedence-list84872_
                   (let () (declare (not safe)) (##vector-ref _g89661_ 0)))
                  (_struct-super84873_
                   (let () (declare (not safe)) (##vector-ref _g89661_ 1))))
              (let ((_g89663_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list84872_
                        _direct-slots84851_))))
                (begin
                  (let ((_g89664_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g89663_)
                               (##vector-length _g89663_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g89664_ 2)))
                        (error "Context expects 2 values" _g89664_)))
                  (let ((_slot-vector84875_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89663_ 0)))
                        (_slot-table84876_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89663_ 1))))
                    (let* ((_properties84878_
                            (let ((__tmp89667
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots84851_)))
                                  (__tmp89665
                                   (let ((__tmp89666
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers84850_))))
                                     (declare (not safe))
                                     (cons __tmp89666 _properties84852_))))
                              (declare (not safe))
                              (cons __tmp89667 __tmp89665)))
                           (_constructor*84883_
                            (let ((_$e84880_ _constructor84853_))
                              (if _$e84880_
                                  _$e84880_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers84850_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id84848_
                         _name84849_
                         _struct-super84873_
                         _precedence-list84872_
                         _slot-vector84875_
                         _properties84878_
                         _constructor*84883_
                         _slot-table84876_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass84846_)
        (let ((__tmp89668
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass84846_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass84846_ __tmp89668))))
    (define compute-precedence-list
      (lambda (_direct-supers84844_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers84844_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass84828_)
        (let ((_tid84830_
               (let () (declare (not safe)) (##type-id _klass84828_))))
          (if (let () (declare (not safe)) (class-type-final? _klass84828_))
              (lambda (_g8483184833_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8483184833_ _tid84830_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass84828_))
                  (lambda (_g8483584837_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g8483584837_ _tid84830_)))
                  (lambda (_g8483984841_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass84828_ _g8483984841_))))))))
    (define if-class-slot-field
      (lambda (_klass84817_
               _slot84818_
               _if-final84819_
               _if-struct84820_
               _if-struct-field84821_
               _if-class-slot84822_)
        (let ((_field84824_
               (let ((__tmp89669
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass84817_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp89669 _slot84818_ '#f))))
          (if (let () (declare (not safe)) (not _field84824_))
              (error '"unknown slot" 'class: _klass84817_ 'slot: _slot84818_)
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass84817_))
                  (_if-final84819_ _klass84817_ _slot84818_ _field84824_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass84817_))
                      (_if-struct84820_ _klass84817_ _slot84818_ _field84824_)
                      (if (let ((_strukt84826_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass84817_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt84826_
                                    'gerbil#class::t))
                                 (let ((__tmp89670
                                        (let ((__tmp89671
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt84826_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp89671))))
                                   (declare (not safe))
                                   (##fx< _field84824_ __tmp89670))))
                          (_if-struct-field84821_
                           _klass84817_
                           _slot84818_
                           _field84824_)
                          (_if-class-slot84822_
                           _klass84817_
                           _slot84818_
                           _field84824_))))))))
    (define make-class-slot-accessor
      (lambda (_klass84814_ _slot84815_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84814_
           _slot84815_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass84811_ _slot84812_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84811_
           _slot84812_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass84808_ _slot84809_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84808_
           _slot84809_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass84805_ _slot84806_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84805_
           _slot84806_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object84789_ _class84790_ _slot84791_)
        (apply error
               '"not an instance"
               'object:
               _object84789_
               'class:
               _class84790_
               (if _slot84791_
                   (let ((__tmp89672
                          (let ()
                            (declare (not safe))
                            (cons _slot84791_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp89672))
                   '()))))
    (define not-an-instance__0
      (lambda (_object84796_ _class84797_)
        (let ((_slot84799_ '#f))
          (declare (not safe))
          (not-an-instance__% _object84796_ _class84797_ _slot84799_))))
    (define not-an-instance
      (lambda _g89674_
        (let ((_g89673_ (let () (declare (not safe)) (##length _g89674_))))
          (cond ((let () (declare (not safe)) (##fx= _g89673_ 2))
                 (apply (lambda (_object84796_ _class84797_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object84796_ _class84797_)))
                        _g89674_))
                ((let () (declare (not safe)) (##fx= _g89673_ 3))
                 (apply (lambda (_object84801_ _class84802_ _slot84803_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object84801_
                             _class84802_
                             _slot84803_)))
                        _g89674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g89674_))))))
    (define make-final-slot-accessor
      (lambda (_klass84782_ _slot84783_ _field84784_)
        (lambda (_obj84786_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj84786_
             _field84784_
             _klass84782_
             _slot84783_)))))
    (define make-final-slot-mutator
      (lambda (_klass84775_ _slot84776_ _field84777_)
        (lambda (_obj84779_ _val84780_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj84779_
             _val84780_
             _field84777_
             _klass84775_
             _slot84776_)))))
    (define make-struct-slot-accessor
      (lambda (_klass84769_ _slot84770_ _field84771_)
        (lambda (_obj84773_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj84773_
             _field84771_
             _klass84769_
             _slot84770_)))))
    (define make-struct-slot-mutator
      (lambda (_klass84762_ _slot84763_ _field84764_)
        (lambda (_obj84766_ _val84767_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj84766_
             _val84767_
             _field84764_
             _klass84762_
             _slot84763_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass84756_ _slot84757_ _field84758_)
        (lambda (_obj84760_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj84760_
             _field84758_
             _klass84756_
             _slot84757_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass84749_ _slot84750_ _field84751_)
        (lambda (_obj84753_ _val84754_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj84753_
             _val84754_
             _field84751_
             _klass84749_
             _slot84750_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass84743_ _slot84744_ _field84745_)
        (lambda (_obj84747_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass84743_ _obj84747_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj84747_ _field84745_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84747_ _klass84743_ _slot84744_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass84736_ _slot84737_ _field84738_)
        (lambda (_obj84740_ _val84741_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass84736_ _obj84740_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84740_ _field84738_ _val84741_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84740_ _klass84736_ _slot84737_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass84730_ _slot84731_ _field84732_)
        (lambda (_obj84734_)
          (if (let ((__tmp89675
                     (let () (declare (not safe)) (##type-id _klass84730_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84734_ __tmp89675))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84734_ _field84732_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass84730_ _obj84734_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj84734_ _slot84731_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj84734_
                     _klass84730_
                     _slot84731_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass84723_ _slot84724_ _field84725_)
        (lambda (_obj84727_ _val84728_)
          (if (let ((__tmp89676
                     (let () (declare (not safe)) (##type-id _klass84723_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84727_ __tmp89676))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84727_ _field84725_ _val84728_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass84723_ _obj84727_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj84727_ _slot84724_ _val84728_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj84727_
                     _klass84723_
                     _slot84724_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass84717_ _slot84718_ _field84719_)
        (lambda (_obj84721_)
          (if (let ((__tmp89677
                     (let () (declare (not safe)) (##type-id _klass84717_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84721_ __tmp89677))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84721_ _field84719_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj84721_ _slot84718_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass84710_ _slot84711_ _field84712_)
        (lambda (_obj84714_ _val84715_)
          (if (let ((__tmp89678
                     (let () (declare (not safe)) (##type-id _klass84710_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84714_ __tmp89678))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84714_ _field84712_ _val84715_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj84714_ _slot84711_ _val84715_))))))
    (define class-slot-offset
      (lambda (_klass84707_ _slot84708_)
        (let ((__tmp89679
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass84707_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp89679 _slot84708_ '#f))))
    (define class-slot-ref
      (lambda (_klass84701_ _obj84702_ _slot84703_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass84701_ _obj84702_))
            (let ((_off84705_
                   (let ((__tmp89680
                          (let ()
                            (declare (not safe))
                            (object-type _obj84702_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89680 _slot84703_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj84702_
               _off84705_
               _klass84701_
               _slot84703_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj84702_ _klass84701_)))))
    (define class-slot-set!
      (lambda (_klass84694_ _obj84695_ _slot84696_ _val84697_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass84694_ _obj84695_))
            (let ((_off84699_
                   (let ((__tmp89681
                          (let ()
                            (declare (not safe))
                            (object-type _obj84695_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89681 _slot84696_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj84695_
               _val84697_
               _off84699_
               _klass84694_
               _slot84696_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj84695_ _klass84694_)))))
    (define unchecked-field-ref
      (lambda (_obj84691_ _off84692_)
        (let ((__tmp89682
               (let () (declare (not safe)) (##structure-type _obj84691_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj84691_ _off84692_ __tmp89682 '#f))))
    (define unchecked-field-set!
      (lambda (_obj84687_ _off84688_ _val84689_)
        (let ((__tmp89683
               (let () (declare (not safe)) (##structure-type _obj84687_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj84687_
           _val84689_
           _off84688_
           __tmp89683
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj84684_ _slot84685_)
        (let ((__tmp89684
               (let ((__tmp89685
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj84684_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89685 _slot84685_))))
          (declare (not safe))
          (unchecked-field-ref _obj84684_ __tmp89684))))
    (define unchecked-slot-set!
      (lambda (_obj84680_ _slot84681_ _val84682_)
        (let ((__tmp89686
               (let ((__tmp89687
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj84680_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89687 _slot84681_))))
          (declare (not safe))
          (unchecked-field-set! _obj84680_ __tmp89686 _val84682_))))
    (define slot-ref__%
      (lambda (_obj84656_ _slot84657_ _E84658_)
        (if (let () (declare (not safe)) (object? _obj84656_))
            (let* ((_klass84660_
                    (let () (declare (not safe)) (object-type _obj84656_)))
                   (_$e84663_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass84660_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass84660_ _slot84657_))
                        '#f)))
              (if _$e84663_
                  ((lambda (_off84666_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj84656_ _off84666_)))
                   _$e84663_)
                  (_E84658_ _obj84656_ _slot84657_)))
            (_E84658_ _obj84656_ _slot84657_))))
    (define slot-ref__0
      (lambda (_obj84671_ _slot84672_)
        (let ((_E84674_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj84671_ _slot84672_ _E84674_))))
    (define slot-ref
      (lambda _g89689_
        (let ((_g89688_ (let () (declare (not safe)) (##length _g89689_))))
          (cond ((let () (declare (not safe)) (##fx= _g89688_ 2))
                 (apply (lambda (_obj84671_ _slot84672_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj84671_ _slot84672_)))
                        _g89689_))
                ((let () (declare (not safe)) (##fx= _g89688_ 3))
                 (apply (lambda (_obj84676_ _slot84677_ _E84678_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj84676_ _slot84677_ _E84678_)))
                        _g89689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g89689_))))))
    (define slot-set!__%
      (lambda (_obj84628_ _slot84629_ _val84630_ _E84631_)
        (if (let () (declare (not safe)) (object? _obj84628_))
            (let* ((_klass84633_
                    (let () (declare (not safe)) (object-type _obj84628_)))
                   (_$e84636_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass84633_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass84633_ _slot84629_))
                        '#f)))
              (if _$e84636_
                  ((lambda (_off84639_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj84628_
                        _off84639_
                        _val84630_)))
                   _$e84636_)
                  (_E84631_ _obj84628_ _slot84629_)))
            (_E84631_ _obj84628_ _slot84629_))))
    (define slot-set!__0
      (lambda (_obj84644_ _slot84645_ _val84646_)
        (let ((_E84648_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj84644_ _slot84645_ _val84646_ _E84648_))))
    (define slot-set!
      (lambda _g89691_
        (let ((_g89690_ (let () (declare (not safe)) (##length _g89691_))))
          (cond ((let () (declare (not safe)) (##fx= _g89690_ 3))
                 (apply (lambda (_obj84644_ _slot84645_ _val84646_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj84644_ _slot84645_ _val84646_)))
                        _g89691_))
                ((let () (declare (not safe)) (##fx= _g89690_ 4))
                 (apply (lambda (_obj84650_ _slot84651_ _val84652_ _E84653_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj84650_
                             _slot84651_
                             _val84652_
                             _E84653_)))
                        _g89691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g89691_))))))
    (define __slot-error
      (lambda (_obj84624_ _slot84625_)
        (error '"Cannot find slot" 'object: _obj84624_ 'slot: _slot84625_)))
    (define subclass?
      (lambda (_maybe-sub-class84614_ _maybe-super-class84615_)
        (let* ((_maybe-super-class-id84617_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class84615_)))
               (_$e84619_
                (let ((__tmp89692
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class84614_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id84617_ __tmp89692))))
          (if _$e84619_
              _$e84619_
              (let ((__tmp89694
                     (lambda (_super-class84622_)
                       (let ((__tmp89695
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class84622_))))
                         (declare (not safe))
                         (eq? __tmp89695 _maybe-super-class-id84617_))))
                    (__tmp89693
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class84614_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp89694 __tmp89693))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass84611_ _obj84612_)
        (let ((__tmp89696
               (let () (declare (not safe)) (##type-id _klass84611_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj84612_ __tmp89696))))
    (define struct-instance?
      (lambda (_klass84608_ _obj84609_)
        (let ((__tmp89697
               (let () (declare (not safe)) (##type-id _klass84608_))))
          (declare (not safe))
          (##structure-instance-of? _obj84609_ __tmp89697))))
    (define class-instance?
      (lambda (_klass84603_ _obj84604_)
        (if (let () (declare (not safe)) (object? _obj84604_))
            (let ((_type84606_
                   (let () (declare (not safe)) (object-type _obj84604_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type84606_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type84606_ _klass84603_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass84598_ _k84599_)
        (let ((_obj84601_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass84598_ _k84599_))))
          (let () (declare (not safe)) (object-fill! _obj84601_ '#f))
          _obj84601_)))
    (define object-fill!
      (lambda (_obj84591_ _fill84592_)
        (let _loop84594_ ((_i84596_
                           (let ((__tmp89699
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj84591_))))
                             (declare (not safe))
                             (##fx- __tmp89699 '1))))
          (if (let () (declare (not safe)) (##fx> _i84596_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj84591_
                   _fill84592_
                   _i84596_
                   '#f
                   '#f))
                (let ((__tmp89698
                       (let () (declare (not safe)) (##fx- _i84596_ '1))))
                  (declare (not safe))
                  (_loop84594_ __tmp89698)))
              _obj84591_))))
    (define new-instance
      (lambda (_klass84589_)
        (let ((__obj89604
               (let ((__tmp89700
                      (let ((__tmp89701
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass84589_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp89701))))
                 (declare (not safe))
                 (##make-structure _klass84589_ __tmp89700))))
          (let () (declare (not safe)) (object-fill! __obj89604 '#f))
          __obj89604)))
    (define make-instance
      (lambda (_klass84579_ . _args84580_)
        (let* ((_obj84582_
                (let () (declare (not safe)) (new-instance _klass84579_)))
               (_$e84584_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass84579_ '10 class::t '#f))))
          (if _$e84584_
              ((lambda (_kons-id84587_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass84579_
                    _kons-id84587_
                    _obj84582_
                    _args84580_)))
               _$e84584_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass84579_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass84579_
                     _obj84582_
                     _args84580_))
                  (if (let ((__tmp89705
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass84579_))))
                        (declare (not safe))
                        (not __tmp89705))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass84579_
                         _obj84582_
                         _args84580_))
                      (if (let ((__tmp89703
                                 (let ((__tmp89704
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj84582_))))
                                   (declare (not safe))
                                   (##fx- __tmp89704 '1)))
                                (__tmp89702 (length _args84580_)))
                            (declare (not safe))
                            (##fx= __tmp89703 __tmp89702))
                          (apply ##structure _klass84579_ _args84580_)
                          (error '"arguments don't match object size"
                                 'class:
                                 _klass84579_
                                 'slots:
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass84579_))
                                 'args:
                                 _args84580_))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj84576_ . _args84577_)
        (if (let ((__tmp89707 (length _args84577_))
                  (__tmp89706
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj84576_))))
              (declare (not safe))
              (##fx< __tmp89707 __tmp89706))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj84576_ _args84577_))
            (error '"too many arguments for struct"
                   'object:
                   _obj84576_
                   'args:
                   _args84577_))))
    (define __struct-instance-init!
      (lambda (_obj84535_ _args84536_)
        (let _lp84538_ ((_k84540_ '1) (_rest84541_ _args84536_))
          (let* ((_rest8454284550_ _rest84541_)
                 (_else8454484558_ (lambda () _obj84535_))
                 (_K8454684564_
                  (lambda (_rest84561_ _hd84562_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj84535_ _k84540_ _hd84562_))
                    (let ((__tmp89708
                           (let () (declare (not safe)) (##fx+ _k84540_ '1))))
                      (declare (not safe))
                      (_lp84538_ __tmp89708 _rest84561_)))))
            (if (let () (declare (not safe)) (##pair? _rest8454284550_))
                (let ((_hd8454784567_
                       (let () (declare (not safe)) (##car _rest8454284550_)))
                      (_tl8454884569_
                       (let () (declare (not safe)) (##cdr _rest8454284550_))))
                  (let* ((_hd84572_ _hd8454784567_)
                         (_rest84574_ _tl8454884569_))
                    (declare (not safe))
                    (_K8454684564_ _rest84574_ _hd84572_)))
                (let () (declare (not safe)) (_else8454484558_)))))))
    (define class-instance-init!
      (lambda (_obj84532_ . _args84533_)
        (let ((__tmp89709
               (let () (declare (not safe)) (object-type _obj84532_))))
          (declare (not safe))
          (__class-instance-init! __tmp89709 _obj84532_ _args84533_))))
    (define __class-instance-init!
      (lambda (_klass84476_ _obj84477_ _args84478_)
        (let _lp84480_ ((_rest84482_ _args84478_))
          (let* ((_rest8448384493_ _rest84482_)
                 (_else8448584501_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest84482_))
                        _obj84477_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass84476_
                               'rest:
                               _rest84482_))))
                 (_K8448784513_
                  (lambda (_rest84504_ _val84505_ _key84506_)
                    (let ((_$e84508_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass84476_ _key84506_))))
                      (if _$e84508_
                          ((lambda (_off84511_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj84477_
                                _off84511_
                                _val84505_))
                             (let ()
                               (declare (not safe))
                               (_lp84480_ _rest84504_)))
                           _$e84508_)
                          (error '"unknown slot"
                                 'class:
                                 _klass84476_
                                 'slot:
                                 _key84506_))))))
            (if (let () (declare (not safe)) (##pair? _rest8448384493_))
                (let ((_hd8448884516_
                       (let () (declare (not safe)) (##car _rest8448384493_)))
                      (_tl8448984518_
                       (let () (declare (not safe)) (##cdr _rest8448384493_))))
                  (let ((_key84521_ _hd8448884516_))
                    (if (let () (declare (not safe)) (##pair? _tl8448984518_))
                        (let ((_hd8449084523_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8448984518_)))
                              (_tl8449184525_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8448984518_))))
                          (let* ((_val84528_ _hd8449084523_)
                                 (_rest84530_ _tl8449184525_))
                            (declare (not safe))
                            (_K8448784513_ _rest84530_ _val84528_ _key84521_)))
                        (let () (declare (not safe)) (_else8448584501_)))))
                (let () (declare (not safe)) (_else8448584501_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass84472_ _obj84473_ _args84474_)
        (apply call-method
               _klass84472_
               'instance-init!
               _obj84473_
               _args84474_)))
    (define constructor-init!
      (lambda (_klass84467_ _kons-id84468_ _obj84469_ . _args84470_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass84467_
           _kons-id84468_
           _obj84469_
           _args84470_))))
    (define __constructor-init!
      (lambda (_klass84457_ _kons-id84458_ _obj84459_ _args84460_)
        (let ((_$e84462_
               (let ()
                 (declare (not safe))
                 (__find-method _klass84457_ _obj84459_ _kons-id84458_))))
          (if _$e84462_
              ((lambda (_kons84465_)
                 (apply _kons84465_ _obj84459_ _args84460_)
                 _obj84459_)
               _$e84462_)
              (error '"missing constructor"
                     'class:
                     _klass84457_
                     'method:
                     _kons-id84458_)))))
    (define struct-copy
      (lambda (_struct84455_)
        (if (let () (declare (not safe)) (##structure? _struct84455_))
            '#!void
            (error '"not a structure" _struct84455_))
        (let () (declare (not safe)) (##structure-copy _struct84455_))))
    (define struct->list
      (lambda (_obj84453_)
        (if (let () (declare (not safe)) (object? _obj84453_))
            (let () (declare (not safe)) (##vector->list _obj84453_))
            (error '"not an object" _obj84453_))))
    (define class->list
      (lambda (_obj84440_)
        (if (let () (declare (not safe)) (object? _obj84440_))
            (let ((_klass84442_
                   (let () (declare (not safe)) (object-type _obj84440_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass84442_ 'gerbil#class::t))
                  (let ((_slot-vector84444_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass84442_
                            '7
                            class::t
                            '#f))))
                    (let _loop84446_ ((_index84448_
                                       (let ((__tmp89715
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector84444_))))
                                         (declare (not safe))
                                         (##fx- __tmp89715 '1)))
                                      (_plist84449_ '()))
                      (if (let () (declare (not safe)) (##fx< _index84448_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass84442_ _plist84449_))
                          (let ((_slot84451_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector84444_
                                    _index84448_))))
                            (let ((__tmp89714
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index84448_ '1)))
                                  (__tmp89710
                                   (let ((__tmp89713
                                          (symbol->keyword _slot84451_))
                                         (__tmp89711
                                          (let ((__tmp89712
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj84440_
                                                    _index84448_))))
                                            (declare (not safe))
                                            (cons __tmp89712 _plist84449_))))
                                     (declare (not safe))
                                     (cons __tmp89713 __tmp89711))))
                              (declare (not safe))
                              (_loop84446_ __tmp89714 __tmp89710))))))
                  (error '"not a class type"
                         'object:
                         _obj84440_
                         'class:
                         _klass84442_)))
            (error '"not an object" _obj84440_))))
    (define call-method
      (lambda (_obj84431_ _id84432_ . _args84433_)
        (let ((_$e84435_
               (let ()
                 (declare (not safe))
                 (method-ref _obj84431_ _id84432_))))
          (if _$e84435_
              ((lambda (_method84438_)
                 (apply _method84438_ _obj84431_ _args84433_))
               _$e84435_)
              (error '"cannot find method"
                     'object:
                     _obj84431_
                     'method:
                     _id84432_)))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table '0 '#f)))
    (define method-ref
      (lambda (_obj84428_ _id84429_)
        (if (let () (declare (not safe)) (object? _obj84428_))
            (let ((__tmp89716
                   (let () (declare (not safe)) (object-type _obj84428_))))
              (declare (not safe))
              (find-method __tmp89716 _obj84428_ _id84429_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj84422_ _id84423_)
        (let ((_$e84425_
               (let ()
                 (declare (not safe))
                 (method-ref _obj84422_ _id84423_))))
          (if _$e84425_
              _$e84425_
              (error '"missing method"
                     'object:
                     _obj84422_
                     'method:
                     _id84423_)))))
    (define bound-method-ref
      (lambda (_obj84412_ _id84413_)
        (let ((_$e84415_
               (let ()
                 (declare (not safe))
                 (method-ref _obj84412_ _id84413_))))
          (if _$e84415_
              ((lambda (_method84418_)
                 (lambda _args84420_
                   (apply _method84418_ _obj84412_ _args84420_)))
               _$e84415_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj84405_ _id84406_)
        (let ((_method84408_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj84405_ _id84406_))))
          (lambda _args84410_ (apply _method84408_ _obj84405_ _args84410_)))))
    (define find-method
      (lambda (_klass84401_ _obj84402_ _id84403_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass84401_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass84401_ _obj84402_ _id84403_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass84401_ _obj84402_ _id84403_)))))
    (define __find-method
      (lambda (_klass84394_ _obj84395_ _id84396_)
        (let ((_$e84398_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass84394_ _obj84395_ _id84396_))))
          (if _$e84398_
              _$e84398_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass84394_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass84394_ _obj84395_ _id84396_)))))))
    (define class-find-method
      (lambda (_klass84390_ _obj84391_ _id84392_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass84390_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass84390_ _obj84391_ _id84392_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins84382_ _obj84383_ _id84384_)
        (let ((__tmp89717
               (lambda (_g8438584387_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8438584387_ _obj84383_ _id84384_)))))
          (declare (not safe))
          (ormap1 __tmp89717 _mixins84382_))))
    (define builtin-find-method
      (lambda (_klass84375_ _obj84376_ _id84377_)
        (if (let () (declare (not safe)) (##type? _klass84375_))
            (let ((_$e84379_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass84375_ _obj84376_ _id84377_))))
              (if _$e84379_
                  _$e84379_
                  (let ((__tmp89718
                         (let ()
                           (declare (not safe))
                           (##type-super _klass84375_))))
                    (declare (not safe))
                    (builtin-find-method __tmp89718 _obj84376_ _id84377_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass84352_ _obj84353_ _id84354_)
        (letrec ((_metaclass-resolve-method84356_
                  (lambda ()
                    (let ((__method89605
                           (let ()
                             (declare (not safe))
                             (method-ref _klass84352_ 'direct-method-ref))))
                      (if __method89605
                          (__method89605 _klass84352_ _obj84353_ _id84354_)
                          (error '"Missing method"
                                 _klass84352_
                                 'direct-method-ref)))))
                 (_metaclass-resolve-method!84357_
                  (lambda ()
                    (let ((_method84372_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method84356_))))
                      (let ((__tmp89720
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass84352_
                                '11
                                class::t
                                '#f)))
                            (__tmp89719 (if _method84372_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp89720 _id84354_ __tmp89719))
                      _method84372_))))
          (let ((_$e84359_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass84352_ '11 class::t '#f))))
            (if _$e84359_
                ((lambda (_ht84362_)
                   (let ((_method84364_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht84362_ _id84354_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method84364_))
                         _method84364_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass84352_))
                             (let ((_$e84366_ _method84364_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e84366_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method84356_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e84366_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!84357_)))))
                             '#f))))
                 _$e84359_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass84352_))
                    (let ((_tab84369_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass84352_
                         _tab84369_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!84357_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass84348_ _obj84349_ _id84350_)
        (let ((__tmp89721 (##structure-ref _klass84348_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp89721 _obj84349_ _id84350_))))
    (define builtin-method-ref
      (lambda (_klass84339_ _obj84340_ _id84341_)
        (let ((_$e84343_
               (let ((__tmp89722
                      (let () (declare (not safe)) (##type-id _klass84339_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp89722 '#f))))
          (if _$e84343_
              ((lambda (_mtab84346_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab84346_ _id84341_ '#f)))
               _$e84343_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass84305_ _id84306_ _proc84307_ _rebind?84308_)
        (letrec ((_bind!84310_
                  (lambda (_ht84323_)
                    (if (and (let () (declare (not safe)) (not _rebind?84308_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht84323_ _id84306_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass84305_
                               'method:
                               _id84306_)
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht84323_
                           _id84306_
                           _proc84307_))))))
          (if (let () (declare (not safe)) (procedure? _proc84307_))
              '#!void
              (error '"bad method; expected procedure" _proc84307_))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass84305_ 'gerbil#class::t))
              (let ((_ht84312_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass84305_
                        '11
                        class::t
                        '#f))))
                (if _ht84312_
                    (let () (declare (not safe)) (_bind!84310_ _ht84312_))
                    (let ((_ht84314_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass84305_
                         _ht84314_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!84310_ _ht84314_)))))
              (if (let () (declare (not safe)) (##type? _klass84305_))
                  (let ((_ht84321_
                         (let ((_$e84316_
                                (let ((__tmp89723
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass84305_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp89723
                                   '#f))))
                           (if _$e84316_
                               _$e84316_
                               (let ((_ht84319_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table '#f '0))))
                                 (let ((__tmp89724
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass84305_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp89724
                                    _ht84319_))
                                 _ht84319_)))))
                    (declare (not safe))
                    (_bind!84310_ _ht84321_))
                  (error '"bad class; expected class or builtin type"
                         _klass84305_))))))
    (define bind-method!__0
      (lambda (_klass84328_ _id84329_ _proc84330_)
        (let ((_rebind?84332_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass84328_
           _id84329_
           _proc84330_
           _rebind?84332_))))
    (define bind-method!
      (lambda _g89726_
        (let ((_g89725_ (let () (declare (not safe)) (##length _g89726_))))
          (cond ((let () (declare (not safe)) (##fx= _g89725_ 3))
                 (apply (lambda (_klass84328_ _id84329_ _proc84330_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass84328_
                             _id84329_
                             _proc84330_)))
                        _g89726_))
                ((let () (declare (not safe)) (##fx= _g89725_ 4))
                 (apply (lambda (_klass84334_
                                 _id84335_
                                 _proc84336_
                                 _rebind?84337_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass84334_
                             _id84335_
                             _proc84336_
                             _rebind?84337_)))
                        _g89726_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g89726_))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-eq-table__% '#f '0)))
    (define bind-specializer!
      (lambda (_proc84301_ _specializer84302_)
        (let ()
          (declare (not safe))
          (eq-table-set!
           __method-specializers
           _proc84301_
           _specializer84302_))))
    (define seal-class!
      (lambda (_klass84268_)
        (letrec ((_collect-methods!84270_
                  (lambda (_mtab84286_)
                    (letrec ((_merge!84288_
                              (lambda (_tab84296_)
                                (let ((__tmp89727
                                       (lambda (_id84298_ _proc84299_)
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-set!
                                            _mtab84286_
                                            _id84298_
                                            _proc84299_)))))
                                  (declare (not safe))
                                  (raw-table-for-each _tab84296_ __tmp89727))))
                             (_collect-direct-methods!84289_
                              (lambda (_klass84291_)
                                (let ((_$e84293_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _klass84291_
                                          '11
                                          class::t
                                          '#f))))
                                  (if _$e84293_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!84288_ _$e84293_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!84289_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass84268_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass84268_ 'gerbil#class::t))
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass84268_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (class-type-final? _klass84268_))
                        '#!void
                        (error '"cannot seal non-final class" _klass84268_))
                    (if (let ()
                          (declare (not safe))
                          (class-type-metaclass? _klass84268_))
                        (let ((__method89606
                               (let ()
                                 (declare (not safe))
                                 (method-ref _klass84268_ 'seal-class!))))
                          (if __method89606
                              (__method89606 _klass84268_)
                              (error '"Missing method"
                                     _klass84268_
                                     'seal-class!)))
                        (if (let ((__tmp89734
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _klass84268_
                                      '6
                                      class::t
                                      '#f))))
                              (declare (not safe))
                              (find class-type-metaclass? __tmp89734))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass84268_)
                            (let ((_vtab84272_
                                   (let ()
                                     (declare (not safe))
                                     (make-symbolic-table '#f '0)))
                                  (_mtab84273_
                                   (let ()
                                     (declare (not safe))
                                     (make-symbolic-table '#f '0))))
                              (let ()
                                (declare (not safe))
                                (_collect-methods!84270_ _mtab84273_))
                              (let ((__tmp89728
                                     (lambda (_id84275_ _proc84276_)
                                       (let ((_$e84278_
                                              (let ()
                                                (declare (not safe))
                                                (eq-table-ref
                                                 __method-specializers
                                                 _proc84276_
                                                 '#f))))
                                         (if _$e84278_
                                             ((lambda (_specializer84281_)
                                                (let ((_proc84283_
                                                       (_specializer84281_
                                                        _klass84268_))
                                                      (_gid84284_
                                                       (let ((__tmp89729
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##type-id _klass84268_))))
                 (declare (not safe))
                 (make-symbol__1 __tmp89729 '"::[" _id84275_ '"]"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (eval (let ((__tmp89730
                                                               (let ((__tmp89731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp89732
                                     (let ((__tmp89733
                                            (let ()
                                              (declare (not safe))
                                              (cons _proc84283_ '()))))
                                       (declare (not safe))
                                       (cons 'quote __tmp89733))))
                                (declare (not safe))
                                (cons __tmp89732 '()))))
                         (declare (not safe))
                         (cons _gid84284_ __tmp89731))))
                  (declare (not safe))
                  (cons 'def __tmp89730)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (symbolic-table-set!
                                                     _vtab84272_
                                                     _id84275_
                                                     _proc84283_))))
                                              _$e84278_)
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-set!
                                                _vtab84272_
                                                _id84275_
                                                _proc84276_)))))))
                                (declare (not safe))
                                (raw-table-for-each _mtab84273_ __tmp89728))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _klass84268_
                                 _vtab84272_
                                 '11
                                 class::t
                                 '#f)))))
                    (let ()
                      (declare (not safe))
                      (&class-type-seal! _klass84268_))))
              '#!void))))
    (define next-method
      (lambda (_subklass84217_ _obj84218_ _id84219_)
        (let ((_klass84221_
               (let () (declare (not safe)) (object-type _obj84218_)))
              (_type-id84222_
               (let () (declare (not safe)) (##type-id _subklass84217_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass84221_ 'gerbil#class::t))
              (let _lp84224_ ((_rest84226_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass84221_))))
                (let* ((_rest8422784235_ _rest84226_)
                       (_else8422984243_ (lambda () '#f))
                       (_K8423184249_
                        (lambda (_rest84246_ _klass84247_)
                          (if (let ((__tmp89737
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass84247_))))
                                (declare (not safe))
                                (eq? _type-id84222_ __tmp89737))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest84246_
                                 _obj84218_
                                 _id84219_))
                              (let ()
                                (declare (not safe))
                                (_lp84224_ _rest84246_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8422784235_))
                      (let ((_hd8423284252_
                             (let ()
                               (declare (not safe))
                               (##car _rest8422784235_)))
                            (_tl8423384254_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8422784235_))))
                        (let* ((_klass84257_ _hd8423284252_)
                               (_rest84259_ _tl8423384254_))
                          (declare (not safe))
                          (_K8423184249_ _rest84259_ _klass84257_)))
                      (let () (declare (not safe)) (_else8422984243_)))))
              (if (let () (declare (not safe)) (##type? _klass84221_))
                  (let _lp84261_ ((_klass84263_ _klass84221_))
                    (if (let ((__tmp89736
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass84263_))))
                          (declare (not safe))
                          (eq? _type-id84222_ __tmp89736))
                        (let ((__tmp89735
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass84263_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp89735
                           _obj84218_
                           _id84219_))
                        (let ((_$e84265_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass84263_))))
                          (if _$e84265_
                              (let ()
                                (declare (not safe))
                                (_lp84261_ _$e84265_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass84207_ _obj84208_ _id84209_ . _args84210_)
        (let ((_$e84212_
               (let ()
                 (declare (not safe))
                 (next-method _subklass84207_ _obj84208_ _id84209_))))
          (if _$e84212_
              ((lambda (_methodf84215_)
                 (apply _methodf84215_ _obj84208_ _args84210_))
               _$e84212_)
              (error '"cannot find next method"
                     'object:
                     _obj84208_
                     'method:
                     _id84209_)))))
    (define write-style (lambda (_we84205_) (macro-writeenv-style _we84205_)))
    (define write-object
      (lambda (_we84197_ _obj84198_)
        (let ((_$e84200_
               (let () (declare (not safe)) (method-ref _obj84198_ ':wr))))
          (if _$e84200_
              ((lambda (_method84203_) (_method84203_ _obj84198_ _we84197_))
               _$e84200_)
              (let ()
                (declare (not safe))
                (##default-wr _we84197_ _obj84198_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
