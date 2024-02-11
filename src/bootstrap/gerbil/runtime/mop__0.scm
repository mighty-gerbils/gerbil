(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707659877)
  (begin
    (define type-id
      (lambda (_klass84110_)
        (if (let () (declare (not safe)) (type-descriptor? _klass84110_))
            (let () (declare (not safe)) (##type-id _klass84110_))
            (if (let () (declare (not safe)) (not _klass84110_))
                '#f
                (error '"not a type descriptor" _klass84110_)))))
    (define type=?
      (lambda (_x84107_ _y84108_)
        (let ((__tmp88604 (let () (declare (not safe)) (type-id _x84107_)))
              (__tmp88603 (let () (declare (not safe)) (type-id _y84108_))))
          (declare (not safe))
          (eq? __tmp88604 __tmp88603))))
    (define type-descriptor?
      (lambda (_klass84105_)
        (if (let () (declare (not safe)) (##type? _klass84105_))
            (let ((__tmp88605
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass84105_))))
              (declare (not safe))
              (eq? __tmp88605 '12))
            '#f)))
    (define type-struct?
      (lambda (_klass84103_)
        (let ((__tmp88606
               (let () (declare (not safe)) (##type-flags _klass84103_))))
          (declare (not safe))
          (##fxbit-set? '21 __tmp88606))))
    (define type-final?
      (lambda (_klass84101_)
        (let ((__tmp88607
               (let () (declare (not safe)) (##type-flags _klass84101_))))
          (declare (not safe))
          (##fxbit-set? '22 __tmp88607))))
    (define class-type?
      (lambda (_klass84099_)
        (let () (declare (not safe)) (type-descriptor? _klass84099_))))
    (define properties-form
      (lambda (_properties84065_)
        (map (lambda (_e8406684068_)
               (let* ((_g8407084077_ _e8406684068_)
                      (_E8407284081_
                       (lambda () (error '"No clause matching" _g8407084077_)))
                      (_K8407384087_
                       (lambda (_val84084_ _key84085_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key84085_ 'direct-supers:))
                             (let ((__tmp88608 (map type-id _val84084_)))
                               (declare (not safe))
                               (cons _key84085_ __tmp88608))
                             (let ()
                               (declare (not safe))
                               (cons _key84085_ _val84084_))))))
                 (if (let () (declare (not safe)) (##pair? _g8407084077_))
                     (let ((_hd8407484090_
                            (let ()
                              (declare (not safe))
                              (##car _g8407084077_)))
                           (_tl8407584092_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8407084077_))))
                       (let* ((_key84095_ _hd8407484090_)
                              (_val84097_ _tl8407584092_))
                         (declare (not safe))
                         (_K8407384087_ _val84097_ _key84095_)))
                     (let () (declare (not safe)) (_E8407284081_)))))
             _properties84065_)))
    (define make-type-descriptor
      (lambda (_type-id83972_
               _type-name83973_
               _type-super83974_
               _precedence-list83975_
               _all-slots83976_
               _properties83977_
               _constructor83978_
               _slot-table83979_
               _methods83980_)
        (letrec ((_make-props!83982_
                  (lambda (_key84034_)
                    (letrec* ((_ht84036_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!84037_
                               (lambda (_ht84058_ _slots84059_)
                                 (for-each
                                  (lambda (_g8406084062_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht84058_
                                       _g8406084062_
                                       '#t)))
                                  _slots84059_)))
                              (_put-alist!84038_
                               (lambda (_ht84047_ _key84048_ _alist84049_)
                                 (let ((_$e84051_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key84048_ _alist84049_))))
                                   (if _$e84051_
                                       ((lambda (_g8405384055_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!84037_
                                             _ht84047_
                                             _g8405384055_)))
                                        _$e84051_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!84038_
                         _ht84036_
                         _key84034_
                         _properties83977_))
                      (for-each
                       (lambda (_mixin84040_)
                         (let ((_alist84042_
                                (let ()
                                  (declare (not safe))
                                  (type-descriptor-properties _mixin84040_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist84042_))
                                   (let ((__tmp88610
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key84034_
                                                     _alist84042_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp88610)))
                               (let ((__tmp88609
                                      (let ()
                                        (declare (not safe))
                                        (type-descriptor-slot-list
                                         _mixin84040_))))
                                 (declare (not safe))
                                 (_put-slots!84037_ _ht84036_ __tmp88609))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!84038_
                                  _ht84036_
                                  _key84034_
                                  _alist84042_)))))
                       _precedence-list83975_)
                      _ht84036_))))
          (let* ((_transparent?83984_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties83977_)))
                 (_all-slots-printable?83989_
                  (let ((_$e83986_ _transparent?83984_))
                    (if _$e83986_
                        _$e83986_
                        (let ((__tmp88611
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties83977_))))
                          (declare (not safe))
                          (eq? '#t __tmp88611)))))
                 (_printable83991_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?83989_))
                      (let ()
                        (declare (not safe))
                        (_make-props!83982_ 'print:))
                      '#f))
                 (_all-slots-equalable?83996_
                  (let ((_$e83993_ _transparent?83984_))
                    (if _$e83993_
                        _$e83993_
                        (let ((__tmp88612
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties83977_))))
                          (declare (not safe))
                          (eq? '#t __tmp88612)))))
                 (_equalable83998_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?83996_))
                      (let ()
                        (declare (not safe))
                        (_make-props!83982_ 'equal:))
                      '#f))
                 (_first-new-field84000_
                  (if _type-super83974_
                      (let ((__tmp88613
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _type-super83974_))))
                        (declare (not safe))
                        (##vector-length __tmp88613))
                      '1))
                 (_field-info-length84002_
                  (let ((__tmp88614
                         (let ((__tmp88615
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _all-slots83976_))))
                           (declare (not safe))
                           (##fx- __tmp88615 _first-new-field84000_))))
                    (declare (not safe))
                    (##fx* '3 __tmp88614)))
                 (_field-info84004_ (make-vector _field-info-length84002_ '#f))
                 (_struct?84006_
                  (let ()
                    (declare (not safe))
                    (assgetq 'struct: _properties83977_)))
                 (_final?84008_
                  (let ()
                    (declare (not safe))
                    (assgetq 'final: _properties83977_)))
                 (_opaque?84013_
                  (let ((_$e84010_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?83996_))))
                    (if _$e84010_
                        _$e84010_
                        (if _type-super83974_
                            (let ((__tmp88616
                                   (let ((__tmp88617
                                          (let ()
                                            (declare (not safe))
                                            (##type-flags _type-super83974_))))
                                     (declare (not safe))
                                     (##fxand __tmp88617 '1))))
                              (declare (not safe))
                              (##fx= __tmp88616 '1))
                            '#f))))
                 (_type-flags84015_
                  (let ((__tmp88620 (if _opaque?84013_ '1 '0))
                        (__tmp88619
                         (if _struct?84006_
                             (let ()
                               (declare (not safe))
                               (##fxarithmetic-shift '1 '21))
                             '0))
                        (__tmp88618
                         (if _final?84008_
                             (let ()
                               (declare (not safe))
                               (##fxarithmetic-shift '1 '22))
                             '0)))
                    (declare (not safe))
                    (##fxior '24 __tmp88620 __tmp88619 __tmp88618))))
            (let _loop84018_ ((_i84020_ _first-new-field84000_) (_j84021_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j84021_ _field-info-length84002_))
                  (let* ((_slot84023_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _all-slots83976_ _i84020_)))
                         (_flags84031_
                          (if _transparent?83984_
                              '0
                              (let ((__tmp88622
                                     (if (or _all-slots-printable?83989_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable83991_
                                                _slot84023_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp88621
                                     (if (or _all-slots-equalable?83996_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable83998_
                                                _slot84023_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp88622 __tmp88621)))))
                    (vector-set! _field-info84004_ _j84021_ _slot84023_)
                    (vector-set!
                     _field-info84004_
                     (let () (declare (not safe)) (##fx+ _j84021_ '1))
                     _flags84031_)
                    (let ((__tmp88624
                           (let () (declare (not safe)) (##fx+ _i84020_ '1)))
                          (__tmp88623
                           (let () (declare (not safe)) (##fx+ _j84021_ '3))))
                      (declare (not safe))
                      (_loop84018_ __tmp88624 __tmp88623)))
                  '#!void))
            (let ()
              (declare (not safe))
              (##structure
               ##type-type
               _type-id83972_
               _type-name83973_
               _type-flags84015_
               _type-super83974_
               _field-info84004_
               _precedence-list83975_
               _all-slots83976_
               _slot-table83979_
               _properties83977_
               _constructor83978_
               _methods83980_))))))
    (define type-descriptor-precedence-list
      (lambda (_klass83970_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass83970_
           '6
           ##type-type
           type-descriptor-precedence-list))))
    (define type-descriptor-all-slots
      (lambda (_klass83968_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass83968_
           '7
           ##type-type
           type-descriptor-all-slots))))
    (define type-descriptor-slot-table
      (lambda (_klass83966_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass83966_
           '8
           ##type-type
           type-descriptor-slot-table))))
    (define type-descriptor-properties
      (lambda (_klass83964_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass83964_
           '9
           ##type-type
           type-descriptor-properties))))
    (define type-descriptor-constructor
      (lambda (_klass83962_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass83962_
           '10
           ##type-type
           type-descriptor-constructor))))
    (define type-descriptor-methods
      (lambda (_klass83960_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass83960_
           '11
           ##type-type
           type-descriptor-methods))))
    (define type-descriptor-methods-set!
      (lambda (_klass83957_ _ht83958_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass83957_
           _ht83958_
           '11
           ##type-type
           type-descriptor-methods-set!))))
    (define type-descriptor-slot-list
      (lambda (_klass83955_)
        (cdr (vector->list
              (let ()
                (declare (not safe))
                (type-descriptor-all-slots _klass83955_))))))
    (define type-descriptor-fields
      (lambda (_klass83953_)
        (let ((__tmp88625
               (let ((__tmp88626
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass83953_))))
                 (declare (not safe))
                 (##vector-length __tmp88626))))
          (declare (not safe))
          (##fx- __tmp88625 '1))))
    (define type-descriptor-sealed?
      (lambda (_klass83951_)
        (let ((__tmp88627
               (let () (declare (not safe)) (##type-flags _klass83951_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp88627))))
    (define type-descriptor-seal!
      (lambda (_klass83949_)
        (let ((__tmp88628
               (let ((__tmp88630
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp88629
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass83949_))))
                 (declare (not safe))
                 (##fxior __tmp88630 __tmp88629))))
          (declare (not safe))
          (##structure-set!
           _klass83949_
           __tmp88628
           '3
           ##type-type
           type-descriptor-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct83940_ _maybe-super-struct83941_)
        (let ((_maybe-super-struct-id83943_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct83941_))))
          (let _lp83945_ ((_super-struct83947_ _maybe-sub-struct83940_))
            (if (let () (declare (not safe)) (not _super-struct83947_))
                '#f
                (if (let ((__tmp88632
                           (let ()
                             (declare (not safe))
                             (type-id _super-struct83947_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id83943_ __tmp88632))
                    '#t
                    (let ((__tmp88631
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct83947_))))
                      (declare (not safe))
                      (_lp83945_ __tmp88631))))))))
    (define base-struct/1
      (lambda (_klass83938_)
        (if (let () (declare (not safe)) (class-type? _klass83938_))
            (if (let () (declare (not safe)) (type-struct? _klass83938_))
                _klass83938_
                (let () (declare (not safe)) (##type-super _klass83938_)))
            (if (let () (declare (not safe)) (not _klass83938_))
                '#f
                (error '"not a class or false" _klass83938_)))))
    (define base-struct/2
      (lambda (_klass183926_ _klass283927_)
        (let ((_s183929_
               (let () (declare (not safe)) (base-struct/1 _klass183926_)))
              (_s283930_
               (let () (declare (not safe)) (base-struct/1 _klass283927_))))
          (if (or (let () (declare (not safe)) (not _s183929_))
                  (and _s283930_
                       (let ()
                         (declare (not safe))
                         (substruct? _s183929_ _s283930_))))
              _s283930_
              (if (or (let () (declare (not safe)) (not _s283930_))
                      (and _s183929_
                           (let ()
                             (declare (not safe))
                             (substruct? _s283930_ _s183929_))))
                  _s183929_
                  (error '"bad mixin: incompatible struct bases"
                         _klass183926_
                         _klass283927_
                         _s183929_
                         _s283930_))))))
    (define base-struct/list
      (lambda (_all-supers83810_)
        (let* ((_all-supers8381183836_ _all-supers83810_)
               (_E8381683840_
                (lambda ()
                  (error '"No clause matching" _all-supers8381183836_))))
          (let ((_K8383483923_ (lambda () '#f))
                (_K8383183909_
                 (lambda (_x83907_)
                   (let () (declare (not safe)) (base-struct/1 _x83907_))))
                (_K8382683886_
                 (lambda (_y83883_ _x83884_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x83884_ _y83883_))))
                (_K8381783847_
                 (lambda (_y83844_ _x83845_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x83845_ _y83844_)))))
            (let* ((___match8860088601_
                    (lambda (_hd8381883850_ _tl8381983852_)
                      (let ((_x83855_ _hd8381883850_))
                        (letrec ((_splice-rest8382183857_
                                  (lambda (_rest8382583864_ _y83866_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8382583864_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8381783847_ _y83866_ _x83855_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8381683840_)))))
                                 (_splice-try8382383859_
                                  (lambda (_hd8382483868_
                                           _rest8382583870_
                                           _y8382083871_)
                                    (let ((_y83874_ _hd8382483868_))
                                      (let ((__tmp88634
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8382583870_)))
                                            (__tmp88633
                                             (let ()
                                               (declare (not safe))
                                               (cons _y83874_ _y8382083871_))))
                                        (declare (not safe))
                                        (_splice-loop8382283861_
                                         __tmp88634
                                         __tmp88633)))))
                                 (_splice-loop8382283861_
                                  (lambda (_rest8382583876_ _y8382083877_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8382583876_))
                                        (let ((__tmp88636
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8382583876_))))
                                          (declare (not safe))
                                          (_splice-try8382383859_
                                           __tmp88636
                                           _rest8382583876_
                                           _y8382083877_))
                                        (let ((__tmp88635
                                               (reverse _y8382083877_)))
                                          (declare (not safe))
                                          (_splice-rest8382183857_
                                           _rest8382583876_
                                           __tmp88635))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8382283861_ _tl8381983852_ '()))))))
                   (_try-match8381383919_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8381183836_))
                          (let ((_tl8383383914_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8381183836_)))
                                (_hd8383283912_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8381183836_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8383383914_))
                                (let ((_x83917_ _hd8383283912_))
                                  (declare (not safe))
                                  (base-struct/1 _x83917_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8383383914_))
                                    (let ((_tl8383083898_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8383383914_)))
                                          (_hd8382983896_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8383383914_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8383083898_))
                                          (let ((_x83894_ _hd8383283912_)
                                                (_y83901_ _hd8382983896_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8382683886_
                                               _y83901_
                                               _x83894_)))
                                          (___match8860088601_
                                           _hd8383283912_
                                           _tl8383383914_)))
                                    (___match8860088601_
                                     _hd8383283912_
                                     _tl8383383914_))))
                          (let () (declare (not safe)) (_E8381683840_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8381183836_))
                  (let () (declare (not safe)) (_K8383483923_))
                  (let () (declare (not safe)) (_try-match8381383919_))))))))
    (define base-struct
      (lambda _all-supers83808_
        (let () (declare (not safe)) (base-struct/list _all-supers83808_))))
    (define find-super-constructor
      (lambda (_super83760_)
        (let _lp83762_ ((_rest83764_ _super83760_) (_constructor83765_ '#f))
          (let* ((_rest8376683774_ _rest83764_)
                 (_else8376883782_ (lambda () _constructor83765_))
                 (_K8377083796_
                  (lambda (_rest83785_ _hd83786_)
                    (let ((_$e83788_
                           (let ()
                             (declare (not safe))
                             (type-descriptor-constructor _hd83786_))))
                      (if _$e83788_
                          ((lambda (_xconstructor83791_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor83765_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor83765_
                                            _xconstructor83791_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp83762_ _rest83785_ _xconstructor83791_))
                                 (error '"conflicting implicit constructors"
                                        _constructor83765_
                                        _xconstructor83791_)))
                           _$e83788_)
                          (let ()
                            (declare (not safe))
                            (_lp83762_ _rest83785_ _constructor83765_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8376683774_))
                (let ((_hd8377183799_
                       (let () (declare (not safe)) (##car _rest8376683774_)))
                      (_tl8377283801_
                       (let () (declare (not safe)) (##cdr _rest8376683774_))))
                  (let* ((_hd83804_ _hd8377183799_)
                         (_rest83806_ _tl8377283801_))
                    (declare (not safe))
                    (_K8377083796_ _rest83806_ _hd83804_)))
                (let () (declare (not safe)) (_else8376883782_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list83736_ _direct-slots83737_)
        (let* ((_next-slot83739_ '1)
               (_slot-table83741_
                (let () (declare (not safe)) (make-table 'test: eq?)))
               (_r-slots83743_ (let () (declare (not safe)) (cons '#f '())))
               (_process-slot83747_
                (lambda (_slot83745_)
                  (if (let () (declare (not safe)) (symbol? _slot83745_))
                      '#!void
                      (error '"invalid slot name" _slot83745_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table83741_ _slot83745_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table83741_
                           _slot83745_
                           _next-slot83739_))
                        (let ((__tmp88637 (symbol->keyword _slot83745_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table83741_
                           __tmp88637
                           _next-slot83739_))
                        (set! _r-slots83743_
                              (let ()
                                (declare (not safe))
                                (cons _slot83745_ _r-slots83743_)))
                        (set! _next-slot83739_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot83739_ '1)))))))
               (_process-slots83753_
                (lambda (_g8374883750_)
                  (for-each _process-slot83747_ _g8374883750_))))
          (for-each
           (lambda (_mixin83756_)
             (let ((__tmp88638
                    (let ((__tmp88639
                           (let ()
                             (declare (not safe))
                             (type-descriptor-properties _mixin83756_))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp88639 '()))))
               (declare (not safe))
               (_process-slots83753_ __tmp88638)))
           (reverse _class-precedence-list83736_))
          (let ()
            (declare (not safe))
            (_process-slots83753_ _direct-slots83737_))
          (let ((_all-slots83758_ (list->vector (reverse _r-slots83743_))))
            (values _all-slots83758_ _slot-table83741_)))))
    (define make-class-type
      (lambda (_id83699_
               _name83700_
               _direct-supers83701_
               _direct-slots83702_
               _properties83703_
               _constructor83704_)
        (let ((_$e83708_
               (let ((__tmp88640
                      (lambda (_klass83706_)
                        (let ((__tmp88641
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor? _klass83706_))))
                          (declare (not safe))
                          (not __tmp88641)))))
                 (declare (not safe))
                 (find __tmp88640 _direct-supers83701_))))
          (if _$e83708_
              ((lambda (_g8371083712_)
                 (error '"Illegal super class; not a type descriptor"
                        _g8371083712_))
               _$e83708_)
              (let ((_$e83715_
                     (let ()
                       (declare (not safe))
                       (find type-final? _direct-supers83701_))))
                (if _$e83715_
                    ((lambda (_g8371783719_)
                       (error '"Cannot extend final class" _g8371783719_))
                     _$e83715_)
                    '#!void))))
        (let ((_g88642_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers83701_))))
          (begin
            (let ((_g88643_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g88642_) (##vector-length _g88642_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g88643_ 2)))
                  (error "Context expects 2 values" _g88643_)))
            (let ((_precedence-list83722_
                   (let () (declare (not safe)) (##vector-ref _g88642_ 0)))
                  (_struct-super83723_
                   (let () (declare (not safe)) (##vector-ref _g88642_ 1))))
              (let ((_g88644_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list83722_
                        _direct-slots83702_))))
                (begin
                  (let ((_g88645_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g88644_)
                               (##vector-length _g88644_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g88645_ 2)))
                        (error "Context expects 2 values" _g88645_)))
                  (let ((_all-slots83725_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g88644_ 0)))
                        (_slot-table83726_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g88644_ 1))))
                    (let* ((_properties83728_
                            (let ((__tmp88648
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots83702_)))
                                  (__tmp88646
                                   (let ((__tmp88647
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers83701_))))
                                     (declare (not safe))
                                     (cons __tmp88647 _properties83703_))))
                              (declare (not safe))
                              (cons __tmp88648 __tmp88646)))
                           (_constructor*83733_
                            (let ((_$e83730_ _constructor83704_))
                              (if _$e83730_
                                  _$e83730_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers83701_))))))
                      (let ()
                        (declare (not safe))
                        (make-type-descriptor
                         _id83699_
                         _name83700_
                         _struct-super83723_
                         _precedence-list83722_
                         _all-slots83725_
                         _properties83728_
                         _constructor*83733_
                         _slot-table83726_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass83697_)
        (let ((__tmp88649
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass83697_))))
          (declare (not safe))
          (cons _klass83697_ __tmp88649))))
    (define compute-precedence-list
      (lambda (_direct-supers83695_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           type-struct?
           eq?
           ##type-name
           '()
           _direct-supers83695_))))
    (define make-class-predicate
      (lambda (_klass83679_)
        (let ((_tid83681_
               (let () (declare (not safe)) (##type-id _klass83679_))))
          (if (let () (declare (not safe)) (type-final? _klass83679_))
              (lambda (_g8368283684_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8368283684_ _tid83681_)))
              (if (let () (declare (not safe)) (type-struct? _klass83679_))
                  (lambda (_g8368683688_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g8368683688_ _tid83681_)))
                  (lambda (_g8369083692_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass83679_ _g8369083692_))))))))
    (define if-class-slot-field
      (lambda (_klass83668_
               _slot83669_
               _if-final83670_
               _if-struct83671_
               _if-struct-field83672_
               _if-class-slot83673_)
        (let ((_field83675_
               (let ((__tmp88650
                      (let ()
                        (declare (not safe))
                        (type-descriptor-slot-table _klass83668_))))
                 (declare (not safe))
                 (table-ref __tmp88650 _slot83669_ '#f))))
          (if (let () (declare (not safe)) (not _field83675_))
              (error '"unknown slot" 'class: _klass83668_ 'slot: _slot83669_)
              (if (let () (declare (not safe)) (type-final? _klass83668_))
                  (_if-final83670_ _klass83668_ _slot83669_ _field83675_)
                  (if (let () (declare (not safe)) (type-struct? _klass83668_))
                      (_if-struct83671_ _klass83668_ _slot83669_ _field83675_)
                      (if (let ((_strukt83677_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass83668_))))
                            (and _strukt83677_
                                 (let ((__tmp88651
                                        (let ((__tmp88652
                                               (let ()
                                                 (declare (not safe))
                                                 (type-descriptor-all-slots
                                                  _strukt83677_))))
                                          (declare (not safe))
                                          (##vector-length __tmp88652))))
                                   (declare (not safe))
                                   (##fx< _field83675_ __tmp88651))))
                          (_if-struct-field83672_
                           _klass83668_
                           _slot83669_
                           _field83675_)
                          (_if-class-slot83673_
                           _klass83668_
                           _slot83669_
                           _field83675_))))))))
    (define make-class-slot-accessor
      (lambda (_klass83665_ _slot83666_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83665_
           _slot83666_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass83662_ _slot83663_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83662_
           _slot83663_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass83659_ _slot83660_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83659_
           _slot83660_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass83656_ _slot83657_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83656_
           _slot83657_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object83640_ _class83641_ _slot83642_)
        (apply error
               '"not an instance"
               'object:
               _object83640_
               'class:
               _class83641_
               (if _slot83642_
                   (let ((__tmp88653
                          (let ()
                            (declare (not safe))
                            (cons _slot83642_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp88653))
                   '()))))
    (define not-an-instance__0
      (lambda (_object83647_ _class83648_)
        (let ((_slot83650_ '#f))
          (declare (not safe))
          (not-an-instance__% _object83647_ _class83648_ _slot83650_))))
    (define not-an-instance
      (lambda _g88655_
        (let ((_g88654_ (let () (declare (not safe)) (##length _g88655_))))
          (cond ((let () (declare (not safe)) (##fx= _g88654_ 2))
                 (apply (lambda (_object83647_ _class83648_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object83647_ _class83648_)))
                        _g88655_))
                ((let () (declare (not safe)) (##fx= _g88654_ 3))
                 (apply (lambda (_object83652_ _class83653_ _slot83654_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object83652_
                             _class83653_
                             _slot83654_)))
                        _g88655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g88655_))))))
    (define make-final-slot-accessor
      (lambda (_klass83633_ _slot83634_ _field83635_)
        (lambda (_obj83637_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj83637_
             _field83635_
             _klass83633_
             _slot83634_)))))
    (define make-final-slot-mutator
      (lambda (_klass83626_ _slot83627_ _field83628_)
        (lambda (_obj83630_ _val83631_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj83630_
             _val83631_
             _field83628_
             _klass83626_
             _slot83627_)))))
    (define make-struct-slot-accessor
      (lambda (_klass83620_ _slot83621_ _field83622_)
        (lambda (_obj83624_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj83624_
             _field83622_
             _klass83620_
             _slot83621_)))))
    (define make-struct-slot-mutator
      (lambda (_klass83613_ _slot83614_ _field83615_)
        (lambda (_obj83617_ _val83618_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj83617_
             _val83618_
             _field83615_
             _klass83613_
             _slot83614_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass83607_ _slot83608_ _field83609_)
        (lambda (_obj83611_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj83611_
             _field83609_
             _klass83607_
             _slot83608_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass83600_ _slot83601_ _field83602_)
        (lambda (_obj83604_ _val83605_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj83604_
             _val83605_
             _field83602_
             _klass83600_
             _slot83601_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass83594_ _slot83595_ _field83596_)
        (lambda (_obj83598_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83594_ _obj83598_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83598_ _field83596_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83598_ _klass83594_ _slot83595_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass83587_ _slot83588_ _field83589_)
        (lambda (_obj83591_ _val83592_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83587_ _obj83591_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83591_ _field83589_ _val83592_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83591_ _klass83587_ _slot83588_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass83581_ _slot83582_ _field83583_)
        (lambda (_obj83585_)
          (if (let ((__tmp88656
                     (let () (declare (not safe)) (##type-id _klass83581_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83585_ __tmp88656))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83585_ _field83583_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83581_ _obj83585_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj83585_ _slot83582_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83585_
                     _klass83581_
                     _slot83582_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass83574_ _slot83575_ _field83576_)
        (lambda (_obj83578_ _val83579_)
          (if (let ((__tmp88657
                     (let () (declare (not safe)) (##type-id _klass83574_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83578_ __tmp88657))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83578_ _field83576_ _val83579_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83574_ _obj83578_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj83578_ _slot83575_ _val83579_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83578_
                     _klass83574_
                     _slot83575_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass83568_ _slot83569_ _field83570_)
        (lambda (_obj83572_)
          (if (let ((__tmp88658
                     (let () (declare (not safe)) (##type-id _klass83568_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83572_ __tmp88658))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83572_ _field83570_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83572_ _slot83569_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass83561_ _slot83562_ _field83563_)
        (lambda (_obj83565_ _val83566_)
          (if (let ((__tmp88659
                     (let () (declare (not safe)) (##type-id _klass83561_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83565_ __tmp88659))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83565_ _field83563_ _val83566_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj83565_ _slot83562_ _val83566_))))))
    (define class-slot-offset
      (lambda (_klass83558_ _slot83559_)
        (let ((__tmp88660
               (let ()
                 (declare (not safe))
                 (type-descriptor-slot-table _klass83558_))))
          (declare (not safe))
          (table-ref __tmp88660 _slot83559_ '#f))))
    (define class-slot-ref
      (lambda (_klass83552_ _obj83553_ _slot83554_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83552_ _obj83553_))
            (let ((_off83556_
                   (let ((__tmp88661
                          (let ()
                            (declare (not safe))
                            (object-type _obj83553_))))
                     (declare (not safe))
                     (class-slot-offset __tmp88661 _slot83554_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj83553_
               _off83556_
               _klass83552_
               _slot83554_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83553_ _klass83552_)))))
    (define class-slot-set!
      (lambda (_klass83545_ _obj83546_ _slot83547_ _val83548_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83545_ _obj83546_))
            (let ((_off83550_
                   (let ((__tmp88662
                          (let ()
                            (declare (not safe))
                            (object-type _obj83546_))))
                     (declare (not safe))
                     (class-slot-offset __tmp88662 _slot83547_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj83546_
               _val83548_
               _off83550_
               _klass83545_
               _slot83547_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83546_ _klass83545_)))))
    (define unchecked-field-ref
      (lambda (_obj83542_ _off83543_)
        (let ((__tmp88663
               (let () (declare (not safe)) (##structure-type _obj83542_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj83542_ _off83543_ __tmp88663 '#f))))
    (define unchecked-field-set!
      (lambda (_obj83538_ _off83539_ _val83540_)
        (let ((__tmp88664
               (let () (declare (not safe)) (##structure-type _obj83538_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj83538_
           _val83540_
           _off83539_
           __tmp88664
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj83535_ _slot83536_)
        (let ((__tmp88665
               (let ((__tmp88666
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83535_))))
                 (declare (not safe))
                 (class-slot-offset __tmp88666 _slot83536_))))
          (declare (not safe))
          (unchecked-field-ref _obj83535_ __tmp88665))))
    (define unchecked-slot-set!
      (lambda (_obj83531_ _slot83532_ _val83533_)
        (let ((__tmp88667
               (let ((__tmp88668
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83531_))))
                 (declare (not safe))
                 (class-slot-offset __tmp88668 _slot83532_))))
          (declare (not safe))
          (unchecked-field-set! _obj83531_ __tmp88667 _val83533_))))
    (define slot-ref__%
      (lambda (_obj83507_ _slot83508_ _E83509_)
        (if (let () (declare (not safe)) (object? _obj83507_))
            (let* ((_klass83511_
                    (let () (declare (not safe)) (object-type _obj83507_)))
                   (_$e83514_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83511_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83511_ _slot83508_))
                        '#f)))
              (if _$e83514_
                  ((lambda (_off83517_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj83507_ _off83517_)))
                   _$e83514_)
                  (_E83509_ _obj83507_ _slot83508_)))
            (_E83509_ _obj83507_ _slot83508_))))
    (define slot-ref__0
      (lambda (_obj83522_ _slot83523_)
        (let ((_E83525_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj83522_ _slot83523_ _E83525_))))
    (define slot-ref
      (lambda _g88670_
        (let ((_g88669_ (let () (declare (not safe)) (##length _g88670_))))
          (cond ((let () (declare (not safe)) (##fx= _g88669_ 2))
                 (apply (lambda (_obj83522_ _slot83523_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj83522_ _slot83523_)))
                        _g88670_))
                ((let () (declare (not safe)) (##fx= _g88669_ 3))
                 (apply (lambda (_obj83527_ _slot83528_ _E83529_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj83527_ _slot83528_ _E83529_)))
                        _g88670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g88670_))))))
    (define slot-set!__%
      (lambda (_obj83479_ _slot83480_ _val83481_ _E83482_)
        (if (let () (declare (not safe)) (object? _obj83479_))
            (let* ((_klass83484_
                    (let () (declare (not safe)) (object-type _obj83479_)))
                   (_$e83487_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83484_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83484_ _slot83480_))
                        '#f)))
              (if _$e83487_
                  ((lambda (_off83490_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj83479_
                        _off83490_
                        _val83481_)))
                   _$e83487_)
                  (_E83482_ _obj83479_ _slot83480_)))
            (_E83482_ _obj83479_ _slot83480_))))
    (define slot-set!__0
      (lambda (_obj83495_ _slot83496_ _val83497_)
        (let ((_E83499_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj83495_ _slot83496_ _val83497_ _E83499_))))
    (define slot-set!
      (lambda _g88672_
        (let ((_g88671_ (let () (declare (not safe)) (##length _g88672_))))
          (cond ((let () (declare (not safe)) (##fx= _g88671_ 3))
                 (apply (lambda (_obj83495_ _slot83496_ _val83497_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj83495_ _slot83496_ _val83497_)))
                        _g88672_))
                ((let () (declare (not safe)) (##fx= _g88671_ 4))
                 (apply (lambda (_obj83501_ _slot83502_ _val83503_ _E83504_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj83501_
                             _slot83502_
                             _val83503_
                             _E83504_)))
                        _g88672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g88672_))))))
    (define __slot-error
      (lambda (_obj83475_ _slot83476_)
        (error '"Cannot find slot" 'object: _obj83475_ 'slot: _slot83476_)))
    (define subclass?
      (lambda (_maybe-sub-class83465_ _maybe-super-class83466_)
        (let* ((_maybe-super-class-id83468_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class83466_)))
               (_$e83470_
                (let ((__tmp88673
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class83465_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id83468_ __tmp88673))))
          (if _$e83470_
              _$e83470_
              (let ((__tmp88675
                     (lambda (_super-class83473_)
                       (let ((__tmp88676
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class83473_))))
                         (declare (not safe))
                         (eq? __tmp88676 _maybe-super-class-id83468_))))
                    (__tmp88674
                     (let ()
                       (declare (not safe))
                       (type-descriptor-precedence-list
                        _maybe-sub-class83465_))))
                (declare (not safe))
                (ormap1 __tmp88675 __tmp88674))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass83462_ _obj83463_)
        (let ((__tmp88677
               (let () (declare (not safe)) (##type-id _klass83462_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj83463_ __tmp88677))))
    (define struct-instance?
      (lambda (_klass83459_ _obj83460_)
        (let ((__tmp88678
               (let () (declare (not safe)) (##type-id _klass83459_))))
          (declare (not safe))
          (##structure-instance-of? _obj83460_ __tmp88678))))
    (define class-instance?
      (lambda (_klass83454_ _obj83455_)
        (if (let () (declare (not safe)) (object? _obj83455_))
            (let ((_type83457_
                   (let () (declare (not safe)) (object-type _obj83455_))))
              (if (let () (declare (not safe)) (type-descriptor? _type83457_))
                  (let ()
                    (declare (not safe))
                    (subclass? _type83457_ _klass83454_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass83449_ _k83450_)
        (let ((_obj83452_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass83449_ _k83450_))))
          (let () (declare (not safe)) (object-fill! _obj83452_ '#f))
          _obj83452_)))
    (define object-fill!
      (lambda (_obj83442_ _fill83443_)
        (let _loop83445_ ((_i83447_
                           (let ((__tmp88680
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj83442_))))
                             (declare (not safe))
                             (##fx- __tmp88680 '1))))
          (if (let () (declare (not safe)) (##fx> _i83447_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj83442_
                   _fill83443_
                   _i83447_
                   '#f
                   '#f))
                (let ((__tmp88679
                       (let () (declare (not safe)) (##fx- _i83447_ '1))))
                  (declare (not safe))
                  (_loop83445_ __tmp88679)))
              _obj83442_))))
    (define make-new-instance
      (lambda (_klass83440_)
        (let ((__obj88602
               (let ((__tmp88681
                      (let ((__tmp88682
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _klass83440_))))
                        (declare (not safe))
                        (##vector-length __tmp88682))))
                 (declare (not safe))
                 (##make-structure _klass83440_ __tmp88681))))
          (let () (declare (not safe)) (object-fill! __obj88602 '#f))
          __obj88602)))
    (define make-instance
      (lambda (_klass83430_ . _args83431_)
        (let* ((_obj83433_
                (let () (declare (not safe)) (make-new-instance _klass83430_)))
               (_$e83435_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass83430_))))
          (if _$e83435_
              ((lambda (_kons-id83438_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83430_
                    _kons-id83438_
                    _obj83433_
                    _args83431_)))
               _$e83435_)
              (if (let ((__tmp88686
                         (let ()
                           (declare (not safe))
                           (type-struct? _klass83430_))))
                    (declare (not safe))
                    (not __tmp88686))
                  (let ()
                    (declare (not safe))
                    (__class-instance-init!
                     _klass83430_
                     _obj83433_
                     _args83431_))
                  (if (let ((__tmp88684
                             (let ((__tmp88685
                                    (let ()
                                      (declare (not safe))
                                      (##structure-length _obj83433_))))
                               (declare (not safe))
                               (##fx- __tmp88685 '1)))
                            (__tmp88683 (length _args83431_)))
                        (declare (not safe))
                        (##fx= __tmp88684 __tmp88683))
                      (apply ##structure _klass83430_ _args83431_)
                      (error '"arguments don't match object size"
                             'class:
                             _klass83430_
                             'slots:
                             (let ()
                               (declare (not safe))
                               (type-descriptor-slot-list _klass83430_))
                             'args:
                             _args83431_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj83427_ . _args83428_)
        (if (let ((__tmp88688 (length _args83428_))
                  (__tmp88687
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj83427_))))
              (declare (not safe))
              (##fx< __tmp88688 __tmp88687))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj83427_ _args83428_))
            (error '"too many arguments for struct"
                   'object:
                   _obj83427_
                   'args:
                   _args83428_))))
    (define __struct-instance-init!
      (lambda (_obj83386_ _args83387_)
        (let _lp83389_ ((_k83391_ '1) (_rest83392_ _args83387_))
          (let* ((_rest8339383401_ _rest83392_)
                 (_else8339583409_ (lambda () _obj83386_))
                 (_K8339783415_
                  (lambda (_rest83412_ _hd83413_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj83386_ _k83391_ _hd83413_))
                    (let ((__tmp88689
                           (let () (declare (not safe)) (##fx+ _k83391_ '1))))
                      (declare (not safe))
                      (_lp83389_ __tmp88689 _rest83412_)))))
            (if (let () (declare (not safe)) (##pair? _rest8339383401_))
                (let ((_hd8339883418_
                       (let () (declare (not safe)) (##car _rest8339383401_)))
                      (_tl8339983420_
                       (let () (declare (not safe)) (##cdr _rest8339383401_))))
                  (let* ((_hd83423_ _hd8339883418_)
                         (_rest83425_ _tl8339983420_))
                    (declare (not safe))
                    (_K8339783415_ _rest83425_ _hd83423_)))
                (let () (declare (not safe)) (_else8339583409_)))))))
    (define class-instance-init!
      (lambda (_obj83383_ . _args83384_)
        (let ((__tmp88690
               (let () (declare (not safe)) (object-type _obj83383_))))
          (declare (not safe))
          (__class-instance-init! __tmp88690 _obj83383_ _args83384_))))
    (define __class-instance-init!
      (lambda (_klass83327_ _obj83328_ _args83329_)
        (let _lp83331_ ((_rest83333_ _args83329_))
          (let* ((_rest8333483344_ _rest83333_)
                 (_else8333683352_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest83333_))
                        _obj83328_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass83327_
                               'rest:
                               _rest83333_))))
                 (_K8333883364_
                  (lambda (_rest83355_ _val83356_ _key83357_)
                    (let ((_$e83359_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass83327_ _key83357_))))
                      (if _$e83359_
                          ((lambda (_off83362_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj83328_
                                _off83362_
                                _val83356_))
                             (let ()
                               (declare (not safe))
                               (_lp83331_ _rest83355_)))
                           _$e83359_)
                          (error '"unknown slot"
                                 'class:
                                 _klass83327_
                                 'slot:
                                 _key83357_))))))
            (if (let () (declare (not safe)) (##pair? _rest8333483344_))
                (let ((_hd8333983367_
                       (let () (declare (not safe)) (##car _rest8333483344_)))
                      (_tl8334083369_
                       (let () (declare (not safe)) (##cdr _rest8333483344_))))
                  (let ((_key83372_ _hd8333983367_))
                    (if (let () (declare (not safe)) (##pair? _tl8334083369_))
                        (let ((_hd8334183374_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8334083369_)))
                              (_tl8334283376_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8334083369_))))
                          (let* ((_val83379_ _hd8334183374_)
                                 (_rest83381_ _tl8334283376_))
                            (declare (not safe))
                            (_K8333883364_ _rest83381_ _val83379_ _key83372_)))
                        (let () (declare (not safe)) (_else8333683352_)))))
                (let () (declare (not safe)) (_else8333683352_)))))))
    (define constructor-init!
      (lambda (_klass83322_ _kons-id83323_ _obj83324_ . _args83325_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass83322_
           _kons-id83323_
           _obj83324_
           _args83325_))))
    (define __constructor-init!
      (lambda (_klass83312_ _kons-id83313_ _obj83314_ _args83315_)
        (let ((_$e83317_
               (let ()
                 (declare (not safe))
                 (__find-method _klass83312_ _kons-id83313_))))
          (if _$e83317_
              ((lambda (_kons83320_)
                 (apply _kons83320_ _obj83314_ _args83315_)
                 _obj83314_)
               _$e83317_)
              (error '"missing constructor"
                     'class:
                     _klass83312_
                     'method:
                     _kons-id83313_)))))
    (define struct-copy
      (lambda (_struct83310_)
        (if (let () (declare (not safe)) (##structure? _struct83310_))
            '#!void
            (error '"not a structure" _struct83310_))
        (let () (declare (not safe)) (##structure-copy _struct83310_))))
    (define struct->list
      (lambda (_obj83308_)
        (if (let () (declare (not safe)) (object? _obj83308_))
            (let () (declare (not safe)) (##vector->list _obj83308_))
            (error '"not an object" _obj83308_))))
    (define class->list
      (lambda (_obj83295_)
        (if (let () (declare (not safe)) (object? _obj83295_))
            (let ((_klass83297_
                   (let () (declare (not safe)) (object-type _obj83295_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass83297_))
                  (let ((_all-slots83299_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-all-slots _klass83297_))))
                    (let _loop83301_ ((_index83303_
                                       (let ((__tmp88696
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _all-slots83299_))))
                                         (declare (not safe))
                                         (##fx- __tmp88696 '1)))
                                      (_plist83304_ '()))
                      (if (let () (declare (not safe)) (##fx< _index83303_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass83297_ _plist83304_))
                          (let ((_slot83306_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _all-slots83299_
                                    _index83303_))))
                            (let ((__tmp88695
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index83303_ '1)))
                                  (__tmp88691
                                   (let ((__tmp88694
                                          (symbol->keyword _slot83306_))
                                         (__tmp88692
                                          (let ((__tmp88693
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj83295_
                                                    _index83303_))))
                                            (declare (not safe))
                                            (cons __tmp88693 _plist83304_))))
                                     (declare (not safe))
                                     (cons __tmp88694 __tmp88692))))
                              (declare (not safe))
                              (_loop83301_ __tmp88695 __tmp88691))))))
                  (error '"not a class type"
                         'object:
                         _obj83295_
                         'class:
                         _klass83297_)))
            (error '"not an object" _obj83295_))))
    (define call-method
      (lambda (_obj83286_ _id83287_ . _args83288_)
        (let ((_$e83290_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83286_ _id83287_))))
          (if _$e83290_
              ((lambda (_method83293_)
                 (apply _method83293_ _obj83286_ _args83288_))
               _$e83290_)
              (error '"cannot find method"
                     'object:
                     _obj83286_
                     'method:
                     _id83287_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj83283_ _id83284_)
        (if (let () (declare (not safe)) (object? _obj83283_))
            (let ((__tmp88697
                   (let () (declare (not safe)) (object-type _obj83283_))))
              (declare (not safe))
              (find-method __tmp88697 _id83284_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj83277_ _id83278_)
        (let ((_$e83280_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83277_ _id83278_))))
          (if _$e83280_
              _$e83280_
              (error '"missing method"
                     'object:
                     _obj83277_
                     'method:
                     _id83278_)))))
    (define bound-method-ref
      (lambda (_obj83267_ _id83268_)
        (let ((_$e83270_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83267_ _id83268_))))
          (if _$e83270_
              ((lambda (_method83273_)
                 (lambda _args83275_
                   (apply _method83273_ _obj83267_ _args83275_)))
               _$e83270_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj83260_ _id83261_)
        (let ((_method83263_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj83260_ _id83261_))))
          (lambda _args83265_ (apply _method83263_ _obj83260_ _args83265_)))))
    (define find-method
      (lambda (_klass83257_ _id83258_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83257_))
            (let ()
              (declare (not safe))
              (__find-method _klass83257_ _id83258_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass83257_ _id83258_)))))
    (define __find-method
      (lambda (_klass83251_ _id83252_)
        (let ((_$e83254_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass83251_ _id83252_))))
          (if _$e83254_
              _$e83254_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83251_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass83251_ _id83252_)))))))
    (define class-find-method
      (lambda (_klass83248_ _id83249_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83248_))
            (let ()
              (declare (not safe))
              (__find-method _klass83248_ _id83249_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins83241_ _id83242_)
        (let ((__tmp88698
               (lambda (_g8324383245_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8324383245_ _id83242_)))))
          (declare (not safe))
          (ormap1 __tmp88698 _mixins83241_))))
    (define builtin-find-method
      (lambda (_klass83235_ _id83236_)
        (if (let () (declare (not safe)) (##type? _klass83235_))
            (let ((_$e83238_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass83235_ _id83236_))))
              (if _$e83238_
                  _$e83238_
                  (let ((__tmp88699
                         (let ()
                           (declare (not safe))
                           (##type-super _klass83235_))))
                    (declare (not safe))
                    (builtin-find-method __tmp88699 _id83236_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass83227_ _id83228_)
        (let ((_$e83230_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass83227_))))
          (if _$e83230_
              ((lambda (_ht83233_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht83233_ _id83228_ '#f)))
               _$e83230_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass83224_ _id83225_)
        (let ((__tmp88700
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass83224_))))
          (declare (not safe))
          (mixin-find-method __tmp88700 _id83225_))))
    (define builtin-method-ref
      (lambda (_klass83216_ _id83217_)
        (let ((_$e83219_
               (let ((__tmp88701
                      (let () (declare (not safe)) (##type-id _klass83216_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp88701 '#f))))
          (if _$e83219_
              ((lambda (_mtab83222_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab83222_ _id83217_ '#f)))
               _$e83219_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass83182_ _id83183_ _proc83184_ _rebind?83185_)
        (letrec ((_bind!83187_
                  (lambda (_ht83200_)
                    (if (and (let () (declare (not safe)) (not _rebind?83185_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht83200_ _id83183_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass83182_
                               'method:
                               _id83183_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht83200_ _id83183_ _proc83184_))))))
          (if (let () (declare (not safe)) (procedure? _proc83184_))
              '#!void
              (error '"bad method; expected procedure" _proc83184_))
          (if (let () (declare (not safe)) (type-descriptor? _klass83182_))
              (let ((_ht83189_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass83182_))))
                (if _ht83189_
                    (let () (declare (not safe)) (_bind!83187_ _ht83189_))
                    (let ((_ht83191_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass83182_ _ht83191_))
                      (let () (declare (not safe)) (_bind!83187_ _ht83191_)))))
              (if (let () (declare (not safe)) (##type? _klass83182_))
                  (let ((_ht83198_
                         (let ((_$e83193_
                                (let ((__tmp88702
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass83182_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp88702
                                   '#f))))
                           (if _$e83193_
                               _$e83193_
                               (let ((_ht83196_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp88703
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass83182_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp88703
                                    _ht83196_))
                                 _ht83196_)))))
                    (declare (not safe))
                    (_bind!83187_ _ht83198_))
                  (error '"bad class; expected type-descriptor or builtin type"
                         _klass83182_))))))
    (define bind-method!__0
      (lambda (_klass83205_ _id83206_ _proc83207_)
        (let ((_rebind?83209_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass83205_
           _id83206_
           _proc83207_
           _rebind?83209_))))
    (define bind-method!
      (lambda _g88705_
        (let ((_g88704_ (let () (declare (not safe)) (##length _g88705_))))
          (cond ((let () (declare (not safe)) (##fx= _g88704_ 3))
                 (apply (lambda (_klass83205_ _id83206_ _proc83207_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass83205_
                             _id83206_
                             _proc83207_)))
                        _g88705_))
                ((let () (declare (not safe)) (##fx= _g88704_ 4))
                 (apply (lambda (_klass83211_
                                 _id83212_
                                 _proc83213_
                                 _rebind?83214_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass83211_
                             _id83212_
                             _proc83213_
                             _rebind?83214_)))
                        _g88705_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g88705_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc83178_ _specializer83179_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc83178_ _specializer83179_))))
    (define seal-class!
      (lambda (_klass83145_)
        (letrec ((_collect-methods!83147_
                  (lambda (_mtab83163_)
                    (letrec ((_merge!83165_
                              (lambda (_tab83173_)
                                (let ((__tmp88706
                                       (lambda (_id83175_ _proc83176_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab83163_
                                            _id83175_
                                            _proc83176_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp88706 _tab83173_))))
                             (_collect-direct-methods!83166_
                              (lambda (_klass83168_)
                                (let ((_$e83170_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass83168_))))
                                  (if _$e83170_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!83165_ _$e83170_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!83166_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass83145_))))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83145_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83145_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (type-final? _klass83145_))
                        '#!void
                        (error '"cannot seal non-final class" _klass83145_))
                    (let ((_vtab83149_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab83150_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!83147_ _mtab83150_))
                      (let ((__tmp88707
                             (lambda (_id83152_ _proc83153_)
                               (let ((_$e83155_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc83153_
                                         '#f))))
                                 (if _$e83155_
                                     ((lambda (_specializer83158_)
                                        (let ((_proc83160_
                                               (_specializer83158_
                                                _klass83145_))
                                              (_gid83161_
                                               (let ((__tmp88708
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass83145_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp88708
                                                  '"::["
                                                  _id83152_
                                                  '"]"))))
                                          (eval (let ((__tmp88709
                                                       (let ((__tmp88710
                                                              (let ((__tmp88711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp88712
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc83160_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp88712))))
                        (declare (not safe))
                        (cons __tmp88711 '()))))
                 (declare (not safe))
                 (cons _gid83161_ __tmp88710))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp88709)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab83149_
                                             _id83152_
                                             _proc83160_))))
                                      _$e83155_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab83149_
                                        _id83152_
                                        _proc83153_)))))))
                        (declare (not safe))
                        (table-for-each __tmp88707 _mtab83150_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set!
                         _klass83145_
                         _vtab83149_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass83145_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass83094_ _obj83095_ _id83096_)
        (let ((_klass83098_
               (let () (declare (not safe)) (object-type _obj83095_)))
              (_type-id83099_
               (let () (declare (not safe)) (##type-id _subklass83094_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83098_))
              (let _lp83101_ ((_rest83103_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass83098_))))
                (let* ((_rest8310483112_ _rest83103_)
                       (_else8310683120_ (lambda () '#f))
                       (_K8310883126_
                        (lambda (_rest83123_ _klass83124_)
                          (if (let ((__tmp88715
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass83124_))))
                                (declare (not safe))
                                (eq? _type-id83099_ __tmp88715))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method _rest83123_ _id83096_))
                              (let ()
                                (declare (not safe))
                                (_lp83101_ _rest83123_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8310483112_))
                      (let ((_hd8310983129_
                             (let ()
                               (declare (not safe))
                               (##car _rest8310483112_)))
                            (_tl8311083131_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8310483112_))))
                        (let* ((_klass83134_ _hd8310983129_)
                               (_rest83136_ _tl8311083131_))
                          (declare (not safe))
                          (_K8310883126_ _rest83136_ _klass83134_)))
                      (let () (declare (not safe)) (_else8310683120_)))))
              (if (let () (declare (not safe)) (##type? _klass83098_))
                  (let _lp83138_ ((_klass83140_ _klass83098_))
                    (if (let ((__tmp88714
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass83140_))))
                          (declare (not safe))
                          (eq? _type-id83099_ __tmp88714))
                        (let ((__tmp88713
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83140_))))
                          (declare (not safe))
                          (builtin-find-method __tmp88713 _id83096_))
                        (let ((_$e83142_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83140_))))
                          (if _$e83142_
                              (let ()
                                (declare (not safe))
                                (_lp83138_ _$e83142_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass83084_ _obj83085_ _id83086_ . _args83087_)
        (let ((_$e83089_
               (let ()
                 (declare (not safe))
                 (next-method _subklass83084_ _obj83085_ _id83086_))))
          (if _$e83089_
              ((lambda (_methodf83092_)
                 (apply _methodf83092_ _obj83085_ _args83087_))
               _$e83089_)
              (error '"cannot find next method"
                     'object:
                     _obj83085_
                     'method:
                     _id83086_)))))
    (define write-style (lambda (_we83082_) (macro-writeenv-style _we83082_)))
    (define write-object
      (lambda (_we83074_ _obj83075_)
        (let ((_$e83077_
               (let () (declare (not safe)) (method-ref _obj83075_ ':wr))))
          (if _$e83077_
              ((lambda (_method83080_) (_method83080_ _obj83075_ _we83074_))
               _$e83077_)
              (let ()
                (declare (not safe))
                (##default-wr _we83074_ _obj83075_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
