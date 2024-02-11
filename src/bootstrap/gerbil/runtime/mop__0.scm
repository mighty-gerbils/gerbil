(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707657568)
  (begin
    (define type-id
      (lambda (_klass84227_)
        (if (let () (declare (not safe)) (type-descriptor? _klass84227_))
            (let () (declare (not safe)) (##type-id _klass84227_))
            (if (let () (declare (not safe)) (not _klass84227_))
                '#f
                (error '"not a type descriptor" _klass84227_)))))
    (define type=?
      (lambda (_x84224_ _y84225_)
        (let ((__tmp88721 (let () (declare (not safe)) (type-id _x84224_)))
              (__tmp88720 (let () (declare (not safe)) (type-id _y84225_))))
          (declare (not safe))
          (eq? __tmp88721 __tmp88720))))
    (define type-descriptor?
      (lambda (_klass84222_)
        (if (let () (declare (not safe)) (##type? _klass84222_))
            (let ((__tmp88722
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass84222_))))
              (declare (not safe))
              (eq? __tmp88722 '12))
            '#f)))
    (define type-struct?
      (lambda (_klass84220_)
        (let ((__tmp88723
               (let () (declare (not safe)) (##type-flags _klass84220_))))
          (declare (not safe))
          (##fxbit-set? '21 __tmp88723))))
    (define type-final?
      (lambda (_klass84218_)
        (let ((__tmp88724
               (let () (declare (not safe)) (##type-flags _klass84218_))))
          (declare (not safe))
          (##fxbit-set? '22 __tmp88724))))
    (define class-type?
      (lambda (_klass84216_)
        (let () (declare (not safe)) (type-descriptor? _klass84216_))))
    (define properties-form
      (lambda (_properties84182_)
        (map (lambda (_e8418384185_)
               (let* ((_g8418784194_ _e8418384185_)
                      (_E8418984198_
                       (lambda () (error '"No clause matching" _g8418784194_)))
                      (_K8419084204_
                       (lambda (_val84201_ _key84202_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key84202_ 'direct-supers:))
                             (let ((__tmp88725 (map type-id _val84201_)))
                               (declare (not safe))
                               (cons _key84202_ __tmp88725))
                             (let ()
                               (declare (not safe))
                               (cons _key84202_ _val84201_))))))
                 (if (let () (declare (not safe)) (##pair? _g8418784194_))
                     (let ((_hd8419184207_
                            (let ()
                              (declare (not safe))
                              (##car _g8418784194_)))
                           (_tl8419284209_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8418784194_))))
                       (let* ((_key84212_ _hd8419184207_)
                              (_val84214_ _tl8419284209_))
                         (declare (not safe))
                         (_K8419084204_ _val84214_ _key84212_)))
                     (let () (declare (not safe)) (_E8418984198_)))))
             _properties84182_)))
    (define make-type-descriptor
      (lambda (_type-id84089_
               _type-name84090_
               _type-super84091_
               _precedence-list84092_
               _all-slots84093_
               _properties84094_
               _constructor84095_
               _slot-table84096_
               _methods84097_)
        (letrec ((_make-props!84099_
                  (lambda (_key84151_)
                    (letrec* ((_ht84153_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!84154_
                               (lambda (_ht84175_ _slots84176_)
                                 (for-each
                                  (lambda (_g8417784179_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht84175_
                                       _g8417784179_
                                       '#t)))
                                  _slots84176_)))
                              (_put-alist!84155_
                               (lambda (_ht84164_ _key84165_ _alist84166_)
                                 (let ((_$e84168_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key84165_ _alist84166_))))
                                   (if _$e84168_
                                       ((lambda (_g8417084172_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!84154_
                                             _ht84164_
                                             _g8417084172_)))
                                        _$e84168_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!84155_
                         _ht84153_
                         _key84151_
                         _properties84094_))
                      (for-each
                       (lambda (_mixin84157_)
                         (let ((_alist84159_
                                (let ()
                                  (declare (not safe))
                                  (type-descriptor-properties _mixin84157_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist84159_))
                                   (let ((__tmp88727
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key84151_
                                                     _alist84159_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp88727)))
                               (let ((__tmp88726
                                      (let ()
                                        (declare (not safe))
                                        (type-descriptor-slot-list
                                         _mixin84157_))))
                                 (declare (not safe))
                                 (_put-slots!84154_ _ht84153_ __tmp88726))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!84155_
                                  _ht84153_
                                  _key84151_
                                  _alist84159_)))))
                       _precedence-list84092_)
                      _ht84153_))))
          (let* ((_transparent?84101_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties84094_)))
                 (_all-slots-printable?84106_
                  (let ((_$e84103_ _transparent?84101_))
                    (if _$e84103_
                        _$e84103_
                        (let ((__tmp88728
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties84094_))))
                          (declare (not safe))
                          (eq? '#t __tmp88728)))))
                 (_printable84108_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?84106_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84099_ 'print:))
                      '#f))
                 (_all-slots-equalable?84113_
                  (let ((_$e84110_ _transparent?84101_))
                    (if _$e84110_
                        _$e84110_
                        (let ((__tmp88729
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties84094_))))
                          (declare (not safe))
                          (eq? '#t __tmp88729)))))
                 (_equalable84115_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?84113_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84099_ 'equal:))
                      '#f))
                 (_first-new-field84117_
                  (if _type-super84091_
                      (let ((__tmp88730
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _type-super84091_))))
                        (declare (not safe))
                        (##vector-length __tmp88730))
                      '1))
                 (_field-info-length84119_
                  (let ((__tmp88731
                         (let ((__tmp88732
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _all-slots84093_))))
                           (declare (not safe))
                           (##fx- __tmp88732 _first-new-field84117_))))
                    (declare (not safe))
                    (##fx* '3 __tmp88731)))
                 (_field-info84121_ (make-vector _field-info-length84119_ '#f))
                 (_struct?84123_
                  (let ()
                    (declare (not safe))
                    (assgetq 'struct: _properties84094_)))
                 (_final?84125_
                  (let ()
                    (declare (not safe))
                    (assgetq 'final: _properties84094_)))
                 (_opaque?84130_
                  (let ((_$e84127_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?84113_))))
                    (if _$e84127_
                        _$e84127_
                        (if _type-super84091_
                            (let ((__tmp88733
                                   (let ((__tmp88734
                                          (let ()
                                            (declare (not safe))
                                            (##type-flags _type-super84091_))))
                                     (declare (not safe))
                                     (##fxand __tmp88734 '1))))
                              (declare (not safe))
                              (##fx= __tmp88733 '1))
                            '#f))))
                 (_type-flags84132_
                  (let ((__tmp88737 (if _opaque?84130_ '1 '0))
                        (__tmp88736
                         (if _struct?84123_
                             (let ()
                               (declare (not safe))
                               (##fxarithmetic-shift '1 '21))
                             '0))
                        (__tmp88735
                         (if _final?84125_
                             (let ()
                               (declare (not safe))
                               (##fxarithmetic-shift '1 '22))
                             '0)))
                    (declare (not safe))
                    (##fxior '24 __tmp88737 __tmp88736 __tmp88735))))
            (let _loop84135_ ((_i84137_ _first-new-field84117_) (_j84138_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j84138_ _field-info-length84119_))
                  (let* ((_slot84140_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _all-slots84093_ _i84137_)))
                         (_flags84148_
                          (if _transparent?84101_
                              '0
                              (let ((__tmp88739
                                     (if (or _all-slots-printable?84106_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable84108_
                                                _slot84140_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp88738
                                     (if (or _all-slots-equalable?84113_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable84115_
                                                _slot84140_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp88739 __tmp88738)))))
                    (vector-set! _field-info84121_ _j84138_ _slot84140_)
                    (vector-set!
                     _field-info84121_
                     (let () (declare (not safe)) (##fx+ _j84138_ '1))
                     _flags84148_)
                    (let ((__tmp88741
                           (let () (declare (not safe)) (##fx+ _i84137_ '1)))
                          (__tmp88740
                           (let () (declare (not safe)) (##fx+ _j84138_ '3))))
                      (declare (not safe))
                      (_loop84135_ __tmp88741 __tmp88740)))
                  '#!void))
            (let ()
              (declare (not safe))
              (##structure
               ##type-type
               _type-id84089_
               _type-name84090_
               _type-flags84132_
               _type-super84091_
               _field-info84121_
               _precedence-list84092_
               _all-slots84093_
               _slot-table84096_
               _properties84094_
               _constructor84095_
               _methods84097_))))))
    (define type-descriptor-precedence-list
      (lambda (_klass84087_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84087_
           '6
           ##type-type
           type-descriptor-precedence-list))))
    (define type-descriptor-all-slots
      (lambda (_klass84085_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84085_
           '7
           ##type-type
           type-descriptor-all-slots))))
    (define type-descriptor-slot-table
      (lambda (_klass84083_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84083_
           '8
           ##type-type
           type-descriptor-slot-table))))
    (define type-descriptor-properties
      (lambda (_klass84081_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84081_
           '9
           ##type-type
           type-descriptor-properties))))
    (define type-descriptor-constructor
      (lambda (_klass84079_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84079_
           '10
           ##type-type
           type-descriptor-constructor))))
    (define type-descriptor-methods
      (lambda (_klass84077_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84077_
           '11
           ##type-type
           type-descriptor-methods))))
    (define type-descriptor-methods-set!
      (lambda (_klass84074_ _ht84075_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84074_
           _ht84075_
           '11
           ##type-type
           type-descriptor-methods-set!))))
    (define type-descriptor-slot-list
      (lambda (_klass84072_)
        (cdr (vector->list
              (let ()
                (declare (not safe))
                (type-descriptor-all-slots _klass84072_))))))
    (define type-descriptor-fields
      (lambda (_klass84070_)
        (let ((__tmp88742
               (let ((__tmp88743
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass84070_))))
                 (declare (not safe))
                 (##vector-length __tmp88743))))
          (declare (not safe))
          (##fx- __tmp88742 '1))))
    (define type-descriptor-sealed?
      (lambda (_klass84068_)
        (let ((__tmp88744
               (let () (declare (not safe)) (##type-flags _klass84068_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp88744))))
    (define type-descriptor-seal!
      (lambda (_klass84066_)
        (let ((__tmp88745
               (let ((__tmp88747
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp88746
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84066_))))
                 (declare (not safe))
                 (##fxior __tmp88747 __tmp88746))))
          (declare (not safe))
          (##structure-set!
           _klass84066_
           __tmp88745
           '3
           ##type-type
           type-descriptor-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct84057_ _maybe-super-struct84058_)
        (let ((_maybe-super-struct-id84060_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct84058_))))
          (let _lp84062_ ((_super-struct84064_ _maybe-sub-struct84057_))
            (if (let () (declare (not safe)) (not _super-struct84064_))
                '#f
                (if (let ((__tmp88749
                           (let ()
                             (declare (not safe))
                             (type-id _super-struct84064_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id84060_ __tmp88749))
                    '#t
                    (let ((__tmp88748
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct84064_))))
                      (declare (not safe))
                      (_lp84062_ __tmp88748))))))))
    (define base-struct/1
      (lambda (_klass84055_)
        (if (let () (declare (not safe)) (class-type? _klass84055_))
            (if (let () (declare (not safe)) (type-struct? _klass84055_))
                _klass84055_
                (let () (declare (not safe)) (##type-super _klass84055_)))
            (if (let () (declare (not safe)) (not _klass84055_))
                '#f
                (error '"not a class or false" _klass84055_)))))
    (define base-struct/2
      (lambda (_klass184043_ _klass284044_)
        (let ((_s184046_
               (let () (declare (not safe)) (base-struct/1 _klass184043_)))
              (_s284047_
               (let () (declare (not safe)) (base-struct/1 _klass284044_))))
          (if (or (let () (declare (not safe)) (not _s184046_))
                  (and _s284047_
                       (let ()
                         (declare (not safe))
                         (substruct? _s184046_ _s284047_))))
              _s284047_
              (if (or (let () (declare (not safe)) (not _s284047_))
                      (and _s184046_
                           (let ()
                             (declare (not safe))
                             (substruct? _s284047_ _s184046_))))
                  _s184046_
                  (error '"bad mixin: incompatible struct bases"
                         _klass184043_
                         _klass284044_
                         _s184046_
                         _s284047_))))))
    (define base-struct/list
      (lambda (_all-supers83927_)
        (let* ((_all-supers8392883953_ _all-supers83927_)
               (_E8393383957_
                (lambda ()
                  (error '"No clause matching" _all-supers8392883953_))))
          (let ((_K8395184040_ (lambda () '#f))
                (_K8394884026_
                 (lambda (_x84024_)
                   (let () (declare (not safe)) (base-struct/1 _x84024_))))
                (_K8394384003_
                 (lambda (_y84000_ _x84001_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x84001_ _y84000_))))
                (_K8393483964_
                 (lambda (_y83961_ _x83962_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x83962_ _y83961_)))))
            (let* ((___match8871788718_
                    (lambda (_hd8393583967_ _tl8393683969_)
                      (let ((_x83972_ _hd8393583967_))
                        (letrec ((_splice-rest8393883974_
                                  (lambda (_rest8394283981_ _y83983_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8394283981_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8393483964_ _y83983_ _x83972_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8393383957_)))))
                                 (_splice-try8394083976_
                                  (lambda (_hd8394183985_
                                           _rest8394283987_
                                           _y8393783988_)
                                    (let ((_y83991_ _hd8394183985_))
                                      (let ((__tmp88751
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8394283987_)))
                                            (__tmp88750
                                             (let ()
                                               (declare (not safe))
                                               (cons _y83991_ _y8393783988_))))
                                        (declare (not safe))
                                        (_splice-loop8393983978_
                                         __tmp88751
                                         __tmp88750)))))
                                 (_splice-loop8393983978_
                                  (lambda (_rest8394283993_ _y8393783994_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8394283993_))
                                        (let ((__tmp88753
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8394283993_))))
                                          (declare (not safe))
                                          (_splice-try8394083976_
                                           __tmp88753
                                           _rest8394283993_
                                           _y8393783994_))
                                        (let ((__tmp88752
                                               (reverse _y8393783994_)))
                                          (declare (not safe))
                                          (_splice-rest8393883974_
                                           _rest8394283993_
                                           __tmp88752))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8393983978_ _tl8393683969_ '()))))))
                   (_try-match8393084036_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8392883953_))
                          (let ((_tl8395084031_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8392883953_)))
                                (_hd8394984029_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8392883953_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8395084031_))
                                (let ((_x84034_ _hd8394984029_))
                                  (declare (not safe))
                                  (base-struct/1 _x84034_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8395084031_))
                                    (let ((_tl8394784015_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8395084031_)))
                                          (_hd8394684013_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8395084031_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8394784015_))
                                          (let ((_x84011_ _hd8394984029_)
                                                (_y84018_ _hd8394684013_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8394384003_
                                               _y84018_
                                               _x84011_)))
                                          (___match8871788718_
                                           _hd8394984029_
                                           _tl8395084031_)))
                                    (___match8871788718_
                                     _hd8394984029_
                                     _tl8395084031_))))
                          (let () (declare (not safe)) (_E8393383957_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8392883953_))
                  (let () (declare (not safe)) (_K8395184040_))
                  (let () (declare (not safe)) (_try-match8393084036_))))))))
    (define base-struct
      (lambda _all-supers83925_
        (let () (declare (not safe)) (base-struct/list _all-supers83925_))))
    (define find-super-constructor
      (lambda (_super83877_)
        (let _lp83879_ ((_rest83881_ _super83877_) (_constructor83882_ '#f))
          (let* ((_rest8388383891_ _rest83881_)
                 (_else8388583899_ (lambda () _constructor83882_))
                 (_K8388783913_
                  (lambda (_rest83902_ _hd83903_)
                    (let ((_$e83905_
                           (let ()
                             (declare (not safe))
                             (type-descriptor-constructor _hd83903_))))
                      (if _$e83905_
                          ((lambda (_xconstructor83908_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor83882_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor83882_
                                            _xconstructor83908_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp83879_ _rest83902_ _xconstructor83908_))
                                 (error '"conflicting implicit constructors"
                                        _constructor83882_
                                        _xconstructor83908_)))
                           _$e83905_)
                          (let ()
                            (declare (not safe))
                            (_lp83879_ _rest83902_ _constructor83882_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8388383891_))
                (let ((_hd8388883916_
                       (let () (declare (not safe)) (##car _rest8388383891_)))
                      (_tl8388983918_
                       (let () (declare (not safe)) (##cdr _rest8388383891_))))
                  (let* ((_hd83921_ _hd8388883916_)
                         (_rest83923_ _tl8388983918_))
                    (declare (not safe))
                    (_K8388783913_ _rest83923_ _hd83921_)))
                (let () (declare (not safe)) (_else8388583899_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list83853_ _direct-slots83854_)
        (let* ((_next-slot83856_ '1)
               (_slot-table83858_
                (let () (declare (not safe)) (make-table 'test: eq?)))
               (_r-slots83860_ (let () (declare (not safe)) (cons '#f '())))
               (_process-slot83864_
                (lambda (_slot83862_)
                  (if (let () (declare (not safe)) (symbol? _slot83862_))
                      '#!void
                      (error '"invalid slot name" _slot83862_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table83858_ _slot83862_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table83858_
                           _slot83862_
                           _next-slot83856_))
                        (let ((__tmp88754 (symbol->keyword _slot83862_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table83858_
                           __tmp88754
                           _next-slot83856_))
                        (set! _r-slots83860_
                              (let ()
                                (declare (not safe))
                                (cons _slot83862_ _r-slots83860_)))
                        (set! _next-slot83856_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot83856_ '1)))))))
               (_process-slots83870_
                (lambda (_g8386583867_)
                  (for-each _process-slot83864_ _g8386583867_))))
          (for-each
           (lambda (_mixin83873_)
             (let ((__tmp88755
                    (let ((__tmp88756
                           (let ()
                             (declare (not safe))
                             (type-descriptor-properties _mixin83873_))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp88756 '()))))
               (declare (not safe))
               (_process-slots83870_ __tmp88755)))
           (reverse _class-precedence-list83853_))
          (let ()
            (declare (not safe))
            (_process-slots83870_ _direct-slots83854_))
          (let ((_all-slots83875_ (list->vector (reverse _r-slots83860_))))
            (values _all-slots83875_ _slot-table83858_)))))
    (define make-struct-type
      (lambda (_id83846_
               _name83847_
               _direct-supers83848_
               _direct-slots83849_
               _properties83850_
               _constructor83851_)
        (let ((__tmp88758
               (if _direct-supers83848_
                   (let ()
                     (declare (not safe))
                     (cons _direct-supers83848_ '()))
                   '()))
              (__tmp88757
               (let ()
                 (declare (not safe))
                 (cons '(struct: . #t) _properties83850_))))
          (declare (not safe))
          (make-class-type
           _id83846_
           _name83847_
           __tmp88758
           _direct-slots83849_
           __tmp88757
           _constructor83851_))))
    (define make-struct-predicate
      (lambda (_klass83844_)
        (let () (declare (not safe)) (make-class-predicate _klass83844_))))
    (define make-struct-instance
      (lambda (_klass83841_ . _args83842_)
        (apply make-class-instance _klass83841_ _args83842_)))
    (define make-class-type
      (lambda (_id83804_
               _name83805_
               _direct-supers83806_
               _direct-slots83807_
               _properties83808_
               _constructor83809_)
        (let ((_$e83813_
               (let ((__tmp88759
                      (lambda (_klass83811_)
                        (let ((__tmp88760
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor? _klass83811_))))
                          (declare (not safe))
                          (not __tmp88760)))))
                 (declare (not safe))
                 (find __tmp88759 _direct-supers83806_))))
          (if _$e83813_
              ((lambda (_g8381583817_)
                 (error '"Illegal super class; not a type descriptor"
                        _g8381583817_))
               _$e83813_)
              (let ((_$e83820_
                     (let ()
                       (declare (not safe))
                       (find type-final? _direct-supers83806_))))
                (if _$e83820_
                    ((lambda (_g8382283824_)
                       (error '"Cannot extend final class" _g8382283824_))
                     _$e83820_)
                    '#!void))))
        (let ((_g88761_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers83806_))))
          (begin
            (let ((_g88762_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g88761_) (##vector-length _g88761_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g88762_ 2)))
                  (error "Context expects 2 values" _g88762_)))
            (let ((_precedence-list83827_
                   (let () (declare (not safe)) (##vector-ref _g88761_ 0)))
                  (_struct-super83828_
                   (let () (declare (not safe)) (##vector-ref _g88761_ 1))))
              (let ((_g88763_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list83827_
                        _direct-slots83807_))))
                (begin
                  (let ((_g88764_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g88763_)
                               (##vector-length _g88763_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g88764_ 2)))
                        (error "Context expects 2 values" _g88764_)))
                  (let ((_all-slots83830_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g88763_ 0)))
                        (_slot-table83831_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g88763_ 1))))
                    (let* ((_properties83833_
                            (let ((__tmp88767
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots83807_)))
                                  (__tmp88765
                                   (let ((__tmp88766
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers83806_))))
                                     (declare (not safe))
                                     (cons __tmp88766 _properties83808_))))
                              (declare (not safe))
                              (cons __tmp88767 __tmp88765)))
                           (_constructor*83838_
                            (let ((_$e83835_ _constructor83809_))
                              (if _$e83835_
                                  _$e83835_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers83806_))))))
                      (let ()
                        (declare (not safe))
                        (make-type-descriptor
                         _id83804_
                         _name83805_
                         _struct-super83828_
                         _precedence-list83827_
                         _all-slots83830_
                         _properties83833_
                         _constructor*83838_
                         _slot-table83831_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass83802_)
        (let ((__tmp88768
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass83802_))))
          (declare (not safe))
          (cons _klass83802_ __tmp88768))))
    (define compute-precedence-list
      (lambda (_direct-supers83800_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           type-struct?
           eq?
           ##type-name
           '()
           _direct-supers83800_))))
    (define make-class-predicate
      (lambda (_klass83784_)
        (let ((_tid83786_
               (let () (declare (not safe)) (##type-id _klass83784_))))
          (if (let () (declare (not safe)) (type-final? _klass83784_))
              (lambda (_g8378783789_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8378783789_ _tid83786_)))
              (if (let () (declare (not safe)) (type-struct? _klass83784_))
                  (lambda (_g8379183793_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g8379183793_ _tid83786_)))
                  (lambda (_g8379583797_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass83784_ _g8379583797_))))))))
    (define if-class-slot-field
      (lambda (_klass83773_
               _slot83774_
               _if-final83775_
               _if-struct83776_
               _if-struct-field83777_
               _if-class-slot83778_)
        (let ((_field83780_
               (let ((__tmp88769
                      (let ()
                        (declare (not safe))
                        (type-descriptor-slot-table _klass83773_))))
                 (declare (not safe))
                 (table-ref __tmp88769 _slot83774_ '#f))))
          (if (let () (declare (not safe)) (not _field83780_))
              (error '"unknown slot" 'class: _klass83773_ 'slot: _slot83774_)
              (if (let () (declare (not safe)) (type-final? _klass83773_))
                  (_if-final83775_ _klass83773_ _slot83774_ _field83780_)
                  (if (let () (declare (not safe)) (type-struct? _klass83773_))
                      (_if-struct83776_ _klass83773_ _slot83774_ _field83780_)
                      (if (let ((_strukt83782_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass83773_))))
                            (and _strukt83782_
                                 (let ((__tmp88770
                                        (let ((__tmp88771
                                               (let ()
                                                 (declare (not safe))
                                                 (type-descriptor-all-slots
                                                  _strukt83782_))))
                                          (declare (not safe))
                                          (##vector-length __tmp88771))))
                                   (declare (not safe))
                                   (##fx< _field83780_ __tmp88770))))
                          (_if-struct-field83777_
                           _klass83773_
                           _slot83774_
                           _field83780_)
                          (_if-class-slot83778_
                           _klass83773_
                           _slot83774_
                           _field83780_))))))))
    (define make-class-slot-accessor
      (lambda (_klass83770_ _slot83771_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83770_
           _slot83771_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass83767_ _slot83768_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83767_
           _slot83768_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass83764_ _slot83765_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83764_
           _slot83765_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass83761_ _slot83762_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83761_
           _slot83762_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object83745_ _class83746_ _slot83747_)
        (apply error
               '"not an instance"
               'object:
               _object83745_
               'class:
               _class83746_
               (if _slot83747_
                   (let ((__tmp88772
                          (let ()
                            (declare (not safe))
                            (cons _slot83747_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp88772))
                   '()))))
    (define not-an-instance__0
      (lambda (_object83752_ _class83753_)
        (let ((_slot83755_ '#f))
          (declare (not safe))
          (not-an-instance__% _object83752_ _class83753_ _slot83755_))))
    (define not-an-instance
      (lambda _g88774_
        (let ((_g88773_ (let () (declare (not safe)) (##length _g88774_))))
          (cond ((let () (declare (not safe)) (##fx= _g88773_ 2))
                 (apply (lambda (_object83752_ _class83753_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object83752_ _class83753_)))
                        _g88774_))
                ((let () (declare (not safe)) (##fx= _g88773_ 3))
                 (apply (lambda (_object83757_ _class83758_ _slot83759_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object83757_
                             _class83758_
                             _slot83759_)))
                        _g88774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g88774_))))))
    (define make-final-slot-accessor
      (lambda (_klass83738_ _slot83739_ _field83740_)
        (lambda (_obj83742_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj83742_
             _field83740_
             _klass83738_
             _slot83739_)))))
    (define make-final-slot-mutator
      (lambda (_klass83731_ _slot83732_ _field83733_)
        (lambda (_obj83735_ _val83736_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj83735_
             _val83736_
             _field83733_
             _klass83731_
             _slot83732_)))))
    (define make-struct-slot-accessor__0
      (lambda (_klass83718_ _slot83719_ _field83720_)
        (lambda (_obj83722_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj83722_
             _field83720_
             _klass83718_
             _slot83719_)))))
    (define make-struct-slot-accessor__1
      (lambda (_klass83724_ _slot83725_)
        (let ((_field83727_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass83724_ _slot83725_))))
          (lambda (_obj83729_)
            (let ()
              (declare (not safe))
              (##structure-ref
               _obj83729_
               _field83727_
               _klass83724_
               _slot83725_))))))
    (define make-struct-slot-accessor
      (lambda _g88776_
        (let ((_g88775_ (let () (declare (not safe)) (##length _g88776_))))
          (cond ((let () (declare (not safe)) (##fx= _g88775_ 3))
                 (apply (lambda (_klass83718_ _slot83719_ _field83720_)
                          (let ()
                            (declare (not safe))
                            (make-struct-slot-accessor__0
                             _klass83718_
                             _slot83719_
                             _field83720_)))
                        _g88776_))
                ((let () (declare (not safe)) (##fx= _g88775_ 2))
                 (apply (lambda (_klass83724_ _slot83725_)
                          (let ()
                            (declare (not safe))
                            (make-struct-slot-accessor__1
                             _klass83724_
                             _slot83725_)))
                        _g88776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-struct-slot-accessor
                  _g88776_))))))
    (define make-struct-slot-mutator__0
      (lambda (_klass83704_ _slot83705_ _field83706_)
        (lambda (_obj83708_ _val83709_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj83708_
             _val83709_
             _field83706_
             _klass83704_
             _slot83705_)))))
    (define make-struct-slot-mutator__1
      (lambda (_klass83711_ _slot83712_)
        (let ((_field83714_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass83711_ _slot83712_))))
          (lambda (_obj83716_)
            (let ()
              (declare (not safe))
              (##structure-ref
               _obj83716_
               _field83714_
               _klass83711_
               _slot83712_))))))
    (define make-struct-slot-mutator
      (lambda _g88778_
        (let ((_g88777_ (let () (declare (not safe)) (##length _g88778_))))
          (cond ((let () (declare (not safe)) (##fx= _g88777_ 3))
                 (apply (lambda (_klass83704_ _slot83705_ _field83706_)
                          (let ()
                            (declare (not safe))
                            (make-struct-slot-mutator__0
                             _klass83704_
                             _slot83705_
                             _field83706_)))
                        _g88778_))
                ((let () (declare (not safe)) (##fx= _g88777_ 2))
                 (apply (lambda (_klass83711_ _slot83712_)
                          (let ()
                            (declare (not safe))
                            (make-struct-slot-mutator__1
                             _klass83711_
                             _slot83712_)))
                        _g88778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-struct-slot-mutator
                  _g88778_))))))
    (define make-struct-slot-unchecked-accessor__0
      (lambda (_klass83691_ _slot83692_ _field83693_)
        (lambda (_obj83695_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj83695_
             _field83693_
             _klass83691_
             _slot83692_)))))
    (define make-struct-slot-unchecked-accessor__1
      (lambda (_klass83697_ _slot83698_)
        (let ((_field83700_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass83697_ _slot83698_))))
          (lambda (_obj83702_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-ref
               _obj83702_
               _field83700_
               _klass83697_
               _slot83698_))))))
    (define make-struct-slot-unchecked-accessor
      (lambda _g88780_
        (let ((_g88779_ (let () (declare (not safe)) (##length _g88780_))))
          (cond ((let () (declare (not safe)) (##fx= _g88779_ 3))
                 (apply (lambda (_klass83691_ _slot83692_ _field83693_)
                          (let ()
                            (declare (not safe))
                            (make-struct-slot-unchecked-accessor__0
                             _klass83691_
                             _slot83692_
                             _field83693_)))
                        _g88780_))
                ((let () (declare (not safe)) (##fx= _g88779_ 2))
                 (apply (lambda (_klass83697_ _slot83698_)
                          (let ()
                            (declare (not safe))
                            (make-struct-slot-unchecked-accessor__1
                             _klass83697_
                             _slot83698_)))
                        _g88780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-struct-slot-unchecked-accessor
                  _g88780_))))))
    (define make-struct-slot-unchecked-mutator__0
      (lambda (_klass83676_ _slot83677_ _field83678_)
        (lambda (_obj83680_ _val83681_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj83680_
             _val83681_
             _field83678_
             _klass83676_
             _slot83677_)))))
    (define make-struct-slot-unchecked-mutator__1
      (lambda (_klass83683_ _slot83684_)
        (let ((_field83686_
               (let ()
                 (declare (not safe))
                 (class-slot-offset _klass83683_ _slot83684_))))
          (lambda (_obj83688_ _val83689_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _obj83688_
               _val83689_
               _field83686_
               _klass83683_
               _slot83684_))))))
    (define make-struct-slot-unchecked-mutator
      (lambda _g88782_
        (let ((_g88781_ (let () (declare (not safe)) (##length _g88782_))))
          (cond ((let () (declare (not safe)) (##fx= _g88781_ 3))
                 (apply (lambda (_klass83676_ _slot83677_ _field83678_)
                          (let ()
                            (declare (not safe))
                            (make-struct-slot-unchecked-mutator__0
                             _klass83676_
                             _slot83677_
                             _field83678_)))
                        _g88782_))
                ((let () (declare (not safe)) (##fx= _g88781_ 2))
                 (apply (lambda (_klass83683_ _slot83684_)
                          (let ()
                            (declare (not safe))
                            (make-struct-slot-unchecked-mutator__1
                             _klass83683_
                             _slot83684_)))
                        _g88782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-struct-slot-unchecked-mutator
                  _g88782_))))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass83670_ _slot83671_ _field83672_)
        (lambda (_obj83674_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83670_ _obj83674_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83674_ _field83672_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83674_ _klass83670_ _slot83671_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass83663_ _slot83664_ _field83665_)
        (lambda (_obj83667_ _val83668_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83663_ _obj83667_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83667_ _field83665_ _val83668_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83667_ _klass83663_ _slot83664_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass83657_ _slot83658_ _field83659_)
        (lambda (_obj83661_)
          (if (let ((__tmp88783
                     (let () (declare (not safe)) (##type-id _klass83657_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83661_ __tmp88783))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83661_ _field83659_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83657_ _obj83661_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj83661_ _slot83658_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83661_
                     _klass83657_
                     _slot83658_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass83650_ _slot83651_ _field83652_)
        (lambda (_obj83654_ _val83655_)
          (if (let ((__tmp88784
                     (let () (declare (not safe)) (##type-id _klass83650_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83654_ __tmp88784))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83654_ _field83652_ _val83655_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83650_ _obj83654_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj83654_ _slot83651_ _val83655_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83654_
                     _klass83650_
                     _slot83651_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass83644_ _slot83645_ _field83646_)
        (lambda (_obj83648_)
          (if (let ((__tmp88785
                     (let () (declare (not safe)) (##type-id _klass83644_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83648_ __tmp88785))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83648_ _field83646_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83648_ _slot83645_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass83637_ _slot83638_ _field83639_)
        (lambda (_obj83641_ _val83642_)
          (if (let ((__tmp88786
                     (let () (declare (not safe)) (##type-id _klass83637_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83641_ __tmp88786))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83641_ _field83639_ _val83642_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj83641_ _slot83638_ _val83642_))))))
    (define class-slot-offset
      (lambda (_klass83634_ _slot83635_)
        (let ((__tmp88787
               (let ()
                 (declare (not safe))
                 (type-descriptor-slot-table _klass83634_))))
          (declare (not safe))
          (table-ref __tmp88787 _slot83635_ '#f))))
    (define class-slot-ref
      (lambda (_klass83628_ _obj83629_ _slot83630_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83628_ _obj83629_))
            (let ((_off83632_
                   (let ((__tmp88788
                          (let ()
                            (declare (not safe))
                            (object-type _obj83629_))))
                     (declare (not safe))
                     (class-slot-offset __tmp88788 _slot83630_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj83629_
               _off83632_
               _klass83628_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83629_ _klass83628_)))))
    (define class-slot-set!
      (lambda (_klass83621_ _obj83622_ _slot83623_ _val83624_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83621_ _obj83622_))
            (let ((_off83626_
                   (let ((__tmp88789
                          (let ()
                            (declare (not safe))
                            (object-type _obj83622_))))
                     (declare (not safe))
                     (class-slot-offset __tmp88789 _slot83623_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj83622_
               _val83624_
               _off83626_
               _klass83621_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83622_ _klass83621_)))))
    (define unchecked-field-ref
      (lambda (_obj83618_ _off83619_)
        (let ((__tmp88790
               (let () (declare (not safe)) (##structure-type _obj83618_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj83618_ _off83619_ __tmp88790 '#f))))
    (define unchecked-field-set!
      (lambda (_obj83614_ _off83615_ _val83616_)
        (let ((__tmp88791
               (let () (declare (not safe)) (##structure-type _obj83614_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj83614_
           _val83616_
           _off83615_
           __tmp88791
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj83611_ _slot83612_)
        (let ((__tmp88792
               (let ((__tmp88793
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83611_))))
                 (declare (not safe))
                 (class-slot-offset __tmp88793 _slot83612_))))
          (declare (not safe))
          (unchecked-field-ref _obj83611_ __tmp88792))))
    (define unchecked-slot-set!
      (lambda (_obj83607_ _slot83608_ _val83609_)
        (let ((__tmp88794
               (let ((__tmp88795
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83607_))))
                 (declare (not safe))
                 (class-slot-offset __tmp88795 _slot83608_))))
          (declare (not safe))
          (unchecked-field-set! _obj83607_ __tmp88794 _val83609_))))
    (define slot-ref__%
      (lambda (_obj83583_ _slot83584_ _E83585_)
        (if (let () (declare (not safe)) (object? _obj83583_))
            (let* ((_klass83587_
                    (let () (declare (not safe)) (object-type _obj83583_)))
                   (_$e83590_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83587_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83587_ _slot83584_))
                        '#f)))
              (if _$e83590_
                  ((lambda (_off83593_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj83583_ _off83593_)))
                   _$e83590_)
                  (_E83585_ _obj83583_ _slot83584_)))
            (_E83585_ _obj83583_ _slot83584_))))
    (define slot-ref__0
      (lambda (_obj83598_ _slot83599_)
        (let ((_E83601_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj83598_ _slot83599_ _E83601_))))
    (define slot-ref
      (lambda _g88797_
        (let ((_g88796_ (let () (declare (not safe)) (##length _g88797_))))
          (cond ((let () (declare (not safe)) (##fx= _g88796_ 2))
                 (apply (lambda (_obj83598_ _slot83599_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj83598_ _slot83599_)))
                        _g88797_))
                ((let () (declare (not safe)) (##fx= _g88796_ 3))
                 (apply (lambda (_obj83603_ _slot83604_ _E83605_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj83603_ _slot83604_ _E83605_)))
                        _g88797_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g88797_))))))
    (define slot-set!__%
      (lambda (_obj83555_ _slot83556_ _val83557_ _E83558_)
        (if (let () (declare (not safe)) (object? _obj83555_))
            (let* ((_klass83560_
                    (let () (declare (not safe)) (object-type _obj83555_)))
                   (_$e83563_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83560_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83560_ _slot83556_))
                        '#f)))
              (if _$e83563_
                  ((lambda (_off83566_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj83555_
                        _off83566_
                        _val83557_)))
                   _$e83563_)
                  (_E83558_ _obj83555_ _slot83556_)))
            (_E83558_ _obj83555_ _slot83556_))))
    (define slot-set!__0
      (lambda (_obj83571_ _slot83572_ _val83573_)
        (let ((_E83575_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj83571_ _slot83572_ _val83573_ _E83575_))))
    (define slot-set!
      (lambda _g88799_
        (let ((_g88798_ (let () (declare (not safe)) (##length _g88799_))))
          (cond ((let () (declare (not safe)) (##fx= _g88798_ 3))
                 (apply (lambda (_obj83571_ _slot83572_ _val83573_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj83571_ _slot83572_ _val83573_)))
                        _g88799_))
                ((let () (declare (not safe)) (##fx= _g88798_ 4))
                 (apply (lambda (_obj83577_ _slot83578_ _val83579_ _E83580_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj83577_
                             _slot83578_
                             _val83579_
                             _E83580_)))
                        _g88799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g88799_))))))
    (define __slot-error
      (lambda (_obj83551_ _slot83552_)
        (error '"Cannot find slot" 'object: _obj83551_ 'slot: _slot83552_)))
    (define subclass?
      (lambda (_maybe-sub-class83541_ _maybe-super-class83542_)
        (let* ((_maybe-super-class-id83544_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class83542_)))
               (_$e83546_
                (let ((__tmp88800
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class83541_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id83544_ __tmp88800))))
          (if _$e83546_
              _$e83546_
              (let ((__tmp88802
                     (lambda (_super-class83549_)
                       (let ((__tmp88803
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class83549_))))
                         (declare (not safe))
                         (eq? __tmp88803 _maybe-super-class-id83544_))))
                    (__tmp88801
                     (let ()
                       (declare (not safe))
                       (type-descriptor-precedence-list
                        _maybe-sub-class83541_))))
                (declare (not safe))
                (ormap1 __tmp88802 __tmp88801))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass83538_ _obj83539_)
        (let ((__tmp88804
               (let () (declare (not safe)) (##type-id _klass83538_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj83539_ __tmp88804))))
    (define struct-instance?
      (lambda (_klass83535_ _obj83536_)
        (let ((__tmp88805
               (let () (declare (not safe)) (##type-id _klass83535_))))
          (declare (not safe))
          (##structure-instance-of? _obj83536_ __tmp88805))))
    (define class-instance?
      (lambda (_klass83530_ _obj83531_)
        (if (let () (declare (not safe)) (object? _obj83531_))
            (let ((_type83533_
                   (let () (declare (not safe)) (object-type _obj83531_))))
              (if (let () (declare (not safe)) (type-descriptor? _type83533_))
                  (let ()
                    (declare (not safe))
                    (subclass? _type83533_ _klass83530_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass83525_ _k83526_)
        (let ((_obj83528_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass83525_ _k83526_))))
          (let () (declare (not safe)) (object-fill! _obj83528_ '#f))
          _obj83528_)))
    (define object-fill!
      (lambda (_obj83518_ _fill83519_)
        (let _loop83521_ ((_i83523_
                           (let ((__tmp88807
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj83518_))))
                             (declare (not safe))
                             (##fx- __tmp88807 '1))))
          (if (let () (declare (not safe)) (##fx> _i83523_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj83518_
                   _fill83519_
                   _i83523_
                   '#f
                   '#f))
                (let ((__tmp88806
                       (let () (declare (not safe)) (##fx- _i83523_ '1))))
                  (declare (not safe))
                  (_loop83521_ __tmp88806)))
              _obj83518_))))
    (define make-instance
      (lambda (_klass83516_)
        (let ((__obj88719
               (let ((__tmp88808
                      (let ((__tmp88809
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _klass83516_))))
                        (declare (not safe))
                        (##vector-length __tmp88809))))
                 (declare (not safe))
                 (##make-structure _klass83516_ __tmp88808))))
          (let () (declare (not safe)) (object-fill! __obj88719 '#f))
          __obj88719)))
    (define make-class-instance
      (lambda (_klass83506_ . _args83507_)
        (let* ((_obj83509_
                (let () (declare (not safe)) (make-instance _klass83506_)))
               (_$e83511_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass83506_))))
          (if _$e83511_
              ((lambda (_kons-id83514_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83506_
                    _kons-id83514_
                    _obj83509_
                    _args83507_)))
               _$e83511_)
              (if (let ((__tmp88813
                         (let ()
                           (declare (not safe))
                           (type-struct? _klass83506_))))
                    (declare (not safe))
                    (not __tmp88813))
                  (let ()
                    (declare (not safe))
                    (__class-instance-init!
                     _klass83506_
                     _obj83509_
                     _args83507_))
                  (if (let ((__tmp88811
                             (let ((__tmp88812
                                    (let ()
                                      (declare (not safe))
                                      (##structure-length _obj83509_))))
                               (declare (not safe))
                               (##fx- __tmp88812 '1)))
                            (__tmp88810 (length _args83507_)))
                        (declare (not safe))
                        (##fx= __tmp88811 __tmp88810))
                      (apply ##structure _klass83506_ _args83507_)
                      (error '"arguments don't match object size"
                             'class:
                             _klass83506_
                             'slots:
                             (let ()
                               (declare (not safe))
                               (type-descriptor-slot-list _klass83506_))
                             'args:
                             _args83507_)))))))
    (define struct-instance-init!
      (lambda (_obj83503_ . _args83504_)
        (if (let ((__tmp88815 (length _args83504_))
                  (__tmp88814
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj83503_))))
              (declare (not safe))
              (##fx< __tmp88815 __tmp88814))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj83503_ _args83504_))
            (error '"too many arguments for struct"
                   'object:
                   _obj83503_
                   'args:
                   _args83504_))))
    (define __struct-instance-init!
      (lambda (_obj83462_ _args83463_)
        (let _lp83465_ ((_k83467_ '1) (_rest83468_ _args83463_))
          (let* ((_rest8346983477_ _rest83468_)
                 (_else8347183485_ (lambda () _obj83462_))
                 (_K8347383491_
                  (lambda (_rest83488_ _hd83489_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj83462_ _k83467_ _hd83489_))
                    (let ((__tmp88816
                           (let () (declare (not safe)) (##fx+ _k83467_ '1))))
                      (declare (not safe))
                      (_lp83465_ __tmp88816 _rest83488_)))))
            (if (let () (declare (not safe)) (##pair? _rest8346983477_))
                (let ((_hd8347483494_
                       (let () (declare (not safe)) (##car _rest8346983477_)))
                      (_tl8347583496_
                       (let () (declare (not safe)) (##cdr _rest8346983477_))))
                  (let* ((_hd83499_ _hd8347483494_)
                         (_rest83501_ _tl8347583496_))
                    (declare (not safe))
                    (_K8347383491_ _rest83501_ _hd83499_)))
                (let () (declare (not safe)) (_else8347183485_)))))))
    (define class-instance-init!
      (lambda (_obj83459_ . _args83460_)
        (let ((__tmp88817
               (let () (declare (not safe)) (object-type _obj83459_))))
          (declare (not safe))
          (__class-instance-init! __tmp88817 _obj83459_ _args83460_))))
    (define __class-instance-init!
      (lambda (_klass83403_ _obj83404_ _args83405_)
        (let _lp83407_ ((_rest83409_ _args83405_))
          (let* ((_rest8341083420_ _rest83409_)
                 (_else8341283428_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest83409_))
                        _obj83404_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass83403_
                               'rest:
                               _rest83409_))))
                 (_K8341483440_
                  (lambda (_rest83431_ _val83432_ _key83433_)
                    (let ((_$e83435_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass83403_ _key83433_))))
                      (if _$e83435_
                          ((lambda (_off83438_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj83404_
                                _off83438_
                                _val83432_))
                             (let ()
                               (declare (not safe))
                               (_lp83407_ _rest83431_)))
                           _$e83435_)
                          (error '"unknown slot"
                                 'class:
                                 _klass83403_
                                 'slot:
                                 _key83433_))))))
            (if (let () (declare (not safe)) (##pair? _rest8341083420_))
                (let ((_hd8341583443_
                       (let () (declare (not safe)) (##car _rest8341083420_)))
                      (_tl8341683445_
                       (let () (declare (not safe)) (##cdr _rest8341083420_))))
                  (let ((_key83448_ _hd8341583443_))
                    (if (let () (declare (not safe)) (##pair? _tl8341683445_))
                        (let ((_hd8341783450_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8341683445_)))
                              (_tl8341883452_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8341683445_))))
                          (let* ((_val83455_ _hd8341783450_)
                                 (_rest83457_ _tl8341883452_))
                            (declare (not safe))
                            (_K8341483440_ _rest83457_ _val83455_ _key83448_)))
                        (let () (declare (not safe)) (_else8341283428_)))))
                (let () (declare (not safe)) (_else8341283428_)))))))
    (define constructor-init!
      (lambda (_klass83398_ _kons-id83399_ _obj83400_ . _args83401_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass83398_
           _kons-id83399_
           _obj83400_
           _args83401_))))
    (define __constructor-init!
      (lambda (_klass83388_ _kons-id83389_ _obj83390_ _args83391_)
        (let ((_$e83393_
               (let ()
                 (declare (not safe))
                 (__find-method _klass83388_ _kons-id83389_))))
          (if _$e83393_
              ((lambda (_kons83396_)
                 (apply _kons83396_ _obj83390_ _args83391_)
                 _obj83390_)
               _$e83393_)
              (error '"missing constructor"
                     'class:
                     _klass83388_
                     'method:
                     _kons-id83389_)))))
    (define struct-copy
      (lambda (_struct83386_)
        (if (let () (declare (not safe)) (##structure? _struct83386_))
            '#!void
            (error '"not a structure" _struct83386_))
        (let () (declare (not safe)) (##structure-copy _struct83386_))))
    (define struct->list
      (lambda (_obj83384_)
        (if (let () (declare (not safe)) (object? _obj83384_))
            (let () (declare (not safe)) (##vector->list _obj83384_))
            (error '"not an object" _obj83384_))))
    (define class->list
      (lambda (_obj83371_)
        (if (let () (declare (not safe)) (object? _obj83371_))
            (let ((_klass83373_
                   (let () (declare (not safe)) (object-type _obj83371_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass83373_))
                  (let ((_all-slots83375_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-all-slots _klass83373_))))
                    (let _loop83377_ ((_index83379_
                                       (let ((__tmp88823
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _all-slots83375_))))
                                         (declare (not safe))
                                         (##fx- __tmp88823 '1)))
                                      (_plist83380_ '()))
                      (if (let () (declare (not safe)) (##fx< _index83379_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass83373_ _plist83380_))
                          (let ((_slot83382_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _all-slots83375_
                                    _index83379_))))
                            (let ((__tmp88822
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index83379_ '1)))
                                  (__tmp88818
                                   (let ((__tmp88821
                                          (symbol->keyword _slot83382_))
                                         (__tmp88819
                                          (let ((__tmp88820
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj83371_
                                                    _index83379_))))
                                            (declare (not safe))
                                            (cons __tmp88820 _plist83380_))))
                                     (declare (not safe))
                                     (cons __tmp88821 __tmp88819))))
                              (declare (not safe))
                              (_loop83377_ __tmp88822 __tmp88818))))))
                  (error '"not a class type"
                         'object:
                         _obj83371_
                         'class:
                         _klass83373_)))
            (error '"not an object" _obj83371_))))
    (define call-method
      (lambda (_obj83362_ _id83363_ . _args83364_)
        (let ((_$e83366_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83362_ _id83363_))))
          (if _$e83366_
              ((lambda (_method83369_)
                 (apply _method83369_ _obj83362_ _args83364_))
               _$e83366_)
              (error '"cannot find method"
                     'object:
                     _obj83362_
                     'method:
                     _id83363_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj83359_ _id83360_)
        (if (let () (declare (not safe)) (object? _obj83359_))
            (let ((__tmp88824
                   (let () (declare (not safe)) (object-type _obj83359_))))
              (declare (not safe))
              (find-method __tmp88824 _id83360_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj83353_ _id83354_)
        (let ((_$e83356_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83353_ _id83354_))))
          (if _$e83356_
              _$e83356_
              (error '"missing method"
                     'object:
                     _obj83353_
                     'method:
                     _id83354_)))))
    (define bound-method-ref
      (lambda (_obj83343_ _id83344_)
        (let ((_$e83346_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83343_ _id83344_))))
          (if _$e83346_
              ((lambda (_method83349_)
                 (lambda _args83351_
                   (apply _method83349_ _obj83343_ _args83351_)))
               _$e83346_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj83336_ _id83337_)
        (let ((_method83339_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj83336_ _id83337_))))
          (lambda _args83341_ (apply _method83339_ _obj83336_ _args83341_)))))
    (define find-method
      (lambda (_klass83333_ _id83334_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83333_))
            (let ()
              (declare (not safe))
              (__find-method _klass83333_ _id83334_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass83333_ _id83334_)))))
    (define __find-method
      (lambda (_klass83327_ _id83328_)
        (let ((_$e83330_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass83327_ _id83328_))))
          (if _$e83330_
              _$e83330_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83327_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass83327_ _id83328_)))))))
    (define class-find-method
      (lambda (_klass83324_ _id83325_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83324_))
            (let ()
              (declare (not safe))
              (__find-method _klass83324_ _id83325_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins83317_ _id83318_)
        (let ((__tmp88825
               (lambda (_g8331983321_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8331983321_ _id83318_)))))
          (declare (not safe))
          (ormap1 __tmp88825 _mixins83317_))))
    (define builtin-find-method
      (lambda (_klass83311_ _id83312_)
        (if (let () (declare (not safe)) (##type? _klass83311_))
            (let ((_$e83314_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass83311_ _id83312_))))
              (if _$e83314_
                  _$e83314_
                  (let ((__tmp88826
                         (let ()
                           (declare (not safe))
                           (##type-super _klass83311_))))
                    (declare (not safe))
                    (builtin-find-method __tmp88826 _id83312_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass83303_ _id83304_)
        (let ((_$e83306_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass83303_))))
          (if _$e83306_
              ((lambda (_ht83309_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht83309_ _id83304_ '#f)))
               _$e83306_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass83300_ _id83301_)
        (let ((__tmp88827
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass83300_))))
          (declare (not safe))
          (mixin-find-method __tmp88827 _id83301_))))
    (define builtin-method-ref
      (lambda (_klass83292_ _id83293_)
        (let ((_$e83295_
               (let ((__tmp88828
                      (let () (declare (not safe)) (##type-id _klass83292_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp88828 '#f))))
          (if _$e83295_
              ((lambda (_mtab83298_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab83298_ _id83293_ '#f)))
               _$e83295_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass83258_ _id83259_ _proc83260_ _rebind?83261_)
        (letrec ((_bind!83263_
                  (lambda (_ht83276_)
                    (if (and (let () (declare (not safe)) (not _rebind?83261_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht83276_ _id83259_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass83258_
                               'method:
                               _id83259_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht83276_ _id83259_ _proc83260_))))))
          (if (let () (declare (not safe)) (procedure? _proc83260_))
              '#!void
              (error '"bad method; expected procedure" _proc83260_))
          (if (let () (declare (not safe)) (type-descriptor? _klass83258_))
              (let ((_ht83265_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass83258_))))
                (if _ht83265_
                    (let () (declare (not safe)) (_bind!83263_ _ht83265_))
                    (let ((_ht83267_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass83258_ _ht83267_))
                      (let () (declare (not safe)) (_bind!83263_ _ht83267_)))))
              (if (let () (declare (not safe)) (##type? _klass83258_))
                  (let ((_ht83274_
                         (let ((_$e83269_
                                (let ((__tmp88829
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass83258_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp88829
                                   '#f))))
                           (if _$e83269_
                               _$e83269_
                               (let ((_ht83272_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp88830
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass83258_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp88830
                                    _ht83272_))
                                 _ht83272_)))))
                    (declare (not safe))
                    (_bind!83263_ _ht83274_))
                  (error '"bad class; expected type-descriptor or builtin type"
                         _klass83258_))))))
    (define bind-method!__0
      (lambda (_klass83281_ _id83282_ _proc83283_)
        (let ((_rebind?83285_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass83281_
           _id83282_
           _proc83283_
           _rebind?83285_))))
    (define bind-method!
      (lambda _g88832_
        (let ((_g88831_ (let () (declare (not safe)) (##length _g88832_))))
          (cond ((let () (declare (not safe)) (##fx= _g88831_ 3))
                 (apply (lambda (_klass83281_ _id83282_ _proc83283_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass83281_
                             _id83282_
                             _proc83283_)))
                        _g88832_))
                ((let () (declare (not safe)) (##fx= _g88831_ 4))
                 (apply (lambda (_klass83287_
                                 _id83288_
                                 _proc83289_
                                 _rebind?83290_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass83287_
                             _id83288_
                             _proc83289_
                             _rebind?83290_)))
                        _g88832_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g88832_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc83254_ _specializer83255_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc83254_ _specializer83255_))))
    (define seal-class!
      (lambda (_klass83221_)
        (letrec ((_collect-methods!83223_
                  (lambda (_mtab83239_)
                    (letrec ((_merge!83241_
                              (lambda (_tab83249_)
                                (let ((__tmp88833
                                       (lambda (_id83251_ _proc83252_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab83239_
                                            _id83251_
                                            _proc83252_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp88833 _tab83249_))))
                             (_collect-direct-methods!83242_
                              (lambda (_klass83244_)
                                (let ((_$e83246_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass83244_))))
                                  (if _$e83246_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!83241_ _$e83246_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!83242_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass83221_))))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83221_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83221_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (type-final? _klass83221_))
                        '#!void
                        (error '"cannot seal non-final class" _klass83221_))
                    (let ((_vtab83225_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab83226_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!83223_ _mtab83226_))
                      (let ((__tmp88834
                             (lambda (_id83228_ _proc83229_)
                               (let ((_$e83231_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc83229_
                                         '#f))))
                                 (if _$e83231_
                                     ((lambda (_specializer83234_)
                                        (let ((_proc83236_
                                               (_specializer83234_
                                                _klass83221_))
                                              (_gid83237_
                                               (let ((__tmp88835
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass83221_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp88835
                                                  '"::["
                                                  _id83228_
                                                  '"]"))))
                                          (eval (let ((__tmp88836
                                                       (let ((__tmp88837
                                                              (let ((__tmp88838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp88839
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc83236_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp88839))))
                        (declare (not safe))
                        (cons __tmp88838 '()))))
                 (declare (not safe))
                 (cons _gid83237_ __tmp88837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp88836)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab83225_
                                             _id83228_
                                             _proc83236_))))
                                      _$e83231_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab83225_
                                        _id83228_
                                        _proc83229_)))))))
                        (declare (not safe))
                        (table-for-each __tmp88834 _mtab83226_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set!
                         _klass83221_
                         _vtab83225_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass83221_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass83170_ _obj83171_ _id83172_)
        (let ((_klass83174_
               (let () (declare (not safe)) (object-type _obj83171_)))
              (_type-id83175_
               (let () (declare (not safe)) (##type-id _subklass83170_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83174_))
              (let _lp83177_ ((_rest83179_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass83174_))))
                (let* ((_rest8318083188_ _rest83179_)
                       (_else8318283196_ (lambda () '#f))
                       (_K8318483202_
                        (lambda (_rest83199_ _klass83200_)
                          (if (let ((__tmp88842
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass83200_))))
                                (declare (not safe))
                                (eq? _type-id83175_ __tmp88842))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method _rest83199_ _id83172_))
                              (let ()
                                (declare (not safe))
                                (_lp83177_ _rest83199_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8318083188_))
                      (let ((_hd8318583205_
                             (let ()
                               (declare (not safe))
                               (##car _rest8318083188_)))
                            (_tl8318683207_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8318083188_))))
                        (let* ((_klass83210_ _hd8318583205_)
                               (_rest83212_ _tl8318683207_))
                          (declare (not safe))
                          (_K8318483202_ _rest83212_ _klass83210_)))
                      (let () (declare (not safe)) (_else8318283196_)))))
              (if (let () (declare (not safe)) (##type? _klass83174_))
                  (let _lp83214_ ((_klass83216_ _klass83174_))
                    (if (let ((__tmp88841
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass83216_))))
                          (declare (not safe))
                          (eq? _type-id83175_ __tmp88841))
                        (let ((__tmp88840
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83216_))))
                          (declare (not safe))
                          (builtin-find-method __tmp88840 _id83172_))
                        (let ((_$e83218_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83216_))))
                          (if _$e83218_
                              (let ()
                                (declare (not safe))
                                (_lp83214_ _$e83218_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass83160_ _obj83161_ _id83162_ . _args83163_)
        (let ((_$e83165_
               (let ()
                 (declare (not safe))
                 (next-method _subklass83160_ _obj83161_ _id83162_))))
          (if _$e83165_
              ((lambda (_methodf83168_)
                 (apply _methodf83168_ _obj83161_ _args83163_))
               _$e83165_)
              (error '"cannot find next method"
                     'object:
                     _obj83161_
                     'method:
                     _id83162_)))))
    (define write-style (lambda (_we83158_) (macro-writeenv-style _we83158_)))
    (define write-object
      (lambda (_we83150_ _obj83151_)
        (let ((_$e83153_
               (let () (declare (not safe)) (method-ref _obj83151_ ':wr))))
          (if _$e83153_
              ((lambda (_method83156_) (_method83156_ _obj83151_ _we83150_))
               _$e83153_)
              (let ()
                (declare (not safe))
                (##default-wr _we83150_ _obj83151_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
