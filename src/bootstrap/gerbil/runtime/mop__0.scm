(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707831892)
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
      (let* ((_slots85381_
              '(id name
                   super
                   flags
                   fields
                   precedence-list
                   slot-vector
                   slot-table
                   properties
                   constructor
                   method))
             (_slot-vector85383_
              (list->vector
               (let () (declare (not safe)) (cons '##type _slots85381_))))
             (_slot-table85390_
              (let ((_slot-table85385_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (for-each
                 (lambda (_slot85387_ _field85388_)
                   (let ()
                     (declare (not safe))
                     (table-set! _slot-table85385_ _slot85387_ _field85388_))
                   (let ((__tmp90098 (symbol->keyword _slot85387_)))
                     (declare (not safe))
                     (table-set! _slot-table85385_ __tmp90098 _field85388_)))
                 _slots85381_
                 (let ((__tmp90099 (length _slots85381_)))
                   (declare (not safe))
                   (iota __tmp90099 '1)))
                _slot-table85385_))
             (_flags85392_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields85398_
              (list->vector
               (apply append
                      (map (lambda (_g8539385395_) (list _g8539385395_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots85381_ '5))))))
             (_properties85400_ '((direct-slots: ,@slots) (struct: . #t)))
             (_t85402_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags85392_
                 ##type-type
                 _fields85398_
                 '()
                 _slot-vector85383_
                 _slot-table85390_
                 _properties85400_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t85402_ _t85402_))
        _t85402_))
    (define class-type?
      (lambda (_obj85379_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj85379_ class::t.id))))
    (define class-type-id
      (lambda (_klass85377_)
        (if (let () (declare (not safe)) (class-type? _klass85377_))
            (let () (declare (not safe)) (##type-id _klass85377_))
            (error '"not a type descriptor" _klass85377_))))
    (define class-type=?
      (lambda (_x85374_ _y85375_)
        (let ((__tmp90101
               (let () (declare (not safe)) (class-type-id _x85374_)))
              (__tmp90100
               (let () (declare (not safe)) (class-type-id _y85375_))))
          (declare (not safe))
          (eq? __tmp90101 __tmp90100))))
    (define type-opaque?
      (lambda (_type85372_)
        (let ((__tmp90102
               (let ((__tmp90103
                      (let ()
                        (declare (not safe))
                        (##type-flags _type85372_))))
                 (declare (not safe))
                 (##fxand __tmp90103 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp90102 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type85370_)
        (let ((__tmp90104
               (let ((__tmp90105
                      (let ()
                        (declare (not safe))
                        (##type-flags _type85370_))))
                 (declare (not safe))
                 (##fxand __tmp90105 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp90104 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type85368_)
        (let ((__tmp90106
               (let ((__tmp90107
                      (let ()
                        (declare (not safe))
                        (##type-flags _type85368_))))
                 (declare (not safe))
                 (##fxand __tmp90107 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp90106 '0))))
    (define class-type-struct?
      (lambda (_klass85366_)
        (let ((__tmp90108
               (let ((__tmp90109
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85366_))))
                 (declare (not safe))
                 (##fxand __tmp90109 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp90108 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass85364_)
        (let ((__tmp90110
               (let ((__tmp90111
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85364_))))
                 (declare (not safe))
                 (##fxand __tmp90111 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp90110 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass85362_)
        (let ((__tmp90112
               (let ((__tmp90113
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85362_))))
                 (declare (not safe))
                 (##fxand __tmp90113 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp90112 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties85328_)
        (map (lambda (_e8532985331_)
               (let* ((_g8533385340_ _e8532985331_)
                      (_E8533585344_
                       (lambda () (error '"No clause matching" _g8533385340_)))
                      (_K8533685350_
                       (lambda (_val85347_ _key85348_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key85348_ 'direct-supers:))
                             (let ((__tmp90114 (map class-type-id _val85347_)))
                               (declare (not safe))
                               (cons _key85348_ __tmp90114))
                             (let ()
                               (declare (not safe))
                               (cons _key85348_ _val85347_))))))
                 (if (let () (declare (not safe)) (##pair? _g8533385340_))
                     (let ((_hd8533785353_
                            (let ()
                              (declare (not safe))
                              (##car _g8533385340_)))
                           (_tl8533885355_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8533385340_))))
                       (let* ((_key85358_ _hd8533785353_)
                              (_val85360_ _tl8533885355_))
                         (declare (not safe))
                         (_K8533685350_ _val85360_ _key85358_)))
                     (let () (declare (not safe)) (_E8533585344_)))))
             _properties85328_)))
    (define make-class-type-descriptor
      (lambda (_type-id85227_
               _type-name85228_
               _type-super85229_
               _precedence-list85230_
               _slot-vector85231_
               _properties85232_
               _constructor85233_
               _slot-table85234_
               _methods85235_)
        (letrec ((_make-props!85237_
                  (lambda (_key85297_)
                    (letrec* ((_ht85299_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!85300_
                               (lambda (_ht85321_ _slots85322_)
                                 (for-each
                                  (lambda (_g8532385325_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht85321_
                                       _g8532385325_
                                       '#t)))
                                  _slots85322_)))
                              (_put-alist!85301_
                               (lambda (_ht85310_ _key85311_ _alist85312_)
                                 (let ((_$e85314_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key85311_ _alist85312_))))
                                   (if _$e85314_
                                       ((lambda (_g8531685318_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!85300_
                                             _ht85310_
                                             _g8531685318_)))
                                        _$e85314_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!85301_
                         _ht85299_
                         _key85297_
                         _properties85232_))
                      (for-each
                       (lambda (_mixin85303_)
                         (let ((_alist85305_
                                (let ()
                                  (declare (not safe))
                                  (class-type-properties _mixin85303_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist85305_))
                                   (let ((__tmp90115
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key85297_
                                                     _alist85305_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp90115)))
                               (let ((__tmp90116
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin85303_))))
                                 (declare (not safe))
                                 (_put-slots!85300_ _ht85299_ __tmp90116))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!85301_
                                  _ht85299_
                                  _key85297_
                                  _alist85305_)))))
                       _precedence-list85230_)
                      _ht85299_))))
          (let* ((_transparent?85239_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties85232_)))
                 (_all-slots-printable?85244_
                  (let ((_$e85241_ _transparent?85239_))
                    (if _$e85241_
                        _$e85241_
                        (let ((__tmp90117
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties85232_))))
                          (declare (not safe))
                          (eq? '#t __tmp90117)))))
                 (_printable85246_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?85244_))
                      (let ()
                        (declare (not safe))
                        (_make-props!85237_ 'print:))
                      '#f))
                 (_all-slots-equalable?85251_
                  (let ((_$e85248_ _transparent?85239_))
                    (if _$e85248_
                        _$e85248_
                        (let ((__tmp90118
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties85232_))))
                          (declare (not safe))
                          (eq? '#t __tmp90118)))))
                 (_equalable85253_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?85251_))
                      (let ()
                        (declare (not safe))
                        (_make-props!85237_ 'equal:))
                      '#f))
                 (_first-new-field85255_
                  (if (let ()
                        (declare (not safe))
                        (class-type? _type-super85229_))
                      (let ((__tmp90119
                             (let ()
                               (declare (not safe))
                               (class-type-slot-vector _type-super85229_))))
                        (declare (not safe))
                        (##vector-length __tmp90119))
                      '1))
                 (_field-info-length85257_
                  (let ((__tmp90120
                         (let ((__tmp90121
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector85231_))))
                           (declare (not safe))
                           (##fx- __tmp90121 _first-new-field85255_))))
                    (declare (not safe))
                    (##fx* '3 __tmp90120)))
                 (_field-info85259_ (make-vector _field-info-length85257_ '#f))
                 (_struct?85261_
                  (let ()
                    (declare (not safe))
                    (assgetq 'struct: _properties85232_)))
                 (_final?85263_
                  (let ()
                    (declare (not safe))
                    (assgetq 'final: _properties85232_)))
                 (_metaclass85271_
                  (let ((_metaclass8526485266_
                         (let ()
                           (declare (not safe))
                           (assgetq 'metaclass: _properties85232_))))
                    (if _metaclass8526485266_
                        (let ((_metaclass85269_ _metaclass8526485266_))
                          (if (let ()
                                (declare (not safe))
                                (class-type? _metaclass85269_))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _type-id85227_
                                     'metaclass:
                                     _metaclass85269_))
                          _metaclass85269_)
                        '#f)))
                 (_opaque?85276_
                  (let ((_$e85273_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?85251_))))
                    (if _$e85273_
                        _$e85273_
                        (if _type-super85229_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super85229_))
                            '#f))))
                 (_type-flags85278_
                  (let ((__tmp90125 (if _final?85263_ '0 type-flag-extensible))
                        (__tmp90124 (if _opaque?85276_ type-flag-opaque '0))
                        (__tmp90123
                         (if _struct?85261_ class-type-flag-struct '0))
                        (__tmp90122
                         (if _metaclass85271_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp90125
                             __tmp90124
                             __tmp90123
                             __tmp90122))))
            (let _loop85281_ ((_i85283_ _first-new-field85255_) (_j85284_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j85284_ _field-info-length85257_))
                  (let* ((_slot85286_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector85231_ _i85283_)))
                         (_flags85294_
                          (if _transparent?85239_
                              '0
                              (let ((__tmp90127
                                     (if (or _all-slots-printable?85244_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable85246_
                                                _slot85286_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp90126
                                     (if (or _all-slots-equalable?85251_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable85253_
                                                _slot85286_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp90127 __tmp90126)))))
                    (vector-set! _field-info85259_ _j85284_ _slot85286_)
                    (vector-set!
                     _field-info85259_
                     (let () (declare (not safe)) (##fx+ _j85284_ '1))
                     _flags85294_)
                    (let ((__tmp90129
                           (let () (declare (not safe)) (##fx+ _i85283_ '1)))
                          (__tmp90128
                           (let () (declare (not safe)) (##fx+ _j85284_ '3))))
                      (declare (not safe))
                      (_loop85281_ __tmp90129 __tmp90128)))
                  '#!void))
            (if _metaclass85271_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass85271_
                   _type-id85227_
                   _type-name85228_
                   _type-flags85278_
                   _type-super85229_
                   _field-info85259_
                   _precedence-list85230_
                   _slot-vector85231_
                   _slot-table85234_
                   _properties85232_
                   _constructor85233_
                   _methods85235_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id85227_
                   _type-name85228_
                   _type-flags85278_
                   _type-super85229_
                   _field-info85259_
                   _precedence-list85230_
                   _slot-vector85231_
                   _slot-table85234_
                   _properties85232_
                   _constructor85233_
                   _methods85235_)))))))
    (define class-type-precedence-list
      (lambda (_klass85225_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass85225_
           '6
           class::t
           class-type-precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass85223_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85223_ '7 class::t class-type-slot-vector))))
    (define class-type-slot-table
      (lambda (_klass85221_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85221_ '8 class::t class-type-slot-table))))
    (define class-type-properties
      (lambda (_klass85219_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85219_ '9 class::t class-type-properties))))
    (define class-type-constructor
      (lambda (_klass85217_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85217_ '10 class::t class-type-constructor))))
    (define class-type-methods
      (lambda (_klass85215_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85215_ '11 class::t class-type-methods))))
    (define class-type-methods-set!
      (lambda (_klass85212_ _ht85213_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass85212_
           _ht85213_
           '11
           class::t
           class-type-methods-set!))))
    (define &class-type-methods
      (lambda (_klass85210_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass85210_
           '11
           class::t
           class-type-methods))))
    (define &class-type-methods-set!
      (lambda (_klass85207_ _ht85208_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85207_
           _ht85208_
           '11
           class::t
           class-type-methods-set!))))
    (define class-type-slot-list
      (lambda (_klass85205_)
        (cdr (vector->list
              (let ()
                (declare (not safe))
                (class-type-slot-vector _klass85205_))))))
    (define class-type-fields
      (lambda (_klass85203_)
        (let ((__tmp90130
               (let ((__tmp90131
                      (let ()
                        (declare (not safe))
                        (class-type-slot-vector _klass85203_))))
                 (declare (not safe))
                 (##vector-length __tmp90131))))
          (declare (not safe))
          (##fx- __tmp90130 '1))))
    (define class-type-seal!
      (lambda (_klass85201_)
        (let ((__tmp90132
               (let ((__tmp90133
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85201_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp90133))))
          (declare (not safe))
          (##structure-set!
           _klass85201_
           __tmp90132
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass85199_)
        (let ((__tmp90134
               (let ((__tmp90135
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85199_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp90135))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85199_
           __tmp90134
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct85190_ _maybe-super-struct85191_)
        (let ((_maybe-super-struct-id85193_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct85191_))))
          (let _lp85195_ ((_super-struct85197_ _maybe-sub-struct85190_))
            (if (let () (declare (not safe)) (not _super-struct85197_))
                '#f
                (if (let ((__tmp90136
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct85197_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id85193_ __tmp90136))
                    '#t
                    (let ((__tmp90137
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct85197_))))
                      (declare (not safe))
                      (_lp85195_ __tmp90137))))))))
    (define base-struct/1
      (lambda (_klass85188_)
        (if (let () (declare (not safe)) (class-type? _klass85188_))
            (if (let () (declare (not safe)) (class-type-struct? _klass85188_))
                _klass85188_
                (let () (declare (not safe)) (##type-super _klass85188_)))
            (if (let () (declare (not safe)) (not _klass85188_))
                '#f
                (error '"not a class or false" _klass85188_)))))
    (define base-struct/2
      (lambda (_klass185176_ _klass285177_)
        (let ((_s185179_
               (let () (declare (not safe)) (base-struct/1 _klass185176_)))
              (_s285180_
               (let () (declare (not safe)) (base-struct/1 _klass285177_))))
          (if (or (let () (declare (not safe)) (not _s185179_))
                  (and _s285180_
                       (let ()
                         (declare (not safe))
                         (substruct? _s185179_ _s285180_))))
              _s285180_
              (if (or (let () (declare (not safe)) (not _s285180_))
                      (and _s185179_
                           (let ()
                             (declare (not safe))
                             (substruct? _s285180_ _s185179_))))
                  _s185179_
                  (error '"bad mixin: incompatible struct bases"
                         _klass185176_
                         _klass285177_
                         _s185179_
                         _s285180_))))))
    (define base-struct/list
      (lambda (_all-supers85060_)
        (let* ((_all-supers8506185086_ _all-supers85060_)
               (_E8506685090_
                (lambda ()
                  (error '"No clause matching" _all-supers8506185086_))))
          (let ((_K8508485173_ (lambda () '#f))
                (_K8508185159_
                 (lambda (_x85157_)
                   (let () (declare (not safe)) (base-struct/1 _x85157_))))
                (_K8507685136_
                 (lambda (_y85133_ _x85134_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x85134_ _y85133_))))
                (_K8506785097_
                 (lambda (_y85094_ _x85095_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x85095_ _y85094_)))))
            (let* ((___match9009390094_
                    (lambda (_hd8506885100_ _tl8506985102_)
                      (let ((_x85105_ _hd8506885100_))
                        (letrec ((_splice-rest8507185107_
                                  (lambda (_rest8507585114_ _y85116_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8507585114_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8506785097_ _y85116_ _x85105_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8506685090_)))))
                                 (_splice-try8507385109_
                                  (lambda (_hd8507485118_
                                           _rest8507585120_
                                           _y8507085121_)
                                    (let ((_y85124_ _hd8507485118_))
                                      (let ((__tmp90139
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8507585120_)))
                                            (__tmp90138
                                             (let ()
                                               (declare (not safe))
                                               (cons _y85124_ _y8507085121_))))
                                        (declare (not safe))
                                        (_splice-loop8507285111_
                                         __tmp90139
                                         __tmp90138)))))
                                 (_splice-loop8507285111_
                                  (lambda (_rest8507585126_ _y8507085127_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8507585126_))
                                        (let ((__tmp90140
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8507585126_))))
                                          (declare (not safe))
                                          (_splice-try8507385109_
                                           __tmp90140
                                           _rest8507585126_
                                           _y8507085127_))
                                        (let ((__tmp90141
                                               (reverse _y8507085127_)))
                                          (declare (not safe))
                                          (_splice-rest8507185107_
                                           _rest8507585126_
                                           __tmp90141))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8507285111_ _tl8506985102_ '()))))))
                   (_try-match8506385169_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8506185086_))
                          (let ((_tl8508385164_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8506185086_)))
                                (_hd8508285162_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8506185086_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8508385164_))
                                (let ((_x85167_ _hd8508285162_))
                                  (declare (not safe))
                                  (base-struct/1 _x85167_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8508385164_))
                                    (let ((_tl8508085148_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8508385164_)))
                                          (_hd8507985146_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8508385164_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8508085148_))
                                          (let ((_x85144_ _hd8508285162_)
                                                (_y85151_ _hd8507985146_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8507685136_
                                               _y85151_
                                               _x85144_)))
                                          (___match9009390094_
                                           _hd8508285162_
                                           _tl8508385164_)))
                                    (___match9009390094_
                                     _hd8508285162_
                                     _tl8508385164_))))
                          (let () (declare (not safe)) (_E8506685090_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8506185086_))
                  (let () (declare (not safe)) (_K8508485173_))
                  (let () (declare (not safe)) (_try-match8506385169_))))))))
    (define base-struct
      (lambda _all-supers85058_
        (let () (declare (not safe)) (base-struct/list _all-supers85058_))))
    (define find-super-constructor
      (lambda (_super85010_)
        (let _lp85012_ ((_rest85014_ _super85010_) (_constructor85015_ '#f))
          (let* ((_rest8501685024_ _rest85014_)
                 (_else8501885032_ (lambda () _constructor85015_))
                 (_K8502085046_
                  (lambda (_rest85035_ _hd85036_)
                    (let ((_$e85038_
                           (let ()
                             (declare (not safe))
                             (class-type-constructor _hd85036_))))
                      (if _$e85038_
                          ((lambda (_xconstructor85041_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor85015_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor85015_
                                            _xconstructor85041_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp85012_ _rest85035_ _xconstructor85041_))
                                 (error '"conflicting implicit constructors"
                                        _constructor85015_
                                        _xconstructor85041_)))
                           _$e85038_)
                          (let ()
                            (declare (not safe))
                            (_lp85012_ _rest85035_ _constructor85015_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8501685024_))
                (let ((_hd8502185049_
                       (let () (declare (not safe)) (##car _rest8501685024_)))
                      (_tl8502285051_
                       (let () (declare (not safe)) (##cdr _rest8501685024_))))
                  (let* ((_hd85054_ _hd8502185049_)
                         (_rest85056_ _tl8502285051_))
                    (declare (not safe))
                    (_K8502085046_ _rest85056_ _hd85054_)))
                (let () (declare (not safe)) (_else8501885032_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list84986_ _direct-slots84987_)
        (let* ((_next-slot84989_ '1)
               (_slot-table84991_
                (let () (declare (not safe)) (make-table 'test: eq?)))
               (_r-slots84993_ '(__class))
               (_process-slot84997_
                (lambda (_slot84995_)
                  (if (let () (declare (not safe)) (symbol? _slot84995_))
                      '#!void
                      (error '"invalid slot name" _slot84995_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table84991_ _slot84995_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table84991_
                           _slot84995_
                           _next-slot84989_))
                        (let ((__tmp90142 (symbol->keyword _slot84995_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table84991_
                           __tmp90142
                           _next-slot84989_))
                        (set! _r-slots84993_
                              (let ()
                                (declare (not safe))
                                (cons _slot84995_ _r-slots84993_)))
                        (set! _next-slot84989_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot84989_ '1)))))))
               (_process-slots85003_
                (lambda (_g8499885000_)
                  (for-each _process-slot84997_ _g8499885000_))))
          (for-each
           (lambda (_mixin85006_)
             (let ((__tmp90143
                    (let ((__tmp90144
                           (let ()
                             (declare (not safe))
                             (class-type-properties _mixin85006_))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp90144 '()))))
               (declare (not safe))
               (_process-slots85003_ __tmp90143)))
           (reverse _class-precedence-list84986_))
          (let ()
            (declare (not safe))
            (_process-slots85003_ _direct-slots84987_))
          (let ((_slot-vector85008_ (list->vector (reverse _r-slots84993_))))
            (values _slot-vector85008_ _slot-table84991_)))))
    (define make-class-type
      (lambda (_id84948_
               _name84949_
               _direct-supers84950_
               _direct-slots84951_
               _properties84952_
               _constructor84953_)
        (let ((_$e84958_
               (let ((__tmp90145
                      (lambda (_$obj84955_)
                        (let ((__tmp90146
                               (let ()
                                 (declare (not safe))
                                 (class-type? _$obj84955_))))
                          (declare (not safe))
                          (not __tmp90146)))))
                 (declare (not safe))
                 (find __tmp90145 _direct-supers84950_))))
          (if _$e84958_
              ((lambda (_g8496084962_)
                 (error '"Illegal super class; not a class descriptor"
                        _g8496084962_))
               _$e84958_)
              (let ((_$e84965_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers84950_))))
                (if _$e84965_
                    ((lambda (_g8496784969_)
                       (error '"Cannot extend final class" _g8496784969_))
                     _$e84965_)
                    '#!void))))
        (let ((_g90147_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers84950_))))
          (begin
            (let ((_g90148_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g90147_) (##vector-length _g90147_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g90148_ 2)))
                  (error "Context expects 2 values" _g90148_)))
            (let ((_precedence-list84972_
                   (let () (declare (not safe)) (##vector-ref _g90147_ 0)))
                  (_struct-super84973_
                   (let () (declare (not safe)) (##vector-ref _g90147_ 1))))
              (let ((_g90149_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list84972_
                        _direct-slots84951_))))
                (begin
                  (let ((_g90150_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g90149_)
                               (##vector-length _g90149_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g90150_ 2)))
                        (error "Context expects 2 values" _g90150_)))
                  (let ((_slot-vector84975_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g90149_ 0)))
                        (_slot-table84976_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g90149_ 1))))
                    (let* ((_properties84978_
                            (let ((__tmp90153
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots84951_)))
                                  (__tmp90151
                                   (let ((__tmp90152
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers84950_))))
                                     (declare (not safe))
                                     (cons __tmp90152 _properties84952_))))
                              (declare (not safe))
                              (cons __tmp90153 __tmp90151)))
                           (_constructor*84983_
                            (let ((_$e84980_ _constructor84953_))
                              (if _$e84980_
                                  _$e84980_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers84950_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id84948_
                         _name84949_
                         _struct-super84973_
                         _precedence-list84972_
                         _slot-vector84975_
                         _properties84978_
                         _constructor*84983_
                         _slot-table84976_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass84946_)
        (let ((__tmp90154
               (let ()
                 (declare (not safe))
                 (class-type-precedence-list _klass84946_))))
          (declare (not safe))
          (cons _klass84946_ __tmp90154))))
    (define compute-precedence-list
      (lambda (_direct-supers84944_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _direct-supers84944_))))
    (define make-class-predicate
      (lambda (_klass84928_)
        (let ((_tid84930_
               (let () (declare (not safe)) (##type-id _klass84928_))))
          (if (let () (declare (not safe)) (class-type-final? _klass84928_))
              (lambda (_g8493184933_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8493184933_ _tid84930_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass84928_))
                  (lambda (_g8493584937_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g8493584937_ _tid84930_)))
                  (lambda (_g8493984941_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass84928_ _g8493984941_))))))))
    (define if-class-slot-field
      (lambda (_klass84917_
               _slot84918_
               _if-final84919_
               _if-struct84920_
               _if-struct-field84921_
               _if-class-slot84922_)
        (let ((_field84924_
               (let ((__tmp90155
                      (let ()
                        (declare (not safe))
                        (class-type-slot-table _klass84917_))))
                 (declare (not safe))
                 (table-ref __tmp90155 _slot84918_ '#f))))
          (if (let () (declare (not safe)) (not _field84924_))
              (error '"unknown slot" 'class: _klass84917_ 'slot: _slot84918_)
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass84917_))
                  (_if-final84919_ _klass84917_ _slot84918_ _field84924_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass84917_))
                      (_if-struct84920_ _klass84917_ _slot84918_ _field84924_)
                      (if (let ((_strukt84926_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass84917_))))
                            (and (let ()
                                   (declare (not safe))
                                   (class-type? _strukt84926_))
                                 (let ((__tmp90156
                                        (let ((__tmp90157
                                               (let ()
                                                 (declare (not safe))
                                                 (class-type-slot-vector
                                                  _strukt84926_))))
                                          (declare (not safe))
                                          (##vector-length __tmp90157))))
                                   (declare (not safe))
                                   (##fx< _field84924_ __tmp90156))))
                          (_if-struct-field84921_
                           _klass84917_
                           _slot84918_
                           _field84924_)
                          (_if-class-slot84922_
                           _klass84917_
                           _slot84918_
                           _field84924_))))))))
    (define make-class-slot-accessor
      (lambda (_klass84914_ _slot84915_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84914_
           _slot84915_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass84911_ _slot84912_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84911_
           _slot84912_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass84908_ _slot84909_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84908_
           _slot84909_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass84905_ _slot84906_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84905_
           _slot84906_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object84889_ _class84890_ _slot84891_)
        (apply error
               '"not an instance"
               'object:
               _object84889_
               'class:
               _class84890_
               (if _slot84891_
                   (let ((__tmp90158
                          (let ()
                            (declare (not safe))
                            (cons _slot84891_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp90158))
                   '()))))
    (define not-an-instance__0
      (lambda (_object84896_ _class84897_)
        (let ((_slot84899_ '#f))
          (declare (not safe))
          (not-an-instance__% _object84896_ _class84897_ _slot84899_))))
    (define not-an-instance
      (lambda _g90160_
        (let ((_g90159_ (let () (declare (not safe)) (##length _g90160_))))
          (cond ((let () (declare (not safe)) (##fx= _g90159_ 2))
                 (apply (lambda (_object84896_ _class84897_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object84896_ _class84897_)))
                        _g90160_))
                ((let () (declare (not safe)) (##fx= _g90159_ 3))
                 (apply (lambda (_object84901_ _class84902_ _slot84903_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object84901_
                             _class84902_
                             _slot84903_)))
                        _g90160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g90160_))))))
    (define make-final-slot-accessor
      (lambda (_klass84882_ _slot84883_ _field84884_)
        (lambda (_obj84886_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj84886_
             _field84884_
             _klass84882_
             _slot84883_)))))
    (define make-final-slot-mutator
      (lambda (_klass84875_ _slot84876_ _field84877_)
        (lambda (_obj84879_ _val84880_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj84879_
             _val84880_
             _field84877_
             _klass84875_
             _slot84876_)))))
    (define make-struct-slot-accessor
      (lambda (_klass84869_ _slot84870_ _field84871_)
        (lambda (_obj84873_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj84873_
             _field84871_
             _klass84869_
             _slot84870_)))))
    (define make-struct-slot-mutator
      (lambda (_klass84862_ _slot84863_ _field84864_)
        (lambda (_obj84866_ _val84867_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj84866_
             _val84867_
             _field84864_
             _klass84862_
             _slot84863_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass84856_ _slot84857_ _field84858_)
        (lambda (_obj84860_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj84860_
             _field84858_
             _klass84856_
             _slot84857_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass84849_ _slot84850_ _field84851_)
        (lambda (_obj84853_ _val84854_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj84853_
             _val84854_
             _field84851_
             _klass84849_
             _slot84850_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass84843_ _slot84844_ _field84845_)
        (lambda (_obj84847_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass84843_ _obj84847_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj84847_ _field84845_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84847_ _klass84843_ _slot84844_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass84836_ _slot84837_ _field84838_)
        (lambda (_obj84840_ _val84841_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass84836_ _obj84840_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84840_ _field84838_ _val84841_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84840_ _klass84836_ _slot84837_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass84830_ _slot84831_ _field84832_)
        (lambda (_obj84834_)
          (if (let ((__tmp90161
                     (let () (declare (not safe)) (##type-id _klass84830_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84834_ __tmp90161))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84834_ _field84832_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass84830_ _obj84834_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj84834_ _slot84831_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj84834_
                     _klass84830_
                     _slot84831_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass84823_ _slot84824_ _field84825_)
        (lambda (_obj84827_ _val84828_)
          (if (let ((__tmp90162
                     (let () (declare (not safe)) (##type-id _klass84823_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84827_ __tmp90162))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84827_ _field84825_ _val84828_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass84823_ _obj84827_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj84827_ _slot84824_ _val84828_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj84827_
                     _klass84823_
                     _slot84824_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass84817_ _slot84818_ _field84819_)
        (lambda (_obj84821_)
          (if (let ((__tmp90163
                     (let () (declare (not safe)) (##type-id _klass84817_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84821_ __tmp90163))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84821_ _field84819_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj84821_ _slot84818_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass84810_ _slot84811_ _field84812_)
        (lambda (_obj84814_ _val84815_)
          (if (let ((__tmp90164
                     (let () (declare (not safe)) (##type-id _klass84810_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84814_ __tmp90164))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84814_ _field84812_ _val84815_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj84814_ _slot84811_ _val84815_))))))
    (define class-slot-offset
      (lambda (_klass84807_ _slot84808_)
        (let ((__tmp90165
               (let ()
                 (declare (not safe))
                 (class-type-slot-table _klass84807_))))
          (declare (not safe))
          (table-ref __tmp90165 _slot84808_ '#f))))
    (define class-slot-ref
      (lambda (_klass84801_ _obj84802_ _slot84803_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass84801_ _obj84802_))
            (let ((_off84805_
                   (let ((__tmp90166
                          (let ()
                            (declare (not safe))
                            (object-type _obj84802_))))
                     (declare (not safe))
                     (class-slot-offset __tmp90166 _slot84803_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj84802_
               _off84805_
               _klass84801_
               _slot84803_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj84802_ _klass84801_)))))
    (define class-slot-set!
      (lambda (_klass84794_ _obj84795_ _slot84796_ _val84797_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass84794_ _obj84795_))
            (let ((_off84799_
                   (let ((__tmp90167
                          (let ()
                            (declare (not safe))
                            (object-type _obj84795_))))
                     (declare (not safe))
                     (class-slot-offset __tmp90167 _slot84796_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj84795_
               _val84797_
               _off84799_
               _klass84794_
               _slot84796_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj84795_ _klass84794_)))))
    (define unchecked-field-ref
      (lambda (_obj84791_ _off84792_)
        (let ((__tmp90168
               (let () (declare (not safe)) (##structure-type _obj84791_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj84791_ _off84792_ __tmp90168 '#f))))
    (define unchecked-field-set!
      (lambda (_obj84787_ _off84788_ _val84789_)
        (let ((__tmp90169
               (let () (declare (not safe)) (##structure-type _obj84787_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj84787_
           _val84789_
           _off84788_
           __tmp90169
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj84784_ _slot84785_)
        (let ((__tmp90170
               (let ((__tmp90171
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj84784_))))
                 (declare (not safe))
                 (class-slot-offset __tmp90171 _slot84785_))))
          (declare (not safe))
          (unchecked-field-ref _obj84784_ __tmp90170))))
    (define unchecked-slot-set!
      (lambda (_obj84780_ _slot84781_ _val84782_)
        (let ((__tmp90172
               (let ((__tmp90173
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj84780_))))
                 (declare (not safe))
                 (class-slot-offset __tmp90173 _slot84781_))))
          (declare (not safe))
          (unchecked-field-set! _obj84780_ __tmp90172 _val84782_))))
    (define slot-ref__%
      (lambda (_obj84756_ _slot84757_ _E84758_)
        (if (let () (declare (not safe)) (object? _obj84756_))
            (let* ((_klass84760_
                    (let () (declare (not safe)) (object-type _obj84756_)))
                   (_$e84763_
                    (if (let ()
                          (declare (not safe))
                          (class-type? _klass84760_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass84760_ _slot84757_))
                        '#f)))
              (if _$e84763_
                  ((lambda (_off84766_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj84756_ _off84766_)))
                   _$e84763_)
                  (_E84758_ _obj84756_ _slot84757_)))
            (_E84758_ _obj84756_ _slot84757_))))
    (define slot-ref__0
      (lambda (_obj84771_ _slot84772_)
        (let ((_E84774_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj84771_ _slot84772_ _E84774_))))
    (define slot-ref
      (lambda _g90175_
        (let ((_g90174_ (let () (declare (not safe)) (##length _g90175_))))
          (cond ((let () (declare (not safe)) (##fx= _g90174_ 2))
                 (apply (lambda (_obj84771_ _slot84772_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj84771_ _slot84772_)))
                        _g90175_))
                ((let () (declare (not safe)) (##fx= _g90174_ 3))
                 (apply (lambda (_obj84776_ _slot84777_ _E84778_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj84776_ _slot84777_ _E84778_)))
                        _g90175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g90175_))))))
    (define slot-set!__%
      (lambda (_obj84728_ _slot84729_ _val84730_ _E84731_)
        (if (let () (declare (not safe)) (object? _obj84728_))
            (let* ((_klass84733_
                    (let () (declare (not safe)) (object-type _obj84728_)))
                   (_$e84736_
                    (if (let ()
                          (declare (not safe))
                          (class-type? _klass84733_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass84733_ _slot84729_))
                        '#f)))
              (if _$e84736_
                  ((lambda (_off84739_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj84728_
                        _off84739_
                        _val84730_)))
                   _$e84736_)
                  (_E84731_ _obj84728_ _slot84729_)))
            (_E84731_ _obj84728_ _slot84729_))))
    (define slot-set!__0
      (lambda (_obj84744_ _slot84745_ _val84746_)
        (let ((_E84748_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj84744_ _slot84745_ _val84746_ _E84748_))))
    (define slot-set!
      (lambda _g90177_
        (let ((_g90176_ (let () (declare (not safe)) (##length _g90177_))))
          (cond ((let () (declare (not safe)) (##fx= _g90176_ 3))
                 (apply (lambda (_obj84744_ _slot84745_ _val84746_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj84744_ _slot84745_ _val84746_)))
                        _g90177_))
                ((let () (declare (not safe)) (##fx= _g90176_ 4))
                 (apply (lambda (_obj84750_ _slot84751_ _val84752_ _E84753_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj84750_
                             _slot84751_
                             _val84752_
                             _E84753_)))
                        _g90177_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g90177_))))))
    (define __slot-error
      (lambda (_obj84724_ _slot84725_)
        (error '"Cannot find slot" 'object: _obj84724_ 'slot: _slot84725_)))
    (define subclass?
      (lambda (_maybe-sub-class84714_ _maybe-super-class84715_)
        (let* ((_maybe-super-class-id84717_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class84715_)))
               (_$e84719_
                (let ((__tmp90178
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class84714_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id84717_ __tmp90178))))
          (if _$e84719_
              _$e84719_
              (let ((__tmp90180
                     (lambda (_super-class84722_)
                       (let ((__tmp90181
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class84722_))))
                         (declare (not safe))
                         (eq? __tmp90181 _maybe-super-class-id84717_))))
                    (__tmp90179
                     (let ()
                       (declare (not safe))
                       (class-type-precedence-list _maybe-sub-class84714_))))
                (declare (not safe))
                (ormap1 __tmp90180 __tmp90179))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass84711_ _obj84712_)
        (let ((__tmp90182
               (let () (declare (not safe)) (##type-id _klass84711_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj84712_ __tmp90182))))
    (define struct-instance?
      (lambda (_klass84708_ _obj84709_)
        (let ((__tmp90183
               (let () (declare (not safe)) (##type-id _klass84708_))))
          (declare (not safe))
          (##structure-instance-of? _obj84709_ __tmp90183))))
    (define class-instance?
      (lambda (_klass84703_ _obj84704_)
        (if (let () (declare (not safe)) (object? _obj84704_))
            (let ((_type84706_
                   (let () (declare (not safe)) (object-type _obj84704_))))
              (if (let () (declare (not safe)) (class-type? _type84706_))
                  (let ()
                    (declare (not safe))
                    (subclass? _type84706_ _klass84703_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass84698_ _k84699_)
        (let ((_obj84701_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass84698_ _k84699_))))
          (let () (declare (not safe)) (object-fill! _obj84701_ '#f))
          _obj84701_)))
    (define object-fill!
      (lambda (_obj84691_ _fill84692_)
        (let _loop84694_ ((_i84696_
                           (let ((__tmp90185
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj84691_))))
                             (declare (not safe))
                             (##fx- __tmp90185 '1))))
          (if (let () (declare (not safe)) (##fx> _i84696_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj84691_
                   _fill84692_
                   _i84696_
                   '#f
                   '#f))
                (let ((__tmp90184
                       (let () (declare (not safe)) (##fx- _i84696_ '1))))
                  (declare (not safe))
                  (_loop84694_ __tmp90184)))
              _obj84691_))))
    (define new-instance
      (lambda (_klass84689_)
        (let ((__obj90095
               (let ((__tmp90186
                      (let ((__tmp90187
                             (let ()
                               (declare (not safe))
                               (class-type-slot-vector _klass84689_))))
                        (declare (not safe))
                        (##vector-length __tmp90187))))
                 (declare (not safe))
                 (##make-structure _klass84689_ __tmp90186))))
          (let () (declare (not safe)) (object-fill! __obj90095 '#f))
          __obj90095)))
    (define make-instance
      (lambda (_klass84679_ . _args84680_)
        (let* ((_obj84682_
                (let () (declare (not safe)) (new-instance _klass84679_)))
               (_$e84684_
                (let ()
                  (declare (not safe))
                  (class-type-constructor _klass84679_))))
          (if _$e84684_
              ((lambda (_kons-id84687_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass84679_
                    _kons-id84687_
                    _obj84682_
                    _args84680_)))
               _$e84684_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass84679_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass84679_
                     _obj84682_
                     _args84680_))
                  (if (let ((__tmp90188
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass84679_))))
                        (declare (not safe))
                        (not __tmp90188))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass84679_
                         _obj84682_
                         _args84680_))
                      (if (let ((__tmp90190
                                 (let ((__tmp90191
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj84682_))))
                                   (declare (not safe))
                                   (##fx- __tmp90191 '1)))
                                (__tmp90189 (length _args84680_)))
                            (declare (not safe))
                            (##fx= __tmp90190 __tmp90189))
                          (apply ##structure _klass84679_ _args84680_)
                          (error '"arguments don't match object size"
                                 'class:
                                 _klass84679_
                                 'slots:
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass84679_))
                                 'args:
                                 _args84680_))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj84676_ . _args84677_)
        (if (let ((__tmp90193 (length _args84677_))
                  (__tmp90192
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj84676_))))
              (declare (not safe))
              (##fx< __tmp90193 __tmp90192))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj84676_ _args84677_))
            (error '"too many arguments for struct"
                   'object:
                   _obj84676_
                   'args:
                   _args84677_))))
    (define __struct-instance-init!
      (lambda (_obj84635_ _args84636_)
        (let _lp84638_ ((_k84640_ '1) (_rest84641_ _args84636_))
          (let* ((_rest8464284650_ _rest84641_)
                 (_else8464484658_ (lambda () _obj84635_))
                 (_K8464684664_
                  (lambda (_rest84661_ _hd84662_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj84635_ _k84640_ _hd84662_))
                    (let ((__tmp90194
                           (let () (declare (not safe)) (##fx+ _k84640_ '1))))
                      (declare (not safe))
                      (_lp84638_ __tmp90194 _rest84661_)))))
            (if (let () (declare (not safe)) (##pair? _rest8464284650_))
                (let ((_hd8464784667_
                       (let () (declare (not safe)) (##car _rest8464284650_)))
                      (_tl8464884669_
                       (let () (declare (not safe)) (##cdr _rest8464284650_))))
                  (let* ((_hd84672_ _hd8464784667_)
                         (_rest84674_ _tl8464884669_))
                    (declare (not safe))
                    (_K8464684664_ _rest84674_ _hd84672_)))
                (let () (declare (not safe)) (_else8464484658_)))))))
    (define class-instance-init!
      (lambda (_obj84632_ . _args84633_)
        (let ((__tmp90195
               (let () (declare (not safe)) (object-type _obj84632_))))
          (declare (not safe))
          (__class-instance-init! __tmp90195 _obj84632_ _args84633_))))
    (define __class-instance-init!
      (lambda (_klass84576_ _obj84577_ _args84578_)
        (let _lp84580_ ((_rest84582_ _args84578_))
          (let* ((_rest8458384593_ _rest84582_)
                 (_else8458584601_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest84582_))
                        _obj84577_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass84576_
                               'rest:
                               _rest84582_))))
                 (_K8458784613_
                  (lambda (_rest84604_ _val84605_ _key84606_)
                    (let ((_$e84608_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass84576_ _key84606_))))
                      (if _$e84608_
                          ((lambda (_off84611_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj84577_
                                _off84611_
                                _val84605_))
                             (let ()
                               (declare (not safe))
                               (_lp84580_ _rest84604_)))
                           _$e84608_)
                          (error '"unknown slot"
                                 'class:
                                 _klass84576_
                                 'slot:
                                 _key84606_))))))
            (if (let () (declare (not safe)) (##pair? _rest8458384593_))
                (let ((_hd8458884616_
                       (let () (declare (not safe)) (##car _rest8458384593_)))
                      (_tl8458984618_
                       (let () (declare (not safe)) (##cdr _rest8458384593_))))
                  (let ((_key84621_ _hd8458884616_))
                    (if (let () (declare (not safe)) (##pair? _tl8458984618_))
                        (let ((_hd8459084623_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8458984618_)))
                              (_tl8459184625_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8458984618_))))
                          (let* ((_val84628_ _hd8459084623_)
                                 (_rest84630_ _tl8459184625_))
                            (declare (not safe))
                            (_K8458784613_ _rest84630_ _val84628_ _key84621_)))
                        (let () (declare (not safe)) (_else8458584601_)))))
                (let () (declare (not safe)) (_else8458584601_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass84572_ _obj84573_ _args84574_)
        (apply call-method
               _klass84572_
               'instance-init!
               _obj84573_
               _args84574_)))
    (define constructor-init!
      (lambda (_klass84567_ _kons-id84568_ _obj84569_ . _args84570_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass84567_
           _kons-id84568_
           _obj84569_
           _args84570_))))
    (define __constructor-init!
      (lambda (_klass84557_ _kons-id84558_ _obj84559_ _args84560_)
        (let ((_$e84562_
               (let ()
                 (declare (not safe))
                 (__find-method _klass84557_ _obj84559_ _kons-id84558_))))
          (if _$e84562_
              ((lambda (_kons84565_)
                 (apply _kons84565_ _obj84559_ _args84560_)
                 _obj84559_)
               _$e84562_)
              (error '"missing constructor"
                     'class:
                     _klass84557_
                     'method:
                     _kons-id84558_)))))
    (define struct-copy
      (lambda (_struct84555_)
        (if (let () (declare (not safe)) (##structure? _struct84555_))
            '#!void
            (error '"not a structure" _struct84555_))
        (let () (declare (not safe)) (##structure-copy _struct84555_))))
    (define struct->list
      (lambda (_obj84553_)
        (if (let () (declare (not safe)) (object? _obj84553_))
            (let () (declare (not safe)) (##vector->list _obj84553_))
            (error '"not an object" _obj84553_))))
    (define class->list
      (lambda (_obj84540_)
        (if (let () (declare (not safe)) (object? _obj84540_))
            (let ((_klass84542_
                   (let () (declare (not safe)) (object-type _obj84540_))))
              (if (let () (declare (not safe)) (class-type? _klass84542_))
                  (let ((_slot-vector84544_
                         (let ()
                           (declare (not safe))
                           (class-type-slot-vector _klass84542_))))
                    (let _loop84546_ ((_index84548_
                                       (let ((__tmp90201
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector84544_))))
                                         (declare (not safe))
                                         (##fx- __tmp90201 '1)))
                                      (_plist84549_ '()))
                      (if (let () (declare (not safe)) (##fx< _index84548_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass84542_ _plist84549_))
                          (let ((_slot84551_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector84544_
                                    _index84548_))))
                            (let ((__tmp90200
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index84548_ '1)))
                                  (__tmp90196
                                   (let ((__tmp90199
                                          (symbol->keyword _slot84551_))
                                         (__tmp90197
                                          (let ((__tmp90198
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj84540_
                                                    _index84548_))))
                                            (declare (not safe))
                                            (cons __tmp90198 _plist84549_))))
                                     (declare (not safe))
                                     (cons __tmp90199 __tmp90197))))
                              (declare (not safe))
                              (_loop84546_ __tmp90200 __tmp90196))))))
                  (error '"not a class type"
                         'object:
                         _obj84540_
                         'class:
                         _klass84542_)))
            (error '"not an object" _obj84540_))))
    (define call-method
      (lambda (_obj84531_ _id84532_ . _args84533_)
        (let ((_$e84535_
               (let ()
                 (declare (not safe))
                 (method-ref _obj84531_ _id84532_))))
          (if _$e84535_
              ((lambda (_method84538_)
                 (apply _method84538_ _obj84531_ _args84533_))
               _$e84535_)
              (error '"cannot find method"
                     'object:
                     _obj84531_
                     'method:
                     _id84532_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj84528_ _id84529_)
        (if (let () (declare (not safe)) (object? _obj84528_))
            (let ((__tmp90202
                   (let () (declare (not safe)) (object-type _obj84528_))))
              (declare (not safe))
              (find-method __tmp90202 _obj84528_ _id84529_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj84522_ _id84523_)
        (let ((_$e84525_
               (let ()
                 (declare (not safe))
                 (method-ref _obj84522_ _id84523_))))
          (if _$e84525_
              _$e84525_
              (error '"missing method"
                     'object:
                     _obj84522_
                     'method:
                     _id84523_)))))
    (define bound-method-ref
      (lambda (_obj84512_ _id84513_)
        (let ((_$e84515_
               (let ()
                 (declare (not safe))
                 (method-ref _obj84512_ _id84513_))))
          (if _$e84515_
              ((lambda (_method84518_)
                 (lambda _args84520_
                   (apply _method84518_ _obj84512_ _args84520_)))
               _$e84515_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj84505_ _id84506_)
        (let ((_method84508_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj84505_ _id84506_))))
          (lambda _args84510_ (apply _method84508_ _obj84505_ _args84510_)))))
    (define find-method
      (lambda (_klass84501_ _obj84502_ _id84503_)
        (if (let () (declare (not safe)) (class-type? _klass84501_))
            (let ()
              (declare (not safe))
              (__find-method _klass84501_ _obj84502_ _id84503_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass84501_ _obj84502_ _id84503_)))))
    (define __find-method
      (lambda (_klass84494_ _obj84495_ _id84496_)
        (let ((_$e84498_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass84494_ _obj84495_ _id84496_))))
          (if _$e84498_
              _$e84498_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass84494_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass84494_ _obj84495_ _id84496_)))))))
    (define class-find-method
      (lambda (_klass84490_ _obj84491_ _id84492_)
        (if (let () (declare (not safe)) (class-type? _klass84490_))
            (let ()
              (declare (not safe))
              (__find-method _klass84490_ _obj84491_ _id84492_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins84482_ _obj84483_ _id84484_)
        (let ((__tmp90203
               (lambda (_g8448584487_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8448584487_ _obj84483_ _id84484_)))))
          (declare (not safe))
          (ormap1 __tmp90203 _mixins84482_))))
    (define builtin-find-method
      (lambda (_klass84475_ _obj84476_ _id84477_)
        (if (let () (declare (not safe)) (##type? _klass84475_))
            (let ((_$e84479_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass84475_ _obj84476_ _id84477_))))
              (if _$e84479_
                  _$e84479_
                  (let ((__tmp90204
                         (let ()
                           (declare (not safe))
                           (##type-super _klass84475_))))
                    (declare (not safe))
                    (builtin-find-method __tmp90204 _obj84476_ _id84477_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass84452_ _obj84453_ _id84454_)
        (letrec ((_metaclass-resolve-method84456_
                  (lambda ()
                    (let ((__method90096
                           (let ()
                             (declare (not safe))
                             (method-ref _klass84452_ 'direct-method-ref))))
                      (if __method90096
                          (__method90096 _klass84452_ _obj84453_ _id84454_)
                          (error '"Missing method"
                                 _klass84452_
                                 'direct-method-ref)))))
                 (_metaclass-resolve-method!84457_
                  (lambda ()
                    (let ((_method84472_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method84456_))))
                      (let ((__tmp90206
                             (let ()
                               (declare (not safe))
                               (&class-type-methods _klass84452_)))
                            (__tmp90205 (if _method84472_ 'resolved 'unknown)))
                        (declare (not safe))
                        (table-set! __tmp90206 _id84454_ __tmp90205))
                      _method84472_))))
          (let ((_$e84459_
                 (let ()
                   (declare (not safe))
                   (&class-type-methods _klass84452_))))
            (if _$e84459_
                ((lambda (_ht84462_)
                   (let ((_method84464_
                          (let ()
                            (declare (not safe))
                            (table-ref _ht84462_ _id84454_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method84464_))
                         _method84464_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass84452_))
                             (let ((_$e84466_ _method84464_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e84466_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method84456_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'uknown _$e84466_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!84457_)))))
                             '#f))))
                 _$e84459_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass84452_))
                    (let ((_tab84469_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (&class-type-methods-set! _klass84452_ _tab84469_))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!84457_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass84448_ _obj84449_ _id84450_)
        (let ((__tmp90207
               (let ()
                 (declare (not safe))
                 (class-type-precedence-list _klass84448_))))
          (declare (not safe))
          (mixin-find-method __tmp90207 _obj84449_ _id84450_))))
    (define builtin-method-ref
      (lambda (_klass84439_ _obj84440_ _id84441_)
        (let ((_$e84443_
               (let ((__tmp90208
                      (let () (declare (not safe)) (##type-id _klass84439_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp90208 '#f))))
          (if _$e84443_
              ((lambda (_mtab84446_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab84446_ _id84441_ '#f)))
               _$e84443_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass84405_ _id84406_ _proc84407_ _rebind?84408_)
        (letrec ((_bind!84410_
                  (lambda (_ht84423_)
                    (if (and (let () (declare (not safe)) (not _rebind?84408_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht84423_ _id84406_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass84405_
                               'method:
                               _id84406_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht84423_ _id84406_ _proc84407_))))))
          (if (let () (declare (not safe)) (procedure? _proc84407_))
              '#!void
              (error '"bad method; expected procedure" _proc84407_))
          (if (let () (declare (not safe)) (class-type? _klass84405_))
              (let ((_ht84412_
                     (let ()
                       (declare (not safe))
                       (&class-type-methods _klass84405_))))
                (if _ht84412_
                    (let () (declare (not safe)) (_bind!84410_ _ht84412_))
                    (let ((_ht84414_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (&class-type-methods-set! _klass84405_ _ht84414_))
                      (let () (declare (not safe)) (_bind!84410_ _ht84414_)))))
              (if (let () (declare (not safe)) (##type? _klass84405_))
                  (let ((_ht84421_
                         (let ((_$e84416_
                                (let ((__tmp90209
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass84405_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp90209
                                   '#f))))
                           (if _$e84416_
                               _$e84416_
                               (let ((_ht84419_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp90210
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass84405_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp90210
                                    _ht84419_))
                                 _ht84419_)))))
                    (declare (not safe))
                    (_bind!84410_ _ht84421_))
                  (error '"bad class; expected class or builtin type"
                         _klass84405_))))))
    (define bind-method!__0
      (lambda (_klass84428_ _id84429_ _proc84430_)
        (let ((_rebind?84432_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass84428_
           _id84429_
           _proc84430_
           _rebind?84432_))))
    (define bind-method!
      (lambda _g90212_
        (let ((_g90211_ (let () (declare (not safe)) (##length _g90212_))))
          (cond ((let () (declare (not safe)) (##fx= _g90211_ 3))
                 (apply (lambda (_klass84428_ _id84429_ _proc84430_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass84428_
                             _id84429_
                             _proc84430_)))
                        _g90212_))
                ((let () (declare (not safe)) (##fx= _g90211_ 4))
                 (apply (lambda (_klass84434_
                                 _id84435_
                                 _proc84436_
                                 _rebind?84437_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass84434_
                             _id84435_
                             _proc84436_
                             _rebind?84437_)))
                        _g90212_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g90212_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc84401_ _specializer84402_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc84401_ _specializer84402_))))
    (define seal-class!
      (lambda (_klass84368_)
        (letrec ((_collect-methods!84370_
                  (lambda (_mtab84386_)
                    (letrec ((_merge!84388_
                              (lambda (_tab84396_)
                                (let ((__tmp90213
                                       (lambda (_id84398_ _proc84399_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab84386_
                                            _id84398_
                                            _proc84399_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp90213 _tab84396_))))
                             (_collect-direct-methods!84389_
                              (lambda (_klass84391_)
                                (let ((_$e84393_
                                       (let ()
                                         (declare (not safe))
                                         (&class-type-methods _klass84391_))))
                                  (if _$e84393_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!84388_ _$e84393_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!84389_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass84368_))))))))
          (if (let () (declare (not safe)) (class-type? _klass84368_))
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass84368_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (class-type-final? _klass84368_))
                        '#!void
                        (error '"cannot seal non-final class" _klass84368_))
                    (if (let ()
                          (declare (not safe))
                          (class-type-metaclass? _klass84368_))
                        (let ((__method90097
                               (let ()
                                 (declare (not safe))
                                 (method-ref _klass84368_ 'seal-class!))))
                          (if __method90097
                              (__method90097 _klass84368_)
                              (error '"Missing method"
                                     _klass84368_
                                     'seal-class!)))
                        (let ((_vtab84372_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_mtab84373_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?))))
                          (let ()
                            (declare (not safe))
                            (_collect-methods!84370_ _mtab84373_))
                          (let ((__tmp90214
                                 (lambda (_id84375_ _proc84376_)
                                   (let ((_$e84378_
                                          (let ()
                                            (declare (not safe))
                                            (table-ref
                                             __method-specializers
                                             _proc84376_
                                             '#f))))
                                     (if _$e84378_
                                         ((lambda (_specializer84381_)
                                            (let ((_proc84383_
                                                   (_specializer84381_
                                                    _klass84368_))
                                                  (_gid84384_
                                                   (let ((__tmp90215
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##type-id
                                                             _klass84368_))))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      __tmp90215
                                                      '"::["
                                                      _id84375_
                                                      '"]"))))
                                              (eval (let ((__tmp90216
                                                           (let ((__tmp90217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp90218
                                 (let ((__tmp90219
                                        (let ()
                                          (declare (not safe))
                                          (cons _proc84383_ '()))))
                                   (declare (not safe))
                                   (cons 'quote __tmp90219))))
                            (declare (not safe))
                            (cons __tmp90218 '()))))
                     (declare (not safe))
                     (cons _gid84384_ __tmp90217))))
              (declare (not safe))
              (cons 'def __tmp90216)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (table-set!
                                                 _vtab84372_
                                                 _id84375_
                                                 _proc84383_))))
                                          _$e84378_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _vtab84372_
                                            _id84375_
                                            _proc84376_)))))))
                            (declare (not safe))
                            (table-for-each __tmp90214 _mtab84373_))
                          (let ()
                            (declare (not safe))
                            (&class-type-methods-set!
                             _klass84368_
                             _vtab84372_))))
                    (let ()
                      (declare (not safe))
                      (&class-type-seal! _klass84368_))))
              '#!void))))
    (define next-method
      (lambda (_subklass84317_ _obj84318_ _id84319_)
        (let ((_klass84321_
               (let () (declare (not safe)) (object-type _obj84318_)))
              (_type-id84322_
               (let () (declare (not safe)) (##type-id _subklass84317_))))
          (if (let () (declare (not safe)) (class-type? _klass84321_))
              (let _lp84324_ ((_rest84326_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass84321_))))
                (let* ((_rest8432784335_ _rest84326_)
                       (_else8432984343_ (lambda () '#f))
                       (_K8433184349_
                        (lambda (_rest84346_ _klass84347_)
                          (if (let ((__tmp90220
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass84347_))))
                                (declare (not safe))
                                (eq? _type-id84322_ __tmp90220))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest84346_
                                 _obj84318_
                                 _id84319_))
                              (let ()
                                (declare (not safe))
                                (_lp84324_ _rest84346_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8432784335_))
                      (let ((_hd8433284352_
                             (let ()
                               (declare (not safe))
                               (##car _rest8432784335_)))
                            (_tl8433384354_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8432784335_))))
                        (let* ((_klass84357_ _hd8433284352_)
                               (_rest84359_ _tl8433384354_))
                          (declare (not safe))
                          (_K8433184349_ _rest84359_ _klass84357_)))
                      (let () (declare (not safe)) (_else8432984343_)))))
              (if (let () (declare (not safe)) (##type? _klass84321_))
                  (let _lp84361_ ((_klass84363_ _klass84321_))
                    (if (let ((__tmp90221
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass84363_))))
                          (declare (not safe))
                          (eq? _type-id84322_ __tmp90221))
                        (let ((__tmp90222
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass84363_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp90222
                           _obj84318_
                           _id84319_))
                        (let ((_$e84365_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass84363_))))
                          (if _$e84365_
                              (let ()
                                (declare (not safe))
                                (_lp84361_ _$e84365_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass84307_ _obj84308_ _id84309_ . _args84310_)
        (let ((_$e84312_
               (let ()
                 (declare (not safe))
                 (next-method _subklass84307_ _obj84308_ _id84309_))))
          (if _$e84312_
              ((lambda (_methodf84315_)
                 (apply _methodf84315_ _obj84308_ _args84310_))
               _$e84312_)
              (error '"cannot find next method"
                     'object:
                     _obj84308_
                     'method:
                     _id84309_)))))
    (define write-style (lambda (_we84305_) (macro-writeenv-style _we84305_)))
    (define write-object
      (lambda (_we84297_ _obj84298_)
        (let ((_$e84300_
               (let () (declare (not safe)) (method-ref _obj84298_ ':wr))))
          (if _$e84300_
              ((lambda (_method84303_) (_method84303_ _obj84298_ _we84297_))
               _$e84300_)
              (let ()
                (declare (not safe))
                (##default-wr _we84297_ _obj84298_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
