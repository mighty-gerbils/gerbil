(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707651232)
  (begin
    (define type-id
      (lambda (_klass84179_)
        (if (let () (declare (not safe)) (type-descriptor? _klass84179_))
            (let () (declare (not safe)) (##type-id _klass84179_))
            (if (let () (declare (not safe)) (not _klass84179_))
                '#f
                (error '"not a type descriptor" _klass84179_)))))
    (define type=?
      (lambda (_x84176_ _y84177_)
        (let ((__tmp88673 (let () (declare (not safe)) (type-id _x84176_)))
              (__tmp88672 (let () (declare (not safe)) (type-id _y84177_))))
          (declare (not safe))
          (eq? __tmp88673 __tmp88672))))
    (define type-descriptor?
      (lambda (_klass84174_)
        (if (let () (declare (not safe)) (##type? _klass84174_))
            (let ((__tmp88674
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass84174_))))
              (declare (not safe))
              (eq? __tmp88674 '12))
            '#f)))
    (define type-struct?
      (lambda (_klass84172_)
        (let ((__tmp88675
               (let () (declare (not safe)) (##type-flags _klass84172_))))
          (declare (not safe))
          (##fxbit-set? '21 __tmp88675))))
    (define type-final?
      (lambda (_klass84170_)
        (let ((__tmp88676
               (let () (declare (not safe)) (##type-flags _klass84170_))))
          (declare (not safe))
          (##fxbit-set? '22 __tmp88676))))
    (define class-type?
      (lambda (_klass84168_)
        (let () (declare (not safe)) (type-descriptor? _klass84168_))))
    (define properties-form
      (lambda (_properties84134_)
        (map (lambda (_e8413584137_)
               (let* ((_g8413984146_ _e8413584137_)
                      (_E8414184150_
                       (lambda () (error '"No clause matching" _g8413984146_)))
                      (_K8414284156_
                       (lambda (_val84153_ _key84154_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key84154_ 'direct-supers:))
                             (let ((__tmp88677 (map type-id _val84153_)))
                               (declare (not safe))
                               (cons _key84154_ __tmp88677))
                             (let ()
                               (declare (not safe))
                               (cons _key84154_ _val84153_))))))
                 (if (let () (declare (not safe)) (##pair? _g8413984146_))
                     (let ((_hd8414384159_
                            (let ()
                              (declare (not safe))
                              (##car _g8413984146_)))
                           (_tl8414484161_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8413984146_))))
                       (let* ((_key84164_ _hd8414384159_)
                              (_val84166_ _tl8414484161_))
                         (declare (not safe))
                         (_K8414284156_ _val84166_ _key84164_)))
                     (let () (declare (not safe)) (_E8414184150_)))))
             _properties84134_)))
    (define make-type-descriptor
      (lambda (_type-id84041_
               _type-name84042_
               _type-super84043_
               _precedence-list84044_
               _all-slots84045_
               _properties84046_
               _constructor84047_
               _slot-table84048_
               _methods84049_)
        (letrec ((_make-props!84051_
                  (lambda (_key84103_)
                    (letrec* ((_ht84105_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!84106_
                               (lambda (_ht84127_ _slots84128_)
                                 (for-each
                                  (lambda (_g8412984131_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht84127_
                                       _g8412984131_
                                       '#t)))
                                  _slots84128_)))
                              (_put-alist!84107_
                               (lambda (_ht84116_ _key84117_ _alist84118_)
                                 (let ((_$e84120_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key84117_ _alist84118_))))
                                   (if _$e84120_
                                       ((lambda (_g8412284124_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!84106_
                                             _ht84116_
                                             _g8412284124_)))
                                        _$e84120_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!84107_
                         _ht84105_
                         _key84103_
                         _properties84046_))
                      (for-each
                       (lambda (_mixin84109_)
                         (let ((_alist84111_
                                (let ()
                                  (declare (not safe))
                                  (type-descriptor-properties _mixin84109_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist84111_))
                                   (let ((__tmp88679
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key84103_
                                                     _alist84111_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp88679)))
                               (let ((__tmp88678
                                      (let ()
                                        (declare (not safe))
                                        (type-descriptor-slot-list
                                         _mixin84109_))))
                                 (declare (not safe))
                                 (_put-slots!84106_ _ht84105_ __tmp88678))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!84107_
                                  _ht84105_
                                  _key84103_
                                  _alist84111_)))))
                       _precedence-list84044_)
                      _ht84105_))))
          (let* ((_transparent?84053_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties84046_)))
                 (_all-slots-printable?84058_
                  (let ((_$e84055_ _transparent?84053_))
                    (if _$e84055_
                        _$e84055_
                        (let ((__tmp88680
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties84046_))))
                          (declare (not safe))
                          (eq? '#t __tmp88680)))))
                 (_printable84060_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?84058_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84051_ 'print:))
                      '#f))
                 (_all-slots-equalable?84065_
                  (let ((_$e84062_ _transparent?84053_))
                    (if _$e84062_
                        _$e84062_
                        (let ((__tmp88681
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties84046_))))
                          (declare (not safe))
                          (eq? '#t __tmp88681)))))
                 (_equalable84067_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?84065_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84051_ 'equal:))
                      '#f))
                 (_first-new-field84069_
                  (if _type-super84043_
                      (let ((__tmp88682
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _type-super84043_))))
                        (declare (not safe))
                        (##vector-length __tmp88682))
                      '1))
                 (_field-info-length84071_
                  (let ((__tmp88683
                         (let ((__tmp88684
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _all-slots84045_))))
                           (declare (not safe))
                           (##fx- __tmp88684 _first-new-field84069_))))
                    (declare (not safe))
                    (##fx* '3 __tmp88683)))
                 (_field-info84073_ (make-vector _field-info-length84071_ '#f))
                 (_struct?84075_
                  (let ()
                    (declare (not safe))
                    (assgetq 'struct: _properties84046_)))
                 (_final?84077_
                  (let ()
                    (declare (not safe))
                    (assgetq 'final: _properties84046_)))
                 (_opaque?84082_
                  (let ((_$e84079_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?84065_))))
                    (if _$e84079_
                        _$e84079_
                        (if _type-super84043_
                            (let ((__tmp88685
                                   (let ((__tmp88686
                                          (let ()
                                            (declare (not safe))
                                            (##type-flags _type-super84043_))))
                                     (declare (not safe))
                                     (##fxand __tmp88686 '1))))
                              (declare (not safe))
                              (##fx= __tmp88685 '1))
                            '#f))))
                 (_type-flags84084_
                  (let ((__tmp88689 (if _opaque?84082_ '1 '0))
                        (__tmp88688
                         (if _struct?84075_
                             (let ()
                               (declare (not safe))
                               (##fxarithmetic-shift '1 '21))
                             '0))
                        (__tmp88687
                         (if _final?84077_
                             (let ()
                               (declare (not safe))
                               (##fxarithmetic-shift '1 '22))
                             '0)))
                    (declare (not safe))
                    (##fxior '24 __tmp88689 __tmp88688 __tmp88687))))
            (let _loop84087_ ((_i84089_ _first-new-field84069_) (_j84090_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j84090_ _field-info-length84071_))
                  (let* ((_slot84092_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _all-slots84045_ _i84089_)))
                         (_flags84100_
                          (if _transparent?84053_
                              '0
                              (let ((__tmp88691
                                     (if (or _all-slots-printable?84058_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable84060_
                                                _slot84092_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp88690
                                     (if (or _all-slots-equalable?84065_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable84067_
                                                _slot84092_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp88691 __tmp88690)))))
                    (vector-set! _field-info84073_ _j84090_ _slot84092_)
                    (vector-set!
                     _field-info84073_
                     (let () (declare (not safe)) (##fx+ _j84090_ '1))
                     _flags84100_)
                    (let ((__tmp88693
                           (let () (declare (not safe)) (##fx+ _i84089_ '1)))
                          (__tmp88692
                           (let () (declare (not safe)) (##fx+ _j84090_ '3))))
                      (declare (not safe))
                      (_loop84087_ __tmp88693 __tmp88692)))
                  '#!void))
            (let ()
              (declare (not safe))
              (##structure
               ##type-type
               _type-id84041_
               _type-name84042_
               _type-flags84084_
               _type-super84043_
               _field-info84073_
               _precedence-list84044_
               _all-slots84045_
               _slot-table84048_
               _properties84046_
               _constructor84047_
               _methods84049_))))))
    (define type-descriptor-precedence-list
      (lambda (_klass84039_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84039_
           '6
           ##type-type
           type-descriptor-precedence-list))))
    (define type-descriptor-all-slots
      (lambda (_klass84037_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84037_
           '7
           ##type-type
           type-descriptor-all-slots))))
    (define type-descriptor-slot-table
      (lambda (_klass84035_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84035_
           '8
           ##type-type
           type-descriptor-slot-table))))
    (define type-descriptor-properties
      (lambda (_klass84033_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84033_
           '9
           ##type-type
           type-descriptor-properties))))
    (define type-descriptor-constructor
      (lambda (_klass84031_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84031_
           '10
           ##type-type
           type-descriptor-constructor))))
    (define type-descriptor-methods
      (lambda (_klass84029_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84029_
           '11
           ##type-type
           type-descriptor-methods))))
    (define type-descriptor-methods-set!
      (lambda (_klass84026_ _ht84027_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84026_
           _ht84027_
           '11
           ##type-type
           type-descriptor-methods-set!))))
    (define type-descriptor-slot-list
      (lambda (_klass84024_)
        (cdr (vector->list
              (let ()
                (declare (not safe))
                (type-descriptor-all-slots _klass84024_))))))
    (define type-descriptor-fields
      (lambda (_klass84022_)
        (let ((__tmp88694
               (let ((__tmp88695
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass84022_))))
                 (declare (not safe))
                 (##vector-length __tmp88695))))
          (declare (not safe))
          (##fx- __tmp88694 '1))))
    (define type-descriptor-sealed?
      (lambda (_klass84020_)
        (let ((__tmp88696
               (let () (declare (not safe)) (##type-flags _klass84020_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp88696))))
    (define type-descriptor-seal!
      (lambda (_klass84018_)
        (let ((__tmp88697
               (let ((__tmp88699
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp88698
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84018_))))
                 (declare (not safe))
                 (##fxior __tmp88699 __tmp88698))))
          (declare (not safe))
          (##structure-set!
           _klass84018_
           __tmp88697
           '3
           ##type-type
           type-descriptor-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct84009_ _maybe-super-struct84010_)
        (let ((_maybe-super-struct-id84012_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct84010_))))
          (let _lp84014_ ((_super-struct84016_ _maybe-sub-struct84009_))
            (if (let () (declare (not safe)) (not _super-struct84016_))
                '#f
                (if (let ((__tmp88701
                           (let ()
                             (declare (not safe))
                             (type-id _super-struct84016_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id84012_ __tmp88701))
                    '#t
                    (let ((__tmp88700
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct84016_))))
                      (declare (not safe))
                      (_lp84014_ __tmp88700))))))))
    (define base-struct/1
      (lambda (_klass84007_)
        (if (let () (declare (not safe)) (struct-type? _klass84007_))
            _klass84007_
            (if (let () (declare (not safe)) (class-type? _klass84007_))
                (let () (declare (not safe)) (##type-super _klass84007_))
                (if (let () (declare (not safe)) (not _klass84007_))
                    '#f
                    (error '"not a class or false" _klass84007_))))))
    (define base-struct/2
      (lambda (_klass183995_ _klass283996_)
        (let ((_s183998_
               (let () (declare (not safe)) (base-struct/1 _klass183995_)))
              (_s283999_
               (let () (declare (not safe)) (base-struct/1 _klass283996_))))
          (if (or (let () (declare (not safe)) (not _s183998_))
                  (and _s283999_
                       (let ()
                         (declare (not safe))
                         (substruct? _s183998_ _s283999_))))
              _s283999_
              (if (or (let () (declare (not safe)) (not _s283999_))
                      (and _s183998_
                           (let ()
                             (declare (not safe))
                             (substruct? _s283999_ _s183998_))))
                  _s183998_
                  (error '"bad mixin: incompatible struct bases"
                         _klass183995_
                         _klass283996_
                         _s183998_
                         _s283999_))))))
    (define base-struct/list
      (lambda (_all-supers83879_)
        (let* ((_all-supers8388083905_ _all-supers83879_)
               (_E8388583909_
                (lambda ()
                  (error '"No clause matching" _all-supers8388083905_))))
          (let ((_K8390383992_ (lambda () '#f))
                (_K8390083978_
                 (lambda (_x83976_)
                   (let () (declare (not safe)) (base-struct/1 _x83976_))))
                (_K8389583955_
                 (lambda (_y83952_ _x83953_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x83953_ _y83952_))))
                (_K8388683916_
                 (lambda (_y83913_ _x83914_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x83914_ _y83913_)))))
            (let* ((___match8866988670_
                    (lambda (_hd8388783919_ _tl8388883921_)
                      (let ((_x83924_ _hd8388783919_))
                        (letrec ((_splice-rest8389083926_
                                  (lambda (_rest8389483933_ _y83935_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8389483933_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8388683916_ _y83935_ _x83924_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8388583909_)))))
                                 (_splice-try8389283928_
                                  (lambda (_hd8389383937_
                                           _rest8389483939_
                                           _y8388983940_)
                                    (let ((_y83943_ _hd8389383937_))
                                      (let ((__tmp88703
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8389483939_)))
                                            (__tmp88702
                                             (let ()
                                               (declare (not safe))
                                               (cons _y83943_ _y8388983940_))))
                                        (declare (not safe))
                                        (_splice-loop8389183930_
                                         __tmp88703
                                         __tmp88702)))))
                                 (_splice-loop8389183930_
                                  (lambda (_rest8389483945_ _y8388983946_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8389483945_))
                                        (let ((__tmp88705
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8389483945_))))
                                          (declare (not safe))
                                          (_splice-try8389283928_
                                           __tmp88705
                                           _rest8389483945_
                                           _y8388983946_))
                                        (let ((__tmp88704
                                               (reverse _y8388983946_)))
                                          (declare (not safe))
                                          (_splice-rest8389083926_
                                           _rest8389483945_
                                           __tmp88704))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8389183930_ _tl8388883921_ '()))))))
                   (_try-match8388283988_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8388083905_))
                          (let ((_tl8390283983_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8388083905_)))
                                (_hd8390183981_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8388083905_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8390283983_))
                                (let ((_x83986_ _hd8390183981_))
                                  (declare (not safe))
                                  (base-struct/1 _x83986_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8390283983_))
                                    (let ((_tl8389983967_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8390283983_)))
                                          (_hd8389883965_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8390283983_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8389983967_))
                                          (let ((_x83963_ _hd8390183981_)
                                                (_y83970_ _hd8389883965_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8389583955_
                                               _y83970_
                                               _x83963_)))
                                          (___match8866988670_
                                           _hd8390183981_
                                           _tl8390283983_)))
                                    (___match8866988670_
                                     _hd8390183981_
                                     _tl8390283983_))))
                          (let () (declare (not safe)) (_E8388583909_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8388083905_))
                  (let () (declare (not safe)) (_K8390383992_))
                  (let () (declare (not safe)) (_try-match8388283988_))))))))
    (define base-struct
      (lambda _all-supers83877_
        (let () (declare (not safe)) (base-struct/list _all-supers83877_))))
    (define find-super-constructor
      (lambda (_super83829_)
        (let _lp83831_ ((_rest83833_ _super83829_) (_constructor83834_ '#f))
          (let* ((_rest8383583843_ _rest83833_)
                 (_else8383783851_ (lambda () _constructor83834_))
                 (_K8383983865_
                  (lambda (_rest83854_ _hd83855_)
                    (let ((_$e83857_
                           (let ()
                             (declare (not safe))
                             (type-descriptor-constructor _hd83855_))))
                      (if _$e83857_
                          ((lambda (_xconstructor83860_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor83834_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor83834_
                                            _xconstructor83860_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp83831_ _rest83854_ _xconstructor83860_))
                                 (error '"conflicting implicit constructors"
                                        _constructor83834_
                                        _xconstructor83860_)))
                           _$e83857_)
                          (let ()
                            (declare (not safe))
                            (_lp83831_ _rest83854_ _constructor83834_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8383583843_))
                (let ((_hd8384083868_
                       (let () (declare (not safe)) (##car _rest8383583843_)))
                      (_tl8384183870_
                       (let () (declare (not safe)) (##cdr _rest8383583843_))))
                  (let* ((_hd83873_ _hd8384083868_)
                         (_rest83875_ _tl8384183870_))
                    (declare (not safe))
                    (_K8383983865_ _rest83875_ _hd83873_)))
                (let () (declare (not safe)) (_else8383783851_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list83805_ _direct-slots83806_)
        (let* ((_next-slot83808_ '1)
               (_slot-table83810_
                (let () (declare (not safe)) (make-table 'test: eq?)))
               (_r-slots83812_ (let () (declare (not safe)) (cons '#f '())))
               (_process-slot83816_
                (lambda (_slot83814_)
                  (if (let () (declare (not safe)) (symbol? _slot83814_))
                      '#!void
                      (error '"invalid slot name" _slot83814_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table83810_ _slot83814_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table83810_
                           _slot83814_
                           _next-slot83808_))
                        (let ((__tmp88706 (symbol->keyword _slot83814_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table83810_
                           __tmp88706
                           _next-slot83808_))
                        (set! _r-slots83812_
                              (let ()
                                (declare (not safe))
                                (cons _slot83814_ _r-slots83812_)))
                        (set! _next-slot83808_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot83808_ '1)))))))
               (_process-slots83822_
                (lambda (_g8381783819_)
                  (for-each _process-slot83816_ _g8381783819_))))
          (for-each
           (lambda (_mixin83825_)
             (let ((__tmp88707
                    (let ((__tmp88708
                           (let ()
                             (declare (not safe))
                             (type-descriptor-properties _mixin83825_))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp88708 '()))))
               (declare (not safe))
               (_process-slots83822_ __tmp88707)))
           (reverse _class-precedence-list83805_))
          (let ()
            (declare (not safe))
            (_process-slots83822_ _direct-slots83806_))
          (let ((_all-slots83827_ (list->vector (reverse _r-slots83812_))))
            (values _all-slots83827_ _slot-table83810_)))))
    (define make-class-type
      (lambda (_id83768_
               _name83769_
               _direct-supers83770_
               _direct-slots83771_
               _properties83772_
               _constructor83773_)
        (let ((_$e83777_
               (let ((__tmp88709
                      (lambda (_klass83775_)
                        (let ((__tmp88710
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor? _klass83775_))))
                          (declare (not safe))
                          (not __tmp88710)))))
                 (declare (not safe))
                 (find __tmp88709 _direct-supers83770_))))
          (if _$e83777_
              ((lambda (_g8377983781_)
                 (error '"Illegal super class; not a type descriptor"
                        _g8377983781_))
               _$e83777_)
              (let ((_$e83784_
                     (let ()
                       (declare (not safe))
                       (find type-final? _direct-supers83770_))))
                (if _$e83784_
                    ((lambda (_g8378683788_)
                       (error '"Cannot extend final class" _g8378683788_))
                     _$e83784_)
                    '#!void))))
        (let ((_g88711_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers83770_))))
          (begin
            (let ((_g88712_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g88711_) (##vector-length _g88711_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g88712_ 2)))
                  (error "Context expects 2 values" _g88712_)))
            (let ((_precedence-list83791_
                   (let () (declare (not safe)) (##vector-ref _g88711_ 0)))
                  (_struct-super83792_
                   (let () (declare (not safe)) (##vector-ref _g88711_ 1))))
              (let ((_g88713_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list83791_
                        _direct-slots83771_))))
                (begin
                  (let ((_g88714_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g88713_)
                               (##vector-length _g88713_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g88714_ 2)))
                        (error "Context expects 2 values" _g88714_)))
                  (let ((_all-slots83794_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g88713_ 0)))
                        (_slot-table83795_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g88713_ 1))))
                    (let* ((_properties83797_
                            (let ((__tmp88717
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots83771_)))
                                  (__tmp88715
                                   (let ((__tmp88716
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers83770_))))
                                     (declare (not safe))
                                     (cons __tmp88716 _properties83772_))))
                              (declare (not safe))
                              (cons __tmp88717 __tmp88715)))
                           (_constructor*83802_
                            (let ((_$e83799_ _constructor83773_))
                              (if _$e83799_
                                  _$e83799_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers83770_))))))
                      (let ()
                        (declare (not safe))
                        (make-type-descriptor
                         _id83768_
                         _name83769_
                         _struct-super83792_
                         _precedence-list83791_
                         _all-slots83794_
                         _properties83797_
                         _constructor*83802_
                         _slot-table83795_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass83766_)
        (let ((__tmp88718
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass83766_))))
          (declare (not safe))
          (cons _klass83766_ __tmp88718))))
    (define compute-precedence-list
      (lambda (_direct-supers83764_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           type-struct?
           eq?
           ##type-name
           '()
           _direct-supers83764_))))
    (define make-class-predicate
      (lambda (_klass83748_)
        (let ((_tid83750_
               (let () (declare (not safe)) (##type-id _klass83748_))))
          (if (let () (declare (not safe)) (type-final? _klass83748_))
              (lambda (_g8375183753_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8375183753_ _tid83750_)))
              (if (let () (declare (not safe)) (type-struct? _klass83748_))
                  (lambda (_g8375583757_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g8375583757_ _tid83750_)))
                  (lambda (_g8375983761_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass83748_ _g8375983761_))))))))
    (define if-class-slot-field
      (lambda (_klass83737_
               _slot83738_
               _if-final83739_
               _if-struct83740_
               _if-struct-field83741_
               _if-class-slot83742_)
        (let ((_field83744_
               (let ((__tmp88719
                      (let ()
                        (declare (not safe))
                        (type-descriptor-slot-table _klass83737_))))
                 (declare (not safe))
                 (table-ref __tmp88719 _slot83738_ '#f))))
          (if (let () (declare (not safe)) (not _field83744_))
              (error '"unknown slot" 'class: _klass83737_ 'slot: _slot83738_)
              (if (let () (declare (not safe)) (type-final? _klass83737_))
                  (_if-final83739_ _klass83737_ _slot83738_ _field83744_)
                  (if (let () (declare (not safe)) (type-struct? _klass83737_))
                      (_if-struct83740_ _klass83737_ _slot83738_ _field83744_)
                      (if (let ((_strukt83746_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass83737_))))
                            (and _strukt83746_
                                 (let ((__tmp88720
                                        (let ((__tmp88721
                                               (let ()
                                                 (declare (not safe))
                                                 (type-descriptor-all-slots
                                                  _strukt83746_))))
                                          (declare (not safe))
                                          (##vector-length __tmp88721))))
                                   (declare (not safe))
                                   (##fx< _field83744_ __tmp88720))))
                          (_if-struct-field83741_
                           _klass83737_
                           _slot83738_
                           _field83744_)
                          (_if-class-slot83742_
                           _klass83737_
                           _slot83738_
                           _field83744_))))))))
    (define make-class-slot-accessor
      (lambda (_klass83734_ _slot83735_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83734_
           _slot83735_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass83731_ _slot83732_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83731_
           _slot83732_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass83728_ _slot83729_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83728_
           _slot83729_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass83725_ _slot83726_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83725_
           _slot83726_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object83709_ _class83710_ _slot83711_)
        (apply error
               '"not an instance"
               'object:
               _object83709_
               'class:
               _class83710_
               (if _slot83711_
                   (let ((__tmp88722
                          (let ()
                            (declare (not safe))
                            (cons _slot83711_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp88722))
                   '()))))
    (define not-an-instance__0
      (lambda (_object83716_ _class83717_)
        (let ((_slot83719_ '#f))
          (declare (not safe))
          (not-an-instance__% _object83716_ _class83717_ _slot83719_))))
    (define not-an-instance
      (lambda _g88724_
        (let ((_g88723_ (let () (declare (not safe)) (##length _g88724_))))
          (cond ((let () (declare (not safe)) (##fx= _g88723_ 2))
                 (apply (lambda (_object83716_ _class83717_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object83716_ _class83717_)))
                        _g88724_))
                ((let () (declare (not safe)) (##fx= _g88723_ 3))
                 (apply (lambda (_object83721_ _class83722_ _slot83723_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object83721_
                             _class83722_
                             _slot83723_)))
                        _g88724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g88724_))))))
    (define make-final-slot-accessor
      (lambda (_klass83702_ _slot83703_ _field83704_)
        (lambda (_obj83706_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj83706_
             _field83704_
             _klass83702_
             _slot83703_)))))
    (define make-final-slot-mutator
      (lambda (_klass83695_ _slot83696_ _field83697_)
        (lambda (_obj83699_ _val83700_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj83699_
             _val83700_
             _field83697_
             _klass83695_
             _slot83696_)))))
    (define make-struct-slot-accessor
      (lambda (_klass83689_ _slot83690_ _field83691_)
        (lambda (_obj83693_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj83693_
             _field83691_
             _klass83689_
             _slot83690_)))))
    (define make-struct-slot-mutator
      (lambda (_klass83682_ _slot83683_ _field83684_)
        (lambda (_obj83686_ _val83687_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj83686_
             _val83687_
             _field83684_
             _klass83682_
             _slot83683_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass83676_ _slot83677_ _field83678_)
        (lambda (_obj83680_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj83680_
             _field83678_
             _klass83676_
             _slot83677_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass83669_ _slot83670_ _field83671_)
        (lambda (_obj83673_ _val83674_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj83673_
             _val83674_
             _field83671_
             _klass83669_
             _slot83670_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass83663_ _slot83664_ _field83665_)
        (lambda (_obj83667_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83663_ _obj83667_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83667_ _field83665_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83667_ _klass83663_ _slot83664_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass83656_ _slot83657_ _field83658_)
        (lambda (_obj83660_ _val83661_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83656_ _obj83660_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83660_ _field83658_ _val83661_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83660_ _klass83656_ _slot83657_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass83650_ _slot83651_ _field83652_)
        (lambda (_obj83654_)
          (if (let ((__tmp88725
                     (let () (declare (not safe)) (##type-id _klass83650_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83654_ __tmp88725))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83654_ _field83652_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83650_ _obj83654_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj83654_ _slot83651_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83654_
                     _klass83650_
                     _slot83651_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass83643_ _slot83644_ _field83645_)
        (lambda (_obj83647_ _val83648_)
          (if (let ((__tmp88726
                     (let () (declare (not safe)) (##type-id _klass83643_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83647_ __tmp88726))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83647_ _field83645_ _val83648_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83643_ _obj83647_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj83647_ _slot83644_ _val83648_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83647_
                     _klass83643_
                     _slot83644_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass83637_ _slot83638_ _field83639_)
        (lambda (_obj83641_)
          (if (let ((__tmp88727
                     (let () (declare (not safe)) (##type-id _klass83637_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83641_ __tmp88727))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83641_ _field83639_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83641_ _slot83638_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass83630_ _slot83631_ _field83632_)
        (lambda (_obj83634_ _val83635_)
          (if (let ((__tmp88728
                     (let () (declare (not safe)) (##type-id _klass83630_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83634_ __tmp88728))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83634_ _field83632_ _val83635_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj83634_ _slot83631_ _val83635_))))))
    (define class-slot-offset
      (lambda (_klass83627_ _slot83628_)
        (let ((__tmp88729
               (let ()
                 (declare (not safe))
                 (type-descriptor-slot-table _klass83627_))))
          (declare (not safe))
          (table-ref __tmp88729 _slot83628_ '#f))))
    (define class-slot-ref
      (lambda (_klass83621_ _obj83622_ _slot83623_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83621_ _obj83622_))
            (let ((_off83625_
                   (let ((__tmp88730
                          (let ()
                            (declare (not safe))
                            (object-type _obj83622_))))
                     (declare (not safe))
                     (class-slot-offset __tmp88730 _slot83623_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj83622_
               _off83625_
               _klass83621_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83622_ _klass83621_)))))
    (define class-slot-set!
      (lambda (_klass83614_ _obj83615_ _slot83616_ _val83617_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83614_ _obj83615_))
            (let ((_off83619_
                   (let ((__tmp88731
                          (let ()
                            (declare (not safe))
                            (object-type _obj83615_))))
                     (declare (not safe))
                     (class-slot-offset __tmp88731 _slot83616_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj83615_
               _val83617_
               _off83619_
               _klass83614_
               '#f))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83615_ _klass83614_)))))
    (define unchecked-field-ref
      (lambda (_obj83611_ _off83612_)
        (let ((__tmp88732
               (let () (declare (not safe)) (##structure-type _obj83611_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj83611_ _off83612_ __tmp88732 '#f))))
    (define unchecked-field-set!
      (lambda (_obj83607_ _off83608_ _val83609_)
        (let ((__tmp88733
               (let () (declare (not safe)) (##structure-type _obj83607_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj83607_
           _val83609_
           _off83608_
           __tmp88733
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj83604_ _slot83605_)
        (let ((__tmp88734
               (let ((__tmp88735
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83604_))))
                 (declare (not safe))
                 (class-slot-offset __tmp88735 _slot83605_))))
          (declare (not safe))
          (unchecked-field-ref _obj83604_ __tmp88734))))
    (define unchecked-slot-set!
      (lambda (_obj83600_ _slot83601_ _val83602_)
        (let ((__tmp88736
               (let ((__tmp88737
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83600_))))
                 (declare (not safe))
                 (class-slot-offset __tmp88737 _slot83601_))))
          (declare (not safe))
          (unchecked-field-set! _obj83600_ __tmp88736 _val83602_))))
    (define slot-ref__%
      (lambda (_obj83576_ _slot83577_ _E83578_)
        (if (let () (declare (not safe)) (object? _obj83576_))
            (let* ((_klass83580_
                    (let () (declare (not safe)) (object-type _obj83576_)))
                   (_$e83583_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83580_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83580_ _slot83577_))
                        '#f)))
              (if _$e83583_
                  ((lambda (_off83586_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj83576_ _off83586_)))
                   _$e83583_)
                  (_E83578_ _obj83576_ _slot83577_)))
            (_E83578_ _obj83576_ _slot83577_))))
    (define slot-ref__0
      (lambda (_obj83591_ _slot83592_)
        (let ((_E83594_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj83591_ _slot83592_ _E83594_))))
    (define slot-ref
      (lambda _g88739_
        (let ((_g88738_ (let () (declare (not safe)) (##length _g88739_))))
          (cond ((let () (declare (not safe)) (##fx= _g88738_ 2))
                 (apply (lambda (_obj83591_ _slot83592_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj83591_ _slot83592_)))
                        _g88739_))
                ((let () (declare (not safe)) (##fx= _g88738_ 3))
                 (apply (lambda (_obj83596_ _slot83597_ _E83598_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj83596_ _slot83597_ _E83598_)))
                        _g88739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g88739_))))))
    (define slot-set!__%
      (lambda (_obj83548_ _slot83549_ _val83550_ _E83551_)
        (if (let () (declare (not safe)) (object? _obj83548_))
            (let* ((_klass83553_
                    (let () (declare (not safe)) (object-type _obj83548_)))
                   (_$e83556_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass83553_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83553_ _slot83549_))
                        '#f)))
              (if _$e83556_
                  ((lambda (_off83559_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj83548_
                        _off83559_
                        _val83550_)))
                   _$e83556_)
                  (_E83551_ _obj83548_ _slot83549_)))
            (_E83551_ _obj83548_ _slot83549_))))
    (define slot-set!__0
      (lambda (_obj83564_ _slot83565_ _val83566_)
        (let ((_E83568_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj83564_ _slot83565_ _val83566_ _E83568_))))
    (define slot-set!
      (lambda _g88741_
        (let ((_g88740_ (let () (declare (not safe)) (##length _g88741_))))
          (cond ((let () (declare (not safe)) (##fx= _g88740_ 3))
                 (apply (lambda (_obj83564_ _slot83565_ _val83566_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj83564_ _slot83565_ _val83566_)))
                        _g88741_))
                ((let () (declare (not safe)) (##fx= _g88740_ 4))
                 (apply (lambda (_obj83570_ _slot83571_ _val83572_ _E83573_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj83570_
                             _slot83571_
                             _val83572_
                             _E83573_)))
                        _g88741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g88741_))))))
    (define __slot-error
      (lambda (_obj83544_ _slot83545_)
        (error '"Cannot find slot" 'object: _obj83544_ 'slot: _slot83545_)))
    (define subclass?
      (lambda (_maybe-sub-class83534_ _maybe-super-class83535_)
        (let* ((_maybe-super-class-id83537_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class83535_)))
               (_$e83539_
                (let ((__tmp88742
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class83534_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id83537_ __tmp88742))))
          (if _$e83539_
              _$e83539_
              (let ((__tmp88744
                     (lambda (_super-class83542_)
                       (let ((__tmp88745
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class83542_))))
                         (declare (not safe))
                         (eq? __tmp88745 _maybe-super-class-id83537_))))
                    (__tmp88743
                     (let ()
                       (declare (not safe))
                       (type-descriptor-precedence-list
                        _maybe-sub-class83534_))))
                (declare (not safe))
                (ormap1 __tmp88744 __tmp88743))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass83531_ _obj83532_)
        (let ((__tmp88746
               (let () (declare (not safe)) (##type-id _klass83531_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj83532_ __tmp88746))))
    (define struct-instance?
      (lambda (_klass83528_ _obj83529_)
        (let ((__tmp88747
               (let () (declare (not safe)) (##type-id _klass83528_))))
          (declare (not safe))
          (##structure-instance-of? _obj83529_ __tmp88747))))
    (define class-instance?
      (lambda (_klass83523_ _obj83524_)
        (if (let () (declare (not safe)) (object? _obj83524_))
            (let ((_type83526_
                   (let () (declare (not safe)) (object-type _obj83524_))))
              (if (let () (declare (not safe)) (type-descriptor? _type83526_))
                  (let ()
                    (declare (not safe))
                    (subclass? _type83526_ _klass83523_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass83518_ _k83519_)
        (let ((_obj83521_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass83518_ _k83519_))))
          (let () (declare (not safe)) (object-fill! _obj83521_ '#f))
          _obj83521_)))
    (define object-fill!
      (lambda (_obj83511_ _fill83512_)
        (let _loop83514_ ((_i83516_
                           (let ((__tmp88749
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj83511_))))
                             (declare (not safe))
                             (##fx- __tmp88749 '1))))
          (if (let () (declare (not safe)) (##fx> _i83516_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj83511_
                   _fill83512_
                   _i83516_
                   '#f
                   '#f))
                (let ((__tmp88748
                       (let () (declare (not safe)) (##fx- _i83516_ '1))))
                  (declare (not safe))
                  (_loop83514_ __tmp88748)))
              _obj83511_))))
    (define make-class-instance
      (lambda (_klass83501_ . _args83502_)
        (let* ((_obj83504_
                (let ((__obj88671
                       (let ((__tmp88750
                              (let ((__tmp88751
                                     (let ()
                                       (declare (not safe))
                                       (type-descriptor-all-slots
                                        _klass83501_))))
                                (declare (not safe))
                                (##vector-length __tmp88751))))
                         (declare (not safe))
                         (##make-structure _klass83501_ __tmp88750))))
                  (let () (declare (not safe)) (object-fill! __obj88671 '#f))
                  __obj88671))
               (_$e83506_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass83501_))))
          (if _$e83506_
              ((lambda (_kons-id83509_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83501_
                    _kons-id83509_
                    _obj83504_
                    _args83502_)))
               _$e83506_)
              (if (let ((__tmp88755
                         (let ()
                           (declare (not safe))
                           (type-struct? _klass83501_))))
                    (declare (not safe))
                    (not __tmp88755))
                  (let ()
                    (declare (not safe))
                    (__class-instance-init!
                     _klass83501_
                     _obj83504_
                     _args83502_))
                  (if (let ((__tmp88753
                             (let ((__tmp88754
                                    (let ()
                                      (declare (not safe))
                                      (##structure-length _obj83504_))))
                               (declare (not safe))
                               (##fx- __tmp88754 '1)))
                            (__tmp88752 (length _args83502_)))
                        (declare (not safe))
                        (##fx= __tmp88753 __tmp88752))
                      (apply ##structure _klass83501_ _args83502_)
                      (error '"arguments don't match object size"
                             'class:
                             _klass83501_
                             'slots:
                             (let ()
                               (declare (not safe))
                               (type-descriptor-slot-list _klass83501_))
                             'args:
                             _args83502_)))))))
    (define struct-instance-init!
      (lambda (_obj83498_ . _args83499_)
        (if (let ((__tmp88757 (length _args83499_))
                  (__tmp88756
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj83498_))))
              (declare (not safe))
              (##fx< __tmp88757 __tmp88756))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj83498_ _args83499_))
            (error '"too many arguments for struct"
                   'object:
                   _obj83498_
                   'args:
                   _args83499_))))
    (define __struct-instance-init!
      (lambda (_obj83457_ _args83458_)
        (let _lp83460_ ((_k83462_ '1) (_rest83463_ _args83458_))
          (let* ((_rest8346483472_ _rest83463_)
                 (_else8346683480_ (lambda () _obj83457_))
                 (_K8346883486_
                  (lambda (_rest83483_ _hd83484_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj83457_ _k83462_ _hd83484_))
                    (let ((__tmp88758
                           (let () (declare (not safe)) (##fx+ _k83462_ '1))))
                      (declare (not safe))
                      (_lp83460_ __tmp88758 _rest83483_)))))
            (if (let () (declare (not safe)) (##pair? _rest8346483472_))
                (let ((_hd8346983489_
                       (let () (declare (not safe)) (##car _rest8346483472_)))
                      (_tl8347083491_
                       (let () (declare (not safe)) (##cdr _rest8346483472_))))
                  (let* ((_hd83494_ _hd8346983489_)
                         (_rest83496_ _tl8347083491_))
                    (declare (not safe))
                    (_K8346883486_ _rest83496_ _hd83494_)))
                (let () (declare (not safe)) (_else8346683480_)))))))
    (define class-instance-init!
      (lambda (_obj83454_ . _args83455_)
        (let ((__tmp88759
               (let () (declare (not safe)) (object-type _obj83454_))))
          (declare (not safe))
          (__class-instance-init! __tmp88759 _obj83454_ _args83455_))))
    (define __class-instance-init!
      (lambda (_klass83398_ _obj83399_ _args83400_)
        (let _lp83402_ ((_rest83404_ _args83400_))
          (let* ((_rest8340583415_ _rest83404_)
                 (_else8340783423_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest83404_))
                        _obj83399_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass83398_
                               'rest:
                               _rest83404_))))
                 (_K8340983435_
                  (lambda (_rest83426_ _val83427_ _key83428_)
                    (let ((_$e83430_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass83398_ _key83428_))))
                      (if _$e83430_
                          ((lambda (_off83433_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj83399_
                                _off83433_
                                _val83427_))
                             (let ()
                               (declare (not safe))
                               (_lp83402_ _rest83426_)))
                           _$e83430_)
                          (error '"unknown slot"
                                 'class:
                                 _klass83398_
                                 'slot:
                                 _key83428_))))))
            (if (let () (declare (not safe)) (##pair? _rest8340583415_))
                (let ((_hd8341083438_
                       (let () (declare (not safe)) (##car _rest8340583415_)))
                      (_tl8341183440_
                       (let () (declare (not safe)) (##cdr _rest8340583415_))))
                  (let ((_key83443_ _hd8341083438_))
                    (if (let () (declare (not safe)) (##pair? _tl8341183440_))
                        (let ((_hd8341283445_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8341183440_)))
                              (_tl8341383447_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8341183440_))))
                          (let* ((_val83450_ _hd8341283445_)
                                 (_rest83452_ _tl8341383447_))
                            (declare (not safe))
                            (_K8340983435_ _rest83452_ _val83450_ _key83443_)))
                        (let () (declare (not safe)) (_else8340783423_)))))
                (let () (declare (not safe)) (_else8340783423_)))))))
    (define constructor-init!
      (lambda (_klass83393_ _kons-id83394_ _obj83395_ . _args83396_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass83393_
           _kons-id83394_
           _obj83395_
           _args83396_))))
    (define __constructor-init!
      (lambda (_klass83383_ _kons-id83384_ _obj83385_ _args83386_)
        (let ((_$e83388_
               (let ()
                 (declare (not safe))
                 (__find-method _klass83383_ _kons-id83384_))))
          (if _$e83388_
              ((lambda (_kons83391_)
                 (apply _kons83391_ _obj83385_ _args83386_)
                 _obj83385_)
               _$e83388_)
              (error '"missing constructor"
                     'class:
                     _klass83383_
                     'method:
                     _kons-id83384_)))))
    (define struct-copy
      (lambda (_struct83381_)
        (if (let () (declare (not safe)) (##structure? _struct83381_))
            '#!void
            (error '"not a structure" _struct83381_))
        (let () (declare (not safe)) (##structure-copy _struct83381_))))
    (define struct->list
      (lambda (_obj83379_)
        (if (let () (declare (not safe)) (object? _obj83379_))
            (let () (declare (not safe)) (##vector->list _obj83379_))
            (error '"not an object" _obj83379_))))
    (define class->list
      (lambda (_obj83366_)
        (if (let () (declare (not safe)) (object? _obj83366_))
            (let ((_klass83368_
                   (let () (declare (not safe)) (object-type _obj83366_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass83368_))
                  (let ((_all-slots83370_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-all-slots _klass83368_))))
                    (let _loop83372_ ((_index83374_
                                       (let ((__tmp88765
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _all-slots83370_))))
                                         (declare (not safe))
                                         (##fx- __tmp88765 '1)))
                                      (_plist83375_ '()))
                      (if (let () (declare (not safe)) (##fx< _index83374_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass83368_ _plist83375_))
                          (let ((_slot83377_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _all-slots83370_
                                    _index83374_))))
                            (let ((__tmp88764
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index83374_ '1)))
                                  (__tmp88760
                                   (let ((__tmp88763
                                          (symbol->keyword _slot83377_))
                                         (__tmp88761
                                          (let ((__tmp88762
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj83366_
                                                    _index83374_))))
                                            (declare (not safe))
                                            (cons __tmp88762 _plist83375_))))
                                     (declare (not safe))
                                     (cons __tmp88763 __tmp88761))))
                              (declare (not safe))
                              (_loop83372_ __tmp88764 __tmp88760))))))
                  (error '"not a class type"
                         'object:
                         _obj83366_
                         'class:
                         _klass83368_)))
            (error '"not an object" _obj83366_))))
    (define call-method
      (lambda (_obj83357_ _id83358_ . _args83359_)
        (let ((_$e83361_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83357_ _id83358_))))
          (if _$e83361_
              ((lambda (_method83364_)
                 (apply _method83364_ _obj83357_ _args83359_))
               _$e83361_)
              (error '"cannot find method"
                     'object:
                     _obj83357_
                     'method:
                     _id83358_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj83354_ _id83355_)
        (if (let () (declare (not safe)) (object? _obj83354_))
            (let ((__tmp88766
                   (let () (declare (not safe)) (object-type _obj83354_))))
              (declare (not safe))
              (find-method __tmp88766 _id83355_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj83348_ _id83349_)
        (let ((_$e83351_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83348_ _id83349_))))
          (if _$e83351_
              _$e83351_
              (error '"missing method"
                     'object:
                     _obj83348_
                     'method:
                     _id83349_)))))
    (define bound-method-ref
      (lambda (_obj83338_ _id83339_)
        (let ((_$e83341_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83338_ _id83339_))))
          (if _$e83341_
              ((lambda (_method83344_)
                 (lambda _args83346_
                   (apply _method83344_ _obj83338_ _args83346_)))
               _$e83341_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj83331_ _id83332_)
        (let ((_method83334_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj83331_ _id83332_))))
          (lambda _args83336_ (apply _method83334_ _obj83331_ _args83336_)))))
    (define find-method
      (lambda (_klass83328_ _id83329_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83328_))
            (let ()
              (declare (not safe))
              (__find-method _klass83328_ _id83329_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass83328_ _id83329_)))))
    (define __find-method
      (lambda (_klass83322_ _id83323_)
        (let ((_$e83325_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass83322_ _id83323_))))
          (if _$e83325_
              _$e83325_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83322_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass83322_ _id83323_)))))))
    (define class-find-method
      (lambda (_klass83319_ _id83320_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83319_))
            (let ()
              (declare (not safe))
              (__find-method _klass83319_ _id83320_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins83312_ _id83313_)
        (let ((__tmp88767
               (lambda (_g8331483316_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8331483316_ _id83313_)))))
          (declare (not safe))
          (ormap1 __tmp88767 _mixins83312_))))
    (define builtin-find-method
      (lambda (_klass83306_ _id83307_)
        (if (let () (declare (not safe)) (##type? _klass83306_))
            (let ((_$e83309_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass83306_ _id83307_))))
              (if _$e83309_
                  _$e83309_
                  (let ((__tmp88768
                         (let ()
                           (declare (not safe))
                           (##type-super _klass83306_))))
                    (declare (not safe))
                    (builtin-find-method __tmp88768 _id83307_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass83298_ _id83299_)
        (let ((_$e83301_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass83298_))))
          (if _$e83301_
              ((lambda (_ht83304_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht83304_ _id83299_ '#f)))
               _$e83301_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass83295_ _id83296_)
        (let ((__tmp88769
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass83295_))))
          (declare (not safe))
          (mixin-find-method __tmp88769 _id83296_))))
    (define builtin-method-ref
      (lambda (_klass83287_ _id83288_)
        (let ((_$e83290_
               (let ((__tmp88770
                      (let () (declare (not safe)) (##type-id _klass83287_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp88770 '#f))))
          (if _$e83290_
              ((lambda (_mtab83293_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab83293_ _id83288_ '#f)))
               _$e83290_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass83253_ _id83254_ _proc83255_ _rebind?83256_)
        (letrec ((_bind!83258_
                  (lambda (_ht83271_)
                    (if (and (let () (declare (not safe)) (not _rebind?83256_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht83271_ _id83254_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass83253_
                               'method:
                               _id83254_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht83271_ _id83254_ _proc83255_))))))
          (if (let () (declare (not safe)) (procedure? _proc83255_))
              '#!void
              (error '"bad method; expected procedure" _proc83255_))
          (if (let () (declare (not safe)) (type-descriptor? _klass83253_))
              (let ((_ht83260_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass83253_))))
                (if _ht83260_
                    (let () (declare (not safe)) (_bind!83258_ _ht83260_))
                    (let ((_ht83262_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass83253_ _ht83262_))
                      (let () (declare (not safe)) (_bind!83258_ _ht83262_)))))
              (if (let () (declare (not safe)) (##type? _klass83253_))
                  (let ((_ht83269_
                         (let ((_$e83264_
                                (let ((__tmp88771
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass83253_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp88771
                                   '#f))))
                           (if _$e83264_
                               _$e83264_
                               (let ((_ht83267_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp88772
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass83253_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp88772
                                    _ht83267_))
                                 _ht83267_)))))
                    (declare (not safe))
                    (_bind!83258_ _ht83269_))
                  (error '"bad class; expected type-descriptor or builtin type"
                         _klass83253_))))))
    (define bind-method!__0
      (lambda (_klass83276_ _id83277_ _proc83278_)
        (let ((_rebind?83280_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass83276_
           _id83277_
           _proc83278_
           _rebind?83280_))))
    (define bind-method!
      (lambda _g88774_
        (let ((_g88773_ (let () (declare (not safe)) (##length _g88774_))))
          (cond ((let () (declare (not safe)) (##fx= _g88773_ 3))
                 (apply (lambda (_klass83276_ _id83277_ _proc83278_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass83276_
                             _id83277_
                             _proc83278_)))
                        _g88774_))
                ((let () (declare (not safe)) (##fx= _g88773_ 4))
                 (apply (lambda (_klass83282_
                                 _id83283_
                                 _proc83284_
                                 _rebind?83285_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass83282_
                             _id83283_
                             _proc83284_
                             _rebind?83285_)))
                        _g88774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g88774_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc83249_ _specializer83250_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc83249_ _specializer83250_))))
    (define seal-class!
      (lambda (_klass83216_)
        (letrec ((_collect-methods!83218_
                  (lambda (_mtab83234_)
                    (letrec ((_merge!83236_
                              (lambda (_tab83244_)
                                (let ((__tmp88775
                                       (lambda (_id83246_ _proc83247_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab83234_
                                            _id83246_
                                            _proc83247_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp88775 _tab83244_))))
                             (_collect-direct-methods!83237_
                              (lambda (_klass83239_)
                                (let ((_$e83241_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass83239_))))
                                  (if _$e83241_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!83236_ _$e83241_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!83237_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass83216_))))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83216_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83216_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (type-final? _klass83216_))
                        '#!void
                        (error '"cannot seal non-final class" _klass83216_))
                    (let ((_vtab83220_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab83221_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!83218_ _mtab83221_))
                      (let ((__tmp88776
                             (lambda (_id83223_ _proc83224_)
                               (let ((_$e83226_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc83224_
                                         '#f))))
                                 (if _$e83226_
                                     ((lambda (_specializer83229_)
                                        (let ((_proc83231_
                                               (_specializer83229_
                                                _klass83216_))
                                              (_gid83232_
                                               (let ((__tmp88777
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass83216_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp88777
                                                  '"::["
                                                  _id83223_
                                                  '"]"))))
                                          (eval (let ((__tmp88778
                                                       (let ((__tmp88779
                                                              (let ((__tmp88780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp88781
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc83231_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp88781))))
                        (declare (not safe))
                        (cons __tmp88780 '()))))
                 (declare (not safe))
                 (cons _gid83232_ __tmp88779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp88778)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab83220_
                                             _id83223_
                                             _proc83231_))))
                                      _$e83226_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab83220_
                                        _id83223_
                                        _proc83224_)))))))
                        (declare (not safe))
                        (table-for-each __tmp88776 _mtab83221_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set!
                         _klass83216_
                         _vtab83220_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass83216_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass83165_ _obj83166_ _id83167_)
        (let ((_klass83169_
               (let () (declare (not safe)) (object-type _obj83166_)))
              (_type-id83170_
               (let () (declare (not safe)) (##type-id _subklass83165_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83169_))
              (let _lp83172_ ((_rest83174_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass83169_))))
                (let* ((_rest8317583183_ _rest83174_)
                       (_else8317783191_ (lambda () '#f))
                       (_K8317983197_
                        (lambda (_rest83194_ _klass83195_)
                          (if (let ((__tmp88784
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass83195_))))
                                (declare (not safe))
                                (eq? _type-id83170_ __tmp88784))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method _rest83194_ _id83167_))
                              (let ()
                                (declare (not safe))
                                (_lp83172_ _rest83194_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8317583183_))
                      (let ((_hd8318083200_
                             (let ()
                               (declare (not safe))
                               (##car _rest8317583183_)))
                            (_tl8318183202_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8317583183_))))
                        (let* ((_klass83205_ _hd8318083200_)
                               (_rest83207_ _tl8318183202_))
                          (declare (not safe))
                          (_K8317983197_ _rest83207_ _klass83205_)))
                      (let () (declare (not safe)) (_else8317783191_)))))
              (if (let () (declare (not safe)) (##type? _klass83169_))
                  (let _lp83209_ ((_klass83211_ _klass83169_))
                    (if (let ((__tmp88783
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass83211_))))
                          (declare (not safe))
                          (eq? _type-id83170_ __tmp88783))
                        (let ((__tmp88782
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83211_))))
                          (declare (not safe))
                          (builtin-find-method __tmp88782 _id83167_))
                        (let ((_$e83213_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83211_))))
                          (if _$e83213_
                              (let ()
                                (declare (not safe))
                                (_lp83209_ _$e83213_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass83155_ _obj83156_ _id83157_ . _args83158_)
        (let ((_$e83160_
               (let ()
                 (declare (not safe))
                 (next-method _subklass83155_ _obj83156_ _id83157_))))
          (if _$e83160_
              ((lambda (_methodf83163_)
                 (apply _methodf83163_ _obj83156_ _args83158_))
               _$e83160_)
              (error '"cannot find next method"
                     'object:
                     _obj83156_
                     'method:
                     _id83157_)))))
    (define write-style (lambda (_we83153_) (macro-writeenv-style _we83153_)))
    (define write-object
      (lambda (_we83145_ _obj83146_)
        (let ((_$e83148_
               (let () (declare (not safe)) (method-ref _obj83146_ ':wr))))
          (if _$e83148_
              ((lambda (_method83151_) (_method83151_ _obj83146_ _we83145_))
               _$e83148_)
              (let ()
                (declare (not safe))
                (##default-wr _we83145_ _obj83146_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
