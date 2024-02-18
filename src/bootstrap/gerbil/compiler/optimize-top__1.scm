(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx227850_)
      (let* ((_g227854227883_
              (lambda (_g227855227879_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g227855227879_))))
             (_g227853227984_
              (lambda (_g227855227887_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g227855227887_))
                    (let ((_e227860227890_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g227855227887_))))
                      (let ((_hd227859227894_
                             (let ()
                               (declare (not safe))
                               (##car _e227860227890_)))
                            (_tl227858227897_
                             (let ()
                               (declare (not safe))
                               (##cdr _e227860227890_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl227858227897_))
                            (let ((_g242860_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl227858227897_
                                      '0))))
                              (begin
                                (let ((_g242861_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g242860_)
                                             (##vector-length _g242860_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g242861_ 2)))
                                      (error "Context expects 2 values"
                                             _g242861_)))
                                (let ((_target227861227900_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g242860_ 0)))
                                      (_tl227863227903_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g242860_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227863227903_))
                                      (letrec ((_loop227864227906_
                                                (lambda (_hd227862227910_
                                                         _type-e227868227913_
                                                         _id227869227915_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd227862227910_))
                                                      (let ((_e227865227918_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd227862227910_))))
                (let ((_lp-hd227866227922_
                       (let () (declare (not safe)) (##car _e227865227918_)))
                      (_lp-tl227867227925_
                       (let () (declare (not safe)) (##cdr _e227865227918_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd227866227922_))
                      (let ((_e227874227928_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd227866227922_))))
                        (let ((_hd227873227932_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227874227928_)))
                              (_tl227872227935_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227874227928_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227872227935_))
                              (let ((_e227877227938_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl227872227935_))))
                                (let ((_hd227876227942_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227877227938_)))
                                      (_tl227875227945_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227877227938_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227875227945_))
                                      (_loop227864227906_
                                       _lp-tl227867227925_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd227876227942_
                                               _type-e227868227913_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd227873227932_
                                               _id227869227915_)))
                                      (_g227854227883_ _g227855227887_))))
                              (_g227854227883_ _g227855227887_))))
                      (_g227854227883_ _g227855227887_))))
              (let ((_type-e227870227948_ (reverse _type-e227868227913_))
                    (_id227871227951_ (reverse _id227869227915_)))
                ((lambda (_L227954_ _L227956_)
                   (let ((__tmp242873
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp242862
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L227954_
                               _L227956_))
                            (let ((__tmp242863
                                   (lambda (_g227972227976_
                                            _g227973227979_
                                            _g227974227981_)
                                     (let ((__tmp242864
                                            (let ((__tmp242872
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp242865
                                                   (let ((__tmp242871
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp242866
                                                          (let ((__tmp242868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp242870
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp242869
                                (let ()
                                  (declare (not safe))
                                  (cons _g227973227979_ '()))))
                           (declare (not safe))
                           (cons __tmp242870 __tmp242869)))
                        (__tmp242867
                         (let ()
                           (declare (not safe))
                           (cons _g227972227976_ '()))))
                    (declare (not safe))
                    (cons __tmp242868 __tmp242867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp242871
                                                           __tmp242866))))
                                              (declare (not safe))
                                              (cons __tmp242872 __tmp242865))))
                                       (declare (not safe))
                                       (cons __tmp242864 _g227974227981_)))))
                              (declare (not safe))
                              (foldr2 __tmp242863 '() _L227954_ _L227956_)))))
                     (declare (not safe))
                     (cons __tmp242873 __tmp242862)))
                 _type-e227870227948_
                 _id227871227951_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop227864227906_
                                         _target227861227900_
                                         '()
                                         '()))
                                      (_g227854227883_ _g227855227887_)))))
                            (_g227854227883_ _g227855227887_))))
                    (_g227854227883_ _g227855227887_)))))
        (_g227853227984_ _$stx227850_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx227989_)
      (let* ((_g227993228022_
              (lambda (_g227994228018_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g227994228018_))))
             (_g227992228122_
              (lambda (_g227994228026_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g227994228026_))
                    (let ((_e227999228029_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g227994228026_))))
                      (let ((_hd227998228033_
                             (let ()
                               (declare (not safe))
                               (##car _e227999228029_)))
                            (_tl227997228036_
                             (let ()
                               (declare (not safe))
                               (##cdr _e227999228029_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl227997228036_))
                            (let ((_g242874_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl227997228036_
                                      '0))))
                              (begin
                                (let ((_g242875_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g242874_)
                                             (##vector-length _g242874_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g242875_ 2)))
                                      (error "Context expects 2 values"
                                             _g242875_)))
                                (let ((_target228000228039_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g242874_ 0)))
                                      (_tl228002228042_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g242874_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228002228042_))
                                      (letrec ((_loop228003228045_
                                                (lambda (_hd228001228049_
                                                         _type-e228007228052_
                                                         _id228008228054_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd228001228049_))
                                                      (let ((_e228004228057_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd228001228049_))))
                (let ((_lp-hd228005228061_
                       (let () (declare (not safe)) (##car _e228004228057_)))
                      (_lp-tl228006228064_
                       (let () (declare (not safe)) (##cdr _e228004228057_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd228005228061_))
                      (let ((_e228013228067_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd228005228061_))))
                        (let ((_hd228012228071_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228013228067_)))
                              (_tl228011228074_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228013228067_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228011228074_))
                              (let ((_e228016228077_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl228011228074_))))
                                (let ((_hd228015228081_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228016228077_)))
                                      (_tl228014228084_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228016228077_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228014228084_))
                                      (_loop228003228045_
                                       _lp-tl228006228064_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228015228081_
                                               _type-e228007228052_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd228012228071_
                                               _id228008228054_)))
                                      (_g227993228022_ _g227994228026_))))
                              (_g227993228022_ _g227994228026_))))
                      (_g227993228022_ _g227994228026_))))
              (let ((_type-e228009228087_ (reverse _type-e228007228052_))
                    (_id228010228090_ (reverse _id228008228054_)))
                ((lambda (_L228093_ _L228095_)
                   (let ((__tmp242887
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp242876
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L228093_
                               _L228095_))
                            (let ((__tmp242877
                                   (lambda (_g228110228114_
                                            _g228111228117_
                                            _g228112228119_)
                                     (let ((__tmp242878
                                            (let ((__tmp242886
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp242879
                                                   (let ((__tmp242885
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp242880
                                                          (let ((__tmp242882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp242884
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp242883
                                (let ()
                                  (declare (not safe))
                                  (cons _g228111228117_ '()))))
                           (declare (not safe))
                           (cons __tmp242884 __tmp242883)))
                        (__tmp242881
                         (let ()
                           (declare (not safe))
                           (cons _g228110228114_ '()))))
                    (declare (not safe))
                    (cons __tmp242882 __tmp242881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp242885
                                                           __tmp242880))))
                                              (declare (not safe))
                                              (cons __tmp242886 __tmp242879))))
                                       (declare (not safe))
                                       (cons __tmp242878 _g228112228119_)))))
                              (declare (not safe))
                              (foldr2 __tmp242877 '() _L228093_ _L228095_)))))
                     (declare (not safe))
                     (cons __tmp242887 __tmp242876)))
                 _type-e228009228087_
                 _id228010228090_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop228003228045_
                                         _target228000228039_
                                         '()
                                         '()))
                                      (_g227993228022_ _g227994228026_)))))
                            (_g227993228022_ _g227994228026_))))
                    (_g227993228022_ _g227994228026_)))))
        (_g227992228122_ _$stx227989_)))))
