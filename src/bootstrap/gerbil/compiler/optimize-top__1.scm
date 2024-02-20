(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx114833_)
      (let* ((_g114837114866_
              (lambda (_g114838114862_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g114838114862_))))
             (_g114836114967_
              (lambda (_g114838114870_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g114838114870_))
                    (let ((_e114841114873_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g114838114870_))))
                      (let ((_hd114842114877_
                             (let ()
                               (declare (not safe))
                               (##car _e114841114873_)))
                            (_tl114843114880_
                             (let ()
                               (declare (not safe))
                               (##cdr _e114841114873_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl114843114880_))
                            (let ((_g125776_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl114843114880_
                                      '0))))
                              (begin
                                (let ((_g125777_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g125776_)
                                             (##vector-length _g125776_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g125777_ 2)))
                                      (error "Context expects 2 values"
                                             _g125777_)))
                                (let ((_target114844114883_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g125776_ 0)))
                                      (_tl114846114886_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g125776_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114846114886_))
                                      (letrec ((_loop114847114889_
                                                (lambda (_hd114845114893_
                                                         _type-e114851114896_
                                                         _id114852114898_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd114845114893_))
                                                      (let ((_e114848114901_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd114845114893_))))
                (let ((_lp-hd114849114905_
                       (let () (declare (not safe)) (##car _e114848114901_)))
                      (_lp-tl114850114908_
                       (let () (declare (not safe)) (##cdr _e114848114901_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd114849114905_))
                      (let ((_e114855114911_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd114849114905_))))
                        (let ((_hd114856114915_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114855114911_)))
                              (_tl114857114918_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114855114911_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114857114918_))
                              (let ((_e114858114921_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl114857114918_))))
                                (let ((_hd114859114925_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114858114921_)))
                                      (_tl114860114928_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114858114921_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114860114928_))
                                      (_loop114847114889_
                                       _lp-tl114850114908_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd114859114925_
                                               _type-e114851114896_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd114856114915_
                                               _id114852114898_)))
                                      (_g114837114866_ _g114838114870_))))
                              (_g114837114866_ _g114838114870_))))
                      (_g114837114866_ _g114838114870_))))
              (let ((_type-e114853114931_ (reverse _type-e114851114896_))
                    (_id114854114934_ (reverse _id114852114898_)))
                ((lambda (_L114937_ _L114939_)
                   (let ((__tmp125789
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp125778
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L114937_
                               _L114939_))
                            (let ((__tmp125779
                                   (lambda (_g114955114959_
                                            _g114956114962_
                                            _g114957114964_)
                                     (let ((__tmp125780
                                            (let ((__tmp125788
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp125781
                                                   (let ((__tmp125787
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp125782
                                                          (let ((__tmp125784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp125786
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp125785
                                (let ()
                                  (declare (not safe))
                                  (cons _g114956114962_ '()))))
                           (declare (not safe))
                           (cons __tmp125786 __tmp125785)))
                        (__tmp125783
                         (let ()
                           (declare (not safe))
                           (cons _g114955114959_ '()))))
                    (declare (not safe))
                    (cons __tmp125784 __tmp125783))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp125787
                                                           __tmp125782))))
                                              (declare (not safe))
                                              (cons __tmp125788 __tmp125781))))
                                       (declare (not safe))
                                       (cons __tmp125780 _g114957114964_)))))
                              (declare (not safe))
                              (foldr2 __tmp125779 '() _L114937_ _L114939_)))))
                     (declare (not safe))
                     (cons __tmp125789 __tmp125778)))
                 _type-e114853114931_
                 _id114854114934_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop114847114889_
                                         _target114844114883_
                                         '()
                                         '()))
                                      (_g114837114866_ _g114838114870_)))))
                            (_g114837114866_ _g114838114870_))))
                    (_g114837114866_ _g114838114870_)))))
        (_g114836114967_ _$stx114833_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx114972_)
      (let* ((_g114976115005_
              (lambda (_g114977115001_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g114977115001_))))
             (_g114975115105_
              (lambda (_g114977115009_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g114977115009_))
                    (let ((_e114980115012_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g114977115009_))))
                      (let ((_hd114981115016_
                             (let ()
                               (declare (not safe))
                               (##car _e114980115012_)))
                            (_tl114982115019_
                             (let ()
                               (declare (not safe))
                               (##cdr _e114980115012_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl114982115019_))
                            (let ((_g125790_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl114982115019_
                                      '0))))
                              (begin
                                (let ((_g125791_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g125790_)
                                             (##vector-length _g125790_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g125791_ 2)))
                                      (error "Context expects 2 values"
                                             _g125791_)))
                                (let ((_target114983115022_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g125790_ 0)))
                                      (_tl114985115025_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g125790_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114985115025_))
                                      (letrec ((_loop114986115028_
                                                (lambda (_hd114984115032_
                                                         _type-e114990115035_
                                                         _id114991115037_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd114984115032_))
                                                      (let ((_e114987115040_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd114984115032_))))
                (let ((_lp-hd114988115044_
                       (let () (declare (not safe)) (##car _e114987115040_)))
                      (_lp-tl114989115047_
                       (let () (declare (not safe)) (##cdr _e114987115040_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd114988115044_))
                      (let ((_e114994115050_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd114988115044_))))
                        (let ((_hd114995115054_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114994115050_)))
                              (_tl114996115057_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114994115050_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114996115057_))
                              (let ((_e114997115060_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl114996115057_))))
                                (let ((_hd114998115064_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114997115060_)))
                                      (_tl114999115067_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114997115060_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114999115067_))
                                      (_loop114986115028_
                                       _lp-tl114989115047_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd114998115064_
                                               _type-e114990115035_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd114995115054_
                                               _id114991115037_)))
                                      (_g114976115005_ _g114977115009_))))
                              (_g114976115005_ _g114977115009_))))
                      (_g114976115005_ _g114977115009_))))
              (let ((_type-e114992115070_ (reverse _type-e114990115035_))
                    (_id114993115073_ (reverse _id114991115037_)))
                ((lambda (_L115076_ _L115078_)
                   (let ((__tmp125803
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp125792
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L115076_
                               _L115078_))
                            (let ((__tmp125793
                                   (lambda (_g115093115097_
                                            _g115094115100_
                                            _g115095115102_)
                                     (let ((__tmp125794
                                            (let ((__tmp125802
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp125795
                                                   (let ((__tmp125801
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp125796
                                                          (let ((__tmp125798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp125800
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp125799
                                (let ()
                                  (declare (not safe))
                                  (cons _g115094115100_ '()))))
                           (declare (not safe))
                           (cons __tmp125800 __tmp125799)))
                        (__tmp125797
                         (let ()
                           (declare (not safe))
                           (cons _g115093115097_ '()))))
                    (declare (not safe))
                    (cons __tmp125798 __tmp125797))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp125801
                                                           __tmp125796))))
                                              (declare (not safe))
                                              (cons __tmp125802 __tmp125795))))
                                       (declare (not safe))
                                       (cons __tmp125794 _g115095115102_)))))
                              (declare (not safe))
                              (foldr2 __tmp125793 '() _L115076_ _L115078_)))))
                     (declare (not safe))
                     (cons __tmp125803 __tmp125792)))
                 _type-e114992115070_
                 _id114993115073_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop114986115028_
                                         _target114983115022_
                                         '()
                                         '()))
                                      (_g114976115005_ _g114977115009_)))))
                            (_g114976115005_ _g114977115009_))))
                    (_g114976115005_ _g114977115009_)))))
        (_g114975115105_ _$stx114972_)))))
