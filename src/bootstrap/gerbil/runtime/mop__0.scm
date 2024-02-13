(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707840753)
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
      (let* ((_slots85978_
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
             (_slot-vector85980_
              (list->vector
               (let () (declare (not safe)) (cons '##type _slots85978_))))
             (_slot-table85987_
              (let ((_slot-table85982_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (for-each
                 (lambda (_slot85984_ _field85985_)
                   (let ()
                     (declare (not safe))
                     (table-set! _slot-table85982_ _slot85984_ _field85985_))
                   (let ((__tmp90695 (symbol->keyword _slot85984_)))
                     (declare (not safe))
                     (table-set! _slot-table85982_ __tmp90695 _field85985_)))
                 _slots85978_
                 (let ((__tmp90696 (length _slots85978_)))
                   (declare (not safe))
                   (iota __tmp90696 '1)))
                _slot-table85982_))
             (_flags85989_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields85995_
              (list->vector
               (apply append
                      (map (lambda (_g8599085992_) (list _g8599085992_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots85978_ '5))))))
             (_properties85997_ '((direct-slots: ,@slots) (struct: . #t)))
             (_t85999_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags85989_
                 ##type-type
                 _fields85995_
                 '()
                 _slot-vector85980_
                 _slot-table85987_
                 _properties85997_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t85999_ _t85999_))
        _t85999_))
    (define class-type?
      (lambda (_obj85976_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj85976_ class::t.id))))
    (define class-type=?
      (lambda (_x85973_ _y85974_)
        (let ((__tmp90698 (##structure-ref _x85973_ '1 class::t '#f))
              (__tmp90697 (##structure-ref _y85974_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp90698 __tmp90697))))
    (define type-opaque?
      (lambda (_type85971_)
        (let ((__tmp90699
               (let ((__tmp90700
                      (let ()
                        (declare (not safe))
                        (##type-flags _type85971_))))
                 (declare (not safe))
                 (##fxand __tmp90700 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp90699 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type85969_)
        (let ((__tmp90701
               (let ((__tmp90702
                      (let ()
                        (declare (not safe))
                        (##type-flags _type85969_))))
                 (declare (not safe))
                 (##fxand __tmp90702 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp90701 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type85967_)
        (let ((__tmp90703
               (let ((__tmp90704
                      (let ()
                        (declare (not safe))
                        (##type-flags _type85967_))))
                 (declare (not safe))
                 (##fxand __tmp90704 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp90703 '0))))
    (define class-type-struct?
      (lambda (_klass85965_)
        (let ((__tmp90705
               (let ((__tmp90706
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85965_))))
                 (declare (not safe))
                 (##fxand __tmp90706 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp90705 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass85963_)
        (let ((__tmp90707
               (let ((__tmp90708
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85963_))))
                 (declare (not safe))
                 (##fxand __tmp90708 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp90707 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass85961_)
        (let ((__tmp90709
               (let ((__tmp90710
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85961_))))
                 (declare (not safe))
                 (##fxand __tmp90710 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp90709 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties85927_)
        (map (lambda (_e8592885930_)
               (let* ((_g8593285939_ _e8592885930_)
                      (_E8593485943_
                       (lambda () (error '"No clause matching" _g8593285939_)))
                      (_K8593585949_
                       (lambda (_val85946_ _key85947_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key85947_ 'direct-supers:))
                             (let ((__tmp90711 (map class-type-id _val85946_)))
                               (declare (not safe))
                               (cons _key85947_ __tmp90711))
                             (let ()
                               (declare (not safe))
                               (cons _key85947_ _val85946_))))))
                 (if (let () (declare (not safe)) (##pair? _g8593285939_))
                     (let ((_hd8593685952_
                            (let ()
                              (declare (not safe))
                              (##car _g8593285939_)))
                           (_tl8593785954_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8593285939_))))
                       (let* ((_key85957_ _hd8593685952_)
                              (_val85959_ _tl8593785954_))
                         (declare (not safe))
                         (_K8593585949_ _val85959_ _key85957_)))
                     (let () (declare (not safe)) (_E8593485943_)))))
             _properties85927_)))
    (define make-class-type-descriptor
      (lambda (_type-id85826_
               _type-name85827_
               _type-super85828_
               _precedence-list85829_
               _slot-vector85830_
               _properties85831_
               _constructor85832_
               _slot-table85833_
               _methods85834_)
        (letrec ((_make-props!85836_
                  (lambda (_key85896_)
                    (letrec* ((_ht85898_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!85899_
                               (lambda (_ht85920_ _slots85921_)
                                 (for-each
                                  (lambda (_g8592285924_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht85920_
                                       _g8592285924_
                                       '#t)))
                                  _slots85921_)))
                              (_put-alist!85900_
                               (lambda (_ht85909_ _key85910_ _alist85911_)
                                 (let ((_$e85913_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key85910_ _alist85911_))))
                                   (if _$e85913_
                                       ((lambda (_g8591585917_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!85899_
                                             _ht85909_
                                             _g8591585917_)))
                                        _$e85913_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!85900_
                         _ht85898_
                         _key85896_
                         _properties85831_))
                      (for-each
                       (lambda (_mixin85902_)
                         (let ((_alist85904_
                                (##structure-ref
                                 _mixin85902_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist85904_))
                                   (let ((__tmp90713
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key85896_
                                                     _alist85904_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp90713)))
                               (let ((__tmp90712
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin85902_))))
                                 (declare (not safe))
                                 (_put-slots!85899_ _ht85898_ __tmp90712))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!85900_
                                  _ht85898_
                                  _key85896_
                                  _alist85904_)))))
                       _precedence-list85829_)
                      _ht85898_))))
          (let* ((_transparent?85838_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties85831_)))
                 (_all-slots-printable?85843_
                  (let ((_$e85840_ _transparent?85838_))
                    (if _$e85840_
                        _$e85840_
                        (let ((__tmp90714
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties85831_))))
                          (declare (not safe))
                          (eq? '#t __tmp90714)))))
                 (_printable85845_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?85843_))
                      (let ()
                        (declare (not safe))
                        (_make-props!85836_ 'print:))
                      '#f))
                 (_all-slots-equalable?85850_
                  (let ((_$e85847_ _transparent?85838_))
                    (if _$e85847_
                        _$e85847_
                        (let ((__tmp90715
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties85831_))))
                          (declare (not safe))
                          (eq? '#t __tmp90715)))))
                 (_equalable85852_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?85850_))
                      (let ()
                        (declare (not safe))
                        (_make-props!85836_ 'equal:))
                      '#f))
                 (_first-new-field85854_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super85828_
                         'gerbil#class::t))
                      (let ((__tmp90716
                             (##structure-ref
                              _type-super85828_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp90716))
                      '1))
                 (_field-info-length85856_
                  (let ((__tmp90717
                         (let ((__tmp90718
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector85830_))))
                           (declare (not safe))
                           (##fx- __tmp90718 _first-new-field85854_))))
                    (declare (not safe))
                    (##fx* '3 __tmp90717)))
                 (_field-info85858_ (make-vector _field-info-length85856_ '#f))
                 (_struct?85860_
                  (let ()
                    (declare (not safe))
                    (assgetq 'struct: _properties85831_)))
                 (_final?85862_
                  (let ()
                    (declare (not safe))
                    (assgetq 'final: _properties85831_)))
                 (_metaclass85870_
                  (let ((_metaclass8586385865_
                         (let ()
                           (declare (not safe))
                           (assgetq 'metaclass: _properties85831_))))
                    (if _metaclass8586385865_
                        (let ((_metaclass85868_ _metaclass8586385865_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass85868_
                                 'gerbil#class::t))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _type-id85826_
                                     'metaclass:
                                     _metaclass85868_))
                          _metaclass85868_)
                        '#f)))
                 (_opaque?85875_
                  (let ((_$e85872_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?85850_))))
                    (if _$e85872_
                        _$e85872_
                        (if _type-super85828_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super85828_))
                            '#f))))
                 (_type-flags85877_
                  (let ((__tmp90722 (if _final?85862_ '0 type-flag-extensible))
                        (__tmp90721 (if _opaque?85875_ type-flag-opaque '0))
                        (__tmp90720
                         (if _struct?85860_ class-type-flag-struct '0))
                        (__tmp90719
                         (if _metaclass85870_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp90722
                             __tmp90721
                             __tmp90720
                             __tmp90719))))
            (let _loop85880_ ((_i85882_ _first-new-field85854_) (_j85883_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j85883_ _field-info-length85856_))
                  (let* ((_slot85885_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector85830_ _i85882_)))
                         (_flags85893_
                          (if _transparent?85838_
                              '0
                              (let ((__tmp90724
                                     (if (or _all-slots-printable?85843_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable85845_
                                                _slot85885_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp90723
                                     (if (or _all-slots-equalable?85850_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable85852_
                                                _slot85885_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp90724 __tmp90723)))))
                    (vector-set! _field-info85858_ _j85883_ _slot85885_)
                    (vector-set!
                     _field-info85858_
                     (let () (declare (not safe)) (##fx+ _j85883_ '1))
                     _flags85893_)
                    (let ((__tmp90726
                           (let () (declare (not safe)) (##fx+ _i85882_ '1)))
                          (__tmp90725
                           (let () (declare (not safe)) (##fx+ _j85883_ '3))))
                      (declare (not safe))
                      (_loop85880_ __tmp90726 __tmp90725)))
                  '#!void))
            (if _metaclass85870_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass85870_
                   _type-id85826_
                   _type-name85827_
                   _type-flags85877_
                   _type-super85828_
                   _field-info85858_
                   _precedence-list85829_
                   _slot-vector85830_
                   _slot-table85833_
                   _properties85831_
                   _constructor85832_
                   _methods85834_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id85826_
                   _type-name85827_
                   _type-flags85877_
                   _type-super85828_
                   _field-info85858_
                   _precedence-list85829_
                   _slot-vector85830_
                   _slot-table85833_
                   _properties85831_
                   _constructor85832_
                   _methods85834_)))))))
    (define class-type-id
      (lambda (_klass85824_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85824_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass85822_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85822_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass85819_ _val85820_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85819_ _val85820_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass85814_ _val85816_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85814_
           _val85816_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass85812_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85812_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass85810_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85810_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass85807_ _val85808_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85807_ _val85808_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass85802_ _val85804_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85802_
           _val85804_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass85800_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85800_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass85798_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85798_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass85795_ _val85796_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85795_ _val85796_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass85790_ _val85792_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85790_
           _val85792_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass85788_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85788_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass85786_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85786_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass85783_ _val85784_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85783_ _val85784_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass85778_ _val85780_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85778_
           _val85780_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass85776_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85776_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass85774_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85774_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass85771_ _val85772_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85771_ _val85772_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass85766_ _val85768_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85766_
           _val85768_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass85764_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85764_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass85762_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass85762_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass85759_ _val85760_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass85759_
           _val85760_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass85754_ _val85756_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85754_
           _val85756_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass85752_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85752_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass85750_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85750_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass85747_ _val85748_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass85747_
           _val85748_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass85742_ _val85744_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85742_
           _val85744_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass85740_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85740_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass85738_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85738_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass85735_ _val85736_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85735_ _val85736_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass85730_ _val85732_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85730_
           _val85732_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass85728_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85728_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass85726_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85726_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass85723_ _val85724_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85723_ _val85724_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass85718_ _val85720_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85718_
           _val85720_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass85716_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85716_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass85714_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85714_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass85711_ _val85712_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass85711_
           _val85712_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass85706_ _val85708_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85706_
           _val85708_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass85704_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85704_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass85702_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85702_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass85699_ _val85700_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85699_ _val85700_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass85694_ _val85696_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85694_
           _val85696_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass85692_)
        (cdr (vector->list (##structure-ref _klass85692_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass85690_)
        (let ((__tmp90727
               (let ((__tmp90728
                      (##structure-ref _klass85690_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp90728))))
          (declare (not safe))
          (##fx- __tmp90727 '1))))
    (define class-type-seal!
      (lambda (_klass85688_)
        (let ((__tmp90729
               (let ((__tmp90730
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85688_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp90730))))
          (declare (not safe))
          (##structure-set!
           _klass85688_
           __tmp90729
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass85686_)
        (let ((__tmp90731
               (let ((__tmp90732
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85686_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp90732))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85686_
           __tmp90731
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct85677_ _maybe-super-struct85678_)
        (let ((_maybe-super-struct-id85680_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct85678_))))
          (let _lp85682_ ((_super-struct85684_ _maybe-sub-struct85677_))
            (if (let () (declare (not safe)) (not _super-struct85684_))
                '#f
                (if (let ((__tmp90734
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct85684_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id85680_ __tmp90734))
                    '#t
                    (let ((__tmp90733
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct85684_))))
                      (declare (not safe))
                      (_lp85682_ __tmp90733))))))))
    (define base-struct/1
      (lambda (_klass85675_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass85675_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass85675_))
                _klass85675_
                (let () (declare (not safe)) (##type-super _klass85675_)))
            (if (let () (declare (not safe)) (not _klass85675_))
                '#f
                (error '"not a class or false" _klass85675_)))))
    (define base-struct/2
      (lambda (_klass185663_ _klass285664_)
        (let ((_s185666_
               (let () (declare (not safe)) (base-struct/1 _klass185663_)))
              (_s285667_
               (let () (declare (not safe)) (base-struct/1 _klass285664_))))
          (if (or (let () (declare (not safe)) (not _s185666_))
                  (and _s285667_
                       (let ()
                         (declare (not safe))
                         (substruct? _s185666_ _s285667_))))
              _s285667_
              (if (or (let () (declare (not safe)) (not _s285667_))
                      (and _s185666_
                           (let ()
                             (declare (not safe))
                             (substruct? _s285667_ _s185666_))))
                  _s185666_
                  (error '"bad mixin: incompatible struct bases"
                         _klass185663_
                         _klass285664_
                         _s185666_
                         _s285667_))))))
    (define base-struct/list
      (lambda (_all-supers85547_)
        (let* ((_all-supers8554885573_ _all-supers85547_)
               (_E8555385577_
                (lambda ()
                  (error '"No clause matching" _all-supers8554885573_))))
          (let ((_K8557185660_ (lambda () '#f))
                (_K8556885646_
                 (lambda (_x85644_)
                   (let () (declare (not safe)) (base-struct/1 _x85644_))))
                (_K8556385623_
                 (lambda (_y85620_ _x85621_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x85621_ _y85620_))))
                (_K8555485584_
                 (lambda (_y85581_ _x85582_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x85582_ _y85581_)))))
            (let* ((___match9069090691_
                    (lambda (_hd8555585587_ _tl8555685589_)
                      (let ((_x85592_ _hd8555585587_))
                        (letrec ((_splice-rest8555885594_
                                  (lambda (_rest8556285601_ _y85603_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8556285601_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8555485584_ _y85603_ _x85592_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8555385577_)))))
                                 (_splice-try8556085596_
                                  (lambda (_hd8556185605_
                                           _rest8556285607_
                                           _y8555785608_)
                                    (let ((_y85611_ _hd8556185605_))
                                      (let ((__tmp90736
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8556285607_)))
                                            (__tmp90735
                                             (let ()
                                               (declare (not safe))
                                               (cons _y85611_ _y8555785608_))))
                                        (declare (not safe))
                                        (_splice-loop8555985598_
                                         __tmp90736
                                         __tmp90735)))))
                                 (_splice-loop8555985598_
                                  (lambda (_rest8556285613_ _y8555785614_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8556285613_))
                                        (let ((__tmp90738
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8556285613_))))
                                          (declare (not safe))
                                          (_splice-try8556085596_
                                           __tmp90738
                                           _rest8556285613_
                                           _y8555785614_))
                                        (let ((__tmp90737
                                               (reverse _y8555785614_)))
                                          (declare (not safe))
                                          (_splice-rest8555885594_
                                           _rest8556285613_
                                           __tmp90737))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8555985598_ _tl8555685589_ '()))))))
                   (_try-match8555085656_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8554885573_))
                          (let ((_tl8557085651_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8554885573_)))
                                (_hd8556985649_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8554885573_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8557085651_))
                                (let ((_x85654_ _hd8556985649_))
                                  (declare (not safe))
                                  (base-struct/1 _x85654_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8557085651_))
                                    (let ((_tl8556785635_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8557085651_)))
                                          (_hd8556685633_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8557085651_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8556785635_))
                                          (let ((_x85631_ _hd8556985649_)
                                                (_y85638_ _hd8556685633_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8556385623_
                                               _y85638_
                                               _x85631_)))
                                          (___match9069090691_
                                           _hd8556985649_
                                           _tl8557085651_)))
                                    (___match9069090691_
                                     _hd8556985649_
                                     _tl8557085651_))))
                          (let () (declare (not safe)) (_E8555385577_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8554885573_))
                  (let () (declare (not safe)) (_K8557185660_))
                  (let () (declare (not safe)) (_try-match8555085656_))))))))
    (define base-struct
      (lambda _all-supers85545_
        (let () (declare (not safe)) (base-struct/list _all-supers85545_))))
    (define find-super-constructor
      (lambda (_super85497_)
        (let _lp85499_ ((_rest85501_ _super85497_) (_constructor85502_ '#f))
          (let* ((_rest8550385511_ _rest85501_)
                 (_else8550585519_ (lambda () _constructor85502_))
                 (_K8550785533_
                  (lambda (_rest85522_ _hd85523_)
                    (let ((_$e85525_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd85523_
                              '10
                              class::t
                              '#f))))
                      (if _$e85525_
                          ((lambda (_xconstructor85528_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor85502_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor85502_
                                            _xconstructor85528_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp85499_ _rest85522_ _xconstructor85528_))
                                 (error '"conflicting implicit constructors"
                                        _constructor85502_
                                        _xconstructor85528_)))
                           _$e85525_)
                          (let ()
                            (declare (not safe))
                            (_lp85499_ _rest85522_ _constructor85502_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8550385511_))
                (let ((_hd8550885536_
                       (let () (declare (not safe)) (##car _rest8550385511_)))
                      (_tl8550985538_
                       (let () (declare (not safe)) (##cdr _rest8550385511_))))
                  (let* ((_hd85541_ _hd8550885536_)
                         (_rest85543_ _tl8550985538_))
                    (declare (not safe))
                    (_K8550785533_ _rest85543_ _hd85541_)))
                (let () (declare (not safe)) (_else8550585519_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list85473_ _direct-slots85474_)
        (let* ((_next-slot85476_ '1)
               (_slot-table85478_
                (let () (declare (not safe)) (make-table 'test: eq?)))
               (_r-slots85480_ '(__class))
               (_process-slot85484_
                (lambda (_slot85482_)
                  (if (let () (declare (not safe)) (symbol? _slot85482_))
                      '#!void
                      (error '"invalid slot name" _slot85482_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table85478_ _slot85482_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table85478_
                           _slot85482_
                           _next-slot85476_))
                        (let ((__tmp90739 (symbol->keyword _slot85482_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table85478_
                           __tmp90739
                           _next-slot85476_))
                        (set! _r-slots85480_
                              (let ()
                                (declare (not safe))
                                (cons _slot85482_ _r-slots85480_)))
                        (set! _next-slot85476_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot85476_ '1)))))))
               (_process-slots85490_
                (lambda (_g8548585487_)
                  (for-each _process-slot85484_ _g8548585487_))))
          (for-each
           (lambda (_mixin85493_)
             (let ((__tmp90740
                    (let ((__tmp90741
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin85493_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp90741 '()))))
               (declare (not safe))
               (_process-slots85490_ __tmp90740)))
           (reverse _class-precedence-list85473_))
          (let ()
            (declare (not safe))
            (_process-slots85490_ _direct-slots85474_))
          (let ((_slot-vector85495_ (list->vector (reverse _r-slots85480_))))
            (values _slot-vector85495_ _slot-table85478_)))))
    (define make-class-type
      (lambda (_id85435_
               _name85436_
               _direct-supers85437_
               _direct-slots85438_
               _properties85439_
               _constructor85440_)
        (let ((_$e85445_
               (let ((__tmp90742
                      (lambda (_$obj85442_)
                        (let ((__tmp90743
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj85442_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp90743)))))
                 (declare (not safe))
                 (find __tmp90742 _direct-supers85437_))))
          (if _$e85445_
              ((lambda (_g8544785449_)
                 (error '"Illegal super class; not a class descriptor"
                        _g8544785449_))
               _$e85445_)
              (let ((_$e85452_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers85437_))))
                (if _$e85452_
                    ((lambda (_g8545485456_)
                       (error '"Cannot extend final class" _g8545485456_))
                     _$e85452_)
                    '#!void))))
        (let ((_g90744_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers85437_))))
          (begin
            (let ((_g90745_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g90744_) (##vector-length _g90744_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g90745_ 2)))
                  (error "Context expects 2 values" _g90745_)))
            (let ((_precedence-list85459_
                   (let () (declare (not safe)) (##vector-ref _g90744_ 0)))
                  (_struct-super85460_
                   (let () (declare (not safe)) (##vector-ref _g90744_ 1))))
              (let ((_g90746_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list85459_
                        _direct-slots85438_))))
                (begin
                  (let ((_g90747_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g90746_)
                               (##vector-length _g90746_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g90747_ 2)))
                        (error "Context expects 2 values" _g90747_)))
                  (let ((_slot-vector85462_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g90746_ 0)))
                        (_slot-table85463_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g90746_ 1))))
                    (let* ((_properties85465_
                            (let ((__tmp90750
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots85438_)))
                                  (__tmp90748
                                   (let ((__tmp90749
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers85437_))))
                                     (declare (not safe))
                                     (cons __tmp90749 _properties85439_))))
                              (declare (not safe))
                              (cons __tmp90750 __tmp90748)))
                           (_constructor*85470_
                            (let ((_$e85467_ _constructor85440_))
                              (if _$e85467_
                                  _$e85467_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers85437_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id85435_
                         _name85436_
                         _struct-super85460_
                         _precedence-list85459_
                         _slot-vector85462_
                         _properties85465_
                         _constructor*85470_
                         _slot-table85463_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass85433_)
        (let ((__tmp90751
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass85433_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass85433_ __tmp90751))))
    (define compute-precedence-list
      (lambda (_direct-supers85431_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _direct-supers85431_))))
    (define make-class-predicate
      (lambda (_klass85415_)
        (let ((_tid85417_
               (let () (declare (not safe)) (##type-id _klass85415_))))
          (if (let () (declare (not safe)) (class-type-final? _klass85415_))
              (lambda (_g8541885420_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8541885420_ _tid85417_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass85415_))
                  (lambda (_g8542285424_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g8542285424_ _tid85417_)))
                  (lambda (_g8542685428_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass85415_ _g8542685428_))))))))
    (define if-class-slot-field
      (lambda (_klass85404_
               _slot85405_
               _if-final85406_
               _if-struct85407_
               _if-struct-field85408_
               _if-class-slot85409_)
        (let ((_field85411_
               (let ((__tmp90752
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass85404_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (table-ref __tmp90752 _slot85405_ '#f))))
          (if (let () (declare (not safe)) (not _field85411_))
              (error '"unknown slot" 'class: _klass85404_ 'slot: _slot85405_)
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass85404_))
                  (_if-final85406_ _klass85404_ _slot85405_ _field85411_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass85404_))
                      (_if-struct85407_ _klass85404_ _slot85405_ _field85411_)
                      (if (let ((_strukt85413_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass85404_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt85413_
                                    'gerbil#class::t))
                                 (let ((__tmp90753
                                        (let ((__tmp90754
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt85413_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp90754))))
                                   (declare (not safe))
                                   (##fx< _field85411_ __tmp90753))))
                          (_if-struct-field85408_
                           _klass85404_
                           _slot85405_
                           _field85411_)
                          (_if-class-slot85409_
                           _klass85404_
                           _slot85405_
                           _field85411_))))))))
    (define make-class-slot-accessor
      (lambda (_klass85401_ _slot85402_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass85401_
           _slot85402_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass85398_ _slot85399_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass85398_
           _slot85399_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass85395_ _slot85396_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass85395_
           _slot85396_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass85392_ _slot85393_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass85392_
           _slot85393_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object85376_ _class85377_ _slot85378_)
        (apply error
               '"not an instance"
               'object:
               _object85376_
               'class:
               _class85377_
               (if _slot85378_
                   (let ((__tmp90755
                          (let ()
                            (declare (not safe))
                            (cons _slot85378_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp90755))
                   '()))))
    (define not-an-instance__0
      (lambda (_object85383_ _class85384_)
        (let ((_slot85386_ '#f))
          (declare (not safe))
          (not-an-instance__% _object85383_ _class85384_ _slot85386_))))
    (define not-an-instance
      (lambda _g90757_
        (let ((_g90756_ (let () (declare (not safe)) (##length _g90757_))))
          (cond ((let () (declare (not safe)) (##fx= _g90756_ 2))
                 (apply (lambda (_object85383_ _class85384_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object85383_ _class85384_)))
                        _g90757_))
                ((let () (declare (not safe)) (##fx= _g90756_ 3))
                 (apply (lambda (_object85388_ _class85389_ _slot85390_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object85388_
                             _class85389_
                             _slot85390_)))
                        _g90757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g90757_))))))
    (define make-final-slot-accessor
      (lambda (_klass85369_ _slot85370_ _field85371_)
        (lambda (_obj85373_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj85373_
             _field85371_
             _klass85369_
             _slot85370_)))))
    (define make-final-slot-mutator
      (lambda (_klass85362_ _slot85363_ _field85364_)
        (lambda (_obj85366_ _val85367_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj85366_
             _val85367_
             _field85364_
             _klass85362_
             _slot85363_)))))
    (define make-struct-slot-accessor
      (lambda (_klass85356_ _slot85357_ _field85358_)
        (lambda (_obj85360_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj85360_
             _field85358_
             _klass85356_
             _slot85357_)))))
    (define make-struct-slot-mutator
      (lambda (_klass85349_ _slot85350_ _field85351_)
        (lambda (_obj85353_ _val85354_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj85353_
             _val85354_
             _field85351_
             _klass85349_
             _slot85350_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass85343_ _slot85344_ _field85345_)
        (lambda (_obj85347_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj85347_
             _field85345_
             _klass85343_
             _slot85344_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass85336_ _slot85337_ _field85338_)
        (lambda (_obj85340_ _val85341_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj85340_
             _val85341_
             _field85338_
             _klass85336_
             _slot85337_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass85330_ _slot85331_ _field85332_)
        (lambda (_obj85334_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass85330_ _obj85334_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj85334_ _field85332_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj85334_ _klass85330_ _slot85331_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass85323_ _slot85324_ _field85325_)
        (lambda (_obj85327_ _val85328_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass85323_ _obj85327_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj85327_ _field85325_ _val85328_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj85327_ _klass85323_ _slot85324_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass85317_ _slot85318_ _field85319_)
        (lambda (_obj85321_)
          (if (let ((__tmp90758
                     (let () (declare (not safe)) (##type-id _klass85317_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj85321_ __tmp90758))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj85321_ _field85319_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass85317_ _obj85321_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj85321_ _slot85318_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj85321_
                     _klass85317_
                     _slot85318_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass85310_ _slot85311_ _field85312_)
        (lambda (_obj85314_ _val85315_)
          (if (let ((__tmp90759
                     (let () (declare (not safe)) (##type-id _klass85310_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj85314_ __tmp90759))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj85314_ _field85312_ _val85315_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass85310_ _obj85314_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj85314_ _slot85311_ _val85315_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj85314_
                     _klass85310_
                     _slot85311_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass85304_ _slot85305_ _field85306_)
        (lambda (_obj85308_)
          (if (let ((__tmp90760
                     (let () (declare (not safe)) (##type-id _klass85304_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj85308_ __tmp90760))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj85308_ _field85306_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj85308_ _slot85305_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass85297_ _slot85298_ _field85299_)
        (lambda (_obj85301_ _val85302_)
          (if (let ((__tmp90761
                     (let () (declare (not safe)) (##type-id _klass85297_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj85301_ __tmp90761))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj85301_ _field85299_ _val85302_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj85301_ _slot85298_ _val85302_))))))
    (define class-slot-offset
      (lambda (_klass85294_ _slot85295_)
        (let ((__tmp90762
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass85294_ '8 class::t '#f))))
          (declare (not safe))
          (table-ref __tmp90762 _slot85295_ '#f))))
    (define class-slot-ref
      (lambda (_klass85288_ _obj85289_ _slot85290_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass85288_ _obj85289_))
            (let ((_off85292_
                   (let ((__tmp90763
                          (let ()
                            (declare (not safe))
                            (object-type _obj85289_))))
                     (declare (not safe))
                     (class-slot-offset __tmp90763 _slot85290_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj85289_
               _off85292_
               _klass85288_
               _slot85290_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj85289_ _klass85288_)))))
    (define class-slot-set!
      (lambda (_klass85281_ _obj85282_ _slot85283_ _val85284_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass85281_ _obj85282_))
            (let ((_off85286_
                   (let ((__tmp90764
                          (let ()
                            (declare (not safe))
                            (object-type _obj85282_))))
                     (declare (not safe))
                     (class-slot-offset __tmp90764 _slot85283_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj85282_
               _val85284_
               _off85286_
               _klass85281_
               _slot85283_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj85282_ _klass85281_)))))
    (define unchecked-field-ref
      (lambda (_obj85278_ _off85279_)
        (let ((__tmp90765
               (let () (declare (not safe)) (##structure-type _obj85278_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj85278_ _off85279_ __tmp90765 '#f))))
    (define unchecked-field-set!
      (lambda (_obj85274_ _off85275_ _val85276_)
        (let ((__tmp90766
               (let () (declare (not safe)) (##structure-type _obj85274_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj85274_
           _val85276_
           _off85275_
           __tmp90766
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj85271_ _slot85272_)
        (let ((__tmp90767
               (let ((__tmp90768
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj85271_))))
                 (declare (not safe))
                 (class-slot-offset __tmp90768 _slot85272_))))
          (declare (not safe))
          (unchecked-field-ref _obj85271_ __tmp90767))))
    (define unchecked-slot-set!
      (lambda (_obj85267_ _slot85268_ _val85269_)
        (let ((__tmp90769
               (let ((__tmp90770
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj85267_))))
                 (declare (not safe))
                 (class-slot-offset __tmp90770 _slot85268_))))
          (declare (not safe))
          (unchecked-field-set! _obj85267_ __tmp90769 _val85269_))))
    (define slot-ref__%
      (lambda (_obj85243_ _slot85244_ _E85245_)
        (if (let () (declare (not safe)) (object? _obj85243_))
            (let* ((_klass85247_
                    (let () (declare (not safe)) (object-type _obj85243_)))
                   (_$e85250_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass85247_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass85247_ _slot85244_))
                        '#f)))
              (if _$e85250_
                  ((lambda (_off85253_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj85243_ _off85253_)))
                   _$e85250_)
                  (_E85245_ _obj85243_ _slot85244_)))
            (_E85245_ _obj85243_ _slot85244_))))
    (define slot-ref__0
      (lambda (_obj85258_ _slot85259_)
        (let ((_E85261_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj85258_ _slot85259_ _E85261_))))
    (define slot-ref
      (lambda _g90772_
        (let ((_g90771_ (let () (declare (not safe)) (##length _g90772_))))
          (cond ((let () (declare (not safe)) (##fx= _g90771_ 2))
                 (apply (lambda (_obj85258_ _slot85259_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj85258_ _slot85259_)))
                        _g90772_))
                ((let () (declare (not safe)) (##fx= _g90771_ 3))
                 (apply (lambda (_obj85263_ _slot85264_ _E85265_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj85263_ _slot85264_ _E85265_)))
                        _g90772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g90772_))))))
    (define slot-set!__%
      (lambda (_obj85215_ _slot85216_ _val85217_ _E85218_)
        (if (let () (declare (not safe)) (object? _obj85215_))
            (let* ((_klass85220_
                    (let () (declare (not safe)) (object-type _obj85215_)))
                   (_$e85223_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass85220_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass85220_ _slot85216_))
                        '#f)))
              (if _$e85223_
                  ((lambda (_off85226_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj85215_
                        _off85226_
                        _val85217_)))
                   _$e85223_)
                  (_E85218_ _obj85215_ _slot85216_)))
            (_E85218_ _obj85215_ _slot85216_))))
    (define slot-set!__0
      (lambda (_obj85231_ _slot85232_ _val85233_)
        (let ((_E85235_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj85231_ _slot85232_ _val85233_ _E85235_))))
    (define slot-set!
      (lambda _g90774_
        (let ((_g90773_ (let () (declare (not safe)) (##length _g90774_))))
          (cond ((let () (declare (not safe)) (##fx= _g90773_ 3))
                 (apply (lambda (_obj85231_ _slot85232_ _val85233_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj85231_ _slot85232_ _val85233_)))
                        _g90774_))
                ((let () (declare (not safe)) (##fx= _g90773_ 4))
                 (apply (lambda (_obj85237_ _slot85238_ _val85239_ _E85240_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj85237_
                             _slot85238_
                             _val85239_
                             _E85240_)))
                        _g90774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g90774_))))))
    (define __slot-error
      (lambda (_obj85211_ _slot85212_)
        (error '"Cannot find slot" 'object: _obj85211_ 'slot: _slot85212_)))
    (define subclass?
      (lambda (_maybe-sub-class85201_ _maybe-super-class85202_)
        (let* ((_maybe-super-class-id85204_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class85202_)))
               (_$e85206_
                (let ((__tmp90775
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class85201_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id85204_ __tmp90775))))
          (if _$e85206_
              _$e85206_
              (let ((__tmp90777
                     (lambda (_super-class85209_)
                       (let ((__tmp90778
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class85209_))))
                         (declare (not safe))
                         (eq? __tmp90778 _maybe-super-class-id85204_))))
                    (__tmp90776
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class85201_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp90777 __tmp90776))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass85198_ _obj85199_)
        (let ((__tmp90779
               (let () (declare (not safe)) (##type-id _klass85198_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj85199_ __tmp90779))))
    (define struct-instance?
      (lambda (_klass85195_ _obj85196_)
        (let ((__tmp90780
               (let () (declare (not safe)) (##type-id _klass85195_))))
          (declare (not safe))
          (##structure-instance-of? _obj85196_ __tmp90780))))
    (define class-instance?
      (lambda (_klass85190_ _obj85191_)
        (if (let () (declare (not safe)) (object? _obj85191_))
            (let ((_type85193_
                   (let () (declare (not safe)) (object-type _obj85191_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type85193_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type85193_ _klass85190_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass85185_ _k85186_)
        (let ((_obj85188_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass85185_ _k85186_))))
          (let () (declare (not safe)) (object-fill! _obj85188_ '#f))
          _obj85188_)))
    (define object-fill!
      (lambda (_obj85178_ _fill85179_)
        (let _loop85181_ ((_i85183_
                           (let ((__tmp90782
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj85178_))))
                             (declare (not safe))
                             (##fx- __tmp90782 '1))))
          (if (let () (declare (not safe)) (##fx> _i85183_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj85178_
                   _fill85179_
                   _i85183_
                   '#f
                   '#f))
                (let ((__tmp90781
                       (let () (declare (not safe)) (##fx- _i85183_ '1))))
                  (declare (not safe))
                  (_loop85181_ __tmp90781)))
              _obj85178_))))
    (define new-instance
      (lambda (_klass85176_)
        (let ((__obj90692
               (let ((__tmp90783
                      (let ((__tmp90784
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass85176_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp90784))))
                 (declare (not safe))
                 (##make-structure _klass85176_ __tmp90783))))
          (let () (declare (not safe)) (object-fill! __obj90692 '#f))
          __obj90692)))
    (define make-instance
      (lambda (_klass85166_ . _args85167_)
        (let* ((_obj85169_
                (let () (declare (not safe)) (new-instance _klass85166_)))
               (_$e85171_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass85166_ '10 class::t '#f))))
          (if _$e85171_
              ((lambda (_kons-id85174_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass85166_
                    _kons-id85174_
                    _obj85169_
                    _args85167_)))
               _$e85171_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass85166_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass85166_
                     _obj85169_
                     _args85167_))
                  (if (let ((__tmp90788
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass85166_))))
                        (declare (not safe))
                        (not __tmp90788))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass85166_
                         _obj85169_
                         _args85167_))
                      (if (let ((__tmp90786
                                 (let ((__tmp90787
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj85169_))))
                                   (declare (not safe))
                                   (##fx- __tmp90787 '1)))
                                (__tmp90785 (length _args85167_)))
                            (declare (not safe))
                            (##fx= __tmp90786 __tmp90785))
                          (apply ##structure _klass85166_ _args85167_)
                          (error '"arguments don't match object size"
                                 'class:
                                 _klass85166_
                                 'slots:
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass85166_))
                                 'args:
                                 _args85167_))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj85163_ . _args85164_)
        (if (let ((__tmp90790 (length _args85164_))
                  (__tmp90789
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj85163_))))
              (declare (not safe))
              (##fx< __tmp90790 __tmp90789))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj85163_ _args85164_))
            (error '"too many arguments for struct"
                   'object:
                   _obj85163_
                   'args:
                   _args85164_))))
    (define __struct-instance-init!
      (lambda (_obj85122_ _args85123_)
        (let _lp85125_ ((_k85127_ '1) (_rest85128_ _args85123_))
          (let* ((_rest8512985137_ _rest85128_)
                 (_else8513185145_ (lambda () _obj85122_))
                 (_K8513385151_
                  (lambda (_rest85148_ _hd85149_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj85122_ _k85127_ _hd85149_))
                    (let ((__tmp90791
                           (let () (declare (not safe)) (##fx+ _k85127_ '1))))
                      (declare (not safe))
                      (_lp85125_ __tmp90791 _rest85148_)))))
            (if (let () (declare (not safe)) (##pair? _rest8512985137_))
                (let ((_hd8513485154_
                       (let () (declare (not safe)) (##car _rest8512985137_)))
                      (_tl8513585156_
                       (let () (declare (not safe)) (##cdr _rest8512985137_))))
                  (let* ((_hd85159_ _hd8513485154_)
                         (_rest85161_ _tl8513585156_))
                    (declare (not safe))
                    (_K8513385151_ _rest85161_ _hd85159_)))
                (let () (declare (not safe)) (_else8513185145_)))))))
    (define class-instance-init!
      (lambda (_obj85119_ . _args85120_)
        (let ((__tmp90792
               (let () (declare (not safe)) (object-type _obj85119_))))
          (declare (not safe))
          (__class-instance-init! __tmp90792 _obj85119_ _args85120_))))
    (define __class-instance-init!
      (lambda (_klass85063_ _obj85064_ _args85065_)
        (let _lp85067_ ((_rest85069_ _args85065_))
          (let* ((_rest8507085080_ _rest85069_)
                 (_else8507285088_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest85069_))
                        _obj85064_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass85063_
                               'rest:
                               _rest85069_))))
                 (_K8507485100_
                  (lambda (_rest85091_ _val85092_ _key85093_)
                    (let ((_$e85095_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass85063_ _key85093_))))
                      (if _$e85095_
                          ((lambda (_off85098_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj85064_
                                _off85098_
                                _val85092_))
                             (let ()
                               (declare (not safe))
                               (_lp85067_ _rest85091_)))
                           _$e85095_)
                          (error '"unknown slot"
                                 'class:
                                 _klass85063_
                                 'slot:
                                 _key85093_))))))
            (if (let () (declare (not safe)) (##pair? _rest8507085080_))
                (let ((_hd8507585103_
                       (let () (declare (not safe)) (##car _rest8507085080_)))
                      (_tl8507685105_
                       (let () (declare (not safe)) (##cdr _rest8507085080_))))
                  (let ((_key85108_ _hd8507585103_))
                    (if (let () (declare (not safe)) (##pair? _tl8507685105_))
                        (let ((_hd8507785110_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8507685105_)))
                              (_tl8507885112_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8507685105_))))
                          (let* ((_val85115_ _hd8507785110_)
                                 (_rest85117_ _tl8507885112_))
                            (declare (not safe))
                            (_K8507485100_ _rest85117_ _val85115_ _key85108_)))
                        (let () (declare (not safe)) (_else8507285088_)))))
                (let () (declare (not safe)) (_else8507285088_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass85059_ _obj85060_ _args85061_)
        (apply call-method
               _klass85059_
               'instance-init!
               _obj85060_
               _args85061_)))
    (define constructor-init!
      (lambda (_klass85054_ _kons-id85055_ _obj85056_ . _args85057_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass85054_
           _kons-id85055_
           _obj85056_
           _args85057_))))
    (define __constructor-init!
      (lambda (_klass85044_ _kons-id85045_ _obj85046_ _args85047_)
        (let ((_$e85049_
               (let ()
                 (declare (not safe))
                 (__find-method _klass85044_ _obj85046_ _kons-id85045_))))
          (if _$e85049_
              ((lambda (_kons85052_)
                 (apply _kons85052_ _obj85046_ _args85047_)
                 _obj85046_)
               _$e85049_)
              (error '"missing constructor"
                     'class:
                     _klass85044_
                     'method:
                     _kons-id85045_)))))
    (define struct-copy
      (lambda (_struct85042_)
        (if (let () (declare (not safe)) (##structure? _struct85042_))
            '#!void
            (error '"not a structure" _struct85042_))
        (let () (declare (not safe)) (##structure-copy _struct85042_))))
    (define struct->list
      (lambda (_obj85040_)
        (if (let () (declare (not safe)) (object? _obj85040_))
            (let () (declare (not safe)) (##vector->list _obj85040_))
            (error '"not an object" _obj85040_))))
    (define class->list
      (lambda (_obj85027_)
        (if (let () (declare (not safe)) (object? _obj85027_))
            (let ((_klass85029_
                   (let () (declare (not safe)) (object-type _obj85027_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass85029_ 'gerbil#class::t))
                  (let ((_slot-vector85031_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass85029_
                            '7
                            class::t
                            '#f))))
                    (let _loop85033_ ((_index85035_
                                       (let ((__tmp90798
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector85031_))))
                                         (declare (not safe))
                                         (##fx- __tmp90798 '1)))
                                      (_plist85036_ '()))
                      (if (let () (declare (not safe)) (##fx< _index85035_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass85029_ _plist85036_))
                          (let ((_slot85038_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector85031_
                                    _index85035_))))
                            (let ((__tmp90797
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index85035_ '1)))
                                  (__tmp90793
                                   (let ((__tmp90796
                                          (symbol->keyword _slot85038_))
                                         (__tmp90794
                                          (let ((__tmp90795
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj85027_
                                                    _index85035_))))
                                            (declare (not safe))
                                            (cons __tmp90795 _plist85036_))))
                                     (declare (not safe))
                                     (cons __tmp90796 __tmp90794))))
                              (declare (not safe))
                              (_loop85033_ __tmp90797 __tmp90793))))))
                  (error '"not a class type"
                         'object:
                         _obj85027_
                         'class:
                         _klass85029_)))
            (error '"not an object" _obj85027_))))
    (define call-method
      (lambda (_obj85018_ _id85019_ . _args85020_)
        (let ((_$e85022_
               (let ()
                 (declare (not safe))
                 (method-ref _obj85018_ _id85019_))))
          (if _$e85022_
              ((lambda (_method85025_)
                 (apply _method85025_ _obj85018_ _args85020_))
               _$e85022_)
              (error '"cannot find method"
                     'object:
                     _obj85018_
                     'method:
                     _id85019_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj85015_ _id85016_)
        (if (let () (declare (not safe)) (object? _obj85015_))
            (let ((__tmp90799
                   (let () (declare (not safe)) (object-type _obj85015_))))
              (declare (not safe))
              (find-method __tmp90799 _obj85015_ _id85016_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj85009_ _id85010_)
        (let ((_$e85012_
               (let ()
                 (declare (not safe))
                 (method-ref _obj85009_ _id85010_))))
          (if _$e85012_
              _$e85012_
              (error '"missing method"
                     'object:
                     _obj85009_
                     'method:
                     _id85010_)))))
    (define bound-method-ref
      (lambda (_obj84999_ _id85000_)
        (let ((_$e85002_
               (let ()
                 (declare (not safe))
                 (method-ref _obj84999_ _id85000_))))
          (if _$e85002_
              ((lambda (_method85005_)
                 (lambda _args85007_
                   (apply _method85005_ _obj84999_ _args85007_)))
               _$e85002_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj84992_ _id84993_)
        (let ((_method84995_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj84992_ _id84993_))))
          (lambda _args84997_ (apply _method84995_ _obj84992_ _args84997_)))))
    (define find-method
      (lambda (_klass84988_ _obj84989_ _id84990_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass84988_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass84988_ _obj84989_ _id84990_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass84988_ _obj84989_ _id84990_)))))
    (define __find-method
      (lambda (_klass84981_ _obj84982_ _id84983_)
        (let ((_$e84985_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass84981_ _obj84982_ _id84983_))))
          (if _$e84985_
              _$e84985_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass84981_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass84981_ _obj84982_ _id84983_)))))))
    (define class-find-method
      (lambda (_klass84977_ _obj84978_ _id84979_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass84977_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass84977_ _obj84978_ _id84979_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins84969_ _obj84970_ _id84971_)
        (let ((__tmp90800
               (lambda (_g8497284974_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8497284974_ _obj84970_ _id84971_)))))
          (declare (not safe))
          (ormap1 __tmp90800 _mixins84969_))))
    (define builtin-find-method
      (lambda (_klass84962_ _obj84963_ _id84964_)
        (if (let () (declare (not safe)) (##type? _klass84962_))
            (let ((_$e84966_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass84962_ _obj84963_ _id84964_))))
              (if _$e84966_
                  _$e84966_
                  (let ((__tmp90801
                         (let ()
                           (declare (not safe))
                           (##type-super _klass84962_))))
                    (declare (not safe))
                    (builtin-find-method __tmp90801 _obj84963_ _id84964_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass84939_ _obj84940_ _id84941_)
        (letrec ((_metaclass-resolve-method84943_
                  (lambda ()
                    (let ((__method90693
                           (let ()
                             (declare (not safe))
                             (method-ref _klass84939_ 'direct-method-ref))))
                      (if __method90693
                          (__method90693 _klass84939_ _obj84940_ _id84941_)
                          (error '"Missing method"
                                 _klass84939_
                                 'direct-method-ref)))))
                 (_metaclass-resolve-method!84944_
                  (lambda ()
                    (let ((_method84959_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method84943_))))
                      (let ((__tmp90803
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass84939_
                                '11
                                class::t
                                '#f)))
                            (__tmp90802 (if _method84959_ 'resolved 'unknown)))
                        (declare (not safe))
                        (table-set! __tmp90803 _id84941_ __tmp90802))
                      _method84959_))))
          (let ((_$e84946_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass84939_ '11 class::t '#f))))
            (if _$e84946_
                ((lambda (_ht84949_)
                   (let ((_method84951_
                          (let ()
                            (declare (not safe))
                            (table-ref _ht84949_ _id84941_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method84951_))
                         _method84951_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass84939_))
                             (let ((_$e84953_ _method84951_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e84953_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method84943_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'uknown _$e84953_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!84944_)))))
                             '#f))))
                 _$e84946_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass84939_))
                    (let ((_tab84956_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass84939_
                         _tab84956_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!84944_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass84935_ _obj84936_ _id84937_)
        (let ((__tmp90804 (##structure-ref _klass84935_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp90804 _obj84936_ _id84937_))))
    (define builtin-method-ref
      (lambda (_klass84926_ _obj84927_ _id84928_)
        (let ((_$e84930_
               (let ((__tmp90805
                      (let () (declare (not safe)) (##type-id _klass84926_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp90805 '#f))))
          (if _$e84930_
              ((lambda (_mtab84933_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab84933_ _id84928_ '#f)))
               _$e84930_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass84892_ _id84893_ _proc84894_ _rebind?84895_)
        (letrec ((_bind!84897_
                  (lambda (_ht84910_)
                    (if (and (let () (declare (not safe)) (not _rebind?84895_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht84910_ _id84893_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass84892_
                               'method:
                               _id84893_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht84910_ _id84893_ _proc84894_))))))
          (if (let () (declare (not safe)) (procedure? _proc84894_))
              '#!void
              (error '"bad method; expected procedure" _proc84894_))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass84892_ 'gerbil#class::t))
              (let ((_ht84899_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass84892_
                        '11
                        class::t
                        '#f))))
                (if _ht84899_
                    (let () (declare (not safe)) (_bind!84897_ _ht84899_))
                    (let ((_ht84901_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass84892_
                         _ht84901_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!84897_ _ht84901_)))))
              (if (let () (declare (not safe)) (##type? _klass84892_))
                  (let ((_ht84908_
                         (let ((_$e84903_
                                (let ((__tmp90806
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass84892_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp90806
                                   '#f))))
                           (if _$e84903_
                               _$e84903_
                               (let ((_ht84906_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp90807
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass84892_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp90807
                                    _ht84906_))
                                 _ht84906_)))))
                    (declare (not safe))
                    (_bind!84897_ _ht84908_))
                  (error '"bad class; expected class or builtin type"
                         _klass84892_))))))
    (define bind-method!__0
      (lambda (_klass84915_ _id84916_ _proc84917_)
        (let ((_rebind?84919_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass84915_
           _id84916_
           _proc84917_
           _rebind?84919_))))
    (define bind-method!
      (lambda _g90809_
        (let ((_g90808_ (let () (declare (not safe)) (##length _g90809_))))
          (cond ((let () (declare (not safe)) (##fx= _g90808_ 3))
                 (apply (lambda (_klass84915_ _id84916_ _proc84917_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass84915_
                             _id84916_
                             _proc84917_)))
                        _g90809_))
                ((let () (declare (not safe)) (##fx= _g90808_ 4))
                 (apply (lambda (_klass84921_
                                 _id84922_
                                 _proc84923_
                                 _rebind?84924_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass84921_
                             _id84922_
                             _proc84923_
                             _rebind?84924_)))
                        _g90809_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g90809_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc84888_ _specializer84889_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc84888_ _specializer84889_))))
    (define seal-class!
      (lambda (_klass84855_)
        (letrec ((_collect-methods!84857_
                  (lambda (_mtab84873_)
                    (letrec ((_merge!84875_
                              (lambda (_tab84883_)
                                (let ((__tmp90810
                                       (lambda (_id84885_ _proc84886_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab84873_
                                            _id84885_
                                            _proc84886_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp90810 _tab84883_))))
                             (_collect-direct-methods!84876_
                              (lambda (_klass84878_)
                                (let ((_$e84880_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _klass84878_
                                          '11
                                          class::t
                                          '#f))))
                                  (if _$e84880_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!84875_ _$e84880_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!84876_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass84855_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass84855_ 'gerbil#class::t))
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass84855_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (class-type-final? _klass84855_))
                        '#!void
                        (error '"cannot seal non-final class" _klass84855_))
                    (if (let ()
                          (declare (not safe))
                          (class-type-metaclass? _klass84855_))
                        (let ((__method90694
                               (let ()
                                 (declare (not safe))
                                 (method-ref _klass84855_ 'seal-class!))))
                          (if __method90694
                              (__method90694 _klass84855_)
                              (error '"Missing method"
                                     _klass84855_
                                     'seal-class!)))
                        (let ((_vtab84859_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_mtab84860_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?))))
                          (let ()
                            (declare (not safe))
                            (_collect-methods!84857_ _mtab84860_))
                          (let ((__tmp90811
                                 (lambda (_id84862_ _proc84863_)
                                   (let ((_$e84865_
                                          (let ()
                                            (declare (not safe))
                                            (table-ref
                                             __method-specializers
                                             _proc84863_
                                             '#f))))
                                     (if _$e84865_
                                         ((lambda (_specializer84868_)
                                            (let ((_proc84870_
                                                   (_specializer84868_
                                                    _klass84855_))
                                                  (_gid84871_
                                                   (let ((__tmp90812
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##type-id
                                                             _klass84855_))))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      __tmp90812
                                                      '"::["
                                                      _id84862_
                                                      '"]"))))
                                              (eval (let ((__tmp90813
                                                           (let ((__tmp90814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp90815
                                 (let ((__tmp90816
                                        (let ()
                                          (declare (not safe))
                                          (cons _proc84870_ '()))))
                                   (declare (not safe))
                                   (cons 'quote __tmp90816))))
                            (declare (not safe))
                            (cons __tmp90815 '()))))
                     (declare (not safe))
                     (cons _gid84871_ __tmp90814))))
              (declare (not safe))
              (cons 'def __tmp90813)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (table-set!
                                                 _vtab84859_
                                                 _id84862_
                                                 _proc84870_))))
                                          _$e84865_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _vtab84859_
                                            _id84862_
                                            _proc84863_)))))))
                            (declare (not safe))
                            (table-for-each __tmp90811 _mtab84860_))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _klass84855_
                             _vtab84859_
                             '11
                             class::t
                             '#f))))
                    (let ()
                      (declare (not safe))
                      (&class-type-seal! _klass84855_))))
              '#!void))))
    (define next-method
      (lambda (_subklass84804_ _obj84805_ _id84806_)
        (let ((_klass84808_
               (let () (declare (not safe)) (object-type _obj84805_)))
              (_type-id84809_
               (let () (declare (not safe)) (##type-id _subklass84804_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass84808_ 'gerbil#class::t))
              (let _lp84811_ ((_rest84813_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass84808_))))
                (let* ((_rest8481484822_ _rest84813_)
                       (_else8481684830_ (lambda () '#f))
                       (_K8481884836_
                        (lambda (_rest84833_ _klass84834_)
                          (if (let ((__tmp90819
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass84834_))))
                                (declare (not safe))
                                (eq? _type-id84809_ __tmp90819))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest84833_
                                 _obj84805_
                                 _id84806_))
                              (let ()
                                (declare (not safe))
                                (_lp84811_ _rest84833_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8481484822_))
                      (let ((_hd8481984839_
                             (let ()
                               (declare (not safe))
                               (##car _rest8481484822_)))
                            (_tl8482084841_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8481484822_))))
                        (let* ((_klass84844_ _hd8481984839_)
                               (_rest84846_ _tl8482084841_))
                          (declare (not safe))
                          (_K8481884836_ _rest84846_ _klass84844_)))
                      (let () (declare (not safe)) (_else8481684830_)))))
              (if (let () (declare (not safe)) (##type? _klass84808_))
                  (let _lp84848_ ((_klass84850_ _klass84808_))
                    (if (let ((__tmp90818
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass84850_))))
                          (declare (not safe))
                          (eq? _type-id84809_ __tmp90818))
                        (let ((__tmp90817
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass84850_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp90817
                           _obj84805_
                           _id84806_))
                        (let ((_$e84852_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass84850_))))
                          (if _$e84852_
                              (let ()
                                (declare (not safe))
                                (_lp84848_ _$e84852_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass84794_ _obj84795_ _id84796_ . _args84797_)
        (let ((_$e84799_
               (let ()
                 (declare (not safe))
                 (next-method _subklass84794_ _obj84795_ _id84796_))))
          (if _$e84799_
              ((lambda (_methodf84802_)
                 (apply _methodf84802_ _obj84795_ _args84797_))
               _$e84799_)
              (error '"cannot find next method"
                     'object:
                     _obj84795_
                     'method:
                     _id84796_)))))
    (define write-style (lambda (_we84792_) (macro-writeenv-style _we84792_)))
    (define write-object
      (lambda (_we84784_ _obj84785_)
        (let ((_$e84787_
               (let () (declare (not safe)) (method-ref _obj84785_ ':wr))))
          (if _$e84787_
              ((lambda (_method84790_) (_method84790_ _obj84785_ _we84784_))
               _$e84787_)
              (let ()
                (declare (not safe))
                (##default-wr _we84784_ _obj84785_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
