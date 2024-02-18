(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1708271948)
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
      (let* ((_slots85389_
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
             (_slot-vector85391_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots85389_))))
             (_slot-table85398_
              (let ((_slot-table85393_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table '#f '0))))
                (for-each
                 (lambda (_slot85395_ _field85396_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table85393_
                      _slot85395_
                      _field85396_))
                   (let ((__tmp89605 (symbol->keyword _slot85395_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table85393_
                      __tmp89605
                      _field85396_)))
                 _slots85389_
                 (let ((__tmp89606 (length _slots85389_)))
                   (declare (not safe))
                   (iota __tmp89606 '1)))
                _slot-table85393_))
             (_flags85400_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields85406_
              (list->vector
               (apply append
                      (map (lambda (_g8540185403_) (list _g8540185403_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots85389_ '5))))))
             (_properties85408_
              (let ((__tmp89609
                     (let ((__tmp89610
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots85389_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp89610)))
                    (__tmp89607
                     (let ((__tmp89608
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp89608 '()))))
                (declare (not safe))
                (cons __tmp89609 __tmp89607)))
             (_t85410_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags85400_
                 ##type-type
                 _fields85406_
                 '()
                 _slot-vector85391_
                 _slot-table85398_
                 _properties85408_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t85410_ _t85410_))
        _t85410_))
    (define class-type?
      (lambda (_obj85387_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj85387_ class::t.id))))
    (define class-type=?
      (lambda (_x85384_ _y85385_)
        (let ((__tmp89612 (##structure-ref _x85384_ '1 class::t '#f))
              (__tmp89611 (##structure-ref _y85385_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp89612 __tmp89611))))
    (define type-opaque?
      (lambda (_type85382_)
        (let ((__tmp89613
               (let ((__tmp89614
                      (let ()
                        (declare (not safe))
                        (##type-flags _type85382_))))
                 (declare (not safe))
                 (##fxand __tmp89614 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp89613 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type85380_)
        (let ((__tmp89615
               (let ((__tmp89616
                      (let ()
                        (declare (not safe))
                        (##type-flags _type85380_))))
                 (declare (not safe))
                 (##fxand __tmp89616 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp89615 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type85378_)
        (let ((__tmp89617
               (let ((__tmp89618
                      (let ()
                        (declare (not safe))
                        (##type-flags _type85378_))))
                 (declare (not safe))
                 (##fxand __tmp89618 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp89617 '0))))
    (define class-type-struct?
      (lambda (_klass85376_)
        (let ((__tmp89619
               (let ((__tmp89620
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85376_))))
                 (declare (not safe))
                 (##fxand __tmp89620 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp89619 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass85374_)
        (let ((__tmp89621
               (let ((__tmp89622
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85374_))))
                 (declare (not safe))
                 (##fxand __tmp89622 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp89621 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass85372_)
        (let ((__tmp89623
               (let ((__tmp89624
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85372_))))
                 (declare (not safe))
                 (##fxand __tmp89624 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp89623 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties85338_)
        (map (lambda (_e8533985341_)
               (let* ((_g8534385350_ _e8533985341_)
                      (_E8534585354_
                       (lambda () (error '"No clause matching" _g8534385350_)))
                      (_K8534685360_
                       (lambda (_val85357_ _key85358_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key85358_ 'direct-supers:))
                             (let ((__tmp89625 (map class-type-id _val85357_)))
                               (declare (not safe))
                               (cons _key85358_ __tmp89625))
                             (let ()
                               (declare (not safe))
                               (cons _key85358_ _val85357_))))))
                 (if (let () (declare (not safe)) (##pair? _g8534385350_))
                     (let ((_hd8534785363_
                            (let ()
                              (declare (not safe))
                              (##car _g8534385350_)))
                           (_tl8534885365_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8534385350_))))
                       (let* ((_key85368_ _hd8534785363_)
                              (_val85370_ _tl8534885365_))
                         (declare (not safe))
                         (_K8534685360_ _val85370_ _key85368_)))
                     (let () (declare (not safe)) (_E8534585354_)))))
             _properties85338_)))
    (define make-class-type-descriptor
      (lambda (_type-id85237_
               _type-name85238_
               _type-super85239_
               _precedence-list85240_
               _slot-vector85241_
               _properties85242_
               _constructor85243_
               _slot-table85244_
               _methods85245_)
        (letrec ((_make-props!85247_
                  (lambda (_key85307_)
                    (letrec* ((_ht85309_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table '#f '0)))
                              (_put-slots!85310_
                               (lambda (_ht85331_ _slots85332_)
                                 (for-each
                                  (lambda (_g8533385335_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht85331_
                                       _g8533385335_
                                       '#t)))
                                  _slots85332_)))
                              (_put-alist!85311_
                               (lambda (_ht85320_ _key85321_ _alist85322_)
                                 (let ((_$e85324_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key85321_ _alist85322_))))
                                   (if _$e85324_
                                       ((lambda (_g8532685328_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!85310_
                                             _ht85320_
                                             _g8532685328_)))
                                        _$e85324_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!85311_
                         _ht85309_
                         _key85307_
                         _properties85242_))
                      (for-each
                       (lambda (_mixin85313_)
                         (let ((_alist85315_
                                (##structure-ref
                                 _mixin85313_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist85315_))
                                   (let ((__tmp89627
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key85307_
                                                     _alist85315_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp89627)))
                               (let ((__tmp89626
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin85313_))))
                                 (declare (not safe))
                                 (_put-slots!85310_ _ht85309_ __tmp89626))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!85311_
                                  _ht85309_
                                  _key85307_
                                  _alist85315_)))))
                       _precedence-list85240_)
                      _ht85309_))))
          (let* ((_transparent?85249_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties85242_)))
                 (_all-slots-printable?85254_
                  (let ((_$e85251_ _transparent?85249_))
                    (if _$e85251_
                        _$e85251_
                        (let ((__tmp89628
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties85242_))))
                          (declare (not safe))
                          (eq? '#t __tmp89628)))))
                 (_printable85256_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?85254_))
                      (let ()
                        (declare (not safe))
                        (_make-props!85247_ 'print:))
                      '#f))
                 (_all-slots-equalable?85261_
                  (let ((_$e85258_ _transparent?85249_))
                    (if _$e85258_
                        _$e85258_
                        (let ((__tmp89629
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties85242_))))
                          (declare (not safe))
                          (eq? '#t __tmp89629)))))
                 (_equalable85263_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?85261_))
                      (let ()
                        (declare (not safe))
                        (_make-props!85247_ 'equal:))
                      '#f))
                 (_first-new-field85265_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super85239_
                         'gerbil#class::t))
                      (let ((__tmp89630
                             (##structure-ref
                              _type-super85239_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp89630))
                      '1))
                 (_field-info-length85267_
                  (let ((__tmp89631
                         (let ((__tmp89632
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector85241_))))
                           (declare (not safe))
                           (##fx- __tmp89632 _first-new-field85265_))))
                    (declare (not safe))
                    (##fx* '3 __tmp89631)))
                 (_field-info85269_ (make-vector _field-info-length85267_ '#f))
                 (_struct?85271_
                  (let ()
                    (declare (not safe))
                    (assgetq 'struct: _properties85242_)))
                 (_final?85273_
                  (let ()
                    (declare (not safe))
                    (assgetq 'final: _properties85242_)))
                 (_metaclass85281_
                  (let ((_metaclass8527485276_
                         (let ()
                           (declare (not safe))
                           (assgetq 'metaclass: _properties85242_))))
                    (if _metaclass8527485276_
                        (let ((_metaclass85279_ _metaclass8527485276_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass85279_
                                 'gerbil#class::t))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _type-id85237_
                                     'metaclass:
                                     _metaclass85279_))
                          _metaclass85279_)
                        '#f)))
                 (_opaque?85286_
                  (let ((_$e85283_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?85261_))))
                    (if _$e85283_
                        _$e85283_
                        (if _type-super85239_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super85239_))
                            '#f))))
                 (_type-flags85288_
                  (let ((__tmp89636 (if _final?85273_ '0 type-flag-extensible))
                        (__tmp89635 (if _opaque?85286_ type-flag-opaque '0))
                        (__tmp89634
                         (if _struct?85271_ class-type-flag-struct '0))
                        (__tmp89633
                         (if _metaclass85281_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp89636
                             __tmp89635
                             __tmp89634
                             __tmp89633))))
            (let _loop85291_ ((_i85293_ _first-new-field85265_) (_j85294_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j85294_ _field-info-length85267_))
                  (let* ((_slot85296_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector85241_ _i85293_)))
                         (_flags85304_
                          (if _transparent?85249_
                              '0
                              (let ((__tmp89638
                                     (if (or _all-slots-printable?85254_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable85256_
                                                _slot85296_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp89637
                                     (if (or _all-slots-equalable?85261_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable85263_
                                                _slot85296_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp89638 __tmp89637)))))
                    (vector-set! _field-info85269_ _j85294_ _slot85296_)
                    (vector-set!
                     _field-info85269_
                     (let () (declare (not safe)) (##fx+ _j85294_ '1))
                     _flags85304_)
                    (let ((__tmp89640
                           (let () (declare (not safe)) (##fx+ _i85293_ '1)))
                          (__tmp89639
                           (let () (declare (not safe)) (##fx+ _j85294_ '3))))
                      (declare (not safe))
                      (_loop85291_ __tmp89640 __tmp89639)))
                  '#!void))
            (if _metaclass85281_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass85281_
                   _type-id85237_
                   _type-name85238_
                   _type-flags85288_
                   _type-super85239_
                   _field-info85269_
                   _precedence-list85240_
                   _slot-vector85241_
                   _slot-table85244_
                   _properties85242_
                   _constructor85243_
                   _methods85245_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id85237_
                   _type-name85238_
                   _type-flags85288_
                   _type-super85239_
                   _field-info85269_
                   _precedence-list85240_
                   _slot-vector85241_
                   _slot-table85244_
                   _properties85242_
                   _constructor85243_
                   _methods85245_)))))))
    (define class-type-id
      (lambda (_klass85235_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85235_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass85233_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85233_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass85230_ _val85231_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85230_ _val85231_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass85225_ _val85227_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85225_
           _val85227_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass85223_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85223_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass85221_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85221_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass85218_ _val85219_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85218_ _val85219_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass85213_ _val85215_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85213_
           _val85215_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass85211_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85211_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass85209_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85209_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass85206_ _val85207_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85206_ _val85207_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass85201_ _val85203_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85201_
           _val85203_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass85199_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85199_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass85197_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85197_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass85194_ _val85195_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85194_ _val85195_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass85189_ _val85191_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85189_
           _val85191_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass85187_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85187_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass85185_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85185_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass85182_ _val85183_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85182_ _val85183_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass85177_ _val85179_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85177_
           _val85179_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass85175_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85175_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass85173_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass85173_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass85170_ _val85171_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass85170_
           _val85171_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass85165_ _val85167_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85165_
           _val85167_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass85163_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85163_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass85161_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85161_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass85158_ _val85159_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass85158_
           _val85159_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass85153_ _val85155_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85153_
           _val85155_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass85151_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85151_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass85149_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85149_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass85146_ _val85147_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85146_ _val85147_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass85141_ _val85143_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85141_
           _val85143_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass85139_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85139_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass85137_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85137_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass85134_ _val85135_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85134_ _val85135_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass85129_ _val85131_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85129_
           _val85131_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass85127_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85127_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass85125_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85125_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass85122_ _val85123_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass85122_
           _val85123_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass85117_ _val85119_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85117_
           _val85119_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass85115_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85115_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass85113_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85113_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass85110_ _val85111_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85110_ _val85111_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass85105_ _val85107_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85105_
           _val85107_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass85103_)
        (cdr (vector->list (##structure-ref _klass85103_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass85101_)
        (let ((__tmp89641
               (let ((__tmp89642
                      (##structure-ref _klass85101_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp89642))))
          (declare (not safe))
          (##fx- __tmp89641 '1))))
    (define class-type-seal!
      (lambda (_klass85099_)
        (let ((__tmp89643
               (let ((__tmp89644
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85099_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp89644))))
          (declare (not safe))
          (##structure-set!
           _klass85099_
           __tmp89643
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass85097_)
        (let ((__tmp89645
               (let ((__tmp89646
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85097_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp89646))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85097_
           __tmp89645
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct85088_ _maybe-super-struct85089_)
        (let ((_maybe-super-struct-id85091_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct85089_))))
          (let _lp85093_ ((_super-struct85095_ _maybe-sub-struct85088_))
            (if (let () (declare (not safe)) (not _super-struct85095_))
                '#f
                (if (let ((__tmp89648
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct85095_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id85091_ __tmp89648))
                    '#t
                    (let ((__tmp89647
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct85095_))))
                      (declare (not safe))
                      (_lp85093_ __tmp89647))))))))
    (define base-struct/1
      (lambda (_klass85086_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass85086_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass85086_))
                _klass85086_
                (let () (declare (not safe)) (##type-super _klass85086_)))
            (if (let () (declare (not safe)) (not _klass85086_))
                '#f
                (error '"not a class or false" _klass85086_)))))
    (define base-struct/2
      (lambda (_klass185074_ _klass285075_)
        (let ((_s185077_
               (let () (declare (not safe)) (base-struct/1 _klass185074_)))
              (_s285078_
               (let () (declare (not safe)) (base-struct/1 _klass285075_))))
          (if (or (let () (declare (not safe)) (not _s185077_))
                  (and _s285078_
                       (let ()
                         (declare (not safe))
                         (substruct? _s185077_ _s285078_))))
              _s285078_
              (if (or (let () (declare (not safe)) (not _s285078_))
                      (and _s185077_
                           (let ()
                             (declare (not safe))
                             (substruct? _s285078_ _s185077_))))
                  _s185077_
                  (error '"bad mixin: incompatible struct bases"
                         _klass185074_
                         _klass285075_
                         _s185077_
                         _s285078_))))))
    (define base-struct/list
      (lambda (_all-supers84958_)
        (let* ((_all-supers8495984984_ _all-supers84958_)
               (_E8496484988_
                (lambda ()
                  (error '"No clause matching" _all-supers8495984984_))))
          (let ((_K8498285071_ (lambda () '#f))
                (_K8497985057_
                 (lambda (_x85055_)
                   (let () (declare (not safe)) (base-struct/1 _x85055_))))
                (_K8497485034_
                 (lambda (_y85031_ _x85032_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x85032_ _y85031_))))
                (_K8496584995_
                 (lambda (_y84992_ _x84993_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x84993_ _y84992_)))))
            (let* ((___match8960089601_
                    (lambda (_hd8496684998_ _tl8496785000_)
                      (let ((_x85003_ _hd8496684998_))
                        (letrec ((_splice-rest8496985005_
                                  (lambda (_rest8497385012_ _y85014_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8497385012_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8496584995_ _y85014_ _x85003_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8496484988_)))))
                                 (_splice-try8497185007_
                                  (lambda (_hd8497285016_
                                           _rest8497385018_
                                           _y8496885019_)
                                    (let ((_y85022_ _hd8497285016_))
                                      (let ((__tmp89650
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8497385018_)))
                                            (__tmp89649
                                             (let ()
                                               (declare (not safe))
                                               (cons _y85022_ _y8496885019_))))
                                        (declare (not safe))
                                        (_splice-loop8497085009_
                                         __tmp89650
                                         __tmp89649)))))
                                 (_splice-loop8497085009_
                                  (lambda (_rest8497385024_ _y8496885025_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8497385024_))
                                        (let ((__tmp89652
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8497385024_))))
                                          (declare (not safe))
                                          (_splice-try8497185007_
                                           __tmp89652
                                           _rest8497385024_
                                           _y8496885025_))
                                        (let ((__tmp89651
                                               (reverse _y8496885025_)))
                                          (declare (not safe))
                                          (_splice-rest8496985005_
                                           _rest8497385024_
                                           __tmp89651))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8497085009_ _tl8496785000_ '()))))))
                   (_try-match8496185067_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8495984984_))
                          (let ((_tl8498185062_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8495984984_)))
                                (_hd8498085060_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8495984984_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8498185062_))
                                (let ((_x85065_ _hd8498085060_))
                                  (declare (not safe))
                                  (base-struct/1 _x85065_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8498185062_))
                                    (let ((_tl8497885046_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8498185062_)))
                                          (_hd8497785044_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8498185062_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8497885046_))
                                          (let ((_x85042_ _hd8498085060_)
                                                (_y85049_ _hd8497785044_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8497485034_
                                               _y85049_
                                               _x85042_)))
                                          (___match8960089601_
                                           _hd8498085060_
                                           _tl8498185062_)))
                                    (___match8960089601_
                                     _hd8498085060_
                                     _tl8498185062_))))
                          (let () (declare (not safe)) (_E8496484988_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8495984984_))
                  (let () (declare (not safe)) (_K8498285071_))
                  (let () (declare (not safe)) (_try-match8496185067_))))))))
    (define base-struct
      (lambda _all-supers84956_
        (let () (declare (not safe)) (base-struct/list _all-supers84956_))))
    (define find-super-constructor
      (lambda (_super84908_)
        (let _lp84910_ ((_rest84912_ _super84908_) (_constructor84913_ '#f))
          (let* ((_rest8491484922_ _rest84912_)
                 (_else8491684930_ (lambda () _constructor84913_))
                 (_K8491884944_
                  (lambda (_rest84933_ _hd84934_)
                    (let ((_$e84936_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd84934_
                              '10
                              class::t
                              '#f))))
                      (if _$e84936_
                          ((lambda (_xconstructor84939_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor84913_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor84913_
                                            _xconstructor84939_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp84910_ _rest84933_ _xconstructor84939_))
                                 (error '"conflicting implicit constructors"
                                        _constructor84913_
                                        _xconstructor84939_)))
                           _$e84936_)
                          (let ()
                            (declare (not safe))
                            (_lp84910_ _rest84933_ _constructor84913_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8491484922_))
                (let ((_hd8491984947_
                       (let () (declare (not safe)) (##car _rest8491484922_)))
                      (_tl8492084949_
                       (let () (declare (not safe)) (##cdr _rest8491484922_))))
                  (let* ((_hd84952_ _hd8491984947_)
                         (_rest84954_ _tl8492084949_))
                    (declare (not safe))
                    (_K8491884944_ _rest84954_ _hd84952_)))
                (let () (declare (not safe)) (_else8491684930_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list84884_ _direct-slots84885_)
        (let* ((_next-slot84887_ '1)
               (_slot-table84889_
                (let () (declare (not safe)) (make-symbolic-table '#f '0)))
               (_r-slots84891_ '(__class))
               (_process-slot84895_
                (lambda (_slot84893_)
                  (if (let () (declare (not safe)) (symbol? _slot84893_))
                      '#!void
                      (error '"invalid slot name" _slot84893_))
                  (if (let ((__tmp89654
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table84889_
                                _slot84893_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp89654 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table84889_
                           _slot84893_
                           _next-slot84887_))
                        (let ((__tmp89653 (symbol->keyword _slot84893_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table84889_
                           __tmp89653
                           _next-slot84887_))
                        (set! _r-slots84891_
                              (let ()
                                (declare (not safe))
                                (cons _slot84893_ _r-slots84891_)))
                        (set! _next-slot84887_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot84887_ '1))))
                      '#!void)))
               (_process-slots84901_
                (lambda (_g8489684898_)
                  (for-each _process-slot84895_ _g8489684898_))))
          (for-each
           (lambda (_mixin84904_)
             (let ((__tmp89655
                    (let ((__tmp89656
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin84904_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp89656 '()))))
               (declare (not safe))
               (_process-slots84901_ __tmp89655)))
           (reverse _class-precedence-list84884_))
          (let ()
            (declare (not safe))
            (_process-slots84901_ _direct-slots84885_))
          (let ((_slot-vector84906_ (list->vector (reverse _r-slots84891_))))
            (values _slot-vector84906_ _slot-table84889_)))))
    (define make-class-type
      (lambda (_id84846_
               _name84847_
               _direct-supers84848_
               _direct-slots84849_
               _properties84850_
               _constructor84851_)
        (let ((_$e84856_
               (let ((__tmp89657
                      (lambda (_$obj84853_)
                        (let ((__tmp89658
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj84853_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp89658)))))
                 (declare (not safe))
                 (find __tmp89657 _direct-supers84848_))))
          (if _$e84856_
              ((lambda (_g8485884860_)
                 (error '"Illegal super class; not a class descriptor"
                        _g8485884860_))
               _$e84856_)
              (let ((_$e84863_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers84848_))))
                (if _$e84863_
                    ((lambda (_g8486584867_)
                       (error '"Cannot extend final class" _g8486584867_))
                     _$e84863_)
                    '#!void))))
        (let ((_g89659_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers84848_))))
          (begin
            (let ((_g89660_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g89659_) (##vector-length _g89659_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g89660_ 2)))
                  (error "Context expects 2 values" _g89660_)))
            (let ((_precedence-list84870_
                   (let () (declare (not safe)) (##vector-ref _g89659_ 0)))
                  (_struct-super84871_
                   (let () (declare (not safe)) (##vector-ref _g89659_ 1))))
              (let ((_g89661_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list84870_
                        _direct-slots84849_))))
                (begin
                  (let ((_g89662_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g89661_)
                               (##vector-length _g89661_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g89662_ 2)))
                        (error "Context expects 2 values" _g89662_)))
                  (let ((_slot-vector84873_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89661_ 0)))
                        (_slot-table84874_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89661_ 1))))
                    (let* ((_properties84876_
                            (let ((__tmp89665
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots84849_)))
                                  (__tmp89663
                                   (let ((__tmp89664
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers84848_))))
                                     (declare (not safe))
                                     (cons __tmp89664 _properties84850_))))
                              (declare (not safe))
                              (cons __tmp89665 __tmp89663)))
                           (_constructor*84881_
                            (let ((_$e84878_ _constructor84851_))
                              (if _$e84878_
                                  _$e84878_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers84848_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id84846_
                         _name84847_
                         _struct-super84871_
                         _precedence-list84870_
                         _slot-vector84873_
                         _properties84876_
                         _constructor*84881_
                         _slot-table84874_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass84844_)
        (let ((__tmp89666
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass84844_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass84844_ __tmp89666))))
    (define compute-precedence-list
      (lambda (_direct-supers84842_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers84842_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass84826_)
        (let ((_tid84828_
               (let () (declare (not safe)) (##type-id _klass84826_))))
          (if (let () (declare (not safe)) (class-type-final? _klass84826_))
              (lambda (_g8482984831_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8482984831_ _tid84828_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass84826_))
                  (lambda (_g8483384835_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g8483384835_ _tid84828_)))
                  (lambda (_g8483784839_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass84826_ _g8483784839_))))))))
    (define if-class-slot-field
      (lambda (_klass84815_
               _slot84816_
               _if-final84817_
               _if-struct84818_
               _if-struct-field84819_
               _if-class-slot84820_)
        (let ((_field84822_
               (let ((__tmp89667
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass84815_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp89667 _slot84816_ '#f))))
          (if (let () (declare (not safe)) (not _field84822_))
              (error '"unknown slot" 'class: _klass84815_ 'slot: _slot84816_)
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass84815_))
                  (_if-final84817_ _klass84815_ _slot84816_ _field84822_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass84815_))
                      (_if-struct84818_ _klass84815_ _slot84816_ _field84822_)
                      (if (let ((_strukt84824_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass84815_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt84824_
                                    'gerbil#class::t))
                                 (let ((__tmp89668
                                        (let ((__tmp89669
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt84824_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp89669))))
                                   (declare (not safe))
                                   (##fx< _field84822_ __tmp89668))))
                          (_if-struct-field84819_
                           _klass84815_
                           _slot84816_
                           _field84822_)
                          (_if-class-slot84820_
                           _klass84815_
                           _slot84816_
                           _field84822_))))))))
    (define make-class-slot-accessor
      (lambda (_klass84812_ _slot84813_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84812_
           _slot84813_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass84809_ _slot84810_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84809_
           _slot84810_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass84806_ _slot84807_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84806_
           _slot84807_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass84803_ _slot84804_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84803_
           _slot84804_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object84787_ _class84788_ _slot84789_)
        (apply error
               '"not an instance"
               'object:
               _object84787_
               'class:
               _class84788_
               (if _slot84789_
                   (let ((__tmp89670
                          (let ()
                            (declare (not safe))
                            (cons _slot84789_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp89670))
                   '()))))
    (define not-an-instance__0
      (lambda (_object84794_ _class84795_)
        (let ((_slot84797_ '#f))
          (declare (not safe))
          (not-an-instance__% _object84794_ _class84795_ _slot84797_))))
    (define not-an-instance
      (lambda _g89672_
        (let ((_g89671_ (let () (declare (not safe)) (##length _g89672_))))
          (cond ((let () (declare (not safe)) (##fx= _g89671_ 2))
                 (apply (lambda (_object84794_ _class84795_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object84794_ _class84795_)))
                        _g89672_))
                ((let () (declare (not safe)) (##fx= _g89671_ 3))
                 (apply (lambda (_object84799_ _class84800_ _slot84801_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object84799_
                             _class84800_
                             _slot84801_)))
                        _g89672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g89672_))))))
    (define make-final-slot-accessor
      (lambda (_klass84780_ _slot84781_ _field84782_)
        (lambda (_obj84784_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj84784_
             _field84782_
             _klass84780_
             _slot84781_)))))
    (define make-final-slot-mutator
      (lambda (_klass84773_ _slot84774_ _field84775_)
        (lambda (_obj84777_ _val84778_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj84777_
             _val84778_
             _field84775_
             _klass84773_
             _slot84774_)))))
    (define make-struct-slot-accessor
      (lambda (_klass84767_ _slot84768_ _field84769_)
        (lambda (_obj84771_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj84771_
             _field84769_
             _klass84767_
             _slot84768_)))))
    (define make-struct-slot-mutator
      (lambda (_klass84760_ _slot84761_ _field84762_)
        (lambda (_obj84764_ _val84765_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj84764_
             _val84765_
             _field84762_
             _klass84760_
             _slot84761_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass84754_ _slot84755_ _field84756_)
        (lambda (_obj84758_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj84758_
             _field84756_
             _klass84754_
             _slot84755_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass84747_ _slot84748_ _field84749_)
        (lambda (_obj84751_ _val84752_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj84751_
             _val84752_
             _field84749_
             _klass84747_
             _slot84748_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass84741_ _slot84742_ _field84743_)
        (lambda (_obj84745_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass84741_ _obj84745_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj84745_ _field84743_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84745_ _klass84741_ _slot84742_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass84734_ _slot84735_ _field84736_)
        (lambda (_obj84738_ _val84739_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass84734_ _obj84738_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84738_ _field84736_ _val84739_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84738_ _klass84734_ _slot84735_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass84728_ _slot84729_ _field84730_)
        (lambda (_obj84732_)
          (if (let ((__tmp89673
                     (let () (declare (not safe)) (##type-id _klass84728_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84732_ __tmp89673))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84732_ _field84730_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass84728_ _obj84732_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj84732_ _slot84729_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj84732_
                     _klass84728_
                     _slot84729_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass84721_ _slot84722_ _field84723_)
        (lambda (_obj84725_ _val84726_)
          (if (let ((__tmp89674
                     (let () (declare (not safe)) (##type-id _klass84721_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84725_ __tmp89674))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84725_ _field84723_ _val84726_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass84721_ _obj84725_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj84725_ _slot84722_ _val84726_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj84725_
                     _klass84721_
                     _slot84722_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass84715_ _slot84716_ _field84717_)
        (lambda (_obj84719_)
          (if (let ((__tmp89675
                     (let () (declare (not safe)) (##type-id _klass84715_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84719_ __tmp89675))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84719_ _field84717_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj84719_ _slot84716_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass84708_ _slot84709_ _field84710_)
        (lambda (_obj84712_ _val84713_)
          (if (let ((__tmp89676
                     (let () (declare (not safe)) (##type-id _klass84708_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84712_ __tmp89676))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84712_ _field84710_ _val84713_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj84712_ _slot84709_ _val84713_))))))
    (define class-slot-offset
      (lambda (_klass84705_ _slot84706_)
        (let ((__tmp89677
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass84705_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp89677 _slot84706_ '#f))))
    (define class-slot-ref
      (lambda (_klass84699_ _obj84700_ _slot84701_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass84699_ _obj84700_))
            (let ((_off84703_
                   (let ((__tmp89678
                          (let ()
                            (declare (not safe))
                            (object-type _obj84700_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89678 _slot84701_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj84700_
               _off84703_
               _klass84699_
               _slot84701_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj84700_ _klass84699_)))))
    (define class-slot-set!
      (lambda (_klass84692_ _obj84693_ _slot84694_ _val84695_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass84692_ _obj84693_))
            (let ((_off84697_
                   (let ((__tmp89679
                          (let ()
                            (declare (not safe))
                            (object-type _obj84693_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89679 _slot84694_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj84693_
               _val84695_
               _off84697_
               _klass84692_
               _slot84694_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj84693_ _klass84692_)))))
    (define unchecked-field-ref
      (lambda (_obj84689_ _off84690_)
        (let ((__tmp89680
               (let () (declare (not safe)) (##structure-type _obj84689_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj84689_ _off84690_ __tmp89680 '#f))))
    (define unchecked-field-set!
      (lambda (_obj84685_ _off84686_ _val84687_)
        (let ((__tmp89681
               (let () (declare (not safe)) (##structure-type _obj84685_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj84685_
           _val84687_
           _off84686_
           __tmp89681
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj84682_ _slot84683_)
        (let ((__tmp89682
               (let ((__tmp89683
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj84682_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89683 _slot84683_))))
          (declare (not safe))
          (unchecked-field-ref _obj84682_ __tmp89682))))
    (define unchecked-slot-set!
      (lambda (_obj84678_ _slot84679_ _val84680_)
        (let ((__tmp89684
               (let ((__tmp89685
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj84678_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89685 _slot84679_))))
          (declare (not safe))
          (unchecked-field-set! _obj84678_ __tmp89684 _val84680_))))
    (define slot-ref__%
      (lambda (_obj84654_ _slot84655_ _E84656_)
        (if (let () (declare (not safe)) (object? _obj84654_))
            (let* ((_klass84658_
                    (let () (declare (not safe)) (object-type _obj84654_)))
                   (_$e84661_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass84658_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass84658_ _slot84655_))
                        '#f)))
              (if _$e84661_
                  ((lambda (_off84664_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj84654_ _off84664_)))
                   _$e84661_)
                  (_E84656_ _obj84654_ _slot84655_)))
            (_E84656_ _obj84654_ _slot84655_))))
    (define slot-ref__0
      (lambda (_obj84669_ _slot84670_)
        (let ((_E84672_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj84669_ _slot84670_ _E84672_))))
    (define slot-ref
      (lambda _g89687_
        (let ((_g89686_ (let () (declare (not safe)) (##length _g89687_))))
          (cond ((let () (declare (not safe)) (##fx= _g89686_ 2))
                 (apply (lambda (_obj84669_ _slot84670_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj84669_ _slot84670_)))
                        _g89687_))
                ((let () (declare (not safe)) (##fx= _g89686_ 3))
                 (apply (lambda (_obj84674_ _slot84675_ _E84676_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj84674_ _slot84675_ _E84676_)))
                        _g89687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g89687_))))))
    (define slot-set!__%
      (lambda (_obj84626_ _slot84627_ _val84628_ _E84629_)
        (if (let () (declare (not safe)) (object? _obj84626_))
            (let* ((_klass84631_
                    (let () (declare (not safe)) (object-type _obj84626_)))
                   (_$e84634_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass84631_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass84631_ _slot84627_))
                        '#f)))
              (if _$e84634_
                  ((lambda (_off84637_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj84626_
                        _off84637_
                        _val84628_)))
                   _$e84634_)
                  (_E84629_ _obj84626_ _slot84627_)))
            (_E84629_ _obj84626_ _slot84627_))))
    (define slot-set!__0
      (lambda (_obj84642_ _slot84643_ _val84644_)
        (let ((_E84646_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj84642_ _slot84643_ _val84644_ _E84646_))))
    (define slot-set!
      (lambda _g89689_
        (let ((_g89688_ (let () (declare (not safe)) (##length _g89689_))))
          (cond ((let () (declare (not safe)) (##fx= _g89688_ 3))
                 (apply (lambda (_obj84642_ _slot84643_ _val84644_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj84642_ _slot84643_ _val84644_)))
                        _g89689_))
                ((let () (declare (not safe)) (##fx= _g89688_ 4))
                 (apply (lambda (_obj84648_ _slot84649_ _val84650_ _E84651_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj84648_
                             _slot84649_
                             _val84650_
                             _E84651_)))
                        _g89689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g89689_))))))
    (define __slot-error
      (lambda (_obj84622_ _slot84623_)
        (error '"Cannot find slot" 'object: _obj84622_ 'slot: _slot84623_)))
    (define subclass?
      (lambda (_maybe-sub-class84612_ _maybe-super-class84613_)
        (let* ((_maybe-super-class-id84615_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class84613_)))
               (_$e84617_
                (let ((__tmp89690
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class84612_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id84615_ __tmp89690))))
          (if _$e84617_
              _$e84617_
              (let ((__tmp89692
                     (lambda (_super-class84620_)
                       (let ((__tmp89693
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class84620_))))
                         (declare (not safe))
                         (eq? __tmp89693 _maybe-super-class-id84615_))))
                    (__tmp89691
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class84612_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp89692 __tmp89691))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass84609_ _obj84610_)
        (let ((__tmp89694
               (let () (declare (not safe)) (##type-id _klass84609_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj84610_ __tmp89694))))
    (define struct-instance?
      (lambda (_klass84606_ _obj84607_)
        (let ((__tmp89695
               (let () (declare (not safe)) (##type-id _klass84606_))))
          (declare (not safe))
          (##structure-instance-of? _obj84607_ __tmp89695))))
    (define class-instance?
      (lambda (_klass84601_ _obj84602_)
        (if (let () (declare (not safe)) (object? _obj84602_))
            (let ((_type84604_
                   (let () (declare (not safe)) (object-type _obj84602_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type84604_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type84604_ _klass84601_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass84596_ _k84597_)
        (let ((_obj84599_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass84596_ _k84597_))))
          (let () (declare (not safe)) (object-fill! _obj84599_ '#f))
          _obj84599_)))
    (define object-fill!
      (lambda (_obj84589_ _fill84590_)
        (let _loop84592_ ((_i84594_
                           (let ((__tmp89697
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj84589_))))
                             (declare (not safe))
                             (##fx- __tmp89697 '1))))
          (if (let () (declare (not safe)) (##fx> _i84594_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj84589_
                   _fill84590_
                   _i84594_
                   '#f
                   '#f))
                (let ((__tmp89696
                       (let () (declare (not safe)) (##fx- _i84594_ '1))))
                  (declare (not safe))
                  (_loop84592_ __tmp89696)))
              _obj84589_))))
    (define new-instance
      (lambda (_klass84587_)
        (let ((__obj89602
               (let ((__tmp89698
                      (let ((__tmp89699
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass84587_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp89699))))
                 (declare (not safe))
                 (##make-structure _klass84587_ __tmp89698))))
          (let () (declare (not safe)) (object-fill! __obj89602 '#f))
          __obj89602)))
    (define make-instance
      (lambda (_klass84577_ . _args84578_)
        (let* ((_obj84580_
                (let () (declare (not safe)) (new-instance _klass84577_)))
               (_$e84582_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass84577_ '10 class::t '#f))))
          (if _$e84582_
              ((lambda (_kons-id84585_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass84577_
                    _kons-id84585_
                    _obj84580_
                    _args84578_)))
               _$e84582_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass84577_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass84577_
                     _obj84580_
                     _args84578_))
                  (if (let ((__tmp89703
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass84577_))))
                        (declare (not safe))
                        (not __tmp89703))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass84577_
                         _obj84580_
                         _args84578_))
                      (if (let ((__tmp89701
                                 (let ((__tmp89702
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj84580_))))
                                   (declare (not safe))
                                   (##fx- __tmp89702 '1)))
                                (__tmp89700 (length _args84578_)))
                            (declare (not safe))
                            (##fx= __tmp89701 __tmp89700))
                          (apply ##structure _klass84577_ _args84578_)
                          (error '"arguments don't match object size"
                                 'class:
                                 _klass84577_
                                 'slots:
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass84577_))
                                 'args:
                                 _args84578_))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj84574_ . _args84575_)
        (if (let ((__tmp89705 (length _args84575_))
                  (__tmp89704
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj84574_))))
              (declare (not safe))
              (##fx< __tmp89705 __tmp89704))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj84574_ _args84575_))
            (error '"too many arguments for struct"
                   'object:
                   _obj84574_
                   'args:
                   _args84575_))))
    (define __struct-instance-init!
      (lambda (_obj84533_ _args84534_)
        (let _lp84536_ ((_k84538_ '1) (_rest84539_ _args84534_))
          (let* ((_rest8454084548_ _rest84539_)
                 (_else8454284556_ (lambda () _obj84533_))
                 (_K8454484562_
                  (lambda (_rest84559_ _hd84560_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj84533_ _k84538_ _hd84560_))
                    (let ((__tmp89706
                           (let () (declare (not safe)) (##fx+ _k84538_ '1))))
                      (declare (not safe))
                      (_lp84536_ __tmp89706 _rest84559_)))))
            (if (let () (declare (not safe)) (##pair? _rest8454084548_))
                (let ((_hd8454584565_
                       (let () (declare (not safe)) (##car _rest8454084548_)))
                      (_tl8454684567_
                       (let () (declare (not safe)) (##cdr _rest8454084548_))))
                  (let* ((_hd84570_ _hd8454584565_)
                         (_rest84572_ _tl8454684567_))
                    (declare (not safe))
                    (_K8454484562_ _rest84572_ _hd84570_)))
                (let () (declare (not safe)) (_else8454284556_)))))))
    (define class-instance-init!
      (lambda (_obj84530_ . _args84531_)
        (let ((__tmp89707
               (let () (declare (not safe)) (object-type _obj84530_))))
          (declare (not safe))
          (__class-instance-init! __tmp89707 _obj84530_ _args84531_))))
    (define __class-instance-init!
      (lambda (_klass84474_ _obj84475_ _args84476_)
        (let _lp84478_ ((_rest84480_ _args84476_))
          (let* ((_rest8448184491_ _rest84480_)
                 (_else8448384499_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest84480_))
                        _obj84475_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass84474_
                               'rest:
                               _rest84480_))))
                 (_K8448584511_
                  (lambda (_rest84502_ _val84503_ _key84504_)
                    (let ((_$e84506_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass84474_ _key84504_))))
                      (if _$e84506_
                          ((lambda (_off84509_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj84475_
                                _off84509_
                                _val84503_))
                             (let ()
                               (declare (not safe))
                               (_lp84478_ _rest84502_)))
                           _$e84506_)
                          (error '"unknown slot"
                                 'class:
                                 _klass84474_
                                 'slot:
                                 _key84504_))))))
            (if (let () (declare (not safe)) (##pair? _rest8448184491_))
                (let ((_hd8448684514_
                       (let () (declare (not safe)) (##car _rest8448184491_)))
                      (_tl8448784516_
                       (let () (declare (not safe)) (##cdr _rest8448184491_))))
                  (let ((_key84519_ _hd8448684514_))
                    (if (let () (declare (not safe)) (##pair? _tl8448784516_))
                        (let ((_hd8448884521_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8448784516_)))
                              (_tl8448984523_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8448784516_))))
                          (let* ((_val84526_ _hd8448884521_)
                                 (_rest84528_ _tl8448984523_))
                            (declare (not safe))
                            (_K8448584511_ _rest84528_ _val84526_ _key84519_)))
                        (let () (declare (not safe)) (_else8448384499_)))))
                (let () (declare (not safe)) (_else8448384499_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass84470_ _obj84471_ _args84472_)
        (apply call-method
               _klass84470_
               'instance-init!
               _obj84471_
               _args84472_)))
    (define constructor-init!
      (lambda (_klass84465_ _kons-id84466_ _obj84467_ . _args84468_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass84465_
           _kons-id84466_
           _obj84467_
           _args84468_))))
    (define __constructor-init!
      (lambda (_klass84455_ _kons-id84456_ _obj84457_ _args84458_)
        (let ((_$e84460_
               (let ()
                 (declare (not safe))
                 (__find-method _klass84455_ _obj84457_ _kons-id84456_))))
          (if _$e84460_
              ((lambda (_kons84463_)
                 (apply _kons84463_ _obj84457_ _args84458_)
                 _obj84457_)
               _$e84460_)
              (error '"missing constructor"
                     'class:
                     _klass84455_
                     'method:
                     _kons-id84456_)))))
    (define struct-copy
      (lambda (_struct84453_)
        (if (let () (declare (not safe)) (##structure? _struct84453_))
            '#!void
            (error '"not a structure" _struct84453_))
        (let () (declare (not safe)) (##structure-copy _struct84453_))))
    (define struct->list
      (lambda (_obj84451_)
        (if (let () (declare (not safe)) (object? _obj84451_))
            (let () (declare (not safe)) (##vector->list _obj84451_))
            (error '"not an object" _obj84451_))))
    (define class->list
      (lambda (_obj84438_)
        (if (let () (declare (not safe)) (object? _obj84438_))
            (let ((_klass84440_
                   (let () (declare (not safe)) (object-type _obj84438_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass84440_ 'gerbil#class::t))
                  (let ((_slot-vector84442_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass84440_
                            '7
                            class::t
                            '#f))))
                    (let _loop84444_ ((_index84446_
                                       (let ((__tmp89713
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector84442_))))
                                         (declare (not safe))
                                         (##fx- __tmp89713 '1)))
                                      (_plist84447_ '()))
                      (if (let () (declare (not safe)) (##fx< _index84446_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass84440_ _plist84447_))
                          (let ((_slot84449_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector84442_
                                    _index84446_))))
                            (let ((__tmp89712
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index84446_ '1)))
                                  (__tmp89708
                                   (let ((__tmp89711
                                          (symbol->keyword _slot84449_))
                                         (__tmp89709
                                          (let ((__tmp89710
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj84438_
                                                    _index84446_))))
                                            (declare (not safe))
                                            (cons __tmp89710 _plist84447_))))
                                     (declare (not safe))
                                     (cons __tmp89711 __tmp89709))))
                              (declare (not safe))
                              (_loop84444_ __tmp89712 __tmp89708))))))
                  (error '"not a class type"
                         'object:
                         _obj84438_
                         'class:
                         _klass84440_)))
            (error '"not an object" _obj84438_))))
    (define call-method
      (lambda (_obj84429_ _id84430_ . _args84431_)
        (let ((_$e84433_
               (let ()
                 (declare (not safe))
                 (method-ref _obj84429_ _id84430_))))
          (if _$e84433_
              ((lambda (_method84436_)
                 (apply _method84436_ _obj84429_ _args84431_))
               _$e84433_)
              (error '"cannot find method"
                     'object:
                     _obj84429_
                     'method:
                     _id84430_)))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table '0 '#f)))
    (define method-ref
      (lambda (_obj84426_ _id84427_)
        (if (let () (declare (not safe)) (object? _obj84426_))
            (let ((__tmp89714
                   (let () (declare (not safe)) (object-type _obj84426_))))
              (declare (not safe))
              (find-method __tmp89714 _obj84426_ _id84427_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj84420_ _id84421_)
        (let ((_$e84423_
               (let ()
                 (declare (not safe))
                 (method-ref _obj84420_ _id84421_))))
          (if _$e84423_
              _$e84423_
              (error '"missing method"
                     'object:
                     _obj84420_
                     'method:
                     _id84421_)))))
    (define bound-method-ref
      (lambda (_obj84410_ _id84411_)
        (let ((_$e84413_
               (let ()
                 (declare (not safe))
                 (method-ref _obj84410_ _id84411_))))
          (if _$e84413_
              ((lambda (_method84416_)
                 (lambda _args84418_
                   (apply _method84416_ _obj84410_ _args84418_)))
               _$e84413_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj84403_ _id84404_)
        (let ((_method84406_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj84403_ _id84404_))))
          (lambda _args84408_ (apply _method84406_ _obj84403_ _args84408_)))))
    (define find-method
      (lambda (_klass84399_ _obj84400_ _id84401_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass84399_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass84399_ _obj84400_ _id84401_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass84399_ _obj84400_ _id84401_)))))
    (define __find-method
      (lambda (_klass84392_ _obj84393_ _id84394_)
        (let ((_$e84396_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass84392_ _obj84393_ _id84394_))))
          (if _$e84396_
              _$e84396_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass84392_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass84392_ _obj84393_ _id84394_)))))))
    (define class-find-method
      (lambda (_klass84388_ _obj84389_ _id84390_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass84388_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass84388_ _obj84389_ _id84390_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins84380_ _obj84381_ _id84382_)
        (let ((__tmp89715
               (lambda (_g8438384385_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8438384385_ _obj84381_ _id84382_)))))
          (declare (not safe))
          (ormap1 __tmp89715 _mixins84380_))))
    (define builtin-find-method
      (lambda (_klass84373_ _obj84374_ _id84375_)
        (if (let () (declare (not safe)) (##type? _klass84373_))
            (let ((_$e84377_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass84373_ _obj84374_ _id84375_))))
              (if _$e84377_
                  _$e84377_
                  (let ((__tmp89716
                         (let ()
                           (declare (not safe))
                           (##type-super _klass84373_))))
                    (declare (not safe))
                    (builtin-find-method __tmp89716 _obj84374_ _id84375_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass84350_ _obj84351_ _id84352_)
        (letrec ((_metaclass-resolve-method84354_
                  (lambda ()
                    (let ((__method89603
                           (let ()
                             (declare (not safe))
                             (method-ref _klass84350_ 'direct-method-ref))))
                      (if __method89603
                          (__method89603 _klass84350_ _obj84351_ _id84352_)
                          (error '"Missing method"
                                 _klass84350_
                                 'direct-method-ref)))))
                 (_metaclass-resolve-method!84355_
                  (lambda ()
                    (let ((_method84370_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method84354_))))
                      (let ((__tmp89718
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass84350_
                                '11
                                class::t
                                '#f)))
                            (__tmp89717 (if _method84370_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp89718 _id84352_ __tmp89717))
                      _method84370_))))
          (let ((_$e84357_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass84350_ '11 class::t '#f))))
            (if _$e84357_
                ((lambda (_ht84360_)
                   (let ((_method84362_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht84360_ _id84352_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method84362_))
                         _method84362_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass84350_))
                             (let ((_$e84364_ _method84362_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e84364_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method84354_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'uknown _$e84364_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!84355_)))))
                             '#f))))
                 _$e84357_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass84350_))
                    (let ((_tab84367_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass84350_
                         _tab84367_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!84355_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass84346_ _obj84347_ _id84348_)
        (let ((__tmp89719 (##structure-ref _klass84346_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp89719 _obj84347_ _id84348_))))
    (define builtin-method-ref
      (lambda (_klass84337_ _obj84338_ _id84339_)
        (let ((_$e84341_
               (let ((__tmp89720
                      (let () (declare (not safe)) (##type-id _klass84337_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp89720 '#f))))
          (if _$e84341_
              ((lambda (_mtab84344_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab84344_ _id84339_ '#f)))
               _$e84341_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass84303_ _id84304_ _proc84305_ _rebind?84306_)
        (letrec ((_bind!84308_
                  (lambda (_ht84321_)
                    (if (and (let () (declare (not safe)) (not _rebind?84306_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht84321_ _id84304_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass84303_
                               'method:
                               _id84304_)
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht84321_
                           _id84304_
                           _proc84305_))))))
          (if (let () (declare (not safe)) (procedure? _proc84305_))
              '#!void
              (error '"bad method; expected procedure" _proc84305_))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass84303_ 'gerbil#class::t))
              (let ((_ht84310_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass84303_
                        '11
                        class::t
                        '#f))))
                (if _ht84310_
                    (let () (declare (not safe)) (_bind!84308_ _ht84310_))
                    (let ((_ht84312_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass84303_
                         _ht84312_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!84308_ _ht84312_)))))
              (if (let () (declare (not safe)) (##type? _klass84303_))
                  (let ((_ht84319_
                         (let ((_$e84314_
                                (let ((__tmp89721
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass84303_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp89721
                                   '#f))))
                           (if _$e84314_
                               _$e84314_
                               (let ((_ht84317_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table '#f '0))))
                                 (let ((__tmp89722
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass84303_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp89722
                                    _ht84317_))
                                 _ht84317_)))))
                    (declare (not safe))
                    (_bind!84308_ _ht84319_))
                  (error '"bad class; expected class or builtin type"
                         _klass84303_))))))
    (define bind-method!__0
      (lambda (_klass84326_ _id84327_ _proc84328_)
        (let ((_rebind?84330_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass84326_
           _id84327_
           _proc84328_
           _rebind?84330_))))
    (define bind-method!
      (lambda _g89724_
        (let ((_g89723_ (let () (declare (not safe)) (##length _g89724_))))
          (cond ((let () (declare (not safe)) (##fx= _g89723_ 3))
                 (apply (lambda (_klass84326_ _id84327_ _proc84328_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass84326_
                             _id84327_
                             _proc84328_)))
                        _g89724_))
                ((let () (declare (not safe)) (##fx= _g89723_ 4))
                 (apply (lambda (_klass84332_
                                 _id84333_
                                 _proc84334_
                                 _rebind?84335_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass84332_
                             _id84333_
                             _proc84334_
                             _rebind?84335_)))
                        _g89724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g89724_))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-eq-table__% '#f '0)))
    (define bind-specializer!
      (lambda (_proc84299_ _specializer84300_)
        (let ()
          (declare (not safe))
          (eq-table-set!
           __method-specializers
           _proc84299_
           _specializer84300_))))
    (define seal-class!
      (lambda (_klass84266_)
        (letrec ((_collect-methods!84268_
                  (lambda (_mtab84284_)
                    (letrec ((_merge!84286_
                              (lambda (_tab84294_)
                                (let ((__tmp89725
                                       (lambda (_id84296_ _proc84297_)
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-set!
                                            _mtab84284_
                                            _id84296_
                                            _proc84297_)))))
                                  (declare (not safe))
                                  (raw-table-for-each _tab84294_ __tmp89725))))
                             (_collect-direct-methods!84287_
                              (lambda (_klass84289_)
                                (let ((_$e84291_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _klass84289_
                                          '11
                                          class::t
                                          '#f))))
                                  (if _$e84291_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!84286_ _$e84291_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!84287_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass84266_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass84266_ 'gerbil#class::t))
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass84266_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (class-type-final? _klass84266_))
                        '#!void
                        (error '"cannot seal non-final class" _klass84266_))
                    (if (let ()
                          (declare (not safe))
                          (class-type-metaclass? _klass84266_))
                        (let ((__method89604
                               (let ()
                                 (declare (not safe))
                                 (method-ref _klass84266_ 'seal-class!))))
                          (if __method89604
                              (__method89604 _klass84266_)
                              (error '"Missing method"
                                     _klass84266_
                                     'seal-class!)))
                        (if (let ((__tmp89732
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _klass84266_
                                      '6
                                      class::t
                                      '#f))))
                              (declare (not safe))
                              (find class-type-metaclass? __tmp89732))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass84266_)
                            (let ((_vtab84270_
                                   (let ()
                                     (declare (not safe))
                                     (make-symbolic-table '#f '0)))
                                  (_mtab84271_
                                   (let ()
                                     (declare (not safe))
                                     (make-symbolic-table '#f '0))))
                              (let ()
                                (declare (not safe))
                                (_collect-methods!84268_ _mtab84271_))
                              (let ((__tmp89726
                                     (lambda (_id84273_ _proc84274_)
                                       (let ((_$e84276_
                                              (let ()
                                                (declare (not safe))
                                                (eq-table-ref
                                                 __method-specializers
                                                 _proc84274_
                                                 '#f))))
                                         (if _$e84276_
                                             ((lambda (_specializer84279_)
                                                (let ((_proc84281_
                                                       (_specializer84279_
                                                        _klass84266_))
                                                      (_gid84282_
                                                       (let ((__tmp89727
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##type-id _klass84266_))))
                 (declare (not safe))
                 (make-symbol__1 __tmp89727 '"::[" _id84273_ '"]"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (eval (let ((__tmp89728
                                                               (let ((__tmp89729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp89730
                                     (let ((__tmp89731
                                            (let ()
                                              (declare (not safe))
                                              (cons _proc84281_ '()))))
                                       (declare (not safe))
                                       (cons 'quote __tmp89731))))
                                (declare (not safe))
                                (cons __tmp89730 '()))))
                         (declare (not safe))
                         (cons _gid84282_ __tmp89729))))
                  (declare (not safe))
                  (cons 'def __tmp89728)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (symbolic-table-set!
                                                     _vtab84270_
                                                     _id84273_
                                                     _proc84281_))))
                                              _$e84276_)
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-set!
                                                _vtab84270_
                                                _id84273_
                                                _proc84274_)))))))
                                (declare (not safe))
                                (raw-table-for-each _mtab84271_ __tmp89726))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _klass84266_
                                 _vtab84270_
                                 '11
                                 class::t
                                 '#f)))))
                    (let ()
                      (declare (not safe))
                      (&class-type-seal! _klass84266_))))
              '#!void))))
    (define next-method
      (lambda (_subklass84215_ _obj84216_ _id84217_)
        (let ((_klass84219_
               (let () (declare (not safe)) (object-type _obj84216_)))
              (_type-id84220_
               (let () (declare (not safe)) (##type-id _subklass84215_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass84219_ 'gerbil#class::t))
              (let _lp84222_ ((_rest84224_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass84219_))))
                (let* ((_rest8422584233_ _rest84224_)
                       (_else8422784241_ (lambda () '#f))
                       (_K8422984247_
                        (lambda (_rest84244_ _klass84245_)
                          (if (let ((__tmp89735
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass84245_))))
                                (declare (not safe))
                                (eq? _type-id84220_ __tmp89735))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest84244_
                                 _obj84216_
                                 _id84217_))
                              (let ()
                                (declare (not safe))
                                (_lp84222_ _rest84244_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8422584233_))
                      (let ((_hd8423084250_
                             (let ()
                               (declare (not safe))
                               (##car _rest8422584233_)))
                            (_tl8423184252_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8422584233_))))
                        (let* ((_klass84255_ _hd8423084250_)
                               (_rest84257_ _tl8423184252_))
                          (declare (not safe))
                          (_K8422984247_ _rest84257_ _klass84255_)))
                      (let () (declare (not safe)) (_else8422784241_)))))
              (if (let () (declare (not safe)) (##type? _klass84219_))
                  (let _lp84259_ ((_klass84261_ _klass84219_))
                    (if (let ((__tmp89734
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass84261_))))
                          (declare (not safe))
                          (eq? _type-id84220_ __tmp89734))
                        (let ((__tmp89733
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass84261_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp89733
                           _obj84216_
                           _id84217_))
                        (let ((_$e84263_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass84261_))))
                          (if _$e84263_
                              (let ()
                                (declare (not safe))
                                (_lp84259_ _$e84263_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass84205_ _obj84206_ _id84207_ . _args84208_)
        (let ((_$e84210_
               (let ()
                 (declare (not safe))
                 (next-method _subklass84205_ _obj84206_ _id84207_))))
          (if _$e84210_
              ((lambda (_methodf84213_)
                 (apply _methodf84213_ _obj84206_ _args84208_))
               _$e84210_)
              (error '"cannot find next method"
                     'object:
                     _obj84206_
                     'method:
                     _id84207_)))))
    (define write-style (lambda (_we84203_) (macro-writeenv-style _we84203_)))
    (define write-object
      (lambda (_we84195_ _obj84196_)
        (let ((_$e84198_
               (let () (declare (not safe)) (method-ref _obj84196_ ':wr))))
          (if _$e84198_
              ((lambda (_method84201_) (_method84201_ _obj84196_ _we84195_))
               _$e84198_)
              (let ()
                (declare (not safe))
                (##default-wr _we84195_ _obj84196_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
