(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1708289478)
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
      (let* ((_slots85393_
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
             (_slot-vector85395_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots85393_))))
             (_slot-table85402_
              (let ((_slot-table85397_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table '#f '0))))
                (for-each
                 (lambda (_slot85399_ _field85400_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table85397_
                      _slot85399_
                      _field85400_))
                   (let ((__tmp89609 (symbol->keyword _slot85399_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table85397_
                      __tmp89609
                      _field85400_)))
                 _slots85393_
                 (let ((__tmp89610 (length _slots85393_)))
                   (declare (not safe))
                   (iota __tmp89610 '1)))
                _slot-table85397_))
             (_flags85404_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields85410_
              (list->vector
               (apply append
                      (map (lambda (_g8540585407_) (list _g8540585407_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots85393_ '5))))))
             (_properties85412_
              (let ((__tmp89613
                     (let ((__tmp89614
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots85393_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp89614)))
                    (__tmp89611
                     (let ((__tmp89612
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp89612 '()))))
                (declare (not safe))
                (cons __tmp89613 __tmp89611)))
             (_t85414_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags85404_
                 ##type-type
                 _fields85410_
                 '()
                 _slot-vector85395_
                 _slot-table85402_
                 _properties85412_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t85414_ _t85414_))
        _t85414_))
    (define class-type?
      (lambda (_obj85391_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj85391_ class::t.id))))
    (define class-type=?
      (lambda (_x85388_ _y85389_)
        (let ((__tmp89616 (##structure-ref _x85388_ '1 class::t '#f))
              (__tmp89615 (##structure-ref _y85389_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp89616 __tmp89615))))
    (define type-opaque?
      (lambda (_type85386_)
        (let ((__tmp89617
               (let ((__tmp89618
                      (let ()
                        (declare (not safe))
                        (##type-flags _type85386_))))
                 (declare (not safe))
                 (##fxand __tmp89618 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp89617 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type85384_)
        (let ((__tmp89619
               (let ((__tmp89620
                      (let ()
                        (declare (not safe))
                        (##type-flags _type85384_))))
                 (declare (not safe))
                 (##fxand __tmp89620 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp89619 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type85382_)
        (let ((__tmp89621
               (let ((__tmp89622
                      (let ()
                        (declare (not safe))
                        (##type-flags _type85382_))))
                 (declare (not safe))
                 (##fxand __tmp89622 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp89621 '0))))
    (define class-type-struct?
      (lambda (_klass85380_)
        (let ((__tmp89623
               (let ((__tmp89624
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85380_))))
                 (declare (not safe))
                 (##fxand __tmp89624 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp89623 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass85378_)
        (let ((__tmp89625
               (let ((__tmp89626
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85378_))))
                 (declare (not safe))
                 (##fxand __tmp89626 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp89625 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass85376_)
        (let ((__tmp89627
               (let ((__tmp89628
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85376_))))
                 (declare (not safe))
                 (##fxand __tmp89628 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp89627 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties85342_)
        (map (lambda (_e8534385345_)
               (let* ((_g8534785354_ _e8534385345_)
                      (_E8534985358_
                       (lambda () (error '"No clause matching" _g8534785354_)))
                      (_K8535085364_
                       (lambda (_val85361_ _key85362_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key85362_ 'direct-supers:))
                             (let ((__tmp89629 (map class-type-id _val85361_)))
                               (declare (not safe))
                               (cons _key85362_ __tmp89629))
                             (let ()
                               (declare (not safe))
                               (cons _key85362_ _val85361_))))))
                 (if (let () (declare (not safe)) (##pair? _g8534785354_))
                     (let ((_hd8535185367_
                            (let ()
                              (declare (not safe))
                              (##car _g8534785354_)))
                           (_tl8535285369_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8534785354_))))
                       (let* ((_key85372_ _hd8535185367_)
                              (_val85374_ _tl8535285369_))
                         (declare (not safe))
                         (_K8535085364_ _val85374_ _key85372_)))
                     (let () (declare (not safe)) (_E8534985358_)))))
             _properties85342_)))
    (define make-class-type-descriptor
      (lambda (_type-id85241_
               _type-name85242_
               _type-super85243_
               _precedence-list85244_
               _slot-vector85245_
               _properties85246_
               _constructor85247_
               _slot-table85248_
               _methods85249_)
        (letrec ((_make-props!85251_
                  (lambda (_key85311_)
                    (letrec* ((_ht85313_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table '#f '0)))
                              (_put-slots!85314_
                               (lambda (_ht85335_ _slots85336_)
                                 (for-each
                                  (lambda (_g8533785339_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht85335_
                                       _g8533785339_
                                       '#t)))
                                  _slots85336_)))
                              (_put-alist!85315_
                               (lambda (_ht85324_ _key85325_ _alist85326_)
                                 (let ((_$e85328_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key85325_ _alist85326_))))
                                   (if _$e85328_
                                       ((lambda (_g8533085332_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!85314_
                                             _ht85324_
                                             _g8533085332_)))
                                        _$e85328_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!85315_
                         _ht85313_
                         _key85311_
                         _properties85246_))
                      (for-each
                       (lambda (_mixin85317_)
                         (let ((_alist85319_
                                (##structure-ref
                                 _mixin85317_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist85319_))
                                   (let ((__tmp89631
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key85311_
                                                     _alist85319_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp89631)))
                               (let ((__tmp89630
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin85317_))))
                                 (declare (not safe))
                                 (_put-slots!85314_ _ht85313_ __tmp89630))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!85315_
                                  _ht85313_
                                  _key85311_
                                  _alist85319_)))))
                       _precedence-list85244_)
                      _ht85313_))))
          (let* ((_transparent?85253_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties85246_)))
                 (_all-slots-printable?85258_
                  (let ((_$e85255_ _transparent?85253_))
                    (if _$e85255_
                        _$e85255_
                        (let ((__tmp89632
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties85246_))))
                          (declare (not safe))
                          (eq? '#t __tmp89632)))))
                 (_printable85260_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?85258_))
                      (let ()
                        (declare (not safe))
                        (_make-props!85251_ 'print:))
                      '#f))
                 (_all-slots-equalable?85265_
                  (let ((_$e85262_ _transparent?85253_))
                    (if _$e85262_
                        _$e85262_
                        (let ((__tmp89633
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties85246_))))
                          (declare (not safe))
                          (eq? '#t __tmp89633)))))
                 (_equalable85267_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?85265_))
                      (let ()
                        (declare (not safe))
                        (_make-props!85251_ 'equal:))
                      '#f))
                 (_first-new-field85269_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super85243_
                         'gerbil#class::t))
                      (let ((__tmp89634
                             (##structure-ref
                              _type-super85243_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp89634))
                      '1))
                 (_field-info-length85271_
                  (let ((__tmp89635
                         (let ((__tmp89636
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector85245_))))
                           (declare (not safe))
                           (##fx- __tmp89636 _first-new-field85269_))))
                    (declare (not safe))
                    (##fx* '3 __tmp89635)))
                 (_field-info85273_ (make-vector _field-info-length85271_ '#f))
                 (_struct?85275_
                  (let ()
                    (declare (not safe))
                    (assgetq 'struct: _properties85246_)))
                 (_final?85277_
                  (let ()
                    (declare (not safe))
                    (assgetq 'final: _properties85246_)))
                 (_metaclass85285_
                  (let ((_metaclass8527885280_
                         (let ()
                           (declare (not safe))
                           (assgetq 'metaclass: _properties85246_))))
                    (if _metaclass8527885280_
                        (let ((_metaclass85283_ _metaclass8527885280_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass85283_
                                 'gerbil#class::t))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _type-id85241_
                                     'metaclass:
                                     _metaclass85283_))
                          _metaclass85283_)
                        '#f)))
                 (_opaque?85290_
                  (let ((_$e85287_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?85265_))))
                    (if _$e85287_
                        _$e85287_
                        (if _type-super85243_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super85243_))
                            '#f))))
                 (_type-flags85292_
                  (let ((__tmp89640 (if _final?85277_ '0 type-flag-extensible))
                        (__tmp89639 (if _opaque?85290_ type-flag-opaque '0))
                        (__tmp89638
                         (if _struct?85275_ class-type-flag-struct '0))
                        (__tmp89637
                         (if _metaclass85285_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp89640
                             __tmp89639
                             __tmp89638
                             __tmp89637))))
            (let _loop85295_ ((_i85297_ _first-new-field85269_) (_j85298_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j85298_ _field-info-length85271_))
                  (let* ((_slot85300_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector85245_ _i85297_)))
                         (_flags85308_
                          (if _transparent?85253_
                              '0
                              (let ((__tmp89642
                                     (if (or _all-slots-printable?85258_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable85260_
                                                _slot85300_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp89641
                                     (if (or _all-slots-equalable?85265_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable85267_
                                                _slot85300_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp89642 __tmp89641)))))
                    (vector-set! _field-info85273_ _j85298_ _slot85300_)
                    (vector-set!
                     _field-info85273_
                     (let () (declare (not safe)) (##fx+ _j85298_ '1))
                     _flags85308_)
                    (let ((__tmp89644
                           (let () (declare (not safe)) (##fx+ _i85297_ '1)))
                          (__tmp89643
                           (let () (declare (not safe)) (##fx+ _j85298_ '3))))
                      (declare (not safe))
                      (_loop85295_ __tmp89644 __tmp89643)))
                  '#!void))
            (if _metaclass85285_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass85285_
                   _type-id85241_
                   _type-name85242_
                   _type-flags85292_
                   _type-super85243_
                   _field-info85273_
                   _precedence-list85244_
                   _slot-vector85245_
                   _slot-table85248_
                   _properties85246_
                   _constructor85247_
                   _methods85249_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id85241_
                   _type-name85242_
                   _type-flags85292_
                   _type-super85243_
                   _field-info85273_
                   _precedence-list85244_
                   _slot-vector85245_
                   _slot-table85248_
                   _properties85246_
                   _constructor85247_
                   _methods85249_)))))))
    (define class-type-id
      (lambda (_klass85239_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85239_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass85237_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85237_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass85234_ _val85235_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85234_ _val85235_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass85229_ _val85231_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85229_
           _val85231_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass85227_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85227_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass85225_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85225_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass85222_ _val85223_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85222_ _val85223_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass85217_ _val85219_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85217_
           _val85219_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass85215_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85215_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass85213_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85213_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass85210_ _val85211_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85210_ _val85211_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass85205_ _val85207_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85205_
           _val85207_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass85203_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85203_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass85201_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85201_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass85198_ _val85199_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85198_ _val85199_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass85193_ _val85195_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85193_
           _val85195_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass85191_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85191_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass85189_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85189_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass85186_ _val85187_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85186_ _val85187_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass85181_ _val85183_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85181_
           _val85183_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass85179_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85179_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass85177_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass85177_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass85174_ _val85175_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass85174_
           _val85175_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass85169_ _val85171_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85169_
           _val85171_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass85167_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85167_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass85165_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85165_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass85162_ _val85163_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass85162_
           _val85163_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass85157_ _val85159_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85157_
           _val85159_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass85155_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85155_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass85153_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85153_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass85150_ _val85151_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85150_ _val85151_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass85145_ _val85147_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85145_
           _val85147_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass85143_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85143_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass85141_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85141_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass85138_ _val85139_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85138_ _val85139_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass85133_ _val85135_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85133_
           _val85135_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass85131_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85131_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass85129_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85129_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass85126_ _val85127_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass85126_
           _val85127_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass85121_ _val85123_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85121_
           _val85123_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass85119_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85119_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass85117_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85117_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass85114_ _val85115_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85114_ _val85115_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass85109_ _val85111_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85109_
           _val85111_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass85107_)
        (cdr (vector->list (##structure-ref _klass85107_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass85105_)
        (let ((__tmp89645
               (let ((__tmp89646
                      (##structure-ref _klass85105_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp89646))))
          (declare (not safe))
          (##fx- __tmp89645 '1))))
    (define class-type-seal!
      (lambda (_klass85103_)
        (let ((__tmp89647
               (let ((__tmp89648
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85103_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp89648))))
          (declare (not safe))
          (##structure-set!
           _klass85103_
           __tmp89647
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass85101_)
        (let ((__tmp89649
               (let ((__tmp89650
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85101_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp89650))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85101_
           __tmp89649
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct85092_ _maybe-super-struct85093_)
        (let ((_maybe-super-struct-id85095_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct85093_))))
          (let _lp85097_ ((_super-struct85099_ _maybe-sub-struct85092_))
            (if (let () (declare (not safe)) (not _super-struct85099_))
                '#f
                (if (let ((__tmp89652
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct85099_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id85095_ __tmp89652))
                    '#t
                    (let ((__tmp89651
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct85099_))))
                      (declare (not safe))
                      (_lp85097_ __tmp89651))))))))
    (define base-struct/1
      (lambda (_klass85090_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass85090_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass85090_))
                _klass85090_
                (let () (declare (not safe)) (##type-super _klass85090_)))
            (if (let () (declare (not safe)) (not _klass85090_))
                '#f
                (error '"not a class or false" _klass85090_)))))
    (define base-struct/2
      (lambda (_klass185078_ _klass285079_)
        (let ((_s185081_
               (let () (declare (not safe)) (base-struct/1 _klass185078_)))
              (_s285082_
               (let () (declare (not safe)) (base-struct/1 _klass285079_))))
          (if (or (let () (declare (not safe)) (not _s185081_))
                  (and _s285082_
                       (let ()
                         (declare (not safe))
                         (substruct? _s185081_ _s285082_))))
              _s285082_
              (if (or (let () (declare (not safe)) (not _s285082_))
                      (and _s185081_
                           (let ()
                             (declare (not safe))
                             (substruct? _s285082_ _s185081_))))
                  _s185081_
                  (error '"bad mixin: incompatible struct bases"
                         _klass185078_
                         _klass285079_
                         _s185081_
                         _s285082_))))))
    (define base-struct/list
      (lambda (_all-supers84962_)
        (let* ((_all-supers8496384988_ _all-supers84962_)
               (_E8496884992_
                (lambda ()
                  (error '"No clause matching" _all-supers8496384988_))))
          (let ((_K8498685075_ (lambda () '#f))
                (_K8498385061_
                 (lambda (_x85059_)
                   (let () (declare (not safe)) (base-struct/1 _x85059_))))
                (_K8497885038_
                 (lambda (_y85035_ _x85036_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x85036_ _y85035_))))
                (_K8496984999_
                 (lambda (_y84996_ _x84997_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x84997_ _y84996_)))))
            (let* ((___match8960489605_
                    (lambda (_hd8497085002_ _tl8497185004_)
                      (let ((_x85007_ _hd8497085002_))
                        (letrec ((_splice-rest8497385009_
                                  (lambda (_rest8497785016_ _y85018_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8497785016_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8496984999_ _y85018_ _x85007_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8496884992_)))))
                                 (_splice-try8497585011_
                                  (lambda (_hd8497685020_
                                           _rest8497785022_
                                           _y8497285023_)
                                    (let ((_y85026_ _hd8497685020_))
                                      (let ((__tmp89654
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8497785022_)))
                                            (__tmp89653
                                             (let ()
                                               (declare (not safe))
                                               (cons _y85026_ _y8497285023_))))
                                        (declare (not safe))
                                        (_splice-loop8497485013_
                                         __tmp89654
                                         __tmp89653)))))
                                 (_splice-loop8497485013_
                                  (lambda (_rest8497785028_ _y8497285029_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8497785028_))
                                        (let ((__tmp89656
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8497785028_))))
                                          (declare (not safe))
                                          (_splice-try8497585011_
                                           __tmp89656
                                           _rest8497785028_
                                           _y8497285029_))
                                        (let ((__tmp89655
                                               (reverse _y8497285029_)))
                                          (declare (not safe))
                                          (_splice-rest8497385009_
                                           _rest8497785028_
                                           __tmp89655))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8497485013_ _tl8497185004_ '()))))))
                   (_try-match8496585071_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8496384988_))
                          (let ((_tl8498585066_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8496384988_)))
                                (_hd8498485064_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8496384988_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8498585066_))
                                (let ((_x85069_ _hd8498485064_))
                                  (declare (not safe))
                                  (base-struct/1 _x85069_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8498585066_))
                                    (let ((_tl8498285050_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8498585066_)))
                                          (_hd8498185048_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8498585066_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8498285050_))
                                          (let ((_x85046_ _hd8498485064_)
                                                (_y85053_ _hd8498185048_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8497885038_
                                               _y85053_
                                               _x85046_)))
                                          (___match8960489605_
                                           _hd8498485064_
                                           _tl8498585066_)))
                                    (___match8960489605_
                                     _hd8498485064_
                                     _tl8498585066_))))
                          (let () (declare (not safe)) (_E8496884992_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8496384988_))
                  (let () (declare (not safe)) (_K8498685075_))
                  (let () (declare (not safe)) (_try-match8496585071_))))))))
    (define base-struct
      (lambda _all-supers84960_
        (let () (declare (not safe)) (base-struct/list _all-supers84960_))))
    (define find-super-constructor
      (lambda (_super84912_)
        (let _lp84914_ ((_rest84916_ _super84912_) (_constructor84917_ '#f))
          (let* ((_rest8491884926_ _rest84916_)
                 (_else8492084934_ (lambda () _constructor84917_))
                 (_K8492284948_
                  (lambda (_rest84937_ _hd84938_)
                    (let ((_$e84940_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd84938_
                              '10
                              class::t
                              '#f))))
                      (if _$e84940_
                          ((lambda (_xconstructor84943_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor84917_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor84917_
                                            _xconstructor84943_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp84914_ _rest84937_ _xconstructor84943_))
                                 (error '"conflicting implicit constructors"
                                        _constructor84917_
                                        _xconstructor84943_)))
                           _$e84940_)
                          (let ()
                            (declare (not safe))
                            (_lp84914_ _rest84937_ _constructor84917_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8491884926_))
                (let ((_hd8492384951_
                       (let () (declare (not safe)) (##car _rest8491884926_)))
                      (_tl8492484953_
                       (let () (declare (not safe)) (##cdr _rest8491884926_))))
                  (let* ((_hd84956_ _hd8492384951_)
                         (_rest84958_ _tl8492484953_))
                    (declare (not safe))
                    (_K8492284948_ _rest84958_ _hd84956_)))
                (let () (declare (not safe)) (_else8492084934_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list84888_ _direct-slots84889_)
        (let* ((_next-slot84891_ '1)
               (_slot-table84893_
                (let () (declare (not safe)) (make-symbolic-table '#f '0)))
               (_r-slots84895_ '(__class))
               (_process-slot84899_
                (lambda (_slot84897_)
                  (if (let () (declare (not safe)) (symbol? _slot84897_))
                      '#!void
                      (error '"invalid slot name" _slot84897_))
                  (if (let ((__tmp89658
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table84893_
                                _slot84897_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp89658 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table84893_
                           _slot84897_
                           _next-slot84891_))
                        (let ((__tmp89657 (symbol->keyword _slot84897_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table84893_
                           __tmp89657
                           _next-slot84891_))
                        (set! _r-slots84895_
                              (let ()
                                (declare (not safe))
                                (cons _slot84897_ _r-slots84895_)))
                        (set! _next-slot84891_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot84891_ '1))))
                      '#!void)))
               (_process-slots84905_
                (lambda (_g8490084902_)
                  (for-each _process-slot84899_ _g8490084902_))))
          (for-each
           (lambda (_mixin84908_)
             (let ((__tmp89659
                    (let ((__tmp89660
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin84908_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp89660 '()))))
               (declare (not safe))
               (_process-slots84905_ __tmp89659)))
           (reverse _class-precedence-list84888_))
          (let ()
            (declare (not safe))
            (_process-slots84905_ _direct-slots84889_))
          (let ((_slot-vector84910_ (list->vector (reverse _r-slots84895_))))
            (values _slot-vector84910_ _slot-table84893_)))))
    (define make-class-type
      (lambda (_id84850_
               _name84851_
               _direct-supers84852_
               _direct-slots84853_
               _properties84854_
               _constructor84855_)
        (let ((_$e84860_
               (let ((__tmp89661
                      (lambda (_$obj84857_)
                        (let ((__tmp89662
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj84857_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp89662)))))
                 (declare (not safe))
                 (find __tmp89661 _direct-supers84852_))))
          (if _$e84860_
              ((lambda (_g8486284864_)
                 (error '"Illegal super class; not a class descriptor"
                        _g8486284864_))
               _$e84860_)
              (let ((_$e84867_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers84852_))))
                (if _$e84867_
                    ((lambda (_g8486984871_)
                       (error '"Cannot extend final class" _g8486984871_))
                     _$e84867_)
                    '#!void))))
        (let ((_g89663_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers84852_))))
          (begin
            (let ((_g89664_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g89663_) (##vector-length _g89663_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g89664_ 2)))
                  (error "Context expects 2 values" _g89664_)))
            (let ((_precedence-list84874_
                   (let () (declare (not safe)) (##vector-ref _g89663_ 0)))
                  (_struct-super84875_
                   (let () (declare (not safe)) (##vector-ref _g89663_ 1))))
              (let ((_g89665_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list84874_
                        _direct-slots84853_))))
                (begin
                  (let ((_g89666_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g89665_)
                               (##vector-length _g89665_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g89666_ 2)))
                        (error "Context expects 2 values" _g89666_)))
                  (let ((_slot-vector84877_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89665_ 0)))
                        (_slot-table84878_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89665_ 1))))
                    (let* ((_properties84880_
                            (let ((__tmp89669
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots84853_)))
                                  (__tmp89667
                                   (let ((__tmp89668
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers84852_))))
                                     (declare (not safe))
                                     (cons __tmp89668 _properties84854_))))
                              (declare (not safe))
                              (cons __tmp89669 __tmp89667)))
                           (_constructor*84885_
                            (let ((_$e84882_ _constructor84855_))
                              (if _$e84882_
                                  _$e84882_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers84852_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id84850_
                         _name84851_
                         _struct-super84875_
                         _precedence-list84874_
                         _slot-vector84877_
                         _properties84880_
                         _constructor*84885_
                         _slot-table84878_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass84848_)
        (let ((__tmp89670
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass84848_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass84848_ __tmp89670))))
    (define compute-precedence-list
      (lambda (_direct-supers84846_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers84846_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass84830_)
        (let ((_tid84832_
               (let () (declare (not safe)) (##type-id _klass84830_))))
          (if (let () (declare (not safe)) (class-type-final? _klass84830_))
              (lambda (_g8483384835_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8483384835_ _tid84832_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass84830_))
                  (lambda (_g8483784839_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g8483784839_ _tid84832_)))
                  (lambda (_g8484184843_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass84830_ _g8484184843_))))))))
    (define if-class-slot-field
      (lambda (_klass84819_
               _slot84820_
               _if-final84821_
               _if-struct84822_
               _if-struct-field84823_
               _if-class-slot84824_)
        (let ((_field84826_
               (let ((__tmp89671
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass84819_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp89671 _slot84820_ '#f))))
          (if (let () (declare (not safe)) (not _field84826_))
              (error '"unknown slot" 'class: _klass84819_ 'slot: _slot84820_)
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass84819_))
                  (_if-final84821_ _klass84819_ _slot84820_ _field84826_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass84819_))
                      (_if-struct84822_ _klass84819_ _slot84820_ _field84826_)
                      (if (let ((_strukt84828_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass84819_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt84828_
                                    'gerbil#class::t))
                                 (let ((__tmp89672
                                        (let ((__tmp89673
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt84828_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp89673))))
                                   (declare (not safe))
                                   (##fx< _field84826_ __tmp89672))))
                          (_if-struct-field84823_
                           _klass84819_
                           _slot84820_
                           _field84826_)
                          (_if-class-slot84824_
                           _klass84819_
                           _slot84820_
                           _field84826_))))))))
    (define make-class-slot-accessor
      (lambda (_klass84816_ _slot84817_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84816_
           _slot84817_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass84813_ _slot84814_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84813_
           _slot84814_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass84810_ _slot84811_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84810_
           _slot84811_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass84807_ _slot84808_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84807_
           _slot84808_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object84791_ _class84792_ _slot84793_)
        (apply error
               '"not an instance"
               'object:
               _object84791_
               'class:
               _class84792_
               (if _slot84793_
                   (let ((__tmp89674
                          (let ()
                            (declare (not safe))
                            (cons _slot84793_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp89674))
                   '()))))
    (define not-an-instance__0
      (lambda (_object84798_ _class84799_)
        (let ((_slot84801_ '#f))
          (declare (not safe))
          (not-an-instance__% _object84798_ _class84799_ _slot84801_))))
    (define not-an-instance
      (lambda _g89676_
        (let ((_g89675_ (let () (declare (not safe)) (##length _g89676_))))
          (cond ((let () (declare (not safe)) (##fx= _g89675_ 2))
                 (apply (lambda (_object84798_ _class84799_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object84798_ _class84799_)))
                        _g89676_))
                ((let () (declare (not safe)) (##fx= _g89675_ 3))
                 (apply (lambda (_object84803_ _class84804_ _slot84805_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object84803_
                             _class84804_
                             _slot84805_)))
                        _g89676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g89676_))))))
    (define make-final-slot-accessor
      (lambda (_klass84784_ _slot84785_ _field84786_)
        (lambda (_obj84788_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj84788_
             _field84786_
             _klass84784_
             _slot84785_)))))
    (define make-final-slot-mutator
      (lambda (_klass84777_ _slot84778_ _field84779_)
        (lambda (_obj84781_ _val84782_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj84781_
             _val84782_
             _field84779_
             _klass84777_
             _slot84778_)))))
    (define make-struct-slot-accessor
      (lambda (_klass84771_ _slot84772_ _field84773_)
        (lambda (_obj84775_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj84775_
             _field84773_
             _klass84771_
             _slot84772_)))))
    (define make-struct-slot-mutator
      (lambda (_klass84764_ _slot84765_ _field84766_)
        (lambda (_obj84768_ _val84769_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj84768_
             _val84769_
             _field84766_
             _klass84764_
             _slot84765_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass84758_ _slot84759_ _field84760_)
        (lambda (_obj84762_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj84762_
             _field84760_
             _klass84758_
             _slot84759_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass84751_ _slot84752_ _field84753_)
        (lambda (_obj84755_ _val84756_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj84755_
             _val84756_
             _field84753_
             _klass84751_
             _slot84752_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass84745_ _slot84746_ _field84747_)
        (lambda (_obj84749_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass84745_ _obj84749_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj84749_ _field84747_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84749_ _klass84745_ _slot84746_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass84738_ _slot84739_ _field84740_)
        (lambda (_obj84742_ _val84743_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass84738_ _obj84742_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84742_ _field84740_ _val84743_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84742_ _klass84738_ _slot84739_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass84732_ _slot84733_ _field84734_)
        (lambda (_obj84736_)
          (if (let ((__tmp89677
                     (let () (declare (not safe)) (##type-id _klass84732_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84736_ __tmp89677))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84736_ _field84734_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass84732_ _obj84736_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj84736_ _slot84733_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj84736_
                     _klass84732_
                     _slot84733_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass84725_ _slot84726_ _field84727_)
        (lambda (_obj84729_ _val84730_)
          (if (let ((__tmp89678
                     (let () (declare (not safe)) (##type-id _klass84725_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84729_ __tmp89678))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84729_ _field84727_ _val84730_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass84725_ _obj84729_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj84729_ _slot84726_ _val84730_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj84729_
                     _klass84725_
                     _slot84726_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass84719_ _slot84720_ _field84721_)
        (lambda (_obj84723_)
          (if (let ((__tmp89679
                     (let () (declare (not safe)) (##type-id _klass84719_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84723_ __tmp89679))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84723_ _field84721_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj84723_ _slot84720_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass84712_ _slot84713_ _field84714_)
        (lambda (_obj84716_ _val84717_)
          (if (let ((__tmp89680
                     (let () (declare (not safe)) (##type-id _klass84712_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84716_ __tmp89680))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84716_ _field84714_ _val84717_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj84716_ _slot84713_ _val84717_))))))
    (define class-slot-offset
      (lambda (_klass84709_ _slot84710_)
        (let ((__tmp89681
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass84709_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp89681 _slot84710_ '#f))))
    (define class-slot-ref
      (lambda (_klass84703_ _obj84704_ _slot84705_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass84703_ _obj84704_))
            (let ((_off84707_
                   (let ((__tmp89682
                          (let ()
                            (declare (not safe))
                            (object-type _obj84704_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89682 _slot84705_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj84704_
               _off84707_
               _klass84703_
               _slot84705_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj84704_ _klass84703_)))))
    (define class-slot-set!
      (lambda (_klass84696_ _obj84697_ _slot84698_ _val84699_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass84696_ _obj84697_))
            (let ((_off84701_
                   (let ((__tmp89683
                          (let ()
                            (declare (not safe))
                            (object-type _obj84697_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89683 _slot84698_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj84697_
               _val84699_
               _off84701_
               _klass84696_
               _slot84698_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj84697_ _klass84696_)))))
    (define unchecked-field-ref
      (lambda (_obj84693_ _off84694_)
        (let ((__tmp89684
               (let () (declare (not safe)) (##structure-type _obj84693_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj84693_ _off84694_ __tmp89684 '#f))))
    (define unchecked-field-set!
      (lambda (_obj84689_ _off84690_ _val84691_)
        (let ((__tmp89685
               (let () (declare (not safe)) (##structure-type _obj84689_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj84689_
           _val84691_
           _off84690_
           __tmp89685
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj84686_ _slot84687_)
        (let ((__tmp89686
               (let ((__tmp89687
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj84686_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89687 _slot84687_))))
          (declare (not safe))
          (unchecked-field-ref _obj84686_ __tmp89686))))
    (define unchecked-slot-set!
      (lambda (_obj84682_ _slot84683_ _val84684_)
        (let ((__tmp89688
               (let ((__tmp89689
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj84682_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89689 _slot84683_))))
          (declare (not safe))
          (unchecked-field-set! _obj84682_ __tmp89688 _val84684_))))
    (define slot-ref__%
      (lambda (_obj84658_ _slot84659_ _E84660_)
        (if (let () (declare (not safe)) (object? _obj84658_))
            (let* ((_klass84662_
                    (let () (declare (not safe)) (object-type _obj84658_)))
                   (_$e84665_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass84662_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass84662_ _slot84659_))
                        '#f)))
              (if _$e84665_
                  ((lambda (_off84668_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj84658_ _off84668_)))
                   _$e84665_)
                  (_E84660_ _obj84658_ _slot84659_)))
            (_E84660_ _obj84658_ _slot84659_))))
    (define slot-ref__0
      (lambda (_obj84673_ _slot84674_)
        (let ((_E84676_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj84673_ _slot84674_ _E84676_))))
    (define slot-ref
      (lambda _g89691_
        (let ((_g89690_ (let () (declare (not safe)) (##length _g89691_))))
          (cond ((let () (declare (not safe)) (##fx= _g89690_ 2))
                 (apply (lambda (_obj84673_ _slot84674_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj84673_ _slot84674_)))
                        _g89691_))
                ((let () (declare (not safe)) (##fx= _g89690_ 3))
                 (apply (lambda (_obj84678_ _slot84679_ _E84680_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj84678_ _slot84679_ _E84680_)))
                        _g89691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g89691_))))))
    (define slot-set!__%
      (lambda (_obj84630_ _slot84631_ _val84632_ _E84633_)
        (if (let () (declare (not safe)) (object? _obj84630_))
            (let* ((_klass84635_
                    (let () (declare (not safe)) (object-type _obj84630_)))
                   (_$e84638_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass84635_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass84635_ _slot84631_))
                        '#f)))
              (if _$e84638_
                  ((lambda (_off84641_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj84630_
                        _off84641_
                        _val84632_)))
                   _$e84638_)
                  (_E84633_ _obj84630_ _slot84631_)))
            (_E84633_ _obj84630_ _slot84631_))))
    (define slot-set!__0
      (lambda (_obj84646_ _slot84647_ _val84648_)
        (let ((_E84650_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj84646_ _slot84647_ _val84648_ _E84650_))))
    (define slot-set!
      (lambda _g89693_
        (let ((_g89692_ (let () (declare (not safe)) (##length _g89693_))))
          (cond ((let () (declare (not safe)) (##fx= _g89692_ 3))
                 (apply (lambda (_obj84646_ _slot84647_ _val84648_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj84646_ _slot84647_ _val84648_)))
                        _g89693_))
                ((let () (declare (not safe)) (##fx= _g89692_ 4))
                 (apply (lambda (_obj84652_ _slot84653_ _val84654_ _E84655_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj84652_
                             _slot84653_
                             _val84654_
                             _E84655_)))
                        _g89693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g89693_))))))
    (define __slot-error
      (lambda (_obj84626_ _slot84627_)
        (error '"Cannot find slot" 'object: _obj84626_ 'slot: _slot84627_)))
    (define subclass?
      (lambda (_maybe-sub-class84616_ _maybe-super-class84617_)
        (let* ((_maybe-super-class-id84619_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class84617_)))
               (_$e84621_
                (let ((__tmp89694
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class84616_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id84619_ __tmp89694))))
          (if _$e84621_
              _$e84621_
              (let ((__tmp89696
                     (lambda (_super-class84624_)
                       (let ((__tmp89697
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class84624_))))
                         (declare (not safe))
                         (eq? __tmp89697 _maybe-super-class-id84619_))))
                    (__tmp89695
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class84616_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp89696 __tmp89695))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass84613_ _obj84614_)
        (let ((__tmp89698
               (let () (declare (not safe)) (##type-id _klass84613_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj84614_ __tmp89698))))
    (define struct-instance?
      (lambda (_klass84610_ _obj84611_)
        (let ((__tmp89699
               (let () (declare (not safe)) (##type-id _klass84610_))))
          (declare (not safe))
          (##structure-instance-of? _obj84611_ __tmp89699))))
    (define class-instance?
      (lambda (_klass84605_ _obj84606_)
        (if (let () (declare (not safe)) (object? _obj84606_))
            (let ((_type84608_
                   (let () (declare (not safe)) (object-type _obj84606_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type84608_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type84608_ _klass84605_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass84600_ _k84601_)
        (let ((_obj84603_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass84600_ _k84601_))))
          (let () (declare (not safe)) (object-fill! _obj84603_ '#f))
          _obj84603_)))
    (define object-fill!
      (lambda (_obj84593_ _fill84594_)
        (let _loop84596_ ((_i84598_
                           (let ((__tmp89701
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj84593_))))
                             (declare (not safe))
                             (##fx- __tmp89701 '1))))
          (if (let () (declare (not safe)) (##fx> _i84598_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj84593_
                   _fill84594_
                   _i84598_
                   '#f
                   '#f))
                (let ((__tmp89700
                       (let () (declare (not safe)) (##fx- _i84598_ '1))))
                  (declare (not safe))
                  (_loop84596_ __tmp89700)))
              _obj84593_))))
    (define new-instance
      (lambda (_klass84591_)
        (let ((__obj89606
               (let ((__tmp89702
                      (let ((__tmp89703
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass84591_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp89703))))
                 (declare (not safe))
                 (##make-structure _klass84591_ __tmp89702))))
          (let () (declare (not safe)) (object-fill! __obj89606 '#f))
          __obj89606)))
    (define make-instance
      (lambda (_klass84581_ . _args84582_)
        (let* ((_obj84584_
                (let () (declare (not safe)) (new-instance _klass84581_)))
               (_$e84586_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass84581_ '10 class::t '#f))))
          (if _$e84586_
              ((lambda (_kons-id84589_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass84581_
                    _kons-id84589_
                    _obj84584_
                    _args84582_)))
               _$e84586_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass84581_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass84581_
                     _obj84584_
                     _args84582_))
                  (if (let ((__tmp89707
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass84581_))))
                        (declare (not safe))
                        (not __tmp89707))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass84581_
                         _obj84584_
                         _args84582_))
                      (if (let ((__tmp89705
                                 (let ((__tmp89706
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj84584_))))
                                   (declare (not safe))
                                   (##fx- __tmp89706 '1)))
                                (__tmp89704 (length _args84582_)))
                            (declare (not safe))
                            (##fx= __tmp89705 __tmp89704))
                          (apply ##structure _klass84581_ _args84582_)
                          (error '"arguments don't match object size"
                                 'class:
                                 _klass84581_
                                 'slots:
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass84581_))
                                 'args:
                                 _args84582_))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj84578_ . _args84579_)
        (if (let ((__tmp89709 (length _args84579_))
                  (__tmp89708
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj84578_))))
              (declare (not safe))
              (##fx< __tmp89709 __tmp89708))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj84578_ _args84579_))
            (error '"too many arguments for struct"
                   'object:
                   _obj84578_
                   'args:
                   _args84579_))))
    (define __struct-instance-init!
      (lambda (_obj84537_ _args84538_)
        (let _lp84540_ ((_k84542_ '1) (_rest84543_ _args84538_))
          (let* ((_rest8454484552_ _rest84543_)
                 (_else8454684560_ (lambda () _obj84537_))
                 (_K8454884566_
                  (lambda (_rest84563_ _hd84564_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj84537_ _k84542_ _hd84564_))
                    (let ((__tmp89710
                           (let () (declare (not safe)) (##fx+ _k84542_ '1))))
                      (declare (not safe))
                      (_lp84540_ __tmp89710 _rest84563_)))))
            (if (let () (declare (not safe)) (##pair? _rest8454484552_))
                (let ((_hd8454984569_
                       (let () (declare (not safe)) (##car _rest8454484552_)))
                      (_tl8455084571_
                       (let () (declare (not safe)) (##cdr _rest8454484552_))))
                  (let* ((_hd84574_ _hd8454984569_)
                         (_rest84576_ _tl8455084571_))
                    (declare (not safe))
                    (_K8454884566_ _rest84576_ _hd84574_)))
                (let () (declare (not safe)) (_else8454684560_)))))))
    (define class-instance-init!
      (lambda (_obj84534_ . _args84535_)
        (let ((__tmp89711
               (let () (declare (not safe)) (object-type _obj84534_))))
          (declare (not safe))
          (__class-instance-init! __tmp89711 _obj84534_ _args84535_))))
    (define __class-instance-init!
      (lambda (_klass84478_ _obj84479_ _args84480_)
        (let _lp84482_ ((_rest84484_ _args84480_))
          (let* ((_rest8448584495_ _rest84484_)
                 (_else8448784503_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest84484_))
                        _obj84479_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass84478_
                               'rest:
                               _rest84484_))))
                 (_K8448984515_
                  (lambda (_rest84506_ _val84507_ _key84508_)
                    (let ((_$e84510_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass84478_ _key84508_))))
                      (if _$e84510_
                          ((lambda (_off84513_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj84479_
                                _off84513_
                                _val84507_))
                             (let ()
                               (declare (not safe))
                               (_lp84482_ _rest84506_)))
                           _$e84510_)
                          (error '"unknown slot"
                                 'class:
                                 _klass84478_
                                 'slot:
                                 _key84508_))))))
            (if (let () (declare (not safe)) (##pair? _rest8448584495_))
                (let ((_hd8449084518_
                       (let () (declare (not safe)) (##car _rest8448584495_)))
                      (_tl8449184520_
                       (let () (declare (not safe)) (##cdr _rest8448584495_))))
                  (let ((_key84523_ _hd8449084518_))
                    (if (let () (declare (not safe)) (##pair? _tl8449184520_))
                        (let ((_hd8449284525_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8449184520_)))
                              (_tl8449384527_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8449184520_))))
                          (let* ((_val84530_ _hd8449284525_)
                                 (_rest84532_ _tl8449384527_))
                            (declare (not safe))
                            (_K8448984515_ _rest84532_ _val84530_ _key84523_)))
                        (let () (declare (not safe)) (_else8448784503_)))))
                (let () (declare (not safe)) (_else8448784503_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass84474_ _obj84475_ _args84476_)
        (apply call-method
               _klass84474_
               'instance-init!
               _obj84475_
               _args84476_)))
    (define constructor-init!
      (lambda (_klass84469_ _kons-id84470_ _obj84471_ . _args84472_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass84469_
           _kons-id84470_
           _obj84471_
           _args84472_))))
    (define __constructor-init!
      (lambda (_klass84459_ _kons-id84460_ _obj84461_ _args84462_)
        (let ((_$e84464_
               (let ()
                 (declare (not safe))
                 (__find-method _klass84459_ _obj84461_ _kons-id84460_))))
          (if _$e84464_
              ((lambda (_kons84467_)
                 (apply _kons84467_ _obj84461_ _args84462_)
                 _obj84461_)
               _$e84464_)
              (error '"missing constructor"
                     'class:
                     _klass84459_
                     'method:
                     _kons-id84460_)))))
    (define struct-copy
      (lambda (_struct84457_)
        (if (let () (declare (not safe)) (##structure? _struct84457_))
            '#!void
            (error '"not a structure" _struct84457_))
        (let () (declare (not safe)) (##structure-copy _struct84457_))))
    (define struct->list
      (lambda (_obj84455_)
        (if (let () (declare (not safe)) (object? _obj84455_))
            (let () (declare (not safe)) (##vector->list _obj84455_))
            (error '"not an object" _obj84455_))))
    (define class->list
      (lambda (_obj84442_)
        (if (let () (declare (not safe)) (object? _obj84442_))
            (let ((_klass84444_
                   (let () (declare (not safe)) (object-type _obj84442_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass84444_ 'gerbil#class::t))
                  (let ((_slot-vector84446_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass84444_
                            '7
                            class::t
                            '#f))))
                    (let _loop84448_ ((_index84450_
                                       (let ((__tmp89717
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector84446_))))
                                         (declare (not safe))
                                         (##fx- __tmp89717 '1)))
                                      (_plist84451_ '()))
                      (if (let () (declare (not safe)) (##fx< _index84450_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass84444_ _plist84451_))
                          (let ((_slot84453_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector84446_
                                    _index84450_))))
                            (let ((__tmp89716
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index84450_ '1)))
                                  (__tmp89712
                                   (let ((__tmp89715
                                          (symbol->keyword _slot84453_))
                                         (__tmp89713
                                          (let ((__tmp89714
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj84442_
                                                    _index84450_))))
                                            (declare (not safe))
                                            (cons __tmp89714 _plist84451_))))
                                     (declare (not safe))
                                     (cons __tmp89715 __tmp89713))))
                              (declare (not safe))
                              (_loop84448_ __tmp89716 __tmp89712))))))
                  (error '"not a class type"
                         'object:
                         _obj84442_
                         'class:
                         _klass84444_)))
            (error '"not an object" _obj84442_))))
    (define call-method
      (lambda (_obj84433_ _id84434_ . _args84435_)
        (let ((_$e84437_
               (let ()
                 (declare (not safe))
                 (method-ref _obj84433_ _id84434_))))
          (if _$e84437_
              ((lambda (_method84440_)
                 (apply _method84440_ _obj84433_ _args84435_))
               _$e84437_)
              (error '"cannot find method"
                     'object:
                     _obj84433_
                     'method:
                     _id84434_)))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table '#f '0)))
    (define method-ref
      (lambda (_obj84430_ _id84431_)
        (if (let () (declare (not safe)) (object? _obj84430_))
            (let ((__tmp89718
                   (let () (declare (not safe)) (object-type _obj84430_))))
              (declare (not safe))
              (find-method __tmp89718 _obj84430_ _id84431_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj84424_ _id84425_)
        (let ((_$e84427_
               (let ()
                 (declare (not safe))
                 (method-ref _obj84424_ _id84425_))))
          (if _$e84427_
              _$e84427_
              (error '"missing method"
                     'object:
                     _obj84424_
                     'method:
                     _id84425_)))))
    (define bound-method-ref
      (lambda (_obj84414_ _id84415_)
        (let ((_$e84417_
               (let ()
                 (declare (not safe))
                 (method-ref _obj84414_ _id84415_))))
          (if _$e84417_
              ((lambda (_method84420_)
                 (lambda _args84422_
                   (apply _method84420_ _obj84414_ _args84422_)))
               _$e84417_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj84407_ _id84408_)
        (let ((_method84410_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj84407_ _id84408_))))
          (lambda _args84412_ (apply _method84410_ _obj84407_ _args84412_)))))
    (define find-method
      (lambda (_klass84403_ _obj84404_ _id84405_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass84403_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass84403_ _obj84404_ _id84405_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass84403_ _obj84404_ _id84405_)))))
    (define __find-method
      (lambda (_klass84396_ _obj84397_ _id84398_)
        (let ((_$e84400_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass84396_ _obj84397_ _id84398_))))
          (if _$e84400_
              _$e84400_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass84396_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass84396_ _obj84397_ _id84398_)))))))
    (define class-find-method
      (lambda (_klass84392_ _obj84393_ _id84394_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass84392_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass84392_ _obj84393_ _id84394_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins84384_ _obj84385_ _id84386_)
        (let ((__tmp89719
               (lambda (_g8438784389_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8438784389_ _obj84385_ _id84386_)))))
          (declare (not safe))
          (ormap1 __tmp89719 _mixins84384_))))
    (define builtin-find-method
      (lambda (_klass84377_ _obj84378_ _id84379_)
        (if (let () (declare (not safe)) (##type? _klass84377_))
            (let ((_$e84381_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass84377_ _obj84378_ _id84379_))))
              (if _$e84381_
                  _$e84381_
                  (let ((__tmp89720
                         (let ()
                           (declare (not safe))
                           (##type-super _klass84377_))))
                    (declare (not safe))
                    (builtin-find-method __tmp89720 _obj84378_ _id84379_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass84354_ _obj84355_ _id84356_)
        (letrec ((_metaclass-resolve-method84358_
                  (lambda ()
                    (let ((__method89607
                           (let ()
                             (declare (not safe))
                             (method-ref _klass84354_ 'direct-method-ref))))
                      (if __method89607
                          (__method89607 _klass84354_ _obj84355_ _id84356_)
                          (error '"Missing method"
                                 _klass84354_
                                 'direct-method-ref)))))
                 (_metaclass-resolve-method!84359_
                  (lambda ()
                    (let ((_method84374_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method84358_))))
                      (let ((__tmp89722
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass84354_
                                '11
                                class::t
                                '#f)))
                            (__tmp89721 (if _method84374_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp89722 _id84356_ __tmp89721))
                      _method84374_))))
          (let ((_$e84361_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass84354_ '11 class::t '#f))))
            (if _$e84361_
                ((lambda (_ht84364_)
                   (let ((_method84366_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht84364_ _id84356_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method84366_))
                         _method84366_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass84354_))
                             (let ((_$e84368_ _method84366_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e84368_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method84358_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e84368_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!84359_)))))
                             '#f))))
                 _$e84361_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass84354_))
                    (let ((_tab84371_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass84354_
                         _tab84371_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!84359_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass84350_ _obj84351_ _id84352_)
        (let ((__tmp89723 (##structure-ref _klass84350_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp89723 _obj84351_ _id84352_))))
    (define builtin-method-ref
      (lambda (_klass84341_ _obj84342_ _id84343_)
        (let ((_$e84345_
               (let ((__tmp89724
                      (let () (declare (not safe)) (##type-id _klass84341_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp89724 '#f))))
          (if _$e84345_
              ((lambda (_mtab84348_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab84348_ _id84343_ '#f)))
               _$e84345_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass84307_ _id84308_ _proc84309_ _rebind?84310_)
        (letrec ((_bind!84312_
                  (lambda (_ht84325_)
                    (if (and (let () (declare (not safe)) (not _rebind?84310_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht84325_ _id84308_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass84307_
                               'method:
                               _id84308_)
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht84325_
                           _id84308_
                           _proc84309_))))))
          (if (let () (declare (not safe)) (procedure? _proc84309_))
              '#!void
              (error '"bad method; expected procedure" _proc84309_))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass84307_ 'gerbil#class::t))
              (let ((_ht84314_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass84307_
                        '11
                        class::t
                        '#f))))
                (if _ht84314_
                    (let () (declare (not safe)) (_bind!84312_ _ht84314_))
                    (let ((_ht84316_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass84307_
                         _ht84316_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!84312_ _ht84316_)))))
              (if (let () (declare (not safe)) (##type? _klass84307_))
                  (let ((_ht84323_
                         (let ((_$e84318_
                                (let ((__tmp89725
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass84307_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp89725
                                   '#f))))
                           (if _$e84318_
                               _$e84318_
                               (let ((_ht84321_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table '#f '0))))
                                 (let ((__tmp89726
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass84307_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp89726
                                    _ht84321_))
                                 _ht84321_)))))
                    (declare (not safe))
                    (_bind!84312_ _ht84323_))
                  (error '"bad class; expected class or builtin type"
                         _klass84307_))))))
    (define bind-method!__0
      (lambda (_klass84330_ _id84331_ _proc84332_)
        (let ((_rebind?84334_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass84330_
           _id84331_
           _proc84332_
           _rebind?84334_))))
    (define bind-method!
      (lambda _g89728_
        (let ((_g89727_ (let () (declare (not safe)) (##length _g89728_))))
          (cond ((let () (declare (not safe)) (##fx= _g89727_ 3))
                 (apply (lambda (_klass84330_ _id84331_ _proc84332_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass84330_
                             _id84331_
                             _proc84332_)))
                        _g89728_))
                ((let () (declare (not safe)) (##fx= _g89727_ 4))
                 (apply (lambda (_klass84336_
                                 _id84337_
                                 _proc84338_
                                 _rebind?84339_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass84336_
                             _id84337_
                             _proc84338_
                             _rebind?84339_)))
                        _g89728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g89728_))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-eq-table__% '#f '0)))
    (define bind-specializer!
      (lambda (_proc84303_ _specializer84304_)
        (let ()
          (declare (not safe))
          (eq-table-set!
           __method-specializers
           _proc84303_
           _specializer84304_))))
    (define seal-class!
      (lambda (_klass84270_)
        (letrec ((_collect-methods!84272_
                  (lambda (_mtab84288_)
                    (letrec ((_merge!84290_
                              (lambda (_tab84298_)
                                (let ((__tmp89729
                                       (lambda (_id84300_ _proc84301_)
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-set!
                                            _mtab84288_
                                            _id84300_
                                            _proc84301_)))))
                                  (declare (not safe))
                                  (raw-table-for-each _tab84298_ __tmp89729))))
                             (_collect-direct-methods!84291_
                              (lambda (_klass84293_)
                                (let ((_$e84295_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _klass84293_
                                          '11
                                          class::t
                                          '#f))))
                                  (if _$e84295_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!84290_ _$e84295_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!84291_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass84270_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass84270_ 'gerbil#class::t))
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass84270_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (class-type-final? _klass84270_))
                        '#!void
                        (error '"cannot seal non-final class" _klass84270_))
                    (if (let ()
                          (declare (not safe))
                          (class-type-metaclass? _klass84270_))
                        (let ((__method89608
                               (let ()
                                 (declare (not safe))
                                 (method-ref _klass84270_ 'seal-class!))))
                          (if __method89608
                              (__method89608 _klass84270_)
                              (error '"Missing method"
                                     _klass84270_
                                     'seal-class!)))
                        (if (let ((__tmp89736
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _klass84270_
                                      '6
                                      class::t
                                      '#f))))
                              (declare (not safe))
                              (find class-type-metaclass? __tmp89736))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass84270_)
                            (let ((_vtab84274_
                                   (let ()
                                     (declare (not safe))
                                     (make-symbolic-table '#f '0)))
                                  (_mtab84275_
                                   (let ()
                                     (declare (not safe))
                                     (make-symbolic-table '#f '0))))
                              (let ()
                                (declare (not safe))
                                (_collect-methods!84272_ _mtab84275_))
                              (let ((__tmp89730
                                     (lambda (_id84277_ _proc84278_)
                                       (let ((_$e84280_
                                              (let ()
                                                (declare (not safe))
                                                (eq-table-ref
                                                 __method-specializers
                                                 _proc84278_
                                                 '#f))))
                                         (if _$e84280_
                                             ((lambda (_specializer84283_)
                                                (let ((_proc84285_
                                                       (_specializer84283_
                                                        _klass84270_))
                                                      (_gid84286_
                                                       (let ((__tmp89731
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##type-id _klass84270_))))
                 (declare (not safe))
                 (make-symbol__1 __tmp89731 '"::[" _id84277_ '"]"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (eval (let ((__tmp89732
                                                               (let ((__tmp89733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp89734
                                     (let ((__tmp89735
                                            (let ()
                                              (declare (not safe))
                                              (cons _proc84285_ '()))))
                                       (declare (not safe))
                                       (cons 'quote __tmp89735))))
                                (declare (not safe))
                                (cons __tmp89734 '()))))
                         (declare (not safe))
                         (cons _gid84286_ __tmp89733))))
                  (declare (not safe))
                  (cons 'def __tmp89732)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (symbolic-table-set!
                                                     _vtab84274_
                                                     _id84277_
                                                     _proc84285_))))
                                              _$e84280_)
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-set!
                                                _vtab84274_
                                                _id84277_
                                                _proc84278_)))))))
                                (declare (not safe))
                                (raw-table-for-each _mtab84275_ __tmp89730))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _klass84270_
                                 _vtab84274_
                                 '11
                                 class::t
                                 '#f)))))
                    (let ()
                      (declare (not safe))
                      (&class-type-seal! _klass84270_))))
              '#!void))))
    (define next-method
      (lambda (_subklass84219_ _obj84220_ _id84221_)
        (let ((_klass84223_
               (let () (declare (not safe)) (object-type _obj84220_)))
              (_type-id84224_
               (let () (declare (not safe)) (##type-id _subklass84219_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass84223_ 'gerbil#class::t))
              (let _lp84226_ ((_rest84228_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass84223_))))
                (let* ((_rest8422984237_ _rest84228_)
                       (_else8423184245_ (lambda () '#f))
                       (_K8423384251_
                        (lambda (_rest84248_ _klass84249_)
                          (if (let ((__tmp89739
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass84249_))))
                                (declare (not safe))
                                (eq? _type-id84224_ __tmp89739))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest84248_
                                 _obj84220_
                                 _id84221_))
                              (let ()
                                (declare (not safe))
                                (_lp84226_ _rest84248_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8422984237_))
                      (let ((_hd8423484254_
                             (let ()
                               (declare (not safe))
                               (##car _rest8422984237_)))
                            (_tl8423584256_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8422984237_))))
                        (let* ((_klass84259_ _hd8423484254_)
                               (_rest84261_ _tl8423584256_))
                          (declare (not safe))
                          (_K8423384251_ _rest84261_ _klass84259_)))
                      (let () (declare (not safe)) (_else8423184245_)))))
              (if (let () (declare (not safe)) (##type? _klass84223_))
                  (let _lp84263_ ((_klass84265_ _klass84223_))
                    (if (let ((__tmp89738
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass84265_))))
                          (declare (not safe))
                          (eq? _type-id84224_ __tmp89738))
                        (let ((__tmp89737
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass84265_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp89737
                           _obj84220_
                           _id84221_))
                        (let ((_$e84267_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass84265_))))
                          (if _$e84267_
                              (let ()
                                (declare (not safe))
                                (_lp84263_ _$e84267_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass84209_ _obj84210_ _id84211_ . _args84212_)
        (let ((_$e84214_
               (let ()
                 (declare (not safe))
                 (next-method _subklass84209_ _obj84210_ _id84211_))))
          (if _$e84214_
              ((lambda (_methodf84217_)
                 (apply _methodf84217_ _obj84210_ _args84212_))
               _$e84214_)
              (error '"cannot find next method"
                     'object:
                     _obj84210_
                     'method:
                     _id84211_)))))
    (define write-style (lambda (_we84207_) (macro-writeenv-style _we84207_)))
    (define write-object
      (lambda (_we84199_ _obj84200_)
        (let ((_$e84202_
               (let () (declare (not safe)) (method-ref _obj84200_ ':wr))))
          (if _$e84202_
              ((lambda (_method84205_) (_method84205_ _obj84200_ _we84199_))
               _$e84202_)
              (let ()
                (declare (not safe))
                (##default-wr _we84199_ _obj84200_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
