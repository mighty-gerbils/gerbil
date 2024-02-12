(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707767842)
  (begin
    (define type-flag-opaque '1)
    (define type-flag-extensible '2)
    (define type-flag-macros '4)
    (define type-flag-concrete '8)
    (define type-flag-id '16)
    (define class-type-flag-struct '256)
    (define class-type-flag-sealed '512)
    (define class::t.id 'gerbil#class::t)
    (define class::t
      (let* ((_slots84825_
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
             (_slot-vector84827_
              (list->vector
               (let () (declare (not safe)) (cons '##type _slots84825_))))
             (_slot-table84834_
              (let ((_slot-table84829_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (for-each
                 (lambda (_slot84831_ _field84832_)
                   (let ()
                     (declare (not safe))
                     (table-set! _slot-table84829_ _slot84831_ _field84832_))
                   (let ((__tmp89440 (symbol->keyword _slot84831_)))
                     (declare (not safe))
                     (table-set! _slot-table84829_ __tmp89440 _field84832_)))
                 _slots84825_
                 (let ((__tmp89441 (length _slots84825_)))
                   (declare (not safe))
                   (iota __tmp89441 '1)))
                _slot-table84829_))
             (_flags84836_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields84842_
              (list->vector
               (apply append
                      (map (lambda (_g8483784839_) (list _g8483784839_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots84825_ '5))))))
             (_properties84844_ '((direct-slots: ,@slots) (struct: . #t)))
             (_t84846_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags84836_
                 ##type-type
                 _fields84842_
                 '()
                 _slot-vector84827_
                 _slot-table84834_
                 _properties84844_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t84846_ _t84846_))
        _t84846_))
    (define class-type?
      (lambda (_obj84823_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj84823_ class::t.id))))
    (define class-type-id
      (lambda (_klass84821_)
        (if (let () (declare (not safe)) (class-type? _klass84821_))
            (let () (declare (not safe)) (##type-id _klass84821_))
            (if (let () (declare (not safe)) (not _klass84821_))
                '#f
                (error '"not a type descriptor" _klass84821_)))))
    (define class-type=?
      (lambda (_x84818_ _y84819_)
        (let ((__tmp89443
               (let () (declare (not safe)) (class-type-id _x84818_)))
              (__tmp89442
               (let () (declare (not safe)) (class-type-id _y84819_))))
          (declare (not safe))
          (eq? __tmp89443 __tmp89442))))
    (define type-opaque?
      (lambda (_type84816_)
        (let ((__tmp89444
               (let ((__tmp89445
                      (let ()
                        (declare (not safe))
                        (##type-flags _type84816_))))
                 (declare (not safe))
                 (##fxand __tmp89445 type-flag-opaque))))
          (declare (not safe))
          (##fxpositive? __tmp89444))))
    (define type-extensible?
      (lambda (_type84814_)
        (let ((__tmp89446
               (let ((__tmp89447
                      (let ()
                        (declare (not safe))
                        (##type-flags _type84814_))))
                 (declare (not safe))
                 (##fxand __tmp89447 type-flag-extensible))))
          (declare (not safe))
          (##fxpositive? __tmp89446))))
    (define class-type-final?
      (lambda (_type84812_)
        (let ((__tmp89448
               (let ((__tmp89449
                      (let ()
                        (declare (not safe))
                        (##type-flags _type84812_))))
                 (declare (not safe))
                 (##fxand __tmp89449 type-flag-extensible))))
          (declare (not safe))
          (##fxzero? __tmp89448))))
    (define class-type-struct?
      (lambda (_klass84810_)
        (let ((__tmp89450
               (let ((__tmp89451
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84810_))))
                 (declare (not safe))
                 (##fxand __tmp89451 class-type-flag-struct))))
          (declare (not safe))
          (##fxpositive? __tmp89450))))
    (define class-type-sealed?
      (lambda (_klass84808_)
        (let ((__tmp89452
               (let ((__tmp89453
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84808_))))
                 (declare (not safe))
                 (##fxand __tmp89453 class-type-flag-sealed))))
          (declare (not safe))
          (##fxpositive? __tmp89452))))
    (define properties-form
      (lambda (_properties84774_)
        (map (lambda (_e8477584777_)
               (let* ((_g8477984786_ _e8477584777_)
                      (_E8478184790_
                       (lambda () (error '"No clause matching" _g8477984786_)))
                      (_K8478284796_
                       (lambda (_val84793_ _key84794_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key84794_ 'direct-supers:))
                             (let ((__tmp89454 (map class-type-id _val84793_)))
                               (declare (not safe))
                               (cons _key84794_ __tmp89454))
                             (let ()
                               (declare (not safe))
                               (cons _key84794_ _val84793_))))))
                 (if (let () (declare (not safe)) (##pair? _g8477984786_))
                     (let ((_hd8478384799_
                            (let ()
                              (declare (not safe))
                              (##car _g8477984786_)))
                           (_tl8478484801_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8477984786_))))
                       (let* ((_key84804_ _hd8478384799_)
                              (_val84806_ _tl8478484801_))
                         (declare (not safe))
                         (_K8478284796_ _val84806_ _key84804_)))
                     (let () (declare (not safe)) (_E8478184790_)))))
             _properties84774_)))
    (define make-class-type-descriptor
      (lambda (_type-id84681_
               _type-name84682_
               _type-super84683_
               _precedence-list84684_
               _slot-vector84685_
               _properties84686_
               _constructor84687_
               _slot-table84688_
               _methods84689_)
        (letrec ((_make-props!84691_
                  (lambda (_key84743_)
                    (letrec* ((_ht84745_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!84746_
                               (lambda (_ht84767_ _slots84768_)
                                 (for-each
                                  (lambda (_g8476984771_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht84767_
                                       _g8476984771_
                                       '#t)))
                                  _slots84768_)))
                              (_put-alist!84747_
                               (lambda (_ht84756_ _key84757_ _alist84758_)
                                 (let ((_$e84760_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key84757_ _alist84758_))))
                                   (if _$e84760_
                                       ((lambda (_g8476284764_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!84746_
                                             _ht84756_
                                             _g8476284764_)))
                                        _$e84760_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!84747_
                         _ht84745_
                         _key84743_
                         _properties84686_))
                      (for-each
                       (lambda (_mixin84749_)
                         (let ((_alist84751_
                                (let ()
                                  (declare (not safe))
                                  (class-type-properties _mixin84749_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist84751_))
                                   (let ((__tmp89456
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key84743_
                                                     _alist84751_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp89456)))
                               (let ((__tmp89455
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin84749_))))
                                 (declare (not safe))
                                 (_put-slots!84746_ _ht84745_ __tmp89455))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!84747_
                                  _ht84745_
                                  _key84743_
                                  _alist84751_)))))
                       _precedence-list84684_)
                      _ht84745_))))
          (let* ((_transparent?84693_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties84686_)))
                 (_all-slots-printable?84698_
                  (let ((_$e84695_ _transparent?84693_))
                    (if _$e84695_
                        _$e84695_
                        (let ((__tmp89457
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties84686_))))
                          (declare (not safe))
                          (eq? '#t __tmp89457)))))
                 (_printable84700_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?84698_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84691_ 'print:))
                      '#f))
                 (_all-slots-equalable?84705_
                  (let ((_$e84702_ _transparent?84693_))
                    (if _$e84702_
                        _$e84702_
                        (let ((__tmp89458
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties84686_))))
                          (declare (not safe))
                          (eq? '#t __tmp89458)))))
                 (_equalable84707_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?84705_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84691_ 'equal:))
                      '#f))
                 (_first-new-field84709_
                  (if (let ()
                        (declare (not safe))
                        (class-type? _type-super84683_))
                      (let ((__tmp89459
                             (let ()
                               (declare (not safe))
                               (class-type-slot-vector _type-super84683_))))
                        (declare (not safe))
                        (##vector-length __tmp89459))
                      '1))
                 (_field-info-length84711_
                  (let ((__tmp89460
                         (let ((__tmp89461
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector84685_))))
                           (declare (not safe))
                           (##fx- __tmp89461 _first-new-field84709_))))
                    (declare (not safe))
                    (##fx* '3 __tmp89460)))
                 (_field-info84713_ (make-vector _field-info-length84711_ '#f))
                 (_struct?84715_
                  (let ()
                    (declare (not safe))
                    (assgetq 'struct: _properties84686_)))
                 (_final?84717_
                  (let ()
                    (declare (not safe))
                    (assgetq 'final: _properties84686_)))
                 (_opaque?84722_
                  (let ((_$e84719_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?84705_))))
                    (if _$e84719_
                        _$e84719_
                        (if _type-super84683_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super84683_))
                            '#f))))
                 (_type-flags84724_
                  (let ((__tmp89464 (if _final?84717_ '0 type-flag-extensible))
                        (__tmp89463 (if _opaque?84722_ type-flag-opaque '0))
                        (__tmp89462
                         (if _struct?84715_ class-type-flag-struct '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp89464
                             __tmp89463
                             __tmp89462))))
            (let _loop84727_ ((_i84729_ _first-new-field84709_) (_j84730_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j84730_ _field-info-length84711_))
                  (let* ((_slot84732_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector84685_ _i84729_)))
                         (_flags84740_
                          (if _transparent?84693_
                              '0
                              (let ((__tmp89466
                                     (if (or _all-slots-printable?84698_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable84700_
                                                _slot84732_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp89465
                                     (if (or _all-slots-equalable?84705_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable84707_
                                                _slot84732_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp89466 __tmp89465)))))
                    (vector-set! _field-info84713_ _j84730_ _slot84732_)
                    (vector-set!
                     _field-info84713_
                     (let () (declare (not safe)) (##fx+ _j84730_ '1))
                     _flags84740_)
                    (let ((__tmp89468
                           (let () (declare (not safe)) (##fx+ _i84729_ '1)))
                          (__tmp89467
                           (let () (declare (not safe)) (##fx+ _j84730_ '3))))
                      (declare (not safe))
                      (_loop84727_ __tmp89468 __tmp89467)))
                  '#!void))
            (let ()
              (declare (not safe))
              (##structure
               class::t
               _type-id84681_
               _type-name84682_
               _type-flags84724_
               _type-super84683_
               _field-info84713_
               _precedence-list84684_
               _slot-vector84685_
               _slot-table84688_
               _properties84686_
               _constructor84687_
               _methods84689_))))))
    (define class-type-precedence-list
      (lambda (_klass84679_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84679_
           '6
           class::t
           class-type-precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass84677_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84677_ '7 class::t class-type-slot-vector))))
    (define class-type-slot-table
      (lambda (_klass84675_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84675_ '8 class::t class-type-slot-table))))
    (define class-type-properties
      (lambda (_klass84673_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84673_ '9 class::t class-type-properties))))
    (define class-type-constructor
      (lambda (_klass84671_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84671_ '10 class::t class-type-constructor))))
    (define class-type-methods
      (lambda (_klass84669_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84669_ '11 class::t class-type-methods))))
    (define class-type-methods-set!
      (lambda (_klass84666_ _ht84667_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84666_
           _ht84667_
           '11
           class::t
           class-type-methods-set!))))
    (define class-type-slot-list
      (lambda (_klass84664_)
        (cdr (vector->list
              (let ()
                (declare (not safe))
                (class-type-slot-vector _klass84664_))))))
    (define class-type-fields
      (lambda (_klass84662_)
        (let ((__tmp89469
               (let ((__tmp89470
                      (let ()
                        (declare (not safe))
                        (class-type-slot-vector _klass84662_))))
                 (declare (not safe))
                 (##vector-length __tmp89470))))
          (declare (not safe))
          (##fx- __tmp89469 '1))))
    (define class-type-seal!
      (lambda (_klass84660_)
        (let ((__tmp89471
               (let ((__tmp89472
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84660_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp89472))))
          (declare (not safe))
          (##structure-set!
           _klass84660_
           __tmp89471
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct84651_ _maybe-super-struct84652_)
        (let ((_maybe-super-struct-id84654_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct84652_))))
          (let _lp84656_ ((_super-struct84658_ _maybe-sub-struct84651_))
            (if (let () (declare (not safe)) (not _super-struct84658_))
                '#f
                (if (let ((__tmp89474
                           (let ()
                             (declare (not safe))
                             (class-type-id _super-struct84658_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id84654_ __tmp89474))
                    '#t
                    (let ((__tmp89473
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct84658_))))
                      (declare (not safe))
                      (_lp84656_ __tmp89473))))))))
    (define base-struct/1
      (lambda (_klass84649_)
        (if (let () (declare (not safe)) (class-type? _klass84649_))
            (if (let () (declare (not safe)) (class-type-struct? _klass84649_))
                _klass84649_
                (let () (declare (not safe)) (##type-super _klass84649_)))
            (if (let () (declare (not safe)) (not _klass84649_))
                '#f
                (error '"not a class or false" _klass84649_)))))
    (define base-struct/2
      (lambda (_klass184637_ _klass284638_)
        (let ((_s184640_
               (let () (declare (not safe)) (base-struct/1 _klass184637_)))
              (_s284641_
               (let () (declare (not safe)) (base-struct/1 _klass284638_))))
          (if (or (let () (declare (not safe)) (not _s184640_))
                  (and _s284641_
                       (let ()
                         (declare (not safe))
                         (substruct? _s184640_ _s284641_))))
              _s284641_
              (if (or (let () (declare (not safe)) (not _s284641_))
                      (and _s184640_
                           (let ()
                             (declare (not safe))
                             (substruct? _s284641_ _s184640_))))
                  _s184640_
                  (error '"bad mixin: incompatible struct bases"
                         _klass184637_
                         _klass284638_
                         _s184640_
                         _s284641_))))))
    (define base-struct/list
      (lambda (_all-supers84521_)
        (let* ((_all-supers8452284547_ _all-supers84521_)
               (_E8452784551_
                (lambda ()
                  (error '"No clause matching" _all-supers8452284547_))))
          (let ((_K8454584634_ (lambda () '#f))
                (_K8454284620_
                 (lambda (_x84618_)
                   (let () (declare (not safe)) (base-struct/1 _x84618_))))
                (_K8453784597_
                 (lambda (_y84594_ _x84595_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x84595_ _y84594_))))
                (_K8452884558_
                 (lambda (_y84555_ _x84556_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x84556_ _y84555_)))))
            (let* ((___match8943789438_
                    (lambda (_hd8452984561_ _tl8453084563_)
                      (let ((_x84566_ _hd8452984561_))
                        (letrec ((_splice-rest8453284568_
                                  (lambda (_rest8453684575_ _y84577_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8453684575_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8452884558_ _y84577_ _x84566_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8452784551_)))))
                                 (_splice-try8453484570_
                                  (lambda (_hd8453584579_
                                           _rest8453684581_
                                           _y8453184582_)
                                    (let ((_y84585_ _hd8453584579_))
                                      (let ((__tmp89476
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8453684581_)))
                                            (__tmp89475
                                             (let ()
                                               (declare (not safe))
                                               (cons _y84585_ _y8453184582_))))
                                        (declare (not safe))
                                        (_splice-loop8453384572_
                                         __tmp89476
                                         __tmp89475)))))
                                 (_splice-loop8453384572_
                                  (lambda (_rest8453684587_ _y8453184588_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8453684587_))
                                        (let ((__tmp89478
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8453684587_))))
                                          (declare (not safe))
                                          (_splice-try8453484570_
                                           __tmp89478
                                           _rest8453684587_
                                           _y8453184588_))
                                        (let ((__tmp89477
                                               (reverse _y8453184588_)))
                                          (declare (not safe))
                                          (_splice-rest8453284568_
                                           _rest8453684587_
                                           __tmp89477))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8453384572_ _tl8453084563_ '()))))))
                   (_try-match8452484630_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8452284547_))
                          (let ((_tl8454484625_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8452284547_)))
                                (_hd8454384623_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8452284547_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8454484625_))
                                (let ((_x84628_ _hd8454384623_))
                                  (declare (not safe))
                                  (base-struct/1 _x84628_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8454484625_))
                                    (let ((_tl8454184609_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8454484625_)))
                                          (_hd8454084607_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8454484625_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8454184609_))
                                          (let ((_x84605_ _hd8454384623_)
                                                (_y84612_ _hd8454084607_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8453784597_
                                               _y84612_
                                               _x84605_)))
                                          (___match8943789438_
                                           _hd8454384623_
                                           _tl8454484625_)))
                                    (___match8943789438_
                                     _hd8454384623_
                                     _tl8454484625_))))
                          (let () (declare (not safe)) (_E8452784551_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8452284547_))
                  (let () (declare (not safe)) (_K8454584634_))
                  (let () (declare (not safe)) (_try-match8452484630_))))))))
    (define base-struct
      (lambda _all-supers84519_
        (let () (declare (not safe)) (base-struct/list _all-supers84519_))))
    (define find-super-constructor
      (lambda (_super84471_)
        (let _lp84473_ ((_rest84475_ _super84471_) (_constructor84476_ '#f))
          (let* ((_rest8447784485_ _rest84475_)
                 (_else8447984493_ (lambda () _constructor84476_))
                 (_K8448184507_
                  (lambda (_rest84496_ _hd84497_)
                    (let ((_$e84499_
                           (let ()
                             (declare (not safe))
                             (class-type-constructor _hd84497_))))
                      (if _$e84499_
                          ((lambda (_xconstructor84502_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor84476_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor84476_
                                            _xconstructor84502_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp84473_ _rest84496_ _xconstructor84502_))
                                 (error '"conflicting implicit constructors"
                                        _constructor84476_
                                        _xconstructor84502_)))
                           _$e84499_)
                          (let ()
                            (declare (not safe))
                            (_lp84473_ _rest84496_ _constructor84476_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8447784485_))
                (let ((_hd8448284510_
                       (let () (declare (not safe)) (##car _rest8447784485_)))
                      (_tl8448384512_
                       (let () (declare (not safe)) (##cdr _rest8447784485_))))
                  (let* ((_hd84515_ _hd8448284510_)
                         (_rest84517_ _tl8448384512_))
                    (declare (not safe))
                    (_K8448184507_ _rest84517_ _hd84515_)))
                (let () (declare (not safe)) (_else8447984493_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list84447_ _direct-slots84448_)
        (let* ((_next-slot84450_ '1)
               (_slot-table84452_
                (let () (declare (not safe)) (make-table 'test: eq?)))
               (_r-slots84454_ '(##type))
               (_process-slot84458_
                (lambda (_slot84456_)
                  (if (let () (declare (not safe)) (symbol? _slot84456_))
                      '#!void
                      (error '"invalid slot name" _slot84456_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table84452_ _slot84456_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table84452_
                           _slot84456_
                           _next-slot84450_))
                        (let ((__tmp89479 (symbol->keyword _slot84456_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table84452_
                           __tmp89479
                           _next-slot84450_))
                        (set! _r-slots84454_
                              (let ()
                                (declare (not safe))
                                (cons _slot84456_ _r-slots84454_)))
                        (set! _next-slot84450_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot84450_ '1)))))))
               (_process-slots84464_
                (lambda (_g8445984461_)
                  (for-each _process-slot84458_ _g8445984461_))))
          (for-each
           (lambda (_mixin84467_)
             (let ((__tmp89480
                    (let ((__tmp89481
                           (let ()
                             (declare (not safe))
                             (class-type-properties _mixin84467_))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp89481 '()))))
               (declare (not safe))
               (_process-slots84464_ __tmp89480)))
           (reverse _class-precedence-list84447_))
          (let ()
            (declare (not safe))
            (_process-slots84464_ _direct-slots84448_))
          (let ((_slot-vector84469_ (list->vector (reverse _r-slots84454_))))
            (values _slot-vector84469_ _slot-table84452_)))))
    (define make-class-type
      (lambda (_id84409_
               _name84410_
               _direct-supers84411_
               _direct-slots84412_
               _properties84413_
               _constructor84414_)
        (let ((_$e84419_
               (let ((__tmp89482
                      (lambda (_$obj84416_)
                        (let ((__tmp89483
                               (let ()
                                 (declare (not safe))
                                 (class-type? _$obj84416_))))
                          (declare (not safe))
                          (not __tmp89483)))))
                 (declare (not safe))
                 (find __tmp89482 _direct-supers84411_))))
          (if _$e84419_
              ((lambda (_g8442184423_)
                 (error '"Illegal super class; not a class descriptor"
                        _g8442184423_))
               _$e84419_)
              (let ((_$e84426_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers84411_))))
                (if _$e84426_
                    ((lambda (_g8442884430_)
                       (error '"Cannot extend final class" _g8442884430_))
                     _$e84426_)
                    '#!void))))
        (let ((_g89484_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers84411_))))
          (begin
            (let ((_g89485_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g89484_) (##vector-length _g89484_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g89485_ 2)))
                  (error "Context expects 2 values" _g89485_)))
            (let ((_precedence-list84433_
                   (let () (declare (not safe)) (##vector-ref _g89484_ 0)))
                  (_struct-super84434_
                   (let () (declare (not safe)) (##vector-ref _g89484_ 1))))
              (let ((_g89486_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list84433_
                        _direct-slots84412_))))
                (begin
                  (let ((_g89487_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g89486_)
                               (##vector-length _g89486_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g89487_ 2)))
                        (error "Context expects 2 values" _g89487_)))
                  (let ((_slot-vector84436_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89486_ 0)))
                        (_slot-table84437_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89486_ 1))))
                    (let* ((_properties84439_
                            (let ((__tmp89490
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots84412_)))
                                  (__tmp89488
                                   (let ((__tmp89489
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers84411_))))
                                     (declare (not safe))
                                     (cons __tmp89489 _properties84413_))))
                              (declare (not safe))
                              (cons __tmp89490 __tmp89488)))
                           (_constructor*84444_
                            (let ((_$e84441_ _constructor84414_))
                              (if _$e84441_
                                  _$e84441_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers84411_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id84409_
                         _name84410_
                         _struct-super84434_
                         _precedence-list84433_
                         _slot-vector84436_
                         _properties84439_
                         _constructor*84444_
                         _slot-table84437_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass84407_)
        (let ((__tmp89491
               (let ()
                 (declare (not safe))
                 (class-type-precedence-list _klass84407_))))
          (declare (not safe))
          (cons _klass84407_ __tmp89491))))
    (define compute-precedence-list
      (lambda (_direct-supers84405_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _direct-supers84405_))))
    (define make-class-predicate
      (lambda (_klass84389_)
        (let ((_tid84391_
               (let () (declare (not safe)) (##type-id _klass84389_))))
          (if (let () (declare (not safe)) (class-type-final? _klass84389_))
              (lambda (_g8439284394_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8439284394_ _tid84391_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass84389_))
                  (lambda (_g8439684398_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g8439684398_ _tid84391_)))
                  (lambda (_g8440084402_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass84389_ _g8440084402_))))))))
    (define if-class-slot-field
      (lambda (_klass84378_
               _slot84379_
               _if-final84380_
               _if-struct84381_
               _if-struct-field84382_
               _if-class-slot84383_)
        (let ((_field84385_
               (let ((__tmp89492
                      (let ()
                        (declare (not safe))
                        (class-type-slot-table _klass84378_))))
                 (declare (not safe))
                 (table-ref __tmp89492 _slot84379_ '#f))))
          (if (let () (declare (not safe)) (not _field84385_))
              (error '"unknown slot" 'class: _klass84378_ 'slot: _slot84379_)
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass84378_))
                  (_if-final84380_ _klass84378_ _slot84379_ _field84385_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass84378_))
                      (_if-struct84381_ _klass84378_ _slot84379_ _field84385_)
                      (if (let ((_strukt84387_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass84378_))))
                            (and (let ()
                                   (declare (not safe))
                                   (class-type? _strukt84387_))
                                 (let ((__tmp89493
                                        (let ((__tmp89494
                                               (let ()
                                                 (declare (not safe))
                                                 (class-type-slot-vector
                                                  _strukt84387_))))
                                          (declare (not safe))
                                          (##vector-length __tmp89494))))
                                   (declare (not safe))
                                   (##fx< _field84385_ __tmp89493))))
                          (_if-struct-field84382_
                           _klass84378_
                           _slot84379_
                           _field84385_)
                          (_if-class-slot84383_
                           _klass84378_
                           _slot84379_
                           _field84385_))))))))
    (define make-class-slot-accessor
      (lambda (_klass84375_ _slot84376_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84375_
           _slot84376_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass84372_ _slot84373_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84372_
           _slot84373_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass84369_ _slot84370_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84369_
           _slot84370_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass84366_ _slot84367_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84366_
           _slot84367_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object84350_ _class84351_ _slot84352_)
        (apply error
               '"not an instance"
               'object:
               _object84350_
               'class:
               _class84351_
               (if _slot84352_
                   (let ((__tmp89495
                          (let ()
                            (declare (not safe))
                            (cons _slot84352_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp89495))
                   '()))))
    (define not-an-instance__0
      (lambda (_object84357_ _class84358_)
        (let ((_slot84360_ '#f))
          (declare (not safe))
          (not-an-instance__% _object84357_ _class84358_ _slot84360_))))
    (define not-an-instance
      (lambda _g89497_
        (let ((_g89496_ (let () (declare (not safe)) (##length _g89497_))))
          (cond ((let () (declare (not safe)) (##fx= _g89496_ 2))
                 (apply (lambda (_object84357_ _class84358_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object84357_ _class84358_)))
                        _g89497_))
                ((let () (declare (not safe)) (##fx= _g89496_ 3))
                 (apply (lambda (_object84362_ _class84363_ _slot84364_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object84362_
                             _class84363_
                             _slot84364_)))
                        _g89497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g89497_))))))
    (define make-final-slot-accessor
      (lambda (_klass84343_ _slot84344_ _field84345_)
        (lambda (_obj84347_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj84347_
             _field84345_
             _klass84343_
             _slot84344_)))))
    (define make-final-slot-mutator
      (lambda (_klass84336_ _slot84337_ _field84338_)
        (lambda (_obj84340_ _val84341_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj84340_
             _val84341_
             _field84338_
             _klass84336_
             _slot84337_)))))
    (define make-struct-slot-accessor
      (lambda (_klass84330_ _slot84331_ _field84332_)
        (lambda (_obj84334_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj84334_
             _field84332_
             _klass84330_
             _slot84331_)))))
    (define make-struct-slot-mutator
      (lambda (_klass84323_ _slot84324_ _field84325_)
        (lambda (_obj84327_ _val84328_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj84327_
             _val84328_
             _field84325_
             _klass84323_
             _slot84324_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass84317_ _slot84318_ _field84319_)
        (lambda (_obj84321_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj84321_
             _field84319_
             _klass84317_
             _slot84318_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass84310_ _slot84311_ _field84312_)
        (lambda (_obj84314_ _val84315_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj84314_
             _val84315_
             _field84312_
             _klass84310_
             _slot84311_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass84304_ _slot84305_ _field84306_)
        (lambda (_obj84308_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass84304_ _obj84308_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj84308_ _field84306_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84308_ _klass84304_ _slot84305_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass84297_ _slot84298_ _field84299_)
        (lambda (_obj84301_ _val84302_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass84297_ _obj84301_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84301_ _field84299_ _val84302_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84301_ _klass84297_ _slot84298_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass84291_ _slot84292_ _field84293_)
        (lambda (_obj84295_)
          (if (let ((__tmp89498
                     (let () (declare (not safe)) (##type-id _klass84291_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84295_ __tmp89498))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84295_ _field84293_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass84291_ _obj84295_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj84295_ _slot84292_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj84295_
                     _klass84291_
                     _slot84292_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass84284_ _slot84285_ _field84286_)
        (lambda (_obj84288_ _val84289_)
          (if (let ((__tmp89499
                     (let () (declare (not safe)) (##type-id _klass84284_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84288_ __tmp89499))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84288_ _field84286_ _val84289_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass84284_ _obj84288_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj84288_ _slot84285_ _val84289_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj84288_
                     _klass84284_
                     _slot84285_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass84278_ _slot84279_ _field84280_)
        (lambda (_obj84282_)
          (if (let ((__tmp89500
                     (let () (declare (not safe)) (##type-id _klass84278_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84282_ __tmp89500))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84282_ _field84280_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj84282_ _slot84279_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass84271_ _slot84272_ _field84273_)
        (lambda (_obj84275_ _val84276_)
          (if (let ((__tmp89501
                     (let () (declare (not safe)) (##type-id _klass84271_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84275_ __tmp89501))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84275_ _field84273_ _val84276_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj84275_ _slot84272_ _val84276_))))))
    (define class-slot-offset
      (lambda (_klass84268_ _slot84269_)
        (let ((__tmp89502
               (let ()
                 (declare (not safe))
                 (class-type-slot-table _klass84268_))))
          (declare (not safe))
          (table-ref __tmp89502 _slot84269_ '#f))))
    (define class-slot-ref
      (lambda (_klass84262_ _obj84263_ _slot84264_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass84262_ _obj84263_))
            (let ((_off84266_
                   (let ((__tmp89503
                          (let ()
                            (declare (not safe))
                            (object-type _obj84263_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89503 _slot84264_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj84263_
               _off84266_
               _klass84262_
               _slot84264_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj84263_ _klass84262_)))))
    (define class-slot-set!
      (lambda (_klass84255_ _obj84256_ _slot84257_ _val84258_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass84255_ _obj84256_))
            (let ((_off84260_
                   (let ((__tmp89504
                          (let ()
                            (declare (not safe))
                            (object-type _obj84256_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89504 _slot84257_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj84256_
               _val84258_
               _off84260_
               _klass84255_
               _slot84257_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj84256_ _klass84255_)))))
    (define unchecked-field-ref
      (lambda (_obj84252_ _off84253_)
        (let ((__tmp89505
               (let () (declare (not safe)) (##structure-type _obj84252_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj84252_ _off84253_ __tmp89505 '#f))))
    (define unchecked-field-set!
      (lambda (_obj84248_ _off84249_ _val84250_)
        (let ((__tmp89506
               (let () (declare (not safe)) (##structure-type _obj84248_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj84248_
           _val84250_
           _off84249_
           __tmp89506
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj84245_ _slot84246_)
        (let ((__tmp89507
               (let ((__tmp89508
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj84245_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89508 _slot84246_))))
          (declare (not safe))
          (unchecked-field-ref _obj84245_ __tmp89507))))
    (define unchecked-slot-set!
      (lambda (_obj84241_ _slot84242_ _val84243_)
        (let ((__tmp89509
               (let ((__tmp89510
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj84241_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89510 _slot84242_))))
          (declare (not safe))
          (unchecked-field-set! _obj84241_ __tmp89509 _val84243_))))
    (define slot-ref__%
      (lambda (_obj84217_ _slot84218_ _E84219_)
        (if (let () (declare (not safe)) (object? _obj84217_))
            (let* ((_klass84221_
                    (let () (declare (not safe)) (object-type _obj84217_)))
                   (_$e84224_
                    (if (let ()
                          (declare (not safe))
                          (class-type? _klass84221_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass84221_ _slot84218_))
                        '#f)))
              (if _$e84224_
                  ((lambda (_off84227_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj84217_ _off84227_)))
                   _$e84224_)
                  (_E84219_ _obj84217_ _slot84218_)))
            (_E84219_ _obj84217_ _slot84218_))))
    (define slot-ref__0
      (lambda (_obj84232_ _slot84233_)
        (let ((_E84235_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj84232_ _slot84233_ _E84235_))))
    (define slot-ref
      (lambda _g89512_
        (let ((_g89511_ (let () (declare (not safe)) (##length _g89512_))))
          (cond ((let () (declare (not safe)) (##fx= _g89511_ 2))
                 (apply (lambda (_obj84232_ _slot84233_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj84232_ _slot84233_)))
                        _g89512_))
                ((let () (declare (not safe)) (##fx= _g89511_ 3))
                 (apply (lambda (_obj84237_ _slot84238_ _E84239_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj84237_ _slot84238_ _E84239_)))
                        _g89512_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g89512_))))))
    (define slot-set!__%
      (lambda (_obj84189_ _slot84190_ _val84191_ _E84192_)
        (if (let () (declare (not safe)) (object? _obj84189_))
            (let* ((_klass84194_
                    (let () (declare (not safe)) (object-type _obj84189_)))
                   (_$e84197_
                    (if (let ()
                          (declare (not safe))
                          (class-type? _klass84194_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass84194_ _slot84190_))
                        '#f)))
              (if _$e84197_
                  ((lambda (_off84200_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj84189_
                        _off84200_
                        _val84191_)))
                   _$e84197_)
                  (_E84192_ _obj84189_ _slot84190_)))
            (_E84192_ _obj84189_ _slot84190_))))
    (define slot-set!__0
      (lambda (_obj84205_ _slot84206_ _val84207_)
        (let ((_E84209_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj84205_ _slot84206_ _val84207_ _E84209_))))
    (define slot-set!
      (lambda _g89514_
        (let ((_g89513_ (let () (declare (not safe)) (##length _g89514_))))
          (cond ((let () (declare (not safe)) (##fx= _g89513_ 3))
                 (apply (lambda (_obj84205_ _slot84206_ _val84207_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj84205_ _slot84206_ _val84207_)))
                        _g89514_))
                ((let () (declare (not safe)) (##fx= _g89513_ 4))
                 (apply (lambda (_obj84211_ _slot84212_ _val84213_ _E84214_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj84211_
                             _slot84212_
                             _val84213_
                             _E84214_)))
                        _g89514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g89514_))))))
    (define __slot-error
      (lambda (_obj84185_ _slot84186_)
        (error '"Cannot find slot" 'object: _obj84185_ 'slot: _slot84186_)))
    (define subclass?
      (lambda (_maybe-sub-class84175_ _maybe-super-class84176_)
        (let* ((_maybe-super-class-id84178_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class84176_)))
               (_$e84180_
                (let ((__tmp89515
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class84175_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id84178_ __tmp89515))))
          (if _$e84180_
              _$e84180_
              (let ((__tmp89517
                     (lambda (_super-class84183_)
                       (let ((__tmp89518
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class84183_))))
                         (declare (not safe))
                         (eq? __tmp89518 _maybe-super-class-id84178_))))
                    (__tmp89516
                     (let ()
                       (declare (not safe))
                       (class-type-precedence-list _maybe-sub-class84175_))))
                (declare (not safe))
                (ormap1 __tmp89517 __tmp89516))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass84172_ _obj84173_)
        (let ((__tmp89519
               (let () (declare (not safe)) (##type-id _klass84172_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj84173_ __tmp89519))))
    (define struct-instance?
      (lambda (_klass84169_ _obj84170_)
        (let ((__tmp89520
               (let () (declare (not safe)) (##type-id _klass84169_))))
          (declare (not safe))
          (##structure-instance-of? _obj84170_ __tmp89520))))
    (define class-instance?
      (lambda (_klass84164_ _obj84165_)
        (if (let () (declare (not safe)) (object? _obj84165_))
            (let ((_type84167_
                   (let () (declare (not safe)) (object-type _obj84165_))))
              (if (let () (declare (not safe)) (class-type? _type84167_))
                  (let ()
                    (declare (not safe))
                    (subclass? _type84167_ _klass84164_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass84159_ _k84160_)
        (let ((_obj84162_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass84159_ _k84160_))))
          (let () (declare (not safe)) (object-fill! _obj84162_ '#f))
          _obj84162_)))
    (define object-fill!
      (lambda (_obj84152_ _fill84153_)
        (let _loop84155_ ((_i84157_
                           (let ((__tmp89522
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj84152_))))
                             (declare (not safe))
                             (##fx- __tmp89522 '1))))
          (if (let () (declare (not safe)) (##fx> _i84157_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj84152_
                   _fill84153_
                   _i84157_
                   '#f
                   '#f))
                (let ((__tmp89521
                       (let () (declare (not safe)) (##fx- _i84157_ '1))))
                  (declare (not safe))
                  (_loop84155_ __tmp89521)))
              _obj84152_))))
    (define new-instance
      (lambda (_klass84150_)
        (let ((__obj89439
               (let ((__tmp89523
                      (let ((__tmp89524
                             (let ()
                               (declare (not safe))
                               (class-type-slot-vector _klass84150_))))
                        (declare (not safe))
                        (##vector-length __tmp89524))))
                 (declare (not safe))
                 (##make-structure _klass84150_ __tmp89523))))
          (let () (declare (not safe)) (object-fill! __obj89439 '#f))
          __obj89439)))
    (define make-instance
      (lambda (_klass84140_ . _args84141_)
        (let* ((_obj84143_
                (let () (declare (not safe)) (new-instance _klass84140_)))
               (_$e84145_
                (let ()
                  (declare (not safe))
                  (class-type-constructor _klass84140_))))
          (if _$e84145_
              ((lambda (_kons-id84148_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass84140_
                    _kons-id84148_
                    _obj84143_
                    _args84141_)))
               _$e84145_)
              (if (let ((__tmp89528
                         (let ()
                           (declare (not safe))
                           (class-type-struct? _klass84140_))))
                    (declare (not safe))
                    (not __tmp89528))
                  (let ()
                    (declare (not safe))
                    (__class-instance-init!
                     _klass84140_
                     _obj84143_
                     _args84141_))
                  (if (let ((__tmp89526
                             (let ((__tmp89527
                                    (let ()
                                      (declare (not safe))
                                      (##structure-length _obj84143_))))
                               (declare (not safe))
                               (##fx- __tmp89527 '1)))
                            (__tmp89525 (length _args84141_)))
                        (declare (not safe))
                        (##fx= __tmp89526 __tmp89525))
                      (apply ##structure _klass84140_ _args84141_)
                      (error '"arguments don't match object size"
                             'class:
                             _klass84140_
                             'slots:
                             (let ()
                               (declare (not safe))
                               (class-type-slot-list _klass84140_))
                             'args:
                             _args84141_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj84137_ . _args84138_)
        (if (let ((__tmp89530 (length _args84138_))
                  (__tmp89529
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj84137_))))
              (declare (not safe))
              (##fx< __tmp89530 __tmp89529))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj84137_ _args84138_))
            (error '"too many arguments for struct"
                   'object:
                   _obj84137_
                   'args:
                   _args84138_))))
    (define __struct-instance-init!
      (lambda (_obj84096_ _args84097_)
        (let _lp84099_ ((_k84101_ '1) (_rest84102_ _args84097_))
          (let* ((_rest8410384111_ _rest84102_)
                 (_else8410584119_ (lambda () _obj84096_))
                 (_K8410784125_
                  (lambda (_rest84122_ _hd84123_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj84096_ _k84101_ _hd84123_))
                    (let ((__tmp89531
                           (let () (declare (not safe)) (##fx+ _k84101_ '1))))
                      (declare (not safe))
                      (_lp84099_ __tmp89531 _rest84122_)))))
            (if (let () (declare (not safe)) (##pair? _rest8410384111_))
                (let ((_hd8410884128_
                       (let () (declare (not safe)) (##car _rest8410384111_)))
                      (_tl8410984130_
                       (let () (declare (not safe)) (##cdr _rest8410384111_))))
                  (let* ((_hd84133_ _hd8410884128_)
                         (_rest84135_ _tl8410984130_))
                    (declare (not safe))
                    (_K8410784125_ _rest84135_ _hd84133_)))
                (let () (declare (not safe)) (_else8410584119_)))))))
    (define class-instance-init!
      (lambda (_obj84093_ . _args84094_)
        (let ((__tmp89532
               (let () (declare (not safe)) (object-type _obj84093_))))
          (declare (not safe))
          (__class-instance-init! __tmp89532 _obj84093_ _args84094_))))
    (define __class-instance-init!
      (lambda (_klass84037_ _obj84038_ _args84039_)
        (let _lp84041_ ((_rest84043_ _args84039_))
          (let* ((_rest8404484054_ _rest84043_)
                 (_else8404684062_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest84043_))
                        _obj84038_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass84037_
                               'rest:
                               _rest84043_))))
                 (_K8404884074_
                  (lambda (_rest84065_ _val84066_ _key84067_)
                    (let ((_$e84069_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass84037_ _key84067_))))
                      (if _$e84069_
                          ((lambda (_off84072_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj84038_
                                _off84072_
                                _val84066_))
                             (let ()
                               (declare (not safe))
                               (_lp84041_ _rest84065_)))
                           _$e84069_)
                          (error '"unknown slot"
                                 'class:
                                 _klass84037_
                                 'slot:
                                 _key84067_))))))
            (if (let () (declare (not safe)) (##pair? _rest8404484054_))
                (let ((_hd8404984077_
                       (let () (declare (not safe)) (##car _rest8404484054_)))
                      (_tl8405084079_
                       (let () (declare (not safe)) (##cdr _rest8404484054_))))
                  (let ((_key84082_ _hd8404984077_))
                    (if (let () (declare (not safe)) (##pair? _tl8405084079_))
                        (let ((_hd8405184084_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8405084079_)))
                              (_tl8405284086_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8405084079_))))
                          (let* ((_val84089_ _hd8405184084_)
                                 (_rest84091_ _tl8405284086_))
                            (declare (not safe))
                            (_K8404884074_ _rest84091_ _val84089_ _key84082_)))
                        (let () (declare (not safe)) (_else8404684062_)))))
                (let () (declare (not safe)) (_else8404684062_)))))))
    (define constructor-init!
      (lambda (_klass84032_ _kons-id84033_ _obj84034_ . _args84035_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass84032_
           _kons-id84033_
           _obj84034_
           _args84035_))))
    (define __constructor-init!
      (lambda (_klass84022_ _kons-id84023_ _obj84024_ _args84025_)
        (let ((_$e84027_
               (let ()
                 (declare (not safe))
                 (__find-method _klass84022_ _kons-id84023_))))
          (if _$e84027_
              ((lambda (_kons84030_)
                 (apply _kons84030_ _obj84024_ _args84025_)
                 _obj84024_)
               _$e84027_)
              (error '"missing constructor"
                     'class:
                     _klass84022_
                     'method:
                     _kons-id84023_)))))
    (define struct-copy
      (lambda (_struct84020_)
        (if (let () (declare (not safe)) (##structure? _struct84020_))
            '#!void
            (error '"not a structure" _struct84020_))
        (let () (declare (not safe)) (##structure-copy _struct84020_))))
    (define struct->list
      (lambda (_obj84018_)
        (if (let () (declare (not safe)) (object? _obj84018_))
            (let () (declare (not safe)) (##vector->list _obj84018_))
            (error '"not an object" _obj84018_))))
    (define class->list
      (lambda (_obj84005_)
        (if (let () (declare (not safe)) (object? _obj84005_))
            (let ((_klass84007_
                   (let () (declare (not safe)) (object-type _obj84005_))))
              (if (let () (declare (not safe)) (class-type? _klass84007_))
                  (let ((_slot-vector84009_
                         (let ()
                           (declare (not safe))
                           (class-type-slot-vector _klass84007_))))
                    (let _loop84011_ ((_index84013_
                                       (let ((__tmp89538
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector84009_))))
                                         (declare (not safe))
                                         (##fx- __tmp89538 '1)))
                                      (_plist84014_ '()))
                      (if (let () (declare (not safe)) (##fx< _index84013_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass84007_ _plist84014_))
                          (let ((_slot84016_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector84009_
                                    _index84013_))))
                            (let ((__tmp89537
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index84013_ '1)))
                                  (__tmp89533
                                   (let ((__tmp89536
                                          (symbol->keyword _slot84016_))
                                         (__tmp89534
                                          (let ((__tmp89535
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj84005_
                                                    _index84013_))))
                                            (declare (not safe))
                                            (cons __tmp89535 _plist84014_))))
                                     (declare (not safe))
                                     (cons __tmp89536 __tmp89534))))
                              (declare (not safe))
                              (_loop84011_ __tmp89537 __tmp89533))))))
                  (error '"not a class type"
                         'object:
                         _obj84005_
                         'class:
                         _klass84007_)))
            (error '"not an object" _obj84005_))))
    (define call-method
      (lambda (_obj83996_ _id83997_ . _args83998_)
        (let ((_$e84000_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83996_ _id83997_))))
          (if _$e84000_
              ((lambda (_method84003_)
                 (apply _method84003_ _obj83996_ _args83998_))
               _$e84000_)
              (error '"cannot find method"
                     'object:
                     _obj83996_
                     'method:
                     _id83997_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj83993_ _id83994_)
        (if (let () (declare (not safe)) (object? _obj83993_))
            (let ((__tmp89539
                   (let () (declare (not safe)) (object-type _obj83993_))))
              (declare (not safe))
              (find-method __tmp89539 _id83994_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj83987_ _id83988_)
        (let ((_$e83990_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83987_ _id83988_))))
          (if _$e83990_
              _$e83990_
              (error '"missing method"
                     'object:
                     _obj83987_
                     'method:
                     _id83988_)))))
    (define bound-method-ref
      (lambda (_obj83977_ _id83978_)
        (let ((_$e83980_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83977_ _id83978_))))
          (if _$e83980_
              ((lambda (_method83983_)
                 (lambda _args83985_
                   (apply _method83983_ _obj83977_ _args83985_)))
               _$e83980_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj83970_ _id83971_)
        (let ((_method83973_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj83970_ _id83971_))))
          (lambda _args83975_ (apply _method83973_ _obj83970_ _args83975_)))))
    (define find-method
      (lambda (_klass83967_ _id83968_)
        (if (let () (declare (not safe)) (class-type? _klass83967_))
            (let ()
              (declare (not safe))
              (__find-method _klass83967_ _id83968_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass83967_ _id83968_)))))
    (define __find-method
      (lambda (_klass83961_ _id83962_)
        (let ((_$e83964_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass83961_ _id83962_))))
          (if _$e83964_
              _$e83964_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass83961_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass83961_ _id83962_)))))))
    (define class-find-method
      (lambda (_klass83958_ _id83959_)
        (if (let () (declare (not safe)) (class-type? _klass83958_))
            (let ()
              (declare (not safe))
              (__find-method _klass83958_ _id83959_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins83951_ _id83952_)
        (let ((__tmp89540
               (lambda (_g8395383955_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8395383955_ _id83952_)))))
          (declare (not safe))
          (ormap1 __tmp89540 _mixins83951_))))
    (define builtin-find-method
      (lambda (_klass83945_ _id83946_)
        (if (let () (declare (not safe)) (##type? _klass83945_))
            (let ((_$e83948_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass83945_ _id83946_))))
              (if _$e83948_
                  _$e83948_
                  (let ((__tmp89541
                         (let ()
                           (declare (not safe))
                           (##type-super _klass83945_))))
                    (declare (not safe))
                    (builtin-find-method __tmp89541 _id83946_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass83937_ _id83938_)
        (let ((_$e83940_
               (let ()
                 (declare (not safe))
                 (class-type-methods _klass83937_))))
          (if _$e83940_
              ((lambda (_ht83943_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht83943_ _id83938_ '#f)))
               _$e83940_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass83934_ _id83935_)
        (let ((__tmp89542
               (let ()
                 (declare (not safe))
                 (class-type-precedence-list _klass83934_))))
          (declare (not safe))
          (mixin-find-method __tmp89542 _id83935_))))
    (define builtin-method-ref
      (lambda (_klass83926_ _id83927_)
        (let ((_$e83929_
               (let ((__tmp89543
                      (let () (declare (not safe)) (##type-id _klass83926_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp89543 '#f))))
          (if _$e83929_
              ((lambda (_mtab83932_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab83932_ _id83927_ '#f)))
               _$e83929_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass83892_ _id83893_ _proc83894_ _rebind?83895_)
        (letrec ((_bind!83897_
                  (lambda (_ht83910_)
                    (if (and (let () (declare (not safe)) (not _rebind?83895_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht83910_ _id83893_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass83892_
                               'method:
                               _id83893_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht83910_ _id83893_ _proc83894_))))))
          (if (let () (declare (not safe)) (procedure? _proc83894_))
              '#!void
              (error '"bad method; expected procedure" _proc83894_))
          (if (let () (declare (not safe)) (class-type? _klass83892_))
              (let ((_ht83899_
                     (let ()
                       (declare (not safe))
                       (class-type-methods _klass83892_))))
                (if _ht83899_
                    (let () (declare (not safe)) (_bind!83897_ _ht83899_))
                    (let ((_ht83901_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (class-type-methods-set! _klass83892_ _ht83901_))
                      (let () (declare (not safe)) (_bind!83897_ _ht83901_)))))
              (if (let () (declare (not safe)) (##type? _klass83892_))
                  (let ((_ht83908_
                         (let ((_$e83903_
                                (let ((__tmp89544
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass83892_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp89544
                                   '#f))))
                           (if _$e83903_
                               _$e83903_
                               (let ((_ht83906_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp89545
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass83892_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp89545
                                    _ht83906_))
                                 _ht83906_)))))
                    (declare (not safe))
                    (_bind!83897_ _ht83908_))
                  (error '"bad class; expected class or builtin type"
                         _klass83892_))))))
    (define bind-method!__0
      (lambda (_klass83915_ _id83916_ _proc83917_)
        (let ((_rebind?83919_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass83915_
           _id83916_
           _proc83917_
           _rebind?83919_))))
    (define bind-method!
      (lambda _g89547_
        (let ((_g89546_ (let () (declare (not safe)) (##length _g89547_))))
          (cond ((let () (declare (not safe)) (##fx= _g89546_ 3))
                 (apply (lambda (_klass83915_ _id83916_ _proc83917_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass83915_
                             _id83916_
                             _proc83917_)))
                        _g89547_))
                ((let () (declare (not safe)) (##fx= _g89546_ 4))
                 (apply (lambda (_klass83921_
                                 _id83922_
                                 _proc83923_
                                 _rebind?83924_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass83921_
                             _id83922_
                             _proc83923_
                             _rebind?83924_)))
                        _g89547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g89547_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc83888_ _specializer83889_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc83888_ _specializer83889_))))
    (define seal-class!
      (lambda (_klass83855_)
        (letrec ((_collect-methods!83857_
                  (lambda (_mtab83873_)
                    (letrec ((_merge!83875_
                              (lambda (_tab83883_)
                                (let ((__tmp89548
                                       (lambda (_id83885_ _proc83886_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab83873_
                                            _id83885_
                                            _proc83886_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp89548 _tab83883_))))
                             (_collect-direct-methods!83876_
                              (lambda (_klass83878_)
                                (let ((_$e83880_
                                       (let ()
                                         (declare (not safe))
                                         (class-type-methods _klass83878_))))
                                  (if _$e83880_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!83875_ _$e83880_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!83876_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass83855_))))))))
          (if (let () (declare (not safe)) (class-type? _klass83855_))
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass83855_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (class-type-final? _klass83855_))
                        '#!void
                        (error '"cannot seal non-final class" _klass83855_))
                    (let ((_vtab83859_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab83860_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!83857_ _mtab83860_))
                      (let ((__tmp89549
                             (lambda (_id83862_ _proc83863_)
                               (let ((_$e83865_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc83863_
                                         '#f))))
                                 (if _$e83865_
                                     ((lambda (_specializer83868_)
                                        (let ((_proc83870_
                                               (_specializer83868_
                                                _klass83855_))
                                              (_gid83871_
                                               (let ((__tmp89550
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass83855_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp89550
                                                  '"::["
                                                  _id83862_
                                                  '"]"))))
                                          (eval (let ((__tmp89551
                                                       (let ((__tmp89552
                                                              (let ((__tmp89553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp89554
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc83870_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp89554))))
                        (declare (not safe))
                        (cons __tmp89553 '()))))
                 (declare (not safe))
                 (cons _gid83871_ __tmp89552))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp89551)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab83859_
                                             _id83862_
                                             _proc83870_))))
                                      _$e83865_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab83859_
                                        _id83862_
                                        _proc83863_)))))))
                        (declare (not safe))
                        (table-for-each __tmp89549 _mtab83860_))
                      (let ()
                        (declare (not safe))
                        (class-type-methods-set! _klass83855_ _vtab83859_))
                      (let ()
                        (declare (not safe))
                        (class-type-seal! _klass83855_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass83804_ _obj83805_ _id83806_)
        (let ((_klass83808_
               (let () (declare (not safe)) (object-type _obj83805_)))
              (_type-id83809_
               (let () (declare (not safe)) (##type-id _subklass83804_))))
          (if (let () (declare (not safe)) (class-type? _klass83808_))
              (let _lp83811_ ((_rest83813_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass83808_))))
                (let* ((_rest8381483822_ _rest83813_)
                       (_else8381683830_ (lambda () '#f))
                       (_K8381883836_
                        (lambda (_rest83833_ _klass83834_)
                          (if (let ((__tmp89557
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass83834_))))
                                (declare (not safe))
                                (eq? _type-id83809_ __tmp89557))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method _rest83833_ _id83806_))
                              (let ()
                                (declare (not safe))
                                (_lp83811_ _rest83833_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8381483822_))
                      (let ((_hd8381983839_
                             (let ()
                               (declare (not safe))
                               (##car _rest8381483822_)))
                            (_tl8382083841_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8381483822_))))
                        (let* ((_klass83844_ _hd8381983839_)
                               (_rest83846_ _tl8382083841_))
                          (declare (not safe))
                          (_K8381883836_ _rest83846_ _klass83844_)))
                      (let () (declare (not safe)) (_else8381683830_)))))
              (if (let () (declare (not safe)) (##type? _klass83808_))
                  (let _lp83848_ ((_klass83850_ _klass83808_))
                    (if (let ((__tmp89556
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass83850_))))
                          (declare (not safe))
                          (eq? _type-id83809_ __tmp89556))
                        (let ((__tmp89555
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83850_))))
                          (declare (not safe))
                          (builtin-find-method __tmp89555 _id83806_))
                        (let ((_$e83852_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83850_))))
                          (if _$e83852_
                              (let ()
                                (declare (not safe))
                                (_lp83848_ _$e83852_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass83794_ _obj83795_ _id83796_ . _args83797_)
        (let ((_$e83799_
               (let ()
                 (declare (not safe))
                 (next-method _subklass83794_ _obj83795_ _id83796_))))
          (if _$e83799_
              ((lambda (_methodf83802_)
                 (apply _methodf83802_ _obj83795_ _args83797_))
               _$e83799_)
              (error '"cannot find next method"
                     'object:
                     _obj83795_
                     'method:
                     _id83796_)))))
    (define write-style (lambda (_we83792_) (macro-writeenv-style _we83792_)))
    (define write-object
      (lambda (_we83784_ _obj83785_)
        (let ((_$e83787_
               (let () (declare (not safe)) (method-ref _obj83785_ ':wr))))
          (if _$e83787_
              ((lambda (_method83790_) (_method83790_ _obj83785_ _we83784_))
               _$e83787_)
              (let ()
                (declare (not safe))
                (##default-wr _we83784_ _obj83785_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
