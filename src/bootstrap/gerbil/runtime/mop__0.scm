(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707772764)
  (begin
    (define type-flag-opaque '1)
    (define type-flag-extensible '2)
    (define type-flag-macros '4)
    (define type-flag-concrete '8)
    (define type-flag-id '16)
    (define class-type-flag-struct '1024)
    (define class-type-flag-sealed '2048)
    (define class::t.id 'gerbil#class::t)
    (define class::t
      (let* ((_slots84995_
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
             (_slot-vector84997_
              (list->vector
               (let () (declare (not safe)) (cons '##type _slots84995_))))
             (_slot-table85004_
              (let ((_slot-table84999_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (for-each
                 (lambda (_slot85001_ _field85002_)
                   (let ()
                     (declare (not safe))
                     (table-set! _slot-table84999_ _slot85001_ _field85002_))
                   (let ((__tmp89610 (symbol->keyword _slot85001_)))
                     (declare (not safe))
                     (table-set! _slot-table84999_ __tmp89610 _field85002_)))
                 _slots84995_
                 (let ((__tmp89611 (length _slots84995_)))
                   (declare (not safe))
                   (iota __tmp89611 '1)))
                _slot-table84999_))
             (_flags85006_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields85012_
              (list->vector
               (apply append
                      (map (lambda (_g8500785009_) (list _g8500785009_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots84995_ '5))))))
             (_properties85014_ '((direct-slots: ,@slots) (struct: . #t)))
             (_t85016_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags85006_
                 ##type-type
                 _fields85012_
                 '()
                 _slot-vector84997_
                 _slot-table85004_
                 _properties85014_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t85016_ _t85016_))
        _t85016_))
    (define class-type?
      (lambda (_obj84993_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj84993_ class::t.id))))
    (define class-type-id
      (lambda (_klass84991_)
        (if (let () (declare (not safe)) (class-type? _klass84991_))
            (let () (declare (not safe)) (##type-id _klass84991_))
            (error '"not a type descriptor" _klass84991_))))
    (define class-type=?
      (lambda (_x84988_ _y84989_)
        (let ((__tmp89613
               (let () (declare (not safe)) (class-type-id _x84988_)))
              (__tmp89612
               (let () (declare (not safe)) (class-type-id _y84989_))))
          (declare (not safe))
          (eq? __tmp89613 __tmp89612))))
    (define type-opaque?
      (lambda (_type84984_)
        (let* ((_type-flag-opaque84986_ type-flag-opaque)
               (__tmp89614
                (let ((__tmp89615
                       (let ()
                         (declare (not safe))
                         (##type-flags _type84984_))))
                  (declare (not safe))
                  (##fxand __tmp89615 _type-flag-opaque84986_))))
          (declare (not safe))
          (##fx= __tmp89614 _type-flag-opaque84986_))))
    (define type-extensible?
      (lambda (_type84980_)
        (let* ((_type-flag-extensible84982_ type-flag-extensible)
               (__tmp89616
                (let ((__tmp89617
                       (let ()
                         (declare (not safe))
                         (##type-flags _type84980_))))
                  (declare (not safe))
                  (##fxand __tmp89617 _type-flag-extensible84982_))))
          (declare (not safe))
          (##fx= __tmp89616 _type-flag-extensible84982_))))
    (define class-type-final?
      (lambda (_type84976_)
        (let* ((_type-flag-extensible84978_ type-flag-extensible)
               (__tmp89618
                (let ((__tmp89619
                       (let ()
                         (declare (not safe))
                         (##type-flags _type84976_))))
                  (declare (not safe))
                  (##fxand __tmp89619 _type-flag-extensible84978_))))
          (declare (not safe))
          (##fx= __tmp89618 '0))))
    (define class-type-struct?
      (lambda (_klass84972_)
        (let* ((_class-type-flag-struct84974_ class-type-flag-struct)
               (__tmp89620
                (let ((__tmp89621
                       (let ()
                         (declare (not safe))
                         (##type-flags _klass84972_))))
                  (declare (not safe))
                  (##fxand __tmp89621 _class-type-flag-struct84974_))))
          (declare (not safe))
          (##fx= __tmp89620 _class-type-flag-struct84974_))))
    (define class-type-sealed?
      (lambda (_klass84970_)
        (let ((__tmp89622
               (let ((__tmp89623
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84970_))))
                 (declare (not safe))
                 (##fxand __tmp89623 class-type-flag-sealed))))
          (declare (not safe))
          (##fxpositive? __tmp89622))))
    (define properties-form
      (lambda (_properties84936_)
        (map (lambda (_e8493784939_)
               (let* ((_g8494184948_ _e8493784939_)
                      (_E8494384952_
                       (lambda () (error '"No clause matching" _g8494184948_)))
                      (_K8494484958_
                       (lambda (_val84955_ _key84956_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key84956_ 'direct-supers:))
                             (let ((__tmp89624 (map class-type-id _val84955_)))
                               (declare (not safe))
                               (cons _key84956_ __tmp89624))
                             (let ()
                               (declare (not safe))
                               (cons _key84956_ _val84955_))))))
                 (if (let () (declare (not safe)) (##pair? _g8494184948_))
                     (let ((_hd8494584961_
                            (let ()
                              (declare (not safe))
                              (##car _g8494184948_)))
                           (_tl8494684963_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8494184948_))))
                       (let* ((_key84966_ _hd8494584961_)
                              (_val84968_ _tl8494684963_))
                         (declare (not safe))
                         (_K8494484958_ _val84968_ _key84966_)))
                     (let () (declare (not safe)) (_E8494384952_)))))
             _properties84936_)))
    (define make-class-type-descriptor
      (lambda (_type-id84843_
               _type-name84844_
               _type-super84845_
               _precedence-list84846_
               _slot-vector84847_
               _properties84848_
               _constructor84849_
               _slot-table84850_
               _methods84851_)
        (letrec ((_make-props!84853_
                  (lambda (_key84905_)
                    (letrec* ((_ht84907_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!84908_
                               (lambda (_ht84929_ _slots84930_)
                                 (for-each
                                  (lambda (_g8493184933_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht84929_
                                       _g8493184933_
                                       '#t)))
                                  _slots84930_)))
                              (_put-alist!84909_
                               (lambda (_ht84918_ _key84919_ _alist84920_)
                                 (let ((_$e84922_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key84919_ _alist84920_))))
                                   (if _$e84922_
                                       ((lambda (_g8492484926_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!84908_
                                             _ht84918_
                                             _g8492484926_)))
                                        _$e84922_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!84909_
                         _ht84907_
                         _key84905_
                         _properties84848_))
                      (for-each
                       (lambda (_mixin84911_)
                         (let ((_alist84913_
                                (let ()
                                  (declare (not safe))
                                  (class-type-properties _mixin84911_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist84913_))
                                   (let ((__tmp89626
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key84905_
                                                     _alist84913_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp89626)))
                               (let ((__tmp89625
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin84911_))))
                                 (declare (not safe))
                                 (_put-slots!84908_ _ht84907_ __tmp89625))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!84909_
                                  _ht84907_
                                  _key84905_
                                  _alist84913_)))))
                       _precedence-list84846_)
                      _ht84907_))))
          (let* ((_transparent?84855_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties84848_)))
                 (_all-slots-printable?84860_
                  (let ((_$e84857_ _transparent?84855_))
                    (if _$e84857_
                        _$e84857_
                        (let ((__tmp89627
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties84848_))))
                          (declare (not safe))
                          (eq? '#t __tmp89627)))))
                 (_printable84862_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?84860_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84853_ 'print:))
                      '#f))
                 (_all-slots-equalable?84867_
                  (let ((_$e84864_ _transparent?84855_))
                    (if _$e84864_
                        _$e84864_
                        (let ((__tmp89628
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties84848_))))
                          (declare (not safe))
                          (eq? '#t __tmp89628)))))
                 (_equalable84869_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?84867_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84853_ 'equal:))
                      '#f))
                 (_first-new-field84871_
                  (if (let ()
                        (declare (not safe))
                        (class-type? _type-super84845_))
                      (let ((__tmp89629
                             (let ()
                               (declare (not safe))
                               (class-type-slot-vector _type-super84845_))))
                        (declare (not safe))
                        (##vector-length __tmp89629))
                      '1))
                 (_field-info-length84873_
                  (let ((__tmp89630
                         (let ((__tmp89631
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector84847_))))
                           (declare (not safe))
                           (##fx- __tmp89631 _first-new-field84871_))))
                    (declare (not safe))
                    (##fx* '3 __tmp89630)))
                 (_field-info84875_ (make-vector _field-info-length84873_ '#f))
                 (_struct?84877_
                  (let ()
                    (declare (not safe))
                    (assgetq 'struct: _properties84848_)))
                 (_final?84879_
                  (let ()
                    (declare (not safe))
                    (assgetq 'final: _properties84848_)))
                 (_opaque?84884_
                  (let ((_$e84881_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?84867_))))
                    (if _$e84881_
                        _$e84881_
                        (if _type-super84845_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super84845_))
                            '#f))))
                 (_type-flags84886_
                  (let ((__tmp89634 (if _final?84879_ '0 type-flag-extensible))
                        (__tmp89633 (if _opaque?84884_ type-flag-opaque '0))
                        (__tmp89632
                         (if _struct?84877_ class-type-flag-struct '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp89634
                             __tmp89633
                             __tmp89632))))
            (let _loop84889_ ((_i84891_ _first-new-field84871_) (_j84892_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j84892_ _field-info-length84873_))
                  (let* ((_slot84894_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector84847_ _i84891_)))
                         (_flags84902_
                          (if _transparent?84855_
                              '0
                              (let ((__tmp89636
                                     (if (or _all-slots-printable?84860_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable84862_
                                                _slot84894_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp89635
                                     (if (or _all-slots-equalable?84867_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable84869_
                                                _slot84894_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp89636 __tmp89635)))))
                    (vector-set! _field-info84875_ _j84892_ _slot84894_)
                    (vector-set!
                     _field-info84875_
                     (let () (declare (not safe)) (##fx+ _j84892_ '1))
                     _flags84902_)
                    (let ((__tmp89638
                           (let () (declare (not safe)) (##fx+ _i84891_ '1)))
                          (__tmp89637
                           (let () (declare (not safe)) (##fx+ _j84892_ '3))))
                      (declare (not safe))
                      (_loop84889_ __tmp89638 __tmp89637)))
                  '#!void))
            (let ()
              (declare (not safe))
              (##structure
               class::t
               _type-id84843_
               _type-name84844_
               _type-flags84886_
               _type-super84845_
               _field-info84875_
               _precedence-list84846_
               _slot-vector84847_
               _slot-table84850_
               _properties84848_
               _constructor84849_
               _methods84851_))))))
    (define class-type-precedence-list
      (lambda (_klass84841_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84841_
           '6
           class::t
           class-type-precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass84839_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84839_ '7 class::t class-type-slot-vector))))
    (define class-type-slot-table
      (lambda (_klass84837_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84837_ '8 class::t class-type-slot-table))))
    (define class-type-properties
      (lambda (_klass84835_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84835_ '9 class::t class-type-properties))))
    (define class-type-constructor
      (lambda (_klass84833_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84833_ '10 class::t class-type-constructor))))
    (define class-type-methods
      (lambda (_klass84831_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84831_ '11 class::t class-type-methods))))
    (define class-type-methods-set!
      (lambda (_klass84828_ _ht84829_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84828_
           _ht84829_
           '11
           class::t
           class-type-methods-set!))))
    (define class-type-slot-list
      (lambda (_klass84826_)
        (cdr (vector->list
              (let ()
                (declare (not safe))
                (class-type-slot-vector _klass84826_))))))
    (define class-type-fields
      (lambda (_klass84824_)
        (let ((__tmp89639
               (let ((__tmp89640
                      (let ()
                        (declare (not safe))
                        (class-type-slot-vector _klass84824_))))
                 (declare (not safe))
                 (##vector-length __tmp89640))))
          (declare (not safe))
          (##fx- __tmp89639 '1))))
    (define class-type-seal!
      (lambda (_klass84822_)
        (let ((__tmp89641
               (let ((__tmp89642
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84822_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp89642))))
          (declare (not safe))
          (##structure-set!
           _klass84822_
           __tmp89641
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct84813_ _maybe-super-struct84814_)
        (let ((_maybe-super-struct-id84816_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct84814_))))
          (let _lp84818_ ((_super-struct84820_ _maybe-sub-struct84813_))
            (if (let () (declare (not safe)) (not _super-struct84820_))
                '#f
                (if (let ((__tmp89644
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct84820_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id84816_ __tmp89644))
                    '#t
                    (let ((__tmp89643
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct84820_))))
                      (declare (not safe))
                      (_lp84818_ __tmp89643))))))))
    (define base-struct/1
      (lambda (_klass84811_)
        (if (let () (declare (not safe)) (class-type? _klass84811_))
            (if (let () (declare (not safe)) (class-type-struct? _klass84811_))
                _klass84811_
                (let () (declare (not safe)) (##type-super _klass84811_)))
            (if (let () (declare (not safe)) (not _klass84811_))
                '#f
                (error '"not a class or false" _klass84811_)))))
    (define base-struct/2
      (lambda (_klass184799_ _klass284800_)
        (let ((_s184802_
               (let () (declare (not safe)) (base-struct/1 _klass184799_)))
              (_s284803_
               (let () (declare (not safe)) (base-struct/1 _klass284800_))))
          (if (or (let () (declare (not safe)) (not _s184802_))
                  (and _s284803_
                       (let ()
                         (declare (not safe))
                         (substruct? _s184802_ _s284803_))))
              _s284803_
              (if (or (let () (declare (not safe)) (not _s284803_))
                      (and _s184802_
                           (let ()
                             (declare (not safe))
                             (substruct? _s284803_ _s184802_))))
                  _s184802_
                  (error '"bad mixin: incompatible struct bases"
                         _klass184799_
                         _klass284800_
                         _s184802_
                         _s284803_))))))
    (define base-struct/list
      (lambda (_all-supers84683_)
        (let* ((_all-supers8468484709_ _all-supers84683_)
               (_E8468984713_
                (lambda ()
                  (error '"No clause matching" _all-supers8468484709_))))
          (let ((_K8470784796_ (lambda () '#f))
                (_K8470484782_
                 (lambda (_x84780_)
                   (let () (declare (not safe)) (base-struct/1 _x84780_))))
                (_K8469984759_
                 (lambda (_y84756_ _x84757_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x84757_ _y84756_))))
                (_K8469084720_
                 (lambda (_y84717_ _x84718_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x84718_ _y84717_)))))
            (let* ((___match8960789608_
                    (lambda (_hd8469184723_ _tl8469284725_)
                      (let ((_x84728_ _hd8469184723_))
                        (letrec ((_splice-rest8469484730_
                                  (lambda (_rest8469884737_ _y84739_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8469884737_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8469084720_ _y84739_ _x84728_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8468984713_)))))
                                 (_splice-try8469684732_
                                  (lambda (_hd8469784741_
                                           _rest8469884743_
                                           _y8469384744_)
                                    (let ((_y84747_ _hd8469784741_))
                                      (let ((__tmp89646
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8469884743_)))
                                            (__tmp89645
                                             (let ()
                                               (declare (not safe))
                                               (cons _y84747_ _y8469384744_))))
                                        (declare (not safe))
                                        (_splice-loop8469584734_
                                         __tmp89646
                                         __tmp89645)))))
                                 (_splice-loop8469584734_
                                  (lambda (_rest8469884749_ _y8469384750_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8469884749_))
                                        (let ((__tmp89648
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8469884749_))))
                                          (declare (not safe))
                                          (_splice-try8469684732_
                                           __tmp89648
                                           _rest8469884749_
                                           _y8469384750_))
                                        (let ((__tmp89647
                                               (reverse _y8469384750_)))
                                          (declare (not safe))
                                          (_splice-rest8469484730_
                                           _rest8469884749_
                                           __tmp89647))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8469584734_ _tl8469284725_ '()))))))
                   (_try-match8468684792_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8468484709_))
                          (let ((_tl8470684787_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8468484709_)))
                                (_hd8470584785_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8468484709_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8470684787_))
                                (let ((_x84790_ _hd8470584785_))
                                  (declare (not safe))
                                  (base-struct/1 _x84790_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8470684787_))
                                    (let ((_tl8470384771_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8470684787_)))
                                          (_hd8470284769_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8470684787_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8470384771_))
                                          (let ((_x84767_ _hd8470584785_)
                                                (_y84774_ _hd8470284769_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8469984759_
                                               _y84774_
                                               _x84767_)))
                                          (___match8960789608_
                                           _hd8470584785_
                                           _tl8470684787_)))
                                    (___match8960789608_
                                     _hd8470584785_
                                     _tl8470684787_))))
                          (let () (declare (not safe)) (_E8468984713_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8468484709_))
                  (let () (declare (not safe)) (_K8470784796_))
                  (let () (declare (not safe)) (_try-match8468684792_))))))))
    (define base-struct
      (lambda _all-supers84681_
        (let () (declare (not safe)) (base-struct/list _all-supers84681_))))
    (define find-super-constructor
      (lambda (_super84633_)
        (let _lp84635_ ((_rest84637_ _super84633_) (_constructor84638_ '#f))
          (let* ((_rest8463984647_ _rest84637_)
                 (_else8464184655_ (lambda () _constructor84638_))
                 (_K8464384669_
                  (lambda (_rest84658_ _hd84659_)
                    (let ((_$e84661_
                           (let ()
                             (declare (not safe))
                             (class-type-constructor _hd84659_))))
                      (if _$e84661_
                          ((lambda (_xconstructor84664_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor84638_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor84638_
                                            _xconstructor84664_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp84635_ _rest84658_ _xconstructor84664_))
                                 (error '"conflicting implicit constructors"
                                        _constructor84638_
                                        _xconstructor84664_)))
                           _$e84661_)
                          (let ()
                            (declare (not safe))
                            (_lp84635_ _rest84658_ _constructor84638_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8463984647_))
                (let ((_hd8464484672_
                       (let () (declare (not safe)) (##car _rest8463984647_)))
                      (_tl8464584674_
                       (let () (declare (not safe)) (##cdr _rest8463984647_))))
                  (let* ((_hd84677_ _hd8464484672_)
                         (_rest84679_ _tl8464584674_))
                    (declare (not safe))
                    (_K8464384669_ _rest84679_ _hd84677_)))
                (let () (declare (not safe)) (_else8464184655_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list84609_ _direct-slots84610_)
        (let* ((_next-slot84612_ '1)
               (_slot-table84614_
                (let () (declare (not safe)) (make-table 'test: eq?)))
               (_r-slots84616_ '(__class))
               (_process-slot84620_
                (lambda (_slot84618_)
                  (if (let () (declare (not safe)) (symbol? _slot84618_))
                      '#!void
                      (error '"invalid slot name" _slot84618_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table84614_ _slot84618_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table84614_
                           _slot84618_
                           _next-slot84612_))
                        (let ((__tmp89649 (symbol->keyword _slot84618_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table84614_
                           __tmp89649
                           _next-slot84612_))
                        (set! _r-slots84616_
                              (let ()
                                (declare (not safe))
                                (cons _slot84618_ _r-slots84616_)))
                        (set! _next-slot84612_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot84612_ '1)))))))
               (_process-slots84626_
                (lambda (_g8462184623_)
                  (for-each _process-slot84620_ _g8462184623_))))
          (for-each
           (lambda (_mixin84629_)
             (let ((__tmp89650
                    (let ((__tmp89651
                           (let ()
                             (declare (not safe))
                             (class-type-properties _mixin84629_))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp89651 '()))))
               (declare (not safe))
               (_process-slots84626_ __tmp89650)))
           (reverse _class-precedence-list84609_))
          (let ()
            (declare (not safe))
            (_process-slots84626_ _direct-slots84610_))
          (let ((_slot-vector84631_ (list->vector (reverse _r-slots84616_))))
            (values _slot-vector84631_ _slot-table84614_)))))
    (define make-class-type
      (lambda (_id84571_
               _name84572_
               _direct-supers84573_
               _direct-slots84574_
               _properties84575_
               _constructor84576_)
        (let ((_$e84581_
               (let ((__tmp89652
                      (lambda (_$obj84578_)
                        (let ((__tmp89653
                               (let ()
                                 (declare (not safe))
                                 (class-type? _$obj84578_))))
                          (declare (not safe))
                          (not __tmp89653)))))
                 (declare (not safe))
                 (find __tmp89652 _direct-supers84573_))))
          (if _$e84581_
              ((lambda (_g8458384585_)
                 (error '"Illegal super class; not a class descriptor"
                        _g8458384585_))
               _$e84581_)
              (let ((_$e84588_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers84573_))))
                (if _$e84588_
                    ((lambda (_g8459084592_)
                       (error '"Cannot extend final class" _g8459084592_))
                     _$e84588_)
                    '#!void))))
        (let ((_g89654_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers84573_))))
          (begin
            (let ((_g89655_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g89654_) (##vector-length _g89654_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g89655_ 2)))
                  (error "Context expects 2 values" _g89655_)))
            (let ((_precedence-list84595_
                   (let () (declare (not safe)) (##vector-ref _g89654_ 0)))
                  (_struct-super84596_
                   (let () (declare (not safe)) (##vector-ref _g89654_ 1))))
              (let ((_g89656_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list84595_
                        _direct-slots84574_))))
                (begin
                  (let ((_g89657_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g89656_)
                               (##vector-length _g89656_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g89657_ 2)))
                        (error "Context expects 2 values" _g89657_)))
                  (let ((_slot-vector84598_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89656_ 0)))
                        (_slot-table84599_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89656_ 1))))
                    (let* ((_properties84601_
                            (let ((__tmp89660
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots84574_)))
                                  (__tmp89658
                                   (let ((__tmp89659
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers84573_))))
                                     (declare (not safe))
                                     (cons __tmp89659 _properties84575_))))
                              (declare (not safe))
                              (cons __tmp89660 __tmp89658)))
                           (_constructor*84606_
                            (let ((_$e84603_ _constructor84576_))
                              (if _$e84603_
                                  _$e84603_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers84573_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id84571_
                         _name84572_
                         _struct-super84596_
                         _precedence-list84595_
                         _slot-vector84598_
                         _properties84601_
                         _constructor*84606_
                         _slot-table84599_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass84569_)
        (let ((__tmp89661
               (let ()
                 (declare (not safe))
                 (class-type-precedence-list _klass84569_))))
          (declare (not safe))
          (cons _klass84569_ __tmp89661))))
    (define compute-precedence-list
      (lambda (_direct-supers84567_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _direct-supers84567_))))
    (define make-class-predicate
      (lambda (_klass84551_)
        (let ((_tid84553_
               (let () (declare (not safe)) (##type-id _klass84551_))))
          (if (let () (declare (not safe)) (class-type-final? _klass84551_))
              (lambda (_g8455484556_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8455484556_ _tid84553_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass84551_))
                  (lambda (_g8455884560_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g8455884560_ _tid84553_)))
                  (lambda (_g8456284564_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass84551_ _g8456284564_))))))))
    (define if-class-slot-field
      (lambda (_klass84540_
               _slot84541_
               _if-final84542_
               _if-struct84543_
               _if-struct-field84544_
               _if-class-slot84545_)
        (let ((_field84547_
               (let ((__tmp89662
                      (let ()
                        (declare (not safe))
                        (class-type-slot-table _klass84540_))))
                 (declare (not safe))
                 (table-ref __tmp89662 _slot84541_ '#f))))
          (if (let () (declare (not safe)) (not _field84547_))
              (error '"unknown slot" 'class: _klass84540_ 'slot: _slot84541_)
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass84540_))
                  (_if-final84542_ _klass84540_ _slot84541_ _field84547_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass84540_))
                      (_if-struct84543_ _klass84540_ _slot84541_ _field84547_)
                      (if (let ((_strukt84549_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass84540_))))
                            (and (let ()
                                   (declare (not safe))
                                   (class-type? _strukt84549_))
                                 (let ((__tmp89663
                                        (let ((__tmp89664
                                               (let ()
                                                 (declare (not safe))
                                                 (class-type-slot-vector
                                                  _strukt84549_))))
                                          (declare (not safe))
                                          (##vector-length __tmp89664))))
                                   (declare (not safe))
                                   (##fx< _field84547_ __tmp89663))))
                          (_if-struct-field84544_
                           _klass84540_
                           _slot84541_
                           _field84547_)
                          (_if-class-slot84545_
                           _klass84540_
                           _slot84541_
                           _field84547_))))))))
    (define make-class-slot-accessor
      (lambda (_klass84537_ _slot84538_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84537_
           _slot84538_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass84534_ _slot84535_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84534_
           _slot84535_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass84531_ _slot84532_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84531_
           _slot84532_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass84528_ _slot84529_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84528_
           _slot84529_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object84512_ _class84513_ _slot84514_)
        (apply error
               '"not an instance"
               'object:
               _object84512_
               'class:
               _class84513_
               (if _slot84514_
                   (let ((__tmp89665
                          (let ()
                            (declare (not safe))
                            (cons _slot84514_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp89665))
                   '()))))
    (define not-an-instance__0
      (lambda (_object84519_ _class84520_)
        (let ((_slot84522_ '#f))
          (declare (not safe))
          (not-an-instance__% _object84519_ _class84520_ _slot84522_))))
    (define not-an-instance
      (lambda _g89667_
        (let ((_g89666_ (let () (declare (not safe)) (##length _g89667_))))
          (cond ((let () (declare (not safe)) (##fx= _g89666_ 2))
                 (apply (lambda (_object84519_ _class84520_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object84519_ _class84520_)))
                        _g89667_))
                ((let () (declare (not safe)) (##fx= _g89666_ 3))
                 (apply (lambda (_object84524_ _class84525_ _slot84526_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object84524_
                             _class84525_
                             _slot84526_)))
                        _g89667_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g89667_))))))
    (define make-final-slot-accessor
      (lambda (_klass84505_ _slot84506_ _field84507_)
        (lambda (_obj84509_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj84509_
             _field84507_
             _klass84505_
             _slot84506_)))))
    (define make-final-slot-mutator
      (lambda (_klass84498_ _slot84499_ _field84500_)
        (lambda (_obj84502_ _val84503_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj84502_
             _val84503_
             _field84500_
             _klass84498_
             _slot84499_)))))
    (define make-struct-slot-accessor
      (lambda (_klass84492_ _slot84493_ _field84494_)
        (lambda (_obj84496_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj84496_
             _field84494_
             _klass84492_
             _slot84493_)))))
    (define make-struct-slot-mutator
      (lambda (_klass84485_ _slot84486_ _field84487_)
        (lambda (_obj84489_ _val84490_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj84489_
             _val84490_
             _field84487_
             _klass84485_
             _slot84486_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass84479_ _slot84480_ _field84481_)
        (lambda (_obj84483_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj84483_
             _field84481_
             _klass84479_
             _slot84480_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass84472_ _slot84473_ _field84474_)
        (lambda (_obj84476_ _val84477_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj84476_
             _val84477_
             _field84474_
             _klass84472_
             _slot84473_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass84466_ _slot84467_ _field84468_)
        (lambda (_obj84470_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass84466_ _obj84470_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj84470_ _field84468_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84470_ _klass84466_ _slot84467_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass84459_ _slot84460_ _field84461_)
        (lambda (_obj84463_ _val84464_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass84459_ _obj84463_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84463_ _field84461_ _val84464_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84463_ _klass84459_ _slot84460_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass84453_ _slot84454_ _field84455_)
        (lambda (_obj84457_)
          (if (let ((__tmp89668
                     (let () (declare (not safe)) (##type-id _klass84453_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84457_ __tmp89668))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84457_ _field84455_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass84453_ _obj84457_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj84457_ _slot84454_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj84457_
                     _klass84453_
                     _slot84454_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass84446_ _slot84447_ _field84448_)
        (lambda (_obj84450_ _val84451_)
          (if (let ((__tmp89669
                     (let () (declare (not safe)) (##type-id _klass84446_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84450_ __tmp89669))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84450_ _field84448_ _val84451_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass84446_ _obj84450_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj84450_ _slot84447_ _val84451_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj84450_
                     _klass84446_
                     _slot84447_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass84440_ _slot84441_ _field84442_)
        (lambda (_obj84444_)
          (if (let ((__tmp89670
                     (let () (declare (not safe)) (##type-id _klass84440_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84444_ __tmp89670))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84444_ _field84442_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj84444_ _slot84441_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass84433_ _slot84434_ _field84435_)
        (lambda (_obj84437_ _val84438_)
          (if (let ((__tmp89671
                     (let () (declare (not safe)) (##type-id _klass84433_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84437_ __tmp89671))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84437_ _field84435_ _val84438_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj84437_ _slot84434_ _val84438_))))))
    (define class-slot-offset
      (lambda (_klass84430_ _slot84431_)
        (let ((__tmp89672
               (let ()
                 (declare (not safe))
                 (class-type-slot-table _klass84430_))))
          (declare (not safe))
          (table-ref __tmp89672 _slot84431_ '#f))))
    (define class-slot-ref
      (lambda (_klass84424_ _obj84425_ _slot84426_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass84424_ _obj84425_))
            (let ((_off84428_
                   (let ((__tmp89673
                          (let ()
                            (declare (not safe))
                            (object-type _obj84425_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89673 _slot84426_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj84425_
               _off84428_
               _klass84424_
               _slot84426_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj84425_ _klass84424_)))))
    (define class-slot-set!
      (lambda (_klass84417_ _obj84418_ _slot84419_ _val84420_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass84417_ _obj84418_))
            (let ((_off84422_
                   (let ((__tmp89674
                          (let ()
                            (declare (not safe))
                            (object-type _obj84418_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89674 _slot84419_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj84418_
               _val84420_
               _off84422_
               _klass84417_
               _slot84419_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj84418_ _klass84417_)))))
    (define unchecked-field-ref
      (lambda (_obj84414_ _off84415_)
        (let ((__tmp89675
               (let () (declare (not safe)) (##structure-type _obj84414_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj84414_ _off84415_ __tmp89675 '#f))))
    (define unchecked-field-set!
      (lambda (_obj84410_ _off84411_ _val84412_)
        (let ((__tmp89676
               (let () (declare (not safe)) (##structure-type _obj84410_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj84410_
           _val84412_
           _off84411_
           __tmp89676
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj84407_ _slot84408_)
        (let ((__tmp89677
               (let ((__tmp89678
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj84407_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89678 _slot84408_))))
          (declare (not safe))
          (unchecked-field-ref _obj84407_ __tmp89677))))
    (define unchecked-slot-set!
      (lambda (_obj84403_ _slot84404_ _val84405_)
        (let ((__tmp89679
               (let ((__tmp89680
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj84403_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89680 _slot84404_))))
          (declare (not safe))
          (unchecked-field-set! _obj84403_ __tmp89679 _val84405_))))
    (define slot-ref__%
      (lambda (_obj84379_ _slot84380_ _E84381_)
        (if (let () (declare (not safe)) (object? _obj84379_))
            (let* ((_klass84383_
                    (let () (declare (not safe)) (object-type _obj84379_)))
                   (_$e84386_
                    (if (let ()
                          (declare (not safe))
                          (class-type? _klass84383_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass84383_ _slot84380_))
                        '#f)))
              (if _$e84386_
                  ((lambda (_off84389_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj84379_ _off84389_)))
                   _$e84386_)
                  (_E84381_ _obj84379_ _slot84380_)))
            (_E84381_ _obj84379_ _slot84380_))))
    (define slot-ref__0
      (lambda (_obj84394_ _slot84395_)
        (let ((_E84397_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj84394_ _slot84395_ _E84397_))))
    (define slot-ref
      (lambda _g89682_
        (let ((_g89681_ (let () (declare (not safe)) (##length _g89682_))))
          (cond ((let () (declare (not safe)) (##fx= _g89681_ 2))
                 (apply (lambda (_obj84394_ _slot84395_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj84394_ _slot84395_)))
                        _g89682_))
                ((let () (declare (not safe)) (##fx= _g89681_ 3))
                 (apply (lambda (_obj84399_ _slot84400_ _E84401_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj84399_ _slot84400_ _E84401_)))
                        _g89682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g89682_))))))
    (define slot-set!__%
      (lambda (_obj84351_ _slot84352_ _val84353_ _E84354_)
        (if (let () (declare (not safe)) (object? _obj84351_))
            (let* ((_klass84356_
                    (let () (declare (not safe)) (object-type _obj84351_)))
                   (_$e84359_
                    (if (let ()
                          (declare (not safe))
                          (class-type? _klass84356_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass84356_ _slot84352_))
                        '#f)))
              (if _$e84359_
                  ((lambda (_off84362_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj84351_
                        _off84362_
                        _val84353_)))
                   _$e84359_)
                  (_E84354_ _obj84351_ _slot84352_)))
            (_E84354_ _obj84351_ _slot84352_))))
    (define slot-set!__0
      (lambda (_obj84367_ _slot84368_ _val84369_)
        (let ((_E84371_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj84367_ _slot84368_ _val84369_ _E84371_))))
    (define slot-set!
      (lambda _g89684_
        (let ((_g89683_ (let () (declare (not safe)) (##length _g89684_))))
          (cond ((let () (declare (not safe)) (##fx= _g89683_ 3))
                 (apply (lambda (_obj84367_ _slot84368_ _val84369_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj84367_ _slot84368_ _val84369_)))
                        _g89684_))
                ((let () (declare (not safe)) (##fx= _g89683_ 4))
                 (apply (lambda (_obj84373_ _slot84374_ _val84375_ _E84376_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj84373_
                             _slot84374_
                             _val84375_
                             _E84376_)))
                        _g89684_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g89684_))))))
    (define __slot-error
      (lambda (_obj84347_ _slot84348_)
        (error '"Cannot find slot" 'object: _obj84347_ 'slot: _slot84348_)))
    (define subclass?
      (lambda (_maybe-sub-class84337_ _maybe-super-class84338_)
        (let* ((_maybe-super-class-id84340_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class84338_)))
               (_$e84342_
                (let ((__tmp89685
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class84337_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id84340_ __tmp89685))))
          (if _$e84342_
              _$e84342_
              (let ((__tmp89687
                     (lambda (_super-class84345_)
                       (let ((__tmp89688
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class84345_))))
                         (declare (not safe))
                         (eq? __tmp89688 _maybe-super-class-id84340_))))
                    (__tmp89686
                     (let ()
                       (declare (not safe))
                       (class-type-precedence-list _maybe-sub-class84337_))))
                (declare (not safe))
                (ormap1 __tmp89687 __tmp89686))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass84334_ _obj84335_)
        (let ((__tmp89689
               (let () (declare (not safe)) (##type-id _klass84334_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj84335_ __tmp89689))))
    (define struct-instance?
      (lambda (_klass84331_ _obj84332_)
        (let ((__tmp89690
               (let () (declare (not safe)) (##type-id _klass84331_))))
          (declare (not safe))
          (##structure-instance-of? _obj84332_ __tmp89690))))
    (define class-instance?
      (lambda (_klass84326_ _obj84327_)
        (if (let () (declare (not safe)) (object? _obj84327_))
            (let ((_type84329_
                   (let () (declare (not safe)) (object-type _obj84327_))))
              (if (let () (declare (not safe)) (class-type? _type84329_))
                  (let ()
                    (declare (not safe))
                    (subclass? _type84329_ _klass84326_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass84321_ _k84322_)
        (let ((_obj84324_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass84321_ _k84322_))))
          (let () (declare (not safe)) (object-fill! _obj84324_ '#f))
          _obj84324_)))
    (define object-fill!
      (lambda (_obj84314_ _fill84315_)
        (let _loop84317_ ((_i84319_
                           (let ((__tmp89692
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj84314_))))
                             (declare (not safe))
                             (##fx- __tmp89692 '1))))
          (if (let () (declare (not safe)) (##fx> _i84319_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj84314_
                   _fill84315_
                   _i84319_
                   '#f
                   '#f))
                (let ((__tmp89691
                       (let () (declare (not safe)) (##fx- _i84319_ '1))))
                  (declare (not safe))
                  (_loop84317_ __tmp89691)))
              _obj84314_))))
    (define new-instance
      (lambda (_klass84312_)
        (let ((__obj89609
               (let ((__tmp89693
                      (let ((__tmp89694
                             (let ()
                               (declare (not safe))
                               (class-type-slot-vector _klass84312_))))
                        (declare (not safe))
                        (##vector-length __tmp89694))))
                 (declare (not safe))
                 (##make-structure _klass84312_ __tmp89693))))
          (let () (declare (not safe)) (object-fill! __obj89609 '#f))
          __obj89609)))
    (define make-instance
      (lambda (_klass84302_ . _args84303_)
        (let* ((_obj84305_
                (let () (declare (not safe)) (new-instance _klass84302_)))
               (_$e84307_
                (let ()
                  (declare (not safe))
                  (class-type-constructor _klass84302_))))
          (if _$e84307_
              ((lambda (_kons-id84310_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass84302_
                    _kons-id84310_
                    _obj84305_
                    _args84303_)))
               _$e84307_)
              (if (let ((__tmp89698
                         (let ()
                           (declare (not safe))
                           (class-type-struct? _klass84302_))))
                    (declare (not safe))
                    (not __tmp89698))
                  (let ()
                    (declare (not safe))
                    (__class-instance-init!
                     _klass84302_
                     _obj84305_
                     _args84303_))
                  (if (let ((__tmp89696
                             (let ((__tmp89697
                                    (let ()
                                      (declare (not safe))
                                      (##structure-length _obj84305_))))
                               (declare (not safe))
                               (##fx- __tmp89697 '1)))
                            (__tmp89695 (length _args84303_)))
                        (declare (not safe))
                        (##fx= __tmp89696 __tmp89695))
                      (apply ##structure _klass84302_ _args84303_)
                      (error '"arguments don't match object size"
                             'class:
                             _klass84302_
                             'slots:
                             (let ()
                               (declare (not safe))
                               (class-type-slot-list _klass84302_))
                             'args:
                             _args84303_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj84299_ . _args84300_)
        (if (let ((__tmp89700 (length _args84300_))
                  (__tmp89699
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj84299_))))
              (declare (not safe))
              (##fx< __tmp89700 __tmp89699))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj84299_ _args84300_))
            (error '"too many arguments for struct"
                   'object:
                   _obj84299_
                   'args:
                   _args84300_))))
    (define __struct-instance-init!
      (lambda (_obj84258_ _args84259_)
        (let _lp84261_ ((_k84263_ '1) (_rest84264_ _args84259_))
          (let* ((_rest8426584273_ _rest84264_)
                 (_else8426784281_ (lambda () _obj84258_))
                 (_K8426984287_
                  (lambda (_rest84284_ _hd84285_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj84258_ _k84263_ _hd84285_))
                    (let ((__tmp89701
                           (let () (declare (not safe)) (##fx+ _k84263_ '1))))
                      (declare (not safe))
                      (_lp84261_ __tmp89701 _rest84284_)))))
            (if (let () (declare (not safe)) (##pair? _rest8426584273_))
                (let ((_hd8427084290_
                       (let () (declare (not safe)) (##car _rest8426584273_)))
                      (_tl8427184292_
                       (let () (declare (not safe)) (##cdr _rest8426584273_))))
                  (let* ((_hd84295_ _hd8427084290_)
                         (_rest84297_ _tl8427184292_))
                    (declare (not safe))
                    (_K8426984287_ _rest84297_ _hd84295_)))
                (let () (declare (not safe)) (_else8426784281_)))))))
    (define class-instance-init!
      (lambda (_obj84255_ . _args84256_)
        (let ((__tmp89702
               (let () (declare (not safe)) (object-type _obj84255_))))
          (declare (not safe))
          (__class-instance-init! __tmp89702 _obj84255_ _args84256_))))
    (define __class-instance-init!
      (lambda (_klass84199_ _obj84200_ _args84201_)
        (let _lp84203_ ((_rest84205_ _args84201_))
          (let* ((_rest8420684216_ _rest84205_)
                 (_else8420884224_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest84205_))
                        _obj84200_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass84199_
                               'rest:
                               _rest84205_))))
                 (_K8421084236_
                  (lambda (_rest84227_ _val84228_ _key84229_)
                    (let ((_$e84231_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass84199_ _key84229_))))
                      (if _$e84231_
                          ((lambda (_off84234_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj84200_
                                _off84234_
                                _val84228_))
                             (let ()
                               (declare (not safe))
                               (_lp84203_ _rest84227_)))
                           _$e84231_)
                          (error '"unknown slot"
                                 'class:
                                 _klass84199_
                                 'slot:
                                 _key84229_))))))
            (if (let () (declare (not safe)) (##pair? _rest8420684216_))
                (let ((_hd8421184239_
                       (let () (declare (not safe)) (##car _rest8420684216_)))
                      (_tl8421284241_
                       (let () (declare (not safe)) (##cdr _rest8420684216_))))
                  (let ((_key84244_ _hd8421184239_))
                    (if (let () (declare (not safe)) (##pair? _tl8421284241_))
                        (let ((_hd8421384246_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8421284241_)))
                              (_tl8421484248_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8421284241_))))
                          (let* ((_val84251_ _hd8421384246_)
                                 (_rest84253_ _tl8421484248_))
                            (declare (not safe))
                            (_K8421084236_ _rest84253_ _val84251_ _key84244_)))
                        (let () (declare (not safe)) (_else8420884224_)))))
                (let () (declare (not safe)) (_else8420884224_)))))))
    (define constructor-init!
      (lambda (_klass84194_ _kons-id84195_ _obj84196_ . _args84197_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass84194_
           _kons-id84195_
           _obj84196_
           _args84197_))))
    (define __constructor-init!
      (lambda (_klass84184_ _kons-id84185_ _obj84186_ _args84187_)
        (let ((_$e84189_
               (let ()
                 (declare (not safe))
                 (__find-method _klass84184_ _kons-id84185_))))
          (if _$e84189_
              ((lambda (_kons84192_)
                 (apply _kons84192_ _obj84186_ _args84187_)
                 _obj84186_)
               _$e84189_)
              (error '"missing constructor"
                     'class:
                     _klass84184_
                     'method:
                     _kons-id84185_)))))
    (define struct-copy
      (lambda (_struct84182_)
        (if (let () (declare (not safe)) (##structure? _struct84182_))
            '#!void
            (error '"not a structure" _struct84182_))
        (let () (declare (not safe)) (##structure-copy _struct84182_))))
    (define struct->list
      (lambda (_obj84180_)
        (if (let () (declare (not safe)) (object? _obj84180_))
            (let () (declare (not safe)) (##vector->list _obj84180_))
            (error '"not an object" _obj84180_))))
    (define class->list
      (lambda (_obj84167_)
        (if (let () (declare (not safe)) (object? _obj84167_))
            (let ((_klass84169_
                   (let () (declare (not safe)) (object-type _obj84167_))))
              (if (let () (declare (not safe)) (class-type? _klass84169_))
                  (let ((_slot-vector84171_
                         (let ()
                           (declare (not safe))
                           (class-type-slot-vector _klass84169_))))
                    (let _loop84173_ ((_index84175_
                                       (let ((__tmp89708
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector84171_))))
                                         (declare (not safe))
                                         (##fx- __tmp89708 '1)))
                                      (_plist84176_ '()))
                      (if (let () (declare (not safe)) (##fx< _index84175_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass84169_ _plist84176_))
                          (let ((_slot84178_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector84171_
                                    _index84175_))))
                            (let ((__tmp89707
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index84175_ '1)))
                                  (__tmp89703
                                   (let ((__tmp89706
                                          (symbol->keyword _slot84178_))
                                         (__tmp89704
                                          (let ((__tmp89705
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj84167_
                                                    _index84175_))))
                                            (declare (not safe))
                                            (cons __tmp89705 _plist84176_))))
                                     (declare (not safe))
                                     (cons __tmp89706 __tmp89704))))
                              (declare (not safe))
                              (_loop84173_ __tmp89707 __tmp89703))))))
                  (error '"not a class type"
                         'object:
                         _obj84167_
                         'class:
                         _klass84169_)))
            (error '"not an object" _obj84167_))))
    (define call-method
      (lambda (_obj84158_ _id84159_ . _args84160_)
        (let ((_$e84162_
               (let ()
                 (declare (not safe))
                 (method-ref _obj84158_ _id84159_))))
          (if _$e84162_
              ((lambda (_method84165_)
                 (apply _method84165_ _obj84158_ _args84160_))
               _$e84162_)
              (error '"cannot find method"
                     'object:
                     _obj84158_
                     'method:
                     _id84159_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj84155_ _id84156_)
        (if (let () (declare (not safe)) (object? _obj84155_))
            (let ((__tmp89709
                   (let () (declare (not safe)) (object-type _obj84155_))))
              (declare (not safe))
              (find-method __tmp89709 _id84156_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj84149_ _id84150_)
        (let ((_$e84152_
               (let ()
                 (declare (not safe))
                 (method-ref _obj84149_ _id84150_))))
          (if _$e84152_
              _$e84152_
              (error '"missing method"
                     'object:
                     _obj84149_
                     'method:
                     _id84150_)))))
    (define bound-method-ref
      (lambda (_obj84139_ _id84140_)
        (let ((_$e84142_
               (let ()
                 (declare (not safe))
                 (method-ref _obj84139_ _id84140_))))
          (if _$e84142_
              ((lambda (_method84145_)
                 (lambda _args84147_
                   (apply _method84145_ _obj84139_ _args84147_)))
               _$e84142_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj84132_ _id84133_)
        (let ((_method84135_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj84132_ _id84133_))))
          (lambda _args84137_ (apply _method84135_ _obj84132_ _args84137_)))))
    (define find-method
      (lambda (_klass84129_ _id84130_)
        (if (let () (declare (not safe)) (class-type? _klass84129_))
            (let ()
              (declare (not safe))
              (__find-method _klass84129_ _id84130_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass84129_ _id84130_)))))
    (define __find-method
      (lambda (_klass84123_ _id84124_)
        (let ((_$e84126_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass84123_ _id84124_))))
          (if _$e84126_
              _$e84126_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass84123_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass84123_ _id84124_)))))))
    (define class-find-method
      (lambda (_klass84120_ _id84121_)
        (if (let () (declare (not safe)) (class-type? _klass84120_))
            (let ()
              (declare (not safe))
              (__find-method _klass84120_ _id84121_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins84113_ _id84114_)
        (let ((__tmp89710
               (lambda (_g8411584117_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8411584117_ _id84114_)))))
          (declare (not safe))
          (ormap1 __tmp89710 _mixins84113_))))
    (define builtin-find-method
      (lambda (_klass84107_ _id84108_)
        (if (let () (declare (not safe)) (##type? _klass84107_))
            (let ((_$e84110_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass84107_ _id84108_))))
              (if _$e84110_
                  _$e84110_
                  (let ((__tmp89711
                         (let ()
                           (declare (not safe))
                           (##type-super _klass84107_))))
                    (declare (not safe))
                    (builtin-find-method __tmp89711 _id84108_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass84099_ _id84100_)
        (let ((_$e84102_
               (let ()
                 (declare (not safe))
                 (class-type-methods _klass84099_))))
          (if _$e84102_
              ((lambda (_ht84105_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht84105_ _id84100_ '#f)))
               _$e84102_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass84096_ _id84097_)
        (let ((__tmp89712
               (let ()
                 (declare (not safe))
                 (class-type-precedence-list _klass84096_))))
          (declare (not safe))
          (mixin-find-method __tmp89712 _id84097_))))
    (define builtin-method-ref
      (lambda (_klass84088_ _id84089_)
        (let ((_$e84091_
               (let ((__tmp89713
                      (let () (declare (not safe)) (##type-id _klass84088_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp89713 '#f))))
          (if _$e84091_
              ((lambda (_mtab84094_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab84094_ _id84089_ '#f)))
               _$e84091_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass84054_ _id84055_ _proc84056_ _rebind?84057_)
        (letrec ((_bind!84059_
                  (lambda (_ht84072_)
                    (if (and (let () (declare (not safe)) (not _rebind?84057_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht84072_ _id84055_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass84054_
                               'method:
                               _id84055_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht84072_ _id84055_ _proc84056_))))))
          (if (let () (declare (not safe)) (procedure? _proc84056_))
              '#!void
              (error '"bad method; expected procedure" _proc84056_))
          (if (let () (declare (not safe)) (class-type? _klass84054_))
              (let ((_ht84061_
                     (let ()
                       (declare (not safe))
                       (class-type-methods _klass84054_))))
                (if _ht84061_
                    (let () (declare (not safe)) (_bind!84059_ _ht84061_))
                    (let ((_ht84063_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (class-type-methods-set! _klass84054_ _ht84063_))
                      (let () (declare (not safe)) (_bind!84059_ _ht84063_)))))
              (if (let () (declare (not safe)) (##type? _klass84054_))
                  (let ((_ht84070_
                         (let ((_$e84065_
                                (let ((__tmp89714
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass84054_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp89714
                                   '#f))))
                           (if _$e84065_
                               _$e84065_
                               (let ((_ht84068_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp89715
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass84054_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp89715
                                    _ht84068_))
                                 _ht84068_)))))
                    (declare (not safe))
                    (_bind!84059_ _ht84070_))
                  (error '"bad class; expected class or builtin type"
                         _klass84054_))))))
    (define bind-method!__0
      (lambda (_klass84077_ _id84078_ _proc84079_)
        (let ((_rebind?84081_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass84077_
           _id84078_
           _proc84079_
           _rebind?84081_))))
    (define bind-method!
      (lambda _g89717_
        (let ((_g89716_ (let () (declare (not safe)) (##length _g89717_))))
          (cond ((let () (declare (not safe)) (##fx= _g89716_ 3))
                 (apply (lambda (_klass84077_ _id84078_ _proc84079_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass84077_
                             _id84078_
                             _proc84079_)))
                        _g89717_))
                ((let () (declare (not safe)) (##fx= _g89716_ 4))
                 (apply (lambda (_klass84083_
                                 _id84084_
                                 _proc84085_
                                 _rebind?84086_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass84083_
                             _id84084_
                             _proc84085_
                             _rebind?84086_)))
                        _g89717_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g89717_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc84050_ _specializer84051_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc84050_ _specializer84051_))))
    (define seal-class!
      (lambda (_klass84017_)
        (letrec ((_collect-methods!84019_
                  (lambda (_mtab84035_)
                    (letrec ((_merge!84037_
                              (lambda (_tab84045_)
                                (let ((__tmp89718
                                       (lambda (_id84047_ _proc84048_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab84035_
                                            _id84047_
                                            _proc84048_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp89718 _tab84045_))))
                             (_collect-direct-methods!84038_
                              (lambda (_klass84040_)
                                (let ((_$e84042_
                                       (let ()
                                         (declare (not safe))
                                         (class-type-methods _klass84040_))))
                                  (if _$e84042_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!84037_ _$e84042_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!84038_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass84017_))))))))
          (if (let () (declare (not safe)) (class-type? _klass84017_))
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass84017_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (class-type-final? _klass84017_))
                        '#!void
                        (error '"cannot seal non-final class" _klass84017_))
                    (let ((_vtab84021_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab84022_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!84019_ _mtab84022_))
                      (let ((__tmp89719
                             (lambda (_id84024_ _proc84025_)
                               (let ((_$e84027_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc84025_
                                         '#f))))
                                 (if _$e84027_
                                     ((lambda (_specializer84030_)
                                        (let ((_proc84032_
                                               (_specializer84030_
                                                _klass84017_))
                                              (_gid84033_
                                               (let ((__tmp89720
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass84017_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp89720
                                                  '"::["
                                                  _id84024_
                                                  '"]"))))
                                          (eval (let ((__tmp89721
                                                       (let ((__tmp89722
                                                              (let ((__tmp89723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp89724
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc84032_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp89724))))
                        (declare (not safe))
                        (cons __tmp89723 '()))))
                 (declare (not safe))
                 (cons _gid84033_ __tmp89722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp89721)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab84021_
                                             _id84024_
                                             _proc84032_))))
                                      _$e84027_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab84021_
                                        _id84024_
                                        _proc84025_)))))))
                        (declare (not safe))
                        (table-for-each __tmp89719 _mtab84022_))
                      (let ()
                        (declare (not safe))
                        (class-type-methods-set! _klass84017_ _vtab84021_))
                      (let ()
                        (declare (not safe))
                        (class-type-seal! _klass84017_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass83966_ _obj83967_ _id83968_)
        (let ((_klass83970_
               (let () (declare (not safe)) (object-type _obj83967_)))
              (_type-id83971_
               (let () (declare (not safe)) (##type-id _subklass83966_))))
          (if (let () (declare (not safe)) (class-type? _klass83970_))
              (let _lp83973_ ((_rest83975_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass83970_))))
                (let* ((_rest8397683984_ _rest83975_)
                       (_else8397883992_ (lambda () '#f))
                       (_K8398083998_
                        (lambda (_rest83995_ _klass83996_)
                          (if (let ((__tmp89727
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass83996_))))
                                (declare (not safe))
                                (eq? _type-id83971_ __tmp89727))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method _rest83995_ _id83968_))
                              (let ()
                                (declare (not safe))
                                (_lp83973_ _rest83995_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8397683984_))
                      (let ((_hd8398184001_
                             (let ()
                               (declare (not safe))
                               (##car _rest8397683984_)))
                            (_tl8398284003_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8397683984_))))
                        (let* ((_klass84006_ _hd8398184001_)
                               (_rest84008_ _tl8398284003_))
                          (declare (not safe))
                          (_K8398083998_ _rest84008_ _klass84006_)))
                      (let () (declare (not safe)) (_else8397883992_)))))
              (if (let () (declare (not safe)) (##type? _klass83970_))
                  (let _lp84010_ ((_klass84012_ _klass83970_))
                    (if (let ((__tmp89726
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass84012_))))
                          (declare (not safe))
                          (eq? _type-id83971_ __tmp89726))
                        (let ((__tmp89725
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass84012_))))
                          (declare (not safe))
                          (builtin-find-method __tmp89725 _id83968_))
                        (let ((_$e84014_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass84012_))))
                          (if _$e84014_
                              (let ()
                                (declare (not safe))
                                (_lp84010_ _$e84014_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass83956_ _obj83957_ _id83958_ . _args83959_)
        (let ((_$e83961_
               (let ()
                 (declare (not safe))
                 (next-method _subklass83956_ _obj83957_ _id83958_))))
          (if _$e83961_
              ((lambda (_methodf83964_)
                 (apply _methodf83964_ _obj83957_ _args83959_))
               _$e83961_)
              (error '"cannot find next method"
                     'object:
                     _obj83957_
                     'method:
                     _id83958_)))))
    (define write-style (lambda (_we83954_) (macro-writeenv-style _we83954_)))
    (define write-object
      (lambda (_we83946_ _obj83947_)
        (let ((_$e83949_
               (let () (declare (not safe)) (method-ref _obj83947_ ':wr))))
          (if _$e83949_
              ((lambda (_method83952_) (_method83952_ _obj83947_ _we83946_))
               _$e83949_)
              (let ()
                (declare (not safe))
                (##default-wr _we83946_ _obj83947_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
