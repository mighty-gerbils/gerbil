(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx69601_)
      (let* ((_g6960569623_
              (lambda (_g6960669619_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g6960669619_))))
             (_g6960469678_
              (lambda (_g6960669627_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g6960669627_))
                    (let ((_e6961169630_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g6960669627_))))
                      (let ((_hd6961069634_
                             (let ()
                               (declare (not safe))
                               (##car _e6961169630_)))
                            (_tl6960969637_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6961169630_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl6960969637_))
                            (let ((_e6961469640_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl6960969637_))))
                              (let ((_hd6961369644_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6961469640_)))
                                    (_tl6961269647_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6961469640_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl6961269647_))
                                    (let ((_e6961769650_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl6961269647_))))
                                      (let ((_hd6961669654_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6961769650_)))
                                            (_tl6961569657_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6961769650_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl6961569657_))
                                            ((lambda (_L69660_ _L69662_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier? _L69662_))
                                                   (let ((__tmp74685
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp74680
                                                          (let ((__tmp74682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp74684
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp74683
                                (let ()
                                  (declare (not safe))
                                  (cons _L69662_ '()))))
                           (declare (not safe))
                           (cons __tmp74684 __tmp74683)))
                        (__tmp74681
                         (let () (declare (not safe)) (cons _L69660_ '()))))
                    (declare (not safe))
                    (cons __tmp74682 __tmp74681))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp74685
                                                           __tmp74680))
                                                   (_g6960569623_
                                                    _g6960669627_)))
                                             _hd6961669654_
                                             _hd6961369644_)
                                            (_g6960569623_ _g6960669627_))))
                                    (_g6960569623_ _g6960669627_))))
                            (_g6960569623_ _g6960669627_))))
                    (_g6960569623_ _g6960669627_)))))
        (_g6960469678_ _$stx69601_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx69682_)
      (let* ((_g6968669715_
              (lambda (_g6968769711_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g6968769711_))))
             (_g6968569815_
              (lambda (_g6968769719_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g6968769719_))
                    (let ((_e6969269722_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g6968769719_))))
                      (let ((_hd6969169726_
                             (let ()
                               (declare (not safe))
                               (##car _e6969269722_)))
                            (_tl6969069729_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6969269722_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl6969069729_))
                            (let ((_g74686_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl6969069729_
                                      '0))))
                              (begin
                                (let ((_g74687_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g74686_)
                                             (##vector-length _g74686_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g74687_ 2)))
                                      (error "Context expects 2 values"
                                             _g74687_)))
                                (let ((_target6969369732_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g74686_ 0)))
                                      (_tl6969569735_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g74686_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl6969569735_))
                                      (letrec ((_loop6969669738_
                                                (lambda (_hd6969469742_
                                                         _type6970069745_
                                                         _symbol6970169747_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd6969469742_))
                                                      (let ((_e6969769750_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd6969469742_))))
                (let ((_lp-hd6969869754_
                       (let () (declare (not safe)) (##car _e6969769750_)))
                      (_lp-tl6969969757_
                       (let () (declare (not safe)) (##cdr _e6969769750_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd6969869754_))
                      (let ((_e6970669760_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd6969869754_))))
                        (let ((_hd6970569764_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6970669760_)))
                              (_tl6970469767_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6970669760_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl6970469767_))
                              (let ((_e6970969770_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl6970469767_))))
                                (let ((_hd6970869774_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6970969770_)))
                                      (_tl6970769777_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6970969770_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl6970769777_))
                                      (_loop6969669738_
                                       _lp-tl6969969757_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6970869774_
                                               _type6970069745_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd6970569764_
                                               _symbol6970169747_)))
                                      (_g6968669715_ _g6968769719_))))
                              (_g6968669715_ _g6968769719_))))
                      (_g6968669715_ _g6968769719_))))
              (let ((_type6970269780_
                     (let () (declare (not safe)) (reverse _type6970069745_)))
                    (_symbol6970369783_
                     (let ()
                       (declare (not safe))
                       (reverse _symbol6970169747_))))
                ((lambda (_L69786_ _L69788_)
                   (let ((__tmp74694
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp74688
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L69786_
                               _L69788_))
                            (let ((__tmp74689
                                   (lambda (_g6980369807_
                                            _g6980469810_
                                            _g6980569812_)
                                     (let ((__tmp74690
                                            (let ((__tmp74693
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp74691
                                                   (let ((__tmp74692
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g6980369807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g6980469810_
                                                           __tmp74692))))
                                              (declare (not safe))
                                              (cons __tmp74693 __tmp74691))))
                                       (declare (not safe))
                                       (cons __tmp74690 _g6980569812_)))))
                              (declare (not safe))
                              (foldr2 __tmp74689 '() _L69786_ _L69788_)))))
                     (declare (not safe))
                     (cons __tmp74694 __tmp74688)))
                 _type6970269780_
                 _symbol6970369783_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6969669738_
                                         _target6969369732_
                                         '()
                                         '()))
                                      (_g6968669715_ _g6968769719_)))))
                            (_g6968669715_ _g6968769719_))))
                    (_g6968669715_ _g6968769719_)))))
        (_g6968569815_ _$stx69682_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx69820_)
      (let* ((___stx7382173822_ _$stx69820_)
             (_g6982569867_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7382173822_)))))
        (let ((___kont7382473825_
               (lambda (_L69995_ _L69997_ _L69998_ _L69999_)
                 (let ((__tmp74708
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp74695
                        (let ((__tmp74705
                               (let ((__tmp74707
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp74706
                                      (let ()
                                        (declare (not safe))
                                        (cons _L69999_ '()))))
                                 (declare (not safe))
                                 (cons __tmp74707 __tmp74706)))
                              (__tmp74696
                               (let ((__tmp74702
                                      (let ((__tmp74704
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp74703
                                             (let ()
                                               (declare (not safe))
                                               (cons _L69998_ '()))))
                                        (declare (not safe))
                                        (cons __tmp74704 __tmp74703)))
                                     (__tmp74697
                                      (let ((__tmp74699
                                             (let ((__tmp74701
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp74700
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L69997_ '()))))
                                               (declare (not safe))
                                               (cons __tmp74701 __tmp74700)))
                                            (__tmp74698
                                             (let ()
                                               (declare (not safe))
                                               (cons _L69995_ '()))))
                                        (declare (not safe))
                                        (cons __tmp74699 __tmp74698))))
                                 (declare (not safe))
                                 (cons __tmp74702 __tmp74697))))
                          (declare (not safe))
                          (cons __tmp74705 __tmp74696))))
                   (declare (not safe))
                   (cons __tmp74708 __tmp74695))))
              (___kont7382673827_
               (lambda (_L69914_ _L69916_ _L69917_ _L69918_)
                 (let ((__tmp74709
                        (let ((__tmp74710
                               (let ((__tmp74711
                                      (let ((__tmp74712
                                             (let ((__tmp74713
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp74713 '()))))
                                        (declare (not safe))
                                        (cons _L69914_ __tmp74712))))
                                 (declare (not safe))
                                 (cons _L69916_ __tmp74711))))
                          (declare (not safe))
                          (cons _L69917_ __tmp74710))))
                   (declare (not safe))
                   (cons _L69918_ __tmp74709)))))
          (let ((___match7386073861_
                 (lambda (_e6983369945_
                          _hd6983269949_
                          _tl6983169952_
                          _e6983669955_
                          _hd6983569959_
                          _tl6983469962_
                          _e6983969965_
                          _hd6983869969_
                          _tl6983769972_
                          _e6984269975_
                          _hd6984169979_
                          _tl6984069982_
                          _e6984569985_
                          _hd6984469989_
                          _tl6984369992_)
                   (let ((_L69995_ _hd6984469989_)
                         (_L69997_ _hd6984169979_)
                         (_L69998_ _hd6983869969_)
                         (_L69999_ _hd6983569959_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L69999_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L69998_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L69997_)))
                         (___kont7382473825_
                          _L69995_
                          _L69997_
                          _L69998_
                          _L69999_)
                         (let () (declare (not safe)) (_g6982569867_)))))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7382173822_))
                (let ((_e6983369945_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7382173822_))))
                  (let ((_tl6983169952_
                         (let () (declare (not safe)) (##cdr _e6983369945_)))
                        (_hd6983269949_
                         (let () (declare (not safe)) (##car _e6983369945_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl6983169952_))
                        (let ((_e6983669955_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl6983169952_))))
                          (let ((_tl6983469962_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6983669955_)))
                                (_hd6983569959_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6983669955_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl6983469962_))
                                (let ((_e6983969965_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl6983469962_))))
                                  (let ((_tl6983769972_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6983969965_)))
                                        (_hd6983869969_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6983969965_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl6983769972_))
                                        (let ((_e6984269975_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl6983769972_))))
                                          (let ((_tl6984069982_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e6984269975_)))
                                                (_hd6984169979_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e6984269975_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl6984069982_))
                                                (let ((_e6984569985_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl6984069982_))))
                                                  (let ((_tl6984369992_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6984569985_)))
                                                        (_hd6984469989_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6984569985_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6984369992_))
                                                        (___match7386073861_
                                                         _e6983369945_
                                                         _hd6983269949_
                                                         _tl6983169952_
                                                         _e6983669955_
                                                         _hd6983569959_
                                                         _tl6983469962_
                                                         _e6983969965_
                                                         _hd6983869969_
                                                         _tl6983769972_
                                                         _e6984269975_
                                                         _hd6984169979_
                                                         _tl6984069982_
                                                         _e6984569985_
                                                         _hd6984469989_
                                                         _tl6984369992_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g6982569867_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl6984069982_))
                                                    (___kont7382673827_
                                                     _hd6984169979_
                                                     _hd6983869969_
                                                     _hd6983569959_
                                                     _hd6983269949_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g6982569867_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g6982569867_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g6982569867_)))))
                        (let () (declare (not safe)) (_g6982569867_)))))
                (let () (declare (not safe)) (_g6982569867_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx70024_)
      (let* ((_g7002870063_
              (lambda (_g7002970059_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7002970059_))))
             (_g7002770182_
              (lambda (_g7002970067_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7002970067_))
                    (let ((_e7003570070_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7002970067_))))
                      (let ((_hd7003470074_
                             (let ()
                               (declare (not safe))
                               (##car _e7003570070_)))
                            (_tl7003370077_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7003570070_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7003370077_))
                            (let ((_g74714_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7003370077_
                                      '0))))
                              (begin
                                (let ((_g74715_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g74714_)
                                             (##vector-length _g74714_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g74715_ 2)))
                                      (error "Context expects 2 values"
                                             _g74715_)))
                                (let ((_target7003670080_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g74714_ 0)))
                                      (_tl7003870083_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g74714_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7003870083_))
                                      (letrec ((_loop7003970086_
                                                (lambda (_hd7003770090_
                                                         _symbol7004370093_
                                                         _method7004470095_
                                                         _type-t7004570097_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7003770090_))
                                                      (let ((_e7004070100_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7003770090_))))
                (let ((_lp-hd7004170104_
                       (let () (declare (not safe)) (##car _e7004070100_)))
                      (_lp-tl7004270107_
                       (let () (declare (not safe)) (##cdr _e7004070100_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7004170104_))
                      (let ((_e7005170110_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7004170104_))))
                        (let ((_hd7005070114_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7005170110_)))
                              (_tl7004970117_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7005170110_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7004970117_))
                              (let ((_e7005470120_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7004970117_))))
                                (let ((_hd7005370124_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7005470120_)))
                                      (_tl7005270127_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7005470120_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7005270127_))
                                      (let ((_e7005770130_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7005270127_))))
                                        (let ((_hd7005670134_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7005770130_)))
                                              (_tl7005570137_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7005770130_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7005570137_))
                                              (_loop7003970086_
                                               _lp-tl7004270107_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7005670134_
                                                       _symbol7004370093_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7005370124_
                                                       _method7004470095_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7005070114_
                                                       _type-t7004570097_)))
                                              (_g7002870063_ _g7002970067_))))
                                      (_g7002870063_ _g7002970067_))))
                              (_g7002870063_ _g7002970067_))))
                      (_g7002870063_ _g7002970067_))))
              (let ((_symbol7004670140_
                     (let ()
                       (declare (not safe))
                       (reverse _symbol7004370093_)))
                    (_method7004770143_
                     (let ()
                       (declare (not safe))
                       (reverse _method7004470095_)))
                    (_type-t7004870145_
                     (let ()
                       (declare (not safe))
                       (reverse _type-t7004570097_))))
                ((lambda (_L70148_ _L70150_ _L70151_)
                   (let ((__tmp74723
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp74716
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L70148_
                               _L70150_
                               _L70151_))
                            (let ((__tmp74717
                                   (lambda (_g7016770172_
                                            _g7016870175_
                                            _g7016970177_
                                            _g7017070179_)
                                     (let ((__tmp74718
                                            (let ((__tmp74722
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp74719
                                                   (let ((__tmp74720
                                                          (let ((__tmp74721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g7016770172_ '()))))
                    (declare (not safe))
                    (cons _g7016870175_ __tmp74721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7016970177_
                                                           __tmp74720))))
                                              (declare (not safe))
                                              (cons __tmp74722 __tmp74719))))
                                       (declare (not safe))
                                       (cons __tmp74718 _g7017070179_)))))
                              (declare (not safe))
                              (foldr* __tmp74717
                                      '()
                                      _L70148_
                                      _L70150_
                                      _L70151_)))))
                     (declare (not safe))
                     (cons __tmp74723 __tmp74716)))
                 _symbol7004670140_
                 _method7004770143_
                 _type-t7004870145_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7003970086_
                                         _target7003670080_
                                         '()
                                         '()
                                         '()))
                                      (_g7002870063_ _g7002970067_)))))
                            (_g7002870063_ _g7002970067_))))
                    (_g7002870063_ _g7002970067_)))))
        (_g7002770182_ _$stx70024_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx70187_)
      (let* ((_g7019170224_
              (lambda (_g7019270220_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7019270220_))))
             (_g7019070338_
              (lambda (_g7019270228_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7019270228_))
                    (let ((_e7019870231_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7019270228_))))
                      (let ((_hd7019770235_
                             (let ()
                               (declare (not safe))
                               (##car _e7019870231_)))
                            (_tl7019670238_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7019870231_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7019670238_))
                            (let ((_e7020170241_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7019670238_))))
                              (let ((_hd7020070245_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7020170241_)))
                                    (_tl7019970248_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7020170241_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7019970248_))
                                    (let ((_g74724_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7019970248_
                                              '0))))
                                      (begin
                                        (let ((_g74725_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g74724_)
                                                     (##vector-length _g74724_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g74725_ 2)))
                                              (error "Context expects 2 values"
                                                     _g74725_)))
                                        (let ((_target7020270251_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g74724_ 0)))
                                              (_tl7020470254_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g74724_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7020470254_))
                                              (letrec ((_loop7020570257_
                                                        (lambda (_hd7020370261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol7020970264_
                         _method7021070266_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd7020370261_))
                      (let ((_e7020670269_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd7020370261_))))
                        (let ((_lp-hd7020770273_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7020670269_)))
                              (_lp-tl7020870276_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7020670269_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd7020770273_))
                              (let ((_e7021570279_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd7020770273_))))
                                (let ((_hd7021470283_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7021570279_)))
                                      (_tl7021370286_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7021570279_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7021370286_))
                                      (let ((_e7021870289_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7021370286_))))
                                        (let ((_hd7021770293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7021870289_)))
                                              (_tl7021670296_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7021870289_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7021670296_))
                                              (_loop7020570257_
                                               _lp-tl7020870276_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7021770293_
                                                       _symbol7020970264_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7021470283_
                                                       _method7021070266_)))
                                              (_g7019170224_ _g7019270228_))))
                                      (_g7019170224_ _g7019270228_))))
                              (_g7019170224_ _g7019270228_))))
                      (let ((_symbol7021170299_
                             (let ()
                               (declare (not safe))
                               (reverse _symbol7020970264_)))
                            (_method7021270302_
                             (let ()
                               (declare (not safe))
                               (reverse _method7021070266_))))
                        ((lambda (_L70305_ _L70307_ _L70308_)
                           (let ((__tmp74733
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp74726
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L70305_
                                       _L70307_))
                                    (let ((__tmp74727
                                           (lambda (_g7032670330_
                                                    _g7032770333_
                                                    _g7032870335_)
                                             (let ((__tmp74728
                                                    (let ((__tmp74732
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp74729
                                                           (let ((__tmp74730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp74731
                                 (let ()
                                   (declare (not safe))
                                   (cons _g7032670330_ '()))))
                            (declare (not safe))
                            (cons _g7032770333_ __tmp74731))))
                     (declare (not safe))
                     (cons _L70308_ __tmp74730))))
              (declare (not safe))
              (cons __tmp74732 __tmp74729))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp74728
                                                     _g7032870335_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp74727
                                              '()
                                              _L70305_
                                              _L70307_)))))
                             (declare (not safe))
                             (cons __tmp74733 __tmp74726)))
                         _symbol7021170299_
                         _method7021270302_
                         _hd7020070245_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7020570257_
                                                 _target7020270251_
                                                 '()
                                                 '()))
                                              (_g7019170224_ _g7019270228_)))))
                                    (_g7019170224_ _g7019270228_))))
                            (_g7019170224_ _g7019270228_))))
                    (_g7019170224_ _g7019270228_)))))
        (_g7019070338_ _$stx70187_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx70343_)
      (let* ((_g7034770361_
              (lambda (_g7034870357_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7034870357_))))
             (_g7034670402_
              (lambda (_g7034870365_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7034870365_))
                    (let ((_e7035270368_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7034870365_))))
                      (let ((_hd7035170372_
                             (let ()
                               (declare (not safe))
                               (##car _e7035270368_)))
                            (_tl7035070375_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7035270368_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7035070375_))
                            (let ((_e7035570378_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7035070375_))))
                              (let ((_hd7035470382_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7035570378_)))
                                    (_tl7035370385_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7035570378_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7035370385_))
                                    ((lambda (_L70388_)
                                       (let ((__tmp74738
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp74734
                                              (let ((__tmp74735
                                                     (let ((__tmp74737
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp74736
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L70388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp74737 __tmp74736))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp74735 '()))))
                                         (declare (not safe))
                                         (cons __tmp74738 __tmp74734)))
                                     _hd7035470382_)
                                    (_g7034770361_ _g7034870365_))))
                            (_g7034770361_ _g7034870365_))))
                    (_g7034770361_ _g7034870365_)))))
        (_g7034670402_ _$stx70343_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx70406_)
      (let* ((___stx7388973890_ _$stx70406_)
             (_g7041270478_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7388973890_)))))
        (let ((___kont7389273893_
               (lambda (_L70700_ _L70702_ _L70703_ _L70704_ _L70705_)
                 (let ((__tmp74744
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f '@make-struct-type)))
                       (__tmp74739
                        (let ((__tmp74740
                               (let ((__tmp74741
                                      (let ((__tmp74742
                                             (let ((__tmp74743
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L70700_ '()))))
                                               (declare (not safe))
                                               (cons _L70702_ __tmp74743))))
                                        (declare (not safe))
                                        (cons _L70703_ __tmp74742))))
                                 (declare (not safe))
                                 (cons _L70704_ __tmp74741))))
                          (declare (not safe))
                          (cons _L70705_ __tmp74740))))
                   (declare (not safe))
                   (cons __tmp74744 __tmp74739))))
              (___kont7389473895_
               (lambda (_L70610_ _L70612_ _L70613_ _L70614_)
                 (let ((__tmp74745
                        (let ((__tmp74746
                               (let ((__tmp74747
                                      (let ((__tmp74748
                                             (let ((__tmp74749
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons '#f __tmp74749))))
                                        (declare (not safe))
                                        (cons _L70610_ __tmp74748))))
                                 (declare (not safe))
                                 (cons _L70612_ __tmp74747))))
                          (declare (not safe))
                          (cons _L70613_ __tmp74746))))
                   (declare (not safe))
                   (cons _L70614_ __tmp74745))))
              (___kont7389673897_
               (lambda (_L70535_ _L70537_ _L70538_ _L70539_ _L70540_)
                 (let ((__tmp74750
                        (let ((__tmp74755
                               (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'type)))
                              (__tmp74751
                               (let ((__tmp74752
                                      (let ((__tmp74753
                                             (let ((__tmp74754
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons _L70535_ __tmp74754))))
                                        (declare (not safe))
                                        (cons _L70537_ __tmp74753))))
                                 (declare (not safe))
                                 (cons _L70538_ __tmp74752))))
                          (declare (not safe))
                          (cons __tmp74755 __tmp74751))))
                   (declare (not safe))
                   (cons _L70540_ __tmp74750)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7388973890_))
              (let ((_e7042170640_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7388973890_))))
                (let ((_tl7041970647_
                       (let () (declare (not safe)) (##cdr _e7042170640_)))
                      (_hd7042070644_
                       (let () (declare (not safe)) (##car _e7042170640_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7041970647_))
                      (let ((_e7042470650_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7041970647_))))
                        (let ((_tl7042270657_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7042470650_)))
                              (_hd7042370654_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7042470650_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7042270657_))
                              (let ((_e7042770660_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7042270657_))))
                                (let ((_tl7042570667_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7042770660_)))
                                      (_hd7042670664_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7042770660_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7042570667_))
                                      (let ((_e7043070670_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7042570667_))))
                                        (let ((_tl7042870677_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7043070670_)))
                                              (_hd7042970674_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7043070670_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl7042870677_))
                                              (let ((_e7043370680_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl7042870677_))))
                                                (let ((_tl7043170687_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e7043370680_)))
                                                      (_hd7043270684_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e7043370680_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl7043170687_))
                                                      (let ((_e7043670690_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _tl7043170687_))))
                (let ((_tl7043470697_
                       (let () (declare (not safe)) (##cdr _e7043670690_)))
                      (_hd7043570694_
                       (let () (declare (not safe)) (##car _e7043670690_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7043470697_))
                      (___kont7389273893_
                       _hd7043570694_
                       _hd7043270684_
                       _hd7042970674_
                       _hd7042670664_
                       _hd7042370654_)
                      (let () (declare (not safe)) (_g7041270478_)))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7043170687_))
                  (___kont7389673897_
                   _hd7043270684_
                   _hd7042970674_
                   _hd7042670664_
                   _hd7042370654_
                   _hd7042070644_)
                  (let () (declare (not safe)) (_g7041270478_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7042870677_))
                                                  (___kont7389473895_
                                                   _hd7042970674_
                                                   _hd7042670664_
                                                   _hd7042370654_
                                                   _hd7042070644_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7041270478_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g7041270478_)))))
                              (let () (declare (not safe)) (_g7041270478_)))))
                      (let () (declare (not safe)) (_g7041270478_)))))
              (let () (declare (not safe)) (_g7041270478_)))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx70733_)
      (let* ((___stx7399773998_ _$stx70733_)
             (_g7073870791_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7399773998_)))))
        (let ((___kont7400074001_
               (lambda (_L70959_ _L70961_ _L70962_ _L70963_)
                 (let ((__tmp74771
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-type)))
                       (__tmp74756
                        (let ((__tmp74768
                               (let ((__tmp74770
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp74769
                                      (let ()
                                        (declare (not safe))
                                        (cons _L70963_ '()))))
                                 (declare (not safe))
                                 (cons __tmp74770 __tmp74769)))
                              (__tmp74757
                               (let ((__tmp74758
                                      (let ((__tmp74759
                                             (let ((__tmp74760
                                                    (let ((__tmp74765
                                                           (let ((__tmp74767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp74766
                          (let () (declare (not safe)) (cons _L70961_ '()))))
                     (declare (not safe))
                     (cons __tmp74767 __tmp74766)))
                  (__tmp74761
                   (let ((__tmp74762
                          (let ((__tmp74764
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp74763
                                 (let ()
                                   (declare (not safe))
                                   (cons _L70959_ '()))))
                            (declare (not safe))
                            (cons __tmp74764 __tmp74763))))
                     (declare (not safe))
                     (cons __tmp74762 '()))))
              (declare (not safe))
              (cons __tmp74765 __tmp74761))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '0 __tmp74760))))
                                        (declare (not safe))
                                        (cons _L70962_ __tmp74759))))
                                 (declare (not safe))
                                 (cons '#f __tmp74758))))
                          (declare (not safe))
                          (cons __tmp74768 __tmp74757))))
                   (declare (not safe))
                   (cons __tmp74771 __tmp74756))))
              (___kont7400274003_
               (lambda (_L70858_ _L70860_ _L70861_ _L70862_ _L70863_)
                 (let ((__tmp74853
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'let*)))
                       (__tmp74772
                        (let ((__tmp74793
                               (let ((__tmp74844
                                      (let ((__tmp74852
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'super-type)))
                                            (__tmp74845
                                             (let ((__tmp74846
                                                    (let ((__tmp74851
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-resolve-type)))
                                                          (__tmp74847
                                                           (let ((__tmp74848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp74850
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp74849
                                 (let ()
                                   (declare (not safe))
                                   (cons _L70862_ '()))))
                            (declare (not safe))
                            (cons __tmp74850 __tmp74849))))
                     (declare (not safe))
                     (cons __tmp74848 '()))))
              (declare (not safe))
              (cons __tmp74851 __tmp74847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp74846 '()))))
                                        (declare (not safe))
                                        (cons __tmp74852 __tmp74845)))
                                     (__tmp74794
                                      (let ((__tmp74816
                                             (let ((__tmp74843
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'xfields)))
                                                   (__tmp74817
                                                    (let ((__tmp74818
                                                           (let ((__tmp74842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'and)))
                         (__tmp74819
                          (let ((__tmp74841
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'super-type)))
                                (__tmp74820
                                 (let ((__tmp74821
                                        (let ((__tmp74840
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'alet)))
                                              (__tmp74822
                                               (let ((__tmp74833
                                                      (let ((__tmp74839
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'xfields)))
                    (__tmp74834
                     (let ((__tmp74835
                            (let ((__tmp74838
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-xfields)))
                                  (__tmp74836
                                   (let ((__tmp74837
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp74837 '()))))
                              (declare (not safe))
                              (cons __tmp74838 __tmp74836))))
                       (declare (not safe))
                       (cons __tmp74835 '()))))
                (declare (not safe))
                (cons __tmp74839 __tmp74834)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp74823
                                                      (let ((__tmp74824
                                                             (let ((__tmp74832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'fx+)))
                           (__tmp74825
                            (let ((__tmp74831
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'xfields)))
                                  (__tmp74826
                                   (let ((__tmp74827
                                          (let ((__tmp74830
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '!struct-type-fields)))
                                                (__tmp74828
                                                 (let ((__tmp74829
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'super-type))))
                                                   (declare (not safe))
                                                   (cons __tmp74829 '()))))
                                            (declare (not safe))
                                            (cons __tmp74830 __tmp74828))))
                                     (declare (not safe))
                                     (cons __tmp74827 '()))))
                              (declare (not safe))
                              (cons __tmp74831 __tmp74826))))
                       (declare (not safe))
                       (cons __tmp74832 __tmp74825))))
                (declare (not safe))
                (cons __tmp74824 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp74833
                                                       __tmp74823))))
                                          (declare (not safe))
                                          (cons __tmp74840 __tmp74822))))
                                   (declare (not safe))
                                   (cons __tmp74821 '()))))
                            (declare (not safe))
                            (cons __tmp74841 __tmp74820))))
                     (declare (not safe))
                     (cons __tmp74842 __tmp74819))))
              (declare (not safe))
              (cons __tmp74818 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp74843 __tmp74817)))
                                            (__tmp74795
                                             (let ((__tmp74796
                                                    (let ((__tmp74815
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'xtor)))
                                                          (__tmp74797
                                                           (let ((__tmp74798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp74814
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'or)))
                                (__tmp74799
                                 (let ((__tmp74811
                                        (let ((__tmp74813
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp74812
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L70860_ '()))))
                                          (declare (not safe))
                                          (cons __tmp74813 __tmp74812)))
                                       (__tmp74800
                                        (let ((__tmp74801
                                               (let ((__tmp74810
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'if)))
                                                     (__tmp74802
                                                      (let ((__tmp74809
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'super-type)))
                    (__tmp74803
                     (let ((__tmp74805
                            (let ((__tmp74808
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-ctor)))
                                  (__tmp74806
                                   (let ((__tmp74807
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp74807 '()))))
                              (declare (not safe))
                              (cons __tmp74808 __tmp74806)))
                           (__tmp74804
                            (let () (declare (not safe)) (cons '#!void '()))))
                       (declare (not safe))
                       (cons __tmp74805 __tmp74804))))
                (declare (not safe))
                (cons __tmp74809 __tmp74803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp74810
                                                       __tmp74802))))
                                          (declare (not safe))
                                          (cons __tmp74801 '()))))
                                   (declare (not safe))
                                   (cons __tmp74811 __tmp74800))))
                            (declare (not safe))
                            (cons __tmp74814 __tmp74799))))
                     (declare (not safe))
                     (cons __tmp74798 '()))))
              (declare (not safe))
              (cons __tmp74815 __tmp74797))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp74796 '()))))
                                        (declare (not safe))
                                        (cons __tmp74816 __tmp74795))))
                                 (declare (not safe))
                                 (cons __tmp74844 __tmp74794)))
                              (__tmp74773
                               (let ((__tmp74774
                                      (let ((__tmp74792
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!struct-type)))
                                            (__tmp74775
                                             (let ((__tmp74789
                                                    (let ((__tmp74791
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp74790
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L70863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp74791 __tmp74790)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp74776
                                                    (let ((__tmp74786
                                                           (let ((__tmp74788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp74787
                          (let () (declare (not safe)) (cons _L70862_ '()))))
                     (declare (not safe))
                     (cons __tmp74788 __tmp74787)))
                  (__tmp74777
                   (let ((__tmp74778
                          (let ((__tmp74785
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'xfields)))
                                (__tmp74779
                                 (let ((__tmp74784
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'xtor)))
                                       (__tmp74780
                                        (let ((__tmp74781
                                               (let ((__tmp74783
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'quote)))
                                                     (__tmp74782
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L70858_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp74783
                                                       __tmp74782))))
                                          (declare (not safe))
                                          (cons __tmp74781 '()))))
                                   (declare (not safe))
                                   (cons __tmp74784 __tmp74780))))
                            (declare (not safe))
                            (cons __tmp74785 __tmp74779))))
                     (declare (not safe))
                     (cons _L70861_ __tmp74778))))
              (declare (not safe))
              (cons __tmp74786 __tmp74777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp74789 __tmp74776))))
                                        (declare (not safe))
                                        (cons __tmp74792 __tmp74775))))
                                 (declare (not safe))
                                 (cons __tmp74774 '()))))
                          (declare (not safe))
                          (cons __tmp74793 __tmp74773))))
                   (declare (not safe))
                   (cons __tmp74853 __tmp74772)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7399773998_))
              (let ((_e7074670895_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7399773998_))))
                (let ((_tl7074470902_
                       (let () (declare (not safe)) (##cdr _e7074670895_)))
                      (_hd7074570899_
                       (let () (declare (not safe)) (##car _e7074670895_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7074470902_))
                      (let ((_e7074970905_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7074470902_))))
                        (let ((_tl7074770912_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7074970905_)))
                              (_hd7074870909_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7074970905_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7074770912_))
                              (let ((_e7075270915_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7074770912_))))
                                (let ((_tl7075070922_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7075270915_)))
                                      (_hd7075170919_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7075270915_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd7075170919_))
                                      (let ((_e7075370925_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd7075170919_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e7075370925_ '#f))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7075070922_))
                                                (let ((_e7075670929_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7075070922_))))
                                                  (let ((_tl7075470936_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7075670929_)))
                                                        (_hd7075570933_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7075670929_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7075470936_))
                                                        (let ((_e7075970939_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7075470936_))))
                  (let ((_tl7075770946_
                         (let () (declare (not safe)) (##cdr _e7075970939_)))
                        (_hd7075870943_
                         (let () (declare (not safe)) (##car _e7075970939_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7075770946_))
                        (let ((_e7076270949_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7075770946_))))
                          (let ((_tl7076070956_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7076270949_)))
                                (_hd7076170953_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7076270949_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7076070956_))
                                (___kont7400074001_
                                 _hd7076170953_
                                 _hd7075870943_
                                 _hd7075570933_
                                 _hd7074870909_)
                                (let ()
                                  (declare (not safe))
                                  (_g7073870791_)))))
                        (let () (declare (not safe)) (_g7073870791_)))))
                (let () (declare (not safe)) (_g7073870791_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7073870791_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7075070922_))
                                                (let ((_e7077970828_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7075070922_))))
                                                  (let ((_tl7077770835_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7077970828_)))
                                                        (_hd7077870832_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7077970828_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7077770835_))
                                                        (let ((_e7078270838_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7077770835_))))
                  (let ((_tl7078070845_
                         (let () (declare (not safe)) (##cdr _e7078270838_)))
                        (_hd7078170842_
                         (let () (declare (not safe)) (##car _e7078270838_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7078070845_))
                        (let ((_e7078570848_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7078070845_))))
                          (let ((_tl7078370855_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7078570848_)))
                                (_hd7078470852_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7078570848_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7078370855_))
                                (___kont7400274003_
                                 _hd7078470852_
                                 _hd7078170842_
                                 _hd7077870832_
                                 _hd7075170919_
                                 _hd7074870909_)
                                (let ()
                                  (declare (not safe))
                                  (_g7073870791_)))))
                        (let () (declare (not safe)) (_g7073870791_)))))
                (let () (declare (not safe)) (_g7073870791_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7073870791_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl7075070922_))
                                          (let ((_e7077970828_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl7075070922_))))
                                            (let ((_tl7077770835_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7077970828_)))
                                                  (_hd7077870832_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7077970828_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl7077770835_))
                                                  (let ((_e7078270838_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl7077770835_))))
                                                    (let ((_tl7078070845_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e7078270838_)))
                                                          (_hd7078170842_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e7078270838_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl7078070845_))
                                                          (let ((_e7078570848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _tl7078070845_))))
                    (let ((_tl7078370855_
                           (let () (declare (not safe)) (##cdr _e7078570848_)))
                          (_hd7078470852_
                           (let ()
                             (declare (not safe))
                             (##car _e7078570848_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl7078370855_))
                          (___kont7400274003_
                           _hd7078470852_
                           _hd7078170842_
                           _hd7077870832_
                           _hd7075170919_
                           _hd7074870909_)
                          (let () (declare (not safe)) (_g7073870791_)))))
                  (let () (declare (not safe)) (_g7073870791_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7073870791_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g7073870791_))))))
                              (let () (declare (not safe)) (_g7073870791_)))))
                      (let () (declare (not safe)) (_g7073870791_)))))
              (let () (declare (not safe)) (_g7073870791_)))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx70991_)
      (let* ((_g7099571009_
              (lambda (_g7099671005_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7099671005_))))
             (_g7099471050_
              (lambda (_g7099671013_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7099671013_))
                    (let ((_e7100071016_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7099671013_))))
                      (let ((_hd7099971020_
                             (let ()
                               (declare (not safe))
                               (##car _e7100071016_)))
                            (_tl7099871023_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7100071016_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7099871023_))
                            (let ((_e7100371026_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7099871023_))))
                              (let ((_hd7100271030_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7100371026_)))
                                    (_tl7100171033_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7100371026_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7100171033_))
                                    ((lambda (_L71036_)
                                       (let ((__tmp74858
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-pred)))
                                             (__tmp74854
                                              (let ((__tmp74855
                                                     (let ((__tmp74857
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp74856
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L71036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp74857 __tmp74856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp74855 '()))))
                                         (declare (not safe))
                                         (cons __tmp74858 __tmp74854)))
                                     _hd7100271030_)
                                    (_g7099571009_ _g7099671013_))))
                            (_g7099571009_ _g7099671013_))))
                    (_g7099571009_ _g7099671013_)))))
        (_g7099471050_ _$stx70991_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx71054_)
      (let* ((_g7105871072_
              (lambda (_g7105971068_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7105971068_))))
             (_g7105771113_
              (lambda (_g7105971076_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7105971076_))
                    (let ((_e7106371079_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7105971076_))))
                      (let ((_hd7106271083_
                             (let ()
                               (declare (not safe))
                               (##car _e7106371079_)))
                            (_tl7106171086_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7106371079_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7106171086_))
                            (let ((_e7106671089_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7106171086_))))
                              (let ((_hd7106571093_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7106671089_)))
                                    (_tl7106471096_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7106671089_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7106471096_))
                                    ((lambda (_L71099_)
                                       (let ((__tmp74863
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-cons)))
                                             (__tmp74859
                                              (let ((__tmp74860
                                                     (let ((__tmp74862
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp74861
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L71099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp74862 __tmp74861))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp74860 '()))))
                                         (declare (not safe))
                                         (cons __tmp74863 __tmp74859)))
                                     _hd7106571093_)
                                    (_g7105871072_ _g7105971076_))))
                            (_g7105871072_ _g7105971076_))))
                    (_g7105871072_ _g7105971076_)))))
        (_g7105771113_ _$stx71054_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx71117_)
      (let* ((___stx7408974090_ _$stx71117_)
             (_g7112271155_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7408974090_)))))
        (let ((___kont7409274093_
               (lambda (_L71257_ _L71259_ _L71260_)
                 (let ((__tmp74870
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp74864
                        (let ((__tmp74867
                               (let ((__tmp74869
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp74868
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71260_ '()))))
                                 (declare (not safe))
                                 (cons __tmp74869 __tmp74868)))
                              (__tmp74865
                               (let ((__tmp74866
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71257_ '()))))
                                 (declare (not safe))
                                 (cons _L71259_ __tmp74866))))
                          (declare (not safe))
                          (cons __tmp74867 __tmp74865))))
                   (declare (not safe))
                   (cons __tmp74870 __tmp74864))))
              (___kont7409474095_
               (lambda (_L71192_ _L71194_)
                 (let ((__tmp74877
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp74871
                        (let ((__tmp74874
                               (let ((__tmp74876
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp74875
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71194_ '()))))
                                 (declare (not safe))
                                 (cons __tmp74876 __tmp74875)))
                              (__tmp74872
                               (let ((__tmp74873
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L71192_ __tmp74873))))
                          (declare (not safe))
                          (cons __tmp74874 __tmp74872))))
                   (declare (not safe))
                   (cons __tmp74877 __tmp74871)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7408974090_))
              (let ((_e7112971217_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7408974090_))))
                (let ((_tl7112771224_
                       (let () (declare (not safe)) (##cdr _e7112971217_)))
                      (_hd7112871221_
                       (let () (declare (not safe)) (##car _e7112971217_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7112771224_))
                      (let ((_e7113271227_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7112771224_))))
                        (let ((_tl7113071234_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7113271227_)))
                              (_hd7113171231_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7113271227_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7113071234_))
                              (let ((_e7113571237_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7113071234_))))
                                (let ((_tl7113371244_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7113571237_)))
                                      (_hd7113471241_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7113571237_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7113371244_))
                                      (let ((_e7113871247_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7113371244_))))
                                        (let ((_tl7113671254_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7113871247_)))
                                              (_hd7113771251_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7113871247_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7113671254_))
                                              (___kont7409274093_
                                               _hd7113771251_
                                               _hd7113471241_
                                               _hd7113171231_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7112271155_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7113371244_))
                                          (___kont7409474095_
                                           _hd7113471241_
                                           _hd7113171231_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7112271155_))))))
                              (let () (declare (not safe)) (_g7112271155_)))))
                      (let () (declare (not safe)) (_g7112271155_)))))
              (let () (declare (not safe)) (_g7112271155_)))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx71282_)
      (let* ((___stx7414574146_ _$stx71282_)
             (_g7128771320_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7414574146_)))))
        (let ((___kont7414874149_
               (lambda (_L71422_ _L71424_ _L71425_)
                 (let ((__tmp74884
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp74878
                        (let ((__tmp74881
                               (let ((__tmp74883
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp74882
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71425_ '()))))
                                 (declare (not safe))
                                 (cons __tmp74883 __tmp74882)))
                              (__tmp74879
                               (let ((__tmp74880
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71422_ '()))))
                                 (declare (not safe))
                                 (cons _L71424_ __tmp74880))))
                          (declare (not safe))
                          (cons __tmp74881 __tmp74879))))
                   (declare (not safe))
                   (cons __tmp74884 __tmp74878))))
              (___kont7415074151_
               (lambda (_L71357_ _L71359_)
                 (let ((__tmp74891
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp74885
                        (let ((__tmp74888
                               (let ((__tmp74890
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp74889
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71359_ '()))))
                                 (declare (not safe))
                                 (cons __tmp74890 __tmp74889)))
                              (__tmp74886
                               (let ((__tmp74887
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L71357_ __tmp74887))))
                          (declare (not safe))
                          (cons __tmp74888 __tmp74886))))
                   (declare (not safe))
                   (cons __tmp74891 __tmp74885)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7414574146_))
              (let ((_e7129471382_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7414574146_))))
                (let ((_tl7129271389_
                       (let () (declare (not safe)) (##cdr _e7129471382_)))
                      (_hd7129371386_
                       (let () (declare (not safe)) (##car _e7129471382_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7129271389_))
                      (let ((_e7129771392_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7129271389_))))
                        (let ((_tl7129571399_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7129771392_)))
                              (_hd7129671396_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7129771392_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7129571399_))
                              (let ((_e7130071402_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7129571399_))))
                                (let ((_tl7129871409_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7130071402_)))
                                      (_hd7129971406_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7130071402_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7129871409_))
                                      (let ((_e7130371412_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7129871409_))))
                                        (let ((_tl7130171419_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7130371412_)))
                                              (_hd7130271416_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7130371412_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7130171419_))
                                              (___kont7414874149_
                                               _hd7130271416_
                                               _hd7129971406_
                                               _hd7129671396_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7128771320_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7129871409_))
                                          (___kont7415074151_
                                           _hd7129971406_
                                           _hd7129671396_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7128771320_))))))
                              (let () (declare (not safe)) (_g7128771320_)))))
                      (let () (declare (not safe)) (_g7128771320_)))))
              (let () (declare (not safe)) (_g7128771320_)))))))
  (define |gxc[:0:]#@class-type|
    (lambda (_$stx71447_)
      (let* ((_g7145171489_
              (lambda (_g7145271485_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7145271485_))))
             (_g7145071614_
              (lambda (_g7145271493_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7145271493_))
                    (let ((_e7146271496_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7145271493_))))
                      (let ((_hd7146171500_
                             (let ()
                               (declare (not safe))
                               (##car _e7146271496_)))
                            (_tl7146071503_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7146271496_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7146071503_))
                            (let ((_e7146571506_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7146071503_))))
                              (let ((_hd7146471510_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7146571506_)))
                                    (_tl7146371513_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7146571506_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7146371513_))
                                    (let ((_e7146871516_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7146371513_))))
                                      (let ((_hd7146771520_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7146871516_)))
                                            (_tl7146671523_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7146871516_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl7146671523_))
                                            (let ((_e7147171526_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl7146671523_))))
                                              (let ((_hd7147071530_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7147171526_)))
                                                    (_tl7146971533_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7147171526_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7146971533_))
                                                    (let ((_e7147471536_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7146971533_))))
                                                      (let ((_hd7147371540_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e7147471536_)))
                    (_tl7147271543_
                     (let () (declare (not safe)) (##cdr _e7147471536_))))
                (if (let () (declare (not safe)) (gx#stx-pair? _tl7147271543_))
                    (let ((_e7147771546_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl7147271543_))))
                      (let ((_hd7147671550_
                             (let ()
                               (declare (not safe))
                               (##car _e7147771546_)))
                            (_tl7147571553_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7147771546_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7147571553_))
                            (let ((_e7148071556_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7147571553_))))
                              (let ((_hd7147971560_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7148071556_)))
                                    (_tl7147871563_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7148071556_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7147871563_))
                                    (let ((_e7148371566_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7147871563_))))
                                      (let ((_hd7148271570_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7148371566_)))
                                            (_tl7148171573_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7148371566_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7148171573_))
                                            ((lambda (_L71576_
                                                      _L71578_
                                                      _L71579_
                                                      _L71580_
                                                      _L71581_
                                                      _L71582_
                                                      _L71583_)
                                               (let ((__tmp74920
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!class-type)))
                                                     (__tmp74892
                                                      (let ((__tmp74917
                                                             (let ((__tmp74919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp74918
                            (let () (declare (not safe)) (cons _L71583_ '()))))
                       (declare (not safe))
                       (cons __tmp74919 __tmp74918)))
                    (__tmp74893
                     (let ((__tmp74914
                            (let ((__tmp74916
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp74915
                                   (let ()
                                     (declare (not safe))
                                     (cons _L71582_ '()))))
                              (declare (not safe))
                              (cons __tmp74916 __tmp74915)))
                           (__tmp74894
                            (let ((__tmp74911
                                   (let ((__tmp74913
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp74912
                                          (let ()
                                            (declare (not safe))
                                            (cons _L71581_ '()))))
                                     (declare (not safe))
                                     (cons __tmp74913 __tmp74912)))
                                  (__tmp74895
                                   (let ((__tmp74908
                                          (let ((__tmp74910
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote)))
                                                (__tmp74909
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L71580_ '()))))
                                            (declare (not safe))
                                            (cons __tmp74910 __tmp74909)))
                                         (__tmp74896
                                          (let ((__tmp74905
                                                 (let ((__tmp74907
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote)))
                                                       (__tmp74906
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L71579_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp74907
                                                         __tmp74906)))
                                                (__tmp74897
                                                 (let ((__tmp74902
                                                        (let ((__tmp74904
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote)))
                      (__tmp74903
                       (let () (declare (not safe)) (cons _L71578_ '()))))
                  (declare (not safe))
                  (cons __tmp74904 __tmp74903)))
               (__tmp74898
                (let ((__tmp74899
                       (let ((__tmp74901
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote)))
                             (__tmp74900
                              (let ()
                                (declare (not safe))
                                (cons _L71576_ '()))))
                         (declare (not safe))
                         (cons __tmp74901 __tmp74900))))
                  (declare (not safe))
                  (cons __tmp74899 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp74902
                                                         __tmp74898))))
                                            (declare (not safe))
                                            (cons __tmp74905 __tmp74897))))
                                     (declare (not safe))
                                     (cons __tmp74908 __tmp74896))))
                              (declare (not safe))
                              (cons __tmp74911 __tmp74895))))
                       (declare (not safe))
                       (cons __tmp74914 __tmp74894))))
                (declare (not safe))
                (cons __tmp74917 __tmp74893))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp74920 __tmp74892)))
                                             _hd7148271570_
                                             _hd7147971560_
                                             _hd7147671550_
                                             _hd7147371540_
                                             _hd7147071530_
                                             _hd7146771520_
                                             _hd7146471510_)
                                            (_g7145171489_ _g7145271493_))))
                                    (_g7145171489_ _g7145271493_))))
                            (_g7145171489_ _g7145271493_))))
                    (_g7145171489_ _g7145271493_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7145171489_
                                                     _g7145271493_))))
                                            (_g7145171489_ _g7145271493_))))
                                    (_g7145171489_ _g7145271493_))))
                            (_g7145171489_ _g7145271493_))))
                    (_g7145171489_ _g7145271493_)))))
        (_g7145071614_ _$stx71447_))))
  (define |gxc[:0:]#@class-pred|
    (lambda (_$stx71618_)
      (let* ((_g7162271636_
              (lambda (_g7162371632_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7162371632_))))
             (_g7162171677_
              (lambda (_g7162371640_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7162371640_))
                    (let ((_e7162771643_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7162371640_))))
                      (let ((_hd7162671647_
                             (let ()
                               (declare (not safe))
                               (##car _e7162771643_)))
                            (_tl7162571650_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7162771643_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7162571650_))
                            (let ((_e7163071653_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7162571650_))))
                              (let ((_hd7162971657_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7163071653_)))
                                    (_tl7162871660_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7163071653_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7162871660_))
                                    ((lambda (_L71663_)
                                       (let ((__tmp74925
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-pred)))
                                             (__tmp74921
                                              (let ((__tmp74922
                                                     (let ((__tmp74924
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp74923
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L71663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp74924 __tmp74923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp74922 '()))))
                                         (declare (not safe))
                                         (cons __tmp74925 __tmp74921)))
                                     _hd7162971657_)
                                    (_g7162271636_ _g7162371640_))))
                            (_g7162271636_ _g7162371640_))))
                    (_g7162271636_ _g7162371640_)))))
        (_g7162171677_ _$stx71618_))))
  (define |gxc[:0:]#@class-cons|
    (lambda (_$stx71681_)
      (let* ((_g7168571699_
              (lambda (_g7168671695_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7168671695_))))
             (_g7168471740_
              (lambda (_g7168671703_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7168671703_))
                    (let ((_e7169071706_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7168671703_))))
                      (let ((_hd7168971710_
                             (let ()
                               (declare (not safe))
                               (##car _e7169071706_)))
                            (_tl7168871713_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7169071706_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7168871713_))
                            (let ((_e7169371716_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7168871713_))))
                              (let ((_hd7169271720_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7169371716_)))
                                    (_tl7169171723_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7169371716_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7169171723_))
                                    ((lambda (_L71726_)
                                       (let ((__tmp74930
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-cons)))
                                             (__tmp74926
                                              (let ((__tmp74927
                                                     (let ((__tmp74929
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp74928
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L71726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp74929 __tmp74928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp74927 '()))))
                                         (declare (not safe))
                                         (cons __tmp74930 __tmp74926)))
                                     _hd7169271720_)
                                    (_g7168571699_ _g7168671703_))))
                            (_g7168571699_ _g7168671703_))))
                    (_g7168571699_ _g7168671703_)))))
        (_g7168471740_ _$stx71681_))))
  (define |gxc[:0:]#@class-getf|
    (lambda (_$stx71744_)
      (let* ((___stx7420174202_ _$stx71744_)
             (_g7174971782_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7420174202_)))))
        (let ((___kont7420474205_
               (lambda (_L71884_ _L71886_ _L71887_)
                 (let ((__tmp74940
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp74931
                        (let ((__tmp74937
                               (let ((__tmp74939
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp74938
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71887_ '()))))
                                 (declare (not safe))
                                 (cons __tmp74939 __tmp74938)))
                              (__tmp74932
                               (let ((__tmp74934
                                      (let ((__tmp74936
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp74935
                                             (let ()
                                               (declare (not safe))
                                               (cons _L71886_ '()))))
                                        (declare (not safe))
                                        (cons __tmp74936 __tmp74935)))
                                     (__tmp74933
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71884_ '()))))
                                 (declare (not safe))
                                 (cons __tmp74934 __tmp74933))))
                          (declare (not safe))
                          (cons __tmp74937 __tmp74932))))
                   (declare (not safe))
                   (cons __tmp74940 __tmp74931))))
              (___kont7420674207_
               (lambda (_L71819_ _L71821_)
                 (let ((__tmp74950
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp74941
                        (let ((__tmp74947
                               (let ((__tmp74949
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp74948
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71821_ '()))))
                                 (declare (not safe))
                                 (cons __tmp74949 __tmp74948)))
                              (__tmp74942
                               (let ((__tmp74944
                                      (let ((__tmp74946
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp74945
                                             (let ()
                                               (declare (not safe))
                                               (cons _L71819_ '()))))
                                        (declare (not safe))
                                        (cons __tmp74946 __tmp74945)))
                                     (__tmp74943
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp74944 __tmp74943))))
                          (declare (not safe))
                          (cons __tmp74947 __tmp74942))))
                   (declare (not safe))
                   (cons __tmp74950 __tmp74941)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7420174202_))
              (let ((_e7175671844_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7420174202_))))
                (let ((_tl7175471851_
                       (let () (declare (not safe)) (##cdr _e7175671844_)))
                      (_hd7175571848_
                       (let () (declare (not safe)) (##car _e7175671844_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7175471851_))
                      (let ((_e7175971854_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7175471851_))))
                        (let ((_tl7175771861_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7175971854_)))
                              (_hd7175871858_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7175971854_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7175771861_))
                              (let ((_e7176271864_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7175771861_))))
                                (let ((_tl7176071871_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7176271864_)))
                                      (_hd7176171868_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7176271864_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7176071871_))
                                      (let ((_e7176571874_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7176071871_))))
                                        (let ((_tl7176371881_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7176571874_)))
                                              (_hd7176471878_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7176571874_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7176371881_))
                                              (___kont7420474205_
                                               _hd7176471878_
                                               _hd7176171868_
                                               _hd7175871858_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7174971782_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7176071871_))
                                          (___kont7420674207_
                                           _hd7176171868_
                                           _hd7175871858_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7174971782_))))))
                              (let () (declare (not safe)) (_g7174971782_)))))
                      (let () (declare (not safe)) (_g7174971782_)))))
              (let () (declare (not safe)) (_g7174971782_)))))))
  (define |gxc[:0:]#@class-setf|
    (lambda (_$stx71909_)
      (let* ((___stx7425774258_ _$stx71909_)
             (_g7191471947_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7425774258_)))))
        (let ((___kont7426074261_
               (lambda (_L72049_ _L72051_ _L72052_)
                 (let ((__tmp74960
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp74951
                        (let ((__tmp74957
                               (let ((__tmp74959
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp74958
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72052_ '()))))
                                 (declare (not safe))
                                 (cons __tmp74959 __tmp74958)))
                              (__tmp74952
                               (let ((__tmp74954
                                      (let ((__tmp74956
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp74955
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72051_ '()))))
                                        (declare (not safe))
                                        (cons __tmp74956 __tmp74955)))
                                     (__tmp74953
                                      (let ()
                                        (declare (not safe))
                                        (cons _L72049_ '()))))
                                 (declare (not safe))
                                 (cons __tmp74954 __tmp74953))))
                          (declare (not safe))
                          (cons __tmp74957 __tmp74952))))
                   (declare (not safe))
                   (cons __tmp74960 __tmp74951))))
              (___kont7426274263_
               (lambda (_L71984_ _L71986_)
                 (let ((__tmp74970
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp74961
                        (let ((__tmp74967
                               (let ((__tmp74969
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp74968
                                      (let ()
                                        (declare (not safe))
                                        (cons _L71986_ '()))))
                                 (declare (not safe))
                                 (cons __tmp74969 __tmp74968)))
                              (__tmp74962
                               (let ((__tmp74964
                                      (let ((__tmp74966
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp74965
                                             (let ()
                                               (declare (not safe))
                                               (cons _L71984_ '()))))
                                        (declare (not safe))
                                        (cons __tmp74966 __tmp74965)))
                                     (__tmp74963
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp74964 __tmp74963))))
                          (declare (not safe))
                          (cons __tmp74967 __tmp74962))))
                   (declare (not safe))
                   (cons __tmp74970 __tmp74961)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7425774258_))
              (let ((_e7192172009_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7425774258_))))
                (let ((_tl7191972016_
                       (let () (declare (not safe)) (##cdr _e7192172009_)))
                      (_hd7192072013_
                       (let () (declare (not safe)) (##car _e7192172009_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7191972016_))
                      (let ((_e7192472019_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7191972016_))))
                        (let ((_tl7192272026_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7192472019_)))
                              (_hd7192372023_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7192472019_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7192272026_))
                              (let ((_e7192772029_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7192272026_))))
                                (let ((_tl7192572036_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7192772029_)))
                                      (_hd7192672033_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7192772029_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7192572036_))
                                      (let ((_e7193072039_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7192572036_))))
                                        (let ((_tl7192872046_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7193072039_)))
                                              (_hd7192972043_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7193072039_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7192872046_))
                                              (___kont7426074261_
                                               _hd7192972043_
                                               _hd7192672033_
                                               _hd7192372023_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7191471947_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7192572036_))
                                          (___kont7426274263_
                                           _hd7192672033_
                                           _hd7192372023_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7191471947_))))))
                              (let () (declare (not safe)) (_g7191471947_)))))
                      (let () (declare (not safe)) (_g7191471947_)))))
              (let () (declare (not safe)) (_g7191471947_)))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx72074_)
      (let* ((___stx7431374314_ _$stx72074_)
             (_g7208272150_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7431374314_)))))
        (let ((___kont7431674317_
               (lambda (_L72428_ _L72430_)
                 (let ((__tmp74986
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp74971
                        (let ((__tmp74982
                               (let ((__tmp74985
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp74983
                                      (let ((__tmp74984
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp74984 '()))))
                                 (declare (not safe))
                                 (cons __tmp74985 __tmp74983)))
                              (__tmp74972
                               (let ((__tmp74979
                                      (let ((__tmp74981
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp74980
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72430_ '()))))
                                        (declare (not safe))
                                        (cons __tmp74981 __tmp74980)))
                                     (__tmp74973
                                      (let ((__tmp74974
                                             (let ((__tmp74975
                                                    (let ((__tmp74976
                                                           (let ((__tmp74978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp74977
                          (let () (declare (not safe)) (cons _L72428_ '()))))
                     (declare (not safe))
                     (cons __tmp74978 __tmp74977))))
              (declare (not safe))
              (cons __tmp74976 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L72428_ __tmp74975))))
                                        (declare (not safe))
                                        (cons '#f __tmp74974))))
                                 (declare (not safe))
                                 (cons __tmp74979 __tmp74973))))
                          (declare (not safe))
                          (cons __tmp74982 __tmp74972))))
                   (declare (not safe))
                   (cons __tmp74986 __tmp74971))))
              (___kont7431874319_
               (lambda (_L72359_ _L72361_)
                 (let ((__tmp74987
                        (let ((__tmp74988
                               (let ((__tmp74989
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L72359_ __tmp74989))))
                          (declare (not safe))
                          (cons 'primitive: __tmp74988))))
                   (declare (not safe))
                   (cons _L72361_ __tmp74987))))
              (___kont7432074321_
               (lambda (_L72298_ _L72300_)
                 (let ((__tmp75003
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp74990
                        (let ((__tmp74999
                               (let ((__tmp75002
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75000
                                      (let ((__tmp75001
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp75001 '()))))
                                 (declare (not safe))
                                 (cons __tmp75002 __tmp75000)))
                              (__tmp74991
                               (let ((__tmp74996
                                      (let ((__tmp74998
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp74997
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72300_ '()))))
                                        (declare (not safe))
                                        (cons __tmp74998 __tmp74997)))
                                     (__tmp74992
                                      (let ((__tmp74993
                                             (let ((__tmp74995
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp74994
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L72298_ '()))))
                                               (declare (not safe))
                                               (cons __tmp74995 __tmp74994))))
                                        (declare (not safe))
                                        (cons __tmp74993 '()))))
                                 (declare (not safe))
                                 (cons __tmp74996 __tmp74992))))
                          (declare (not safe))
                          (cons __tmp74999 __tmp74991))))
                   (declare (not safe))
                   (cons __tmp75003 __tmp74990))))
              (___kont7432274323_
               (lambda (_L72230_ _L72232_)
                 (let ((__tmp75017
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp75004
                        (let ((__tmp75013
                               (let ((__tmp75016
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75014
                                      (let ((__tmp75015
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp75015 '()))))
                                 (declare (not safe))
                                 (cons __tmp75016 __tmp75014)))
                              (__tmp75005
                               (let ((__tmp75010
                                      (let ((__tmp75012
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp75011
                                             (let ()
                                               (declare (not safe))
                                               (cons _L72232_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75012 __tmp75011)))
                                     (__tmp75006
                                      (let ((__tmp75007
                                             (let ((__tmp75009
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp75008
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L72230_ '()))))
                                               (declare (not safe))
                                               (cons __tmp75009 __tmp75008))))
                                        (declare (not safe))
                                        (cons __tmp75007 '()))))
                                 (declare (not safe))
                                 (cons __tmp75010 __tmp75006))))
                          (declare (not safe))
                          (cons __tmp75013 __tmp75005))))
                   (declare (not safe))
                   (cons __tmp75017 __tmp75004))))
              (___kont7432474325_
               (lambda (_L72177_ _L72179_)
                 (let ((__tmp75018
                        (let ((__tmp75019
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L72177_ __tmp75019))))
                   (declare (not safe))
                   (cons _L72179_ __tmp75018)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7431374314_))
              (let ((_e7208872384_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7431374314_))))
                (let ((_tl7208672391_
                       (let () (declare (not safe)) (##cdr _e7208872384_)))
                      (_hd7208772388_
                       (let () (declare (not safe)) (##car _e7208872384_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7208672391_))
                      (let ((_e7209172394_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7208672391_))))
                        (let ((_tl7208972401_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7209172394_)))
                              (_hd7209072398_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7209172394_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7208972401_))
                              (let ((_e7209472404_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7208972401_))))
                                (let ((_tl7209272411_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7209472404_)))
                                      (_hd7209372408_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7209472404_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd7209372408_))
                                      (let ((_e7209572414_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd7209372408_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e7209572414_ 'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7209272411_))
                                                (let ((_e7209872418_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7209272411_))))
                                                  (let ((_tl7209672425_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7209872418_)))
                                                        (_hd7209772422_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7209872418_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7209672425_))
                                                        (___kont7431674317_
                                                         _hd7209772422_
                                                         _hd7209072398_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd7209072398_))
                                                            (let ((_e7210772345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd7209072398_))))
                      (declare (not safe))
                      (_g7208272150_))
                    (let () (declare (not safe)) (_g7208272150_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd7209072398_))
                                                    (let ((_e7210772345_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd7209072398_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e7210772345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7209272411_))
                      (___kont7431874319_ _hd7209372408_ _hd7208772388_)
                      (let () (declare (not safe)) (_g7208272150_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7209272411_))
                      (___kont7432274323_ _hd7209372408_ _hd7209072398_)
                      (let () (declare (not safe)) (_g7208272150_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7209272411_))
                                                        (___kont7432274323_
                                                         _hd7209372408_
                                                         _hd7209072398_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7208272150_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd7209072398_))
                                                (let ((_e7210772345_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd7209072398_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e7210772345_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl7209272411_))
                                                          (___kont7431874319_
                                                           _hd7209372408_
                                                           _hd7208772388_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl7209272411_))
                      (let ((_e7212572288_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7209272411_))))
                        (let ((_tl7212372295_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7212572288_)))
                              (_hd7212472292_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7212572288_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7212372295_))
                              (___kont7432074321_
                               _hd7212472292_
                               _hd7209372408_)
                              (let () (declare (not safe)) (_g7208272150_)))))
                      (let () (declare (not safe)) (_g7208272150_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7209272411_))
                  (___kont7432274323_ _hd7209372408_ _hd7209072398_)
                  (let () (declare (not safe)) (_g7208272150_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7209272411_))
                                                    (___kont7432274323_
                                                     _hd7209372408_
                                                     _hd7209072398_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7208272150_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd7209072398_))
                                          (let ((_e7210772345_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _hd7209072398_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e7210772345_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7209272411_))
                                                    (___kont7431874319_
                                                     _hd7209372408_
                                                     _hd7208772388_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7209272411_))
                                                        (let ((_e7212572288_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7209272411_))))
                  (let ((_tl7212372295_
                         (let () (declare (not safe)) (##cdr _e7212572288_)))
                        (_hd7212472292_
                         (let () (declare (not safe)) (##car _e7212572288_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl7212372295_))
                        (___kont7432074321_ _hd7212472292_ _hd7209372408_)
                        (let () (declare (not safe)) (_g7208272150_)))))
                (let () (declare (not safe)) (_g7208272150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7209272411_))
                                                    (___kont7432274323_
                                                     _hd7209372408_
                                                     _hd7209072398_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7208272150_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7209272411_))
                                              (___kont7432274323_
                                               _hd7209372408_
                                               _hd7209072398_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7208272150_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd7209072398_))
                                  (let ((_e7210772345_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd7209072398_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7208972401_))
                                        (___kont7432474325_
                                         _hd7209072398_
                                         _hd7208772388_)
                                        (let ()
                                          (declare (not safe))
                                          (_g7208272150_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7208972401_))
                                      (___kont7432474325_
                                       _hd7209072398_
                                       _hd7208772388_)
                                      (let ()
                                        (declare (not safe))
                                        (_g7208272150_)))))))
                      (let () (declare (not safe)) (_g7208272150_)))))
              (let () (declare (not safe)) (_g7208272150_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx72452_)
      (let* ((___stx7445374454_ _$stx72452_)
             (_g7245772512_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7445374454_)))))
        (let ((___kont7445674457_
               (lambda (_L72697_ _L72699_)
                 (let ((__tmp75035
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp75020
                        (let ((__tmp75031
                               (let ((__tmp75034
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75032
                                      (let ((__tmp75033
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp75033 '()))))
                                 (declare (not safe))
                                 (cons __tmp75034 __tmp75032)))
                              (__tmp75021
                               (let ((__tmp75022
                                      (let ((__tmp75030
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp75023
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L72697_
                                                  _L72699_))
                                               (let ((__tmp75024
                                                      (lambda (_g7271672720_
                                                               _g7271772723_
                                                               _g7271872725_)
                                                        (let ((__tmp75025
                                                               (let ((__tmp75029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp75026
                              (let ((__tmp75027
                                     (let ((__tmp75028
                                            (let ()
                                              (declare (not safe))
                                              (cons _g7271672720_ '()))))
                                       (declare (not safe))
                                       (cons _g7271772723_ __tmp75028))))
                                (declare (not safe))
                                (cons 'primitive: __tmp75027))))
                         (declare (not safe))
                         (cons __tmp75029 __tmp75026))))
                  (declare (not safe))
                  (cons __tmp75025 _g7271872725_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp75024
                                                         '()
                                                         _L72697_
                                                         _L72699_)))))
                                        (declare (not safe))
                                        (cons __tmp75030 __tmp75023))))
                                 (declare (not safe))
                                 (cons __tmp75022 '()))))
                          (declare (not safe))
                          (cons __tmp75031 __tmp75021))))
                   (declare (not safe))
                   (cons __tmp75035 __tmp75020))))
              (___kont7446074461_
               (lambda (_L72583_ _L72585_)
                 (let ((__tmp75050
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp75036
                        (let ((__tmp75046
                               (let ((__tmp75049
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp75047
                                      (let ((__tmp75048
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp75048 '()))))
                                 (declare (not safe))
                                 (cons __tmp75049 __tmp75047)))
                              (__tmp75037
                               (let ((__tmp75038
                                      (let ((__tmp75045
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp75039
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L72583_
                                                  _L72585_))
                                               (let ((__tmp75040
                                                      (lambda (_g7260072604_
                                                               _g7260172607_
                                                               _g7260272609_)
                                                        (let ((__tmp75041
                                                               (let ((__tmp75044
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp75042
                              (let ((__tmp75043
                                     (let ()
                                       (declare (not safe))
                                       (cons _g7260072604_ '()))))
                                (declare (not safe))
                                (cons _g7260172607_ __tmp75043))))
                         (declare (not safe))
                         (cons __tmp75044 __tmp75042))))
                  (declare (not safe))
                  (cons __tmp75041 _g7260272609_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp75040
                                                         '()
                                                         _L72583_
                                                         _L72585_)))))
                                        (declare (not safe))
                                        (cons __tmp75045 __tmp75039))))
                                 (declare (not safe))
                                 (cons __tmp75038 '()))))
                          (declare (not safe))
                          (cons __tmp75046 __tmp75037))))
                   (declare (not safe))
                   (cons __tmp75050 __tmp75036)))))
          (let* ((___match7450474505_
                  (lambda (_e7248972519_
                           _hd7248872523_
                           _tl7248772526_
                           ___splice7446274463_
                           _target7249072529_
                           _tl7249272532_)
                    (letrec ((_loop7249372535_
                              (lambda (_hd7249172539_
                                       _dispatch7249772542_
                                       _arity7249872544_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7249172539_))
                                    (let ((_e7249472547_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7249172539_))))
                                      (let ((_lp-tl7249672554_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7249472547_)))
                                            (_lp-hd7249572551_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7249472547_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _lp-hd7249572551_))
                                            (let ((_e7250372557_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd7249572551_))))
                                              (let ((_tl7250172564_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7250372557_)))
                                                    (_hd7250272561_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7250372557_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7250172564_))
                                                    (let ((_e7250672567_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7250172564_))))
                                                      (let ((_tl7250472574_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7250672567_)))
                    (_hd7250572571_
                     (let () (declare (not safe)) (##car _e7250672567_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl7250472574_))
                    (_loop7249372535_
                     _lp-tl7249672554_
                     (let ()
                       (declare (not safe))
                       (cons _hd7250572571_ _dispatch7249772542_))
                     (let ()
                       (declare (not safe))
                       (cons _hd7250272561_ _arity7249872544_)))
                    (let () (declare (not safe)) (_g7245772512_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7245772512_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g7245772512_)))))
                                    (let ((_arity7250072580_
                                           (let ()
                                             (declare (not safe))
                                             (reverse _arity7249872544_)))
                                          (_dispatch7249972577_
                                           (let ()
                                             (declare (not safe))
                                             (reverse _dispatch7249772542_))))
                                      (___kont7446074461_
                                       _dispatch7249972577_
                                       _arity7250072580_))))))
                      (_loop7249372535_ _target7249072529_ '() '()))))
                 (___match7449674497_
                  (lambda (_e7248972519_ _hd7248872523_ _tl7248772526_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl7248772526_))
                        (let ((___splice7446274463_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice _tl7248772526_ '0))))
                          (let ((_tl7249272532_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice7446274463_ '1)))
                                (_target7249072529_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice7446274463_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7249272532_))
                                (___match7450474505_
                                 _e7248972519_
                                 _hd7248872523_
                                 _tl7248772526_
                                 ___splice7446274463_
                                 _target7249072529_
                                 _tl7249272532_)
                                (let ()
                                  (declare (not safe))
                                  (_g7245772512_)))))
                        (let () (declare (not safe)) (_g7245772512_)))))
                 (___match7449074491_
                  (lambda (_e7246372619_
                           _hd7246272623_
                           _tl7246172626_
                           _e7246672629_
                           _hd7246572633_
                           _tl7246472636_
                           _e7246772639_
                           ___splice7445874459_
                           _target7246872643_
                           _tl7247072646_)
                    (letrec ((_loop7247172649_
                              (lambda (_hd7246972653_
                                       _dispatch7247572656_
                                       _arity7247672658_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7246972653_))
                                    (let ((_e7247272661_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7246972653_))))
                                      (let ((_lp-tl7247472668_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7247272661_)))
                                            (_lp-hd7247372665_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7247272661_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _lp-hd7247372665_))
                                            (let ((_e7248172671_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd7247372665_))))
                                              (let ((_tl7247972678_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7248172671_)))
                                                    (_hd7248072675_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7248172671_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7247972678_))
                                                    (let ((_e7248472681_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7247972678_))))
                                                      (let ((_tl7248272688_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7248472681_)))
                    (_hd7248372685_
                     (let () (declare (not safe)) (##car _e7248472681_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl7248272688_))
                    (_loop7247172649_
                     _lp-tl7247472668_
                     (let ()
                       (declare (not safe))
                       (cons _hd7248372685_ _dispatch7247572656_))
                     (let ()
                       (declare (not safe))
                       (cons _hd7248072675_ _arity7247672658_)))
                    (___match7449674497_
                     _e7246372619_
                     _hd7246272623_
                     _tl7246172626_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match7449674497_
                                                     _e7246372619_
                                                     _hd7246272623_
                                                     _tl7246172626_))))
                                            (___match7449674497_
                                             _e7246372619_
                                             _hd7246272623_
                                             _tl7246172626_))))
                                    (let ((_arity7247872694_
                                           (let ()
                                             (declare (not safe))
                                             (reverse _arity7247672658_)))
                                          (_dispatch7247772691_
                                           (let ()
                                             (declare (not safe))
                                             (reverse _dispatch7247572656_))))
                                      (___kont7445674457_
                                       _dispatch7247772691_
                                       _arity7247872694_))))))
                      (_loop7247172649_ _target7246872643_ '() '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7445374454_))
                (let ((_e7246372619_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7445374454_))))
                  (let ((_tl7246172626_
                         (let () (declare (not safe)) (##cdr _e7246372619_)))
                        (_hd7246272623_
                         (let () (declare (not safe)) (##car _e7246372619_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7246172626_))
                        (let ((_e7246672629_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7246172626_))))
                          (let ((_tl7246472636_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7246672629_)))
                                (_hd7246572633_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7246672629_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd7246572633_))
                                (let ((_e7246772639_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd7246572633_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e7246772639_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl7246472636_))
                                          (let ((___splice7445874459_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl7246472636_
                                                    '0))))
                                            (let ((_tl7247072646_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7445874459_
                                                      '1)))
                                                  (_target7246872643_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7445874459_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7247072646_))
                                                  (___match7449074491_
                                                   _e7246372619_
                                                   _hd7246272623_
                                                   _tl7246172626_
                                                   _e7246672629_
                                                   _hd7246572633_
                                                   _tl7246472636_
                                                   _e7246772639_
                                                   ___splice7445874459_
                                                   _target7246872643_
                                                   _tl7247072646_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7246172626_))
                                                      (let ((___splice7446274463_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7246172626_ '0))))
                (let ((_tl7249272532_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7446274463_ '1)))
                      (_target7249072529_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7446274463_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7249272532_))
                      (___match7450474505_
                       _e7246372619_
                       _hd7246272623_
                       _tl7246172626_
                       ___splice7446274463_
                       _target7249072529_
                       _tl7249272532_)
                      (let () (declare (not safe)) (_g7245772512_)))))
              (let () (declare (not safe)) (_g7245772512_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl7246172626_))
                                              (let ((___splice7446274463_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl7246172626_
                                                        '0))))
                                                (let ((_tl7249272532_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice7446274463_
                                                          '1)))
                                                      (_target7249072529_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice7446274463_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl7249272532_))
                                                      (___match7450474505_
                                                       _e7246372619_
                                                       _hd7246272623_
                                                       _tl7246172626_
                                                       ___splice7446274463_
                                                       _target7249072529_
                                                       _tl7249272532_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g7245772512_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g7245772512_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl7246172626_))
                                          (let ((___splice7446274463_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl7246172626_
                                                    '0))))
                                            (let ((_tl7249272532_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7446274463_
                                                      '1)))
                                                  (_target7249072529_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7446274463_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7249272532_))
                                                  (___match7450474505_
                                                   _e7246372619_
                                                   _hd7246272623_
                                                   _tl7246172626_
                                                   ___splice7446274463_
                                                   _target7249072529_
                                                   _tl7249272532_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7245772512_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g7245772512_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7246172626_))
                                    (let ((___splice7446274463_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7246172626_
                                              '0))))
                                      (let ((_tl7249272532_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7446274463_
                                                '1)))
                                            (_target7249072529_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7446274463_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7249272532_))
                                            (___match7450474505_
                                             _e7246372619_
                                             _hd7246272623_
                                             _tl7246172626_
                                             ___splice7446274463_
                                             _target7249072529_
                                             _tl7249272532_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7245772512_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7245772512_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7246172626_))
                            (let ((___splice7446274463_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7246172626_
                                      '0))))
                              (let ((_tl7249272532_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice7446274463_ '1)))
                                    (_target7249072529_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice7446274463_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7249272532_))
                                    (___match7450474505_
                                     _e7246372619_
                                     _hd7246272623_
                                     _tl7246172626_
                                     ___splice7446274463_
                                     _target7249072529_
                                     _tl7249272532_)
                                    (let ()
                                      (declare (not safe))
                                      (_g7245772512_)))))
                            (let () (declare (not safe)) (_g7245772512_))))))
                (let () (declare (not safe)) (_g7245772512_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx72734_)
      (let* ((_g7273872756_
              (lambda (_g7273972752_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7273972752_))))
             (_g7273772811_
              (lambda (_g7273972760_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7273972760_))
                    (let ((_e7274472763_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7273972760_))))
                      (let ((_hd7274372767_
                             (let ()
                               (declare (not safe))
                               (##car _e7274472763_)))
                            (_tl7274272770_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7274472763_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7274272770_))
                            (let ((_e7274772773_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7274272770_))))
                              (let ((_hd7274672777_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7274772773_)))
                                    (_tl7274572780_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7274772773_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7274572780_))
                                    (let ((_e7275072783_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7274572780_))))
                                      (let ((_hd7274972787_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7275072783_)))
                                            (_tl7274872790_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7275072783_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7274872790_))
                                            ((lambda (_L72793_ _L72795_)
                                               (let ((__tmp75064
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp75051
                                                      (let ((__tmp75060
                                                             (let ((__tmp75063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp75061
                            (let ((__tmp75062
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp75062 '()))))
                       (declare (not safe))
                       (cons __tmp75063 __tmp75061)))
                    (__tmp75052
                     (let ((__tmp75057
                            (let ((__tmp75059
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp75058
                                   (let ()
                                     (declare (not safe))
                                     (cons _L72795_ '()))))
                              (declare (not safe))
                              (cons __tmp75059 __tmp75058)))
                           (__tmp75053
                            (let ((__tmp75054
                                   (let ((__tmp75056
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp75055
                                          (let ()
                                            (declare (not safe))
                                            (cons _L72793_ '()))))
                                     (declare (not safe))
                                     (cons __tmp75056 __tmp75055))))
                              (declare (not safe))
                              (cons __tmp75054 '()))))
                       (declare (not safe))
                       (cons __tmp75057 __tmp75053))))
                (declare (not safe))
                (cons __tmp75060 __tmp75052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp75064 __tmp75051)))
                                             _hd7274972787_
                                             _hd7274672777_)
                                            (_g7273872756_ _g7273972760_))))
                                    (_g7273872756_ _g7273972760_))))
                            (_g7273872756_ _g7273972760_))))
                    (_g7273872756_ _g7273972760_)))))
        (_g7273772811_ _$stx72734_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx72815_)
      (let* ((_g7281972837_
              (lambda (_g7282072833_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7282072833_))))
             (_g7281872892_
              (lambda (_g7282072841_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7282072841_))
                    (let ((_e7282572844_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7282072841_))))
                      (let ((_hd7282472848_
                             (let ()
                               (declare (not safe))
                               (##car _e7282572844_)))
                            (_tl7282372851_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7282572844_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7282372851_))
                            (let ((_e7282872854_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7282372851_))))
                              (let ((_hd7282772858_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7282872854_)))
                                    (_tl7282672861_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7282872854_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7282672861_))
                                    (let ((_e7283172864_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7282672861_))))
                                      (let ((_hd7283072868_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7283172864_)))
                                            (_tl7282972871_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7283172864_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7282972871_))
                                            ((lambda (_L72874_ _L72876_)
                                               (let ((__tmp75078
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp75065
                                                      (let ((__tmp75074
                                                             (let ((__tmp75077
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp75075
                            (let ((__tmp75076
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp75076 '()))))
                       (declare (not safe))
                       (cons __tmp75077 __tmp75075)))
                    (__tmp75066
                     (let ((__tmp75071
                            (let ((__tmp75073
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp75072
                                   (let ()
                                     (declare (not safe))
                                     (cons _L72876_ '()))))
                              (declare (not safe))
                              (cons __tmp75073 __tmp75072)))
                           (__tmp75067
                            (let ((__tmp75068
                                   (let ((__tmp75070
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp75069
                                          (let ()
                                            (declare (not safe))
                                            (cons _L72874_ '()))))
                                     (declare (not safe))
                                     (cons __tmp75070 __tmp75069))))
                              (declare (not safe))
                              (cons __tmp75068 '()))))
                       (declare (not safe))
                       (cons __tmp75071 __tmp75067))))
                (declare (not safe))
                (cons __tmp75074 __tmp75066))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp75078 __tmp75065)))
                                             _hd7283072868_
                                             _hd7282772858_)
                                            (_g7281972837_ _g7282072841_))))
                                    (_g7281972837_ _g7282072841_))))
                            (_g7281972837_ _g7282072841_))))
                    (_g7281972837_ _g7282072841_)))))
        (_g7281872892_ _$stx72815_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx72896_)
      (let* ((___stx7450774508_ _$stx72896_)
             (_g7290372974_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7450774508_)))))
        (let ((___kont7451074511_
               (lambda (_L73265_ _L73267_)
                 (let ((__tmp75084
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75079
                        (let ((__tmp75080
                               (let ((__tmp75081
                                      (let ((__tmp75083
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp75082
                                             (let ()
                                               (declare (not safe))
                                               (cons _L73265_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75083 __tmp75082))))
                                 (declare (not safe))
                                 (cons __tmp75081 '()))))
                          (declare (not safe))
                          (cons _L73267_ __tmp75080))))
                   (declare (not safe))
                   (cons __tmp75084 __tmp75079))))
              (___kont7451274513_
               (lambda (_L73184_ _L73186_)
                 (let ((__tmp75093
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75085
                        (let ((__tmp75086
                               (let ((__tmp75087
                                      (let ((__tmp75092
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp75088
                                             (let ((__tmp75089
                                                    (lambda (_g7320573208_
                                                             _g7320673211_)
                                                      (let ((__tmp75090
                                                             (let ((__tmp75091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g7320573208_ __tmp75091))))
                (declare (not safe))
                (cons __tmp75090 _g7320673211_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp75089
                                                       '()
                                                       _L73184_))))
                                        (declare (not safe))
                                        (cons __tmp75092 __tmp75088))))
                                 (declare (not safe))
                                 (cons __tmp75087 '()))))
                          (declare (not safe))
                          (cons _L73186_ __tmp75086))))
                   (declare (not safe))
                   (cons __tmp75093 __tmp75085))))
              (___kont7451674517_
               (lambda (_L73096_ _L73098_)
                 (let ((__tmp75100
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75094
                        (let ((__tmp75095
                               (let ((__tmp75096
                                      (let ((__tmp75099
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp75097
                                             (let ((__tmp75098
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L73096_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive: __tmp75098))))
                                        (declare (not safe))
                                        (cons __tmp75099 __tmp75097))))
                                 (declare (not safe))
                                 (cons __tmp75096 '()))))
                          (declare (not safe))
                          (cons _L73098_ __tmp75095))))
                   (declare (not safe))
                   (cons __tmp75100 __tmp75094))))
              (___kont7451874519_
               (lambda (_L73031_ _L73033_)
                 (let ((__tmp75110
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75101
                        (let ((__tmp75102
                               (let ((__tmp75103
                                      (let ((__tmp75109
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp75104
                                             (let ((__tmp75105
                                                    (let ((__tmp75106
                                                           (lambda (_g7305073053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g7305173056_)
                     (let ((__tmp75107
                            (let ((__tmp75108
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g7305073053_ __tmp75108))))
                       (declare (not safe))
                       (cons __tmp75107 _g7305173056_)))))
              (declare (not safe))
              (foldr1 __tmp75106 '() _L73031_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive: __tmp75105))))
                                        (declare (not safe))
                                        (cons __tmp75109 __tmp75104))))
                                 (declare (not safe))
                                 (cons __tmp75103 '()))))
                          (declare (not safe))
                          (cons _L73033_ __tmp75102))))
                   (declare (not safe))
                   (cons __tmp75110 __tmp75101)))))
          (let* ((___match7462674627_
                  (lambda (_e7295672981_
                           _hd7295572985_
                           _tl7295472988_
                           _e7295972991_
                           _hd7295872995_
                           _tl7295772998_
                           ___splice7452074521_
                           _target7296073001_
                           _tl7296273004_)
                    (letrec ((_loop7296373007_
                              (lambda (_hd7296173011_ _arity7296773014_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7296173011_))
                                    (let ((_e7296473017_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7296173011_))))
                                      (let ((_lp-tl7296673024_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7296473017_)))
                                            (_lp-hd7296573021_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7296473017_))))
                                        (_loop7296373007_
                                         _lp-tl7296673024_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd7296573021_
                                                 _arity7296773014_)))))
                                    (let ((_arity7296873027_
                                           (let ()
                                             (declare (not safe))
                                             (reverse _arity7296773014_))))
                                      (___kont7451874519_
                                       _arity7296873027_
                                       _hd7295872995_))))))
                      (_loop7296373007_ _target7296073001_ '()))))
                 (___match7458674587_
                  (lambda (_e7292473120_
                           _hd7292373124_
                           _tl7292273127_
                           _e7292773130_
                           _hd7292673134_
                           _tl7292573137_
                           _e7293073140_
                           _hd7292973144_
                           _tl7292873147_
                           _e7293173150_
                           ___splice7451474515_
                           _target7293273154_
                           _tl7293473157_)
                    (letrec ((_loop7293573160_
                              (lambda (_hd7293373164_ _arity7293973167_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7293373164_))
                                    (let ((_e7293673170_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7293373164_))))
                                      (let ((_lp-tl7293873177_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7293673170_)))
                                            (_lp-hd7293773174_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7293673170_))))
                                        (_loop7293573160_
                                         _lp-tl7293873177_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd7293773174_
                                                 _arity7293973167_)))))
                                    (let ((_arity7294073180_
                                           (let ()
                                             (declare (not safe))
                                             (reverse _arity7293973167_))))
                                      (___kont7451274513_
                                       _arity7294073180_
                                       _hd7292673134_))))))
                      (_loop7293573160_ _target7293273154_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7450774508_))
                (let ((_e7290973221_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7450774508_))))
                  (let ((_tl7290773228_
                         (let () (declare (not safe)) (##cdr _e7290973221_)))
                        (_hd7290873225_
                         (let () (declare (not safe)) (##car _e7290973221_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7290773228_))
                        (let ((_e7291273231_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7290773228_))))
                          (let ((_tl7291073238_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7291273231_)))
                                (_hd7291173235_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7291273231_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7291073238_))
                                (let ((_e7291573241_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7291073238_))))
                                  (let ((_tl7291373248_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7291573241_)))
                                        (_hd7291473245_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7291573241_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd7291473245_))
                                        (let ((_e7291673251_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd7291473245_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e7291673251_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl7291373248_))
                                                  (let ((_e7291973255_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl7291373248_))))
                                                    (let ((_tl7291773262_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e7291973255_)))
                                                          (_hd7291873259_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e7291973255_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl7291773262_))
                                                          (___kont7451074511_
                                                           _hd7291873259_
                                                           _hd7291173235_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl7291373248_))
                      (let ((___splice7451474515_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl7291373248_ '0))))
                        (let ((_tl7293473157_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7451474515_ '1)))
                              (_target7293273154_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7451474515_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7293473157_))
                              (___match7458674587_
                               _e7290973221_
                               _hd7290873225_
                               _tl7290773228_
                               _e7291273231_
                               _hd7291173235_
                               _tl7291073238_
                               _e7291573241_
                               _hd7291473245_
                               _tl7291373248_
                               _e7291673251_
                               ___splice7451474515_
                               _target7293273154_
                               _tl7293473157_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl7291073238_))
                                  (let ((___splice7452074521_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl7291073238_
                                            '0))))
                                    (let ((_tl7296273004_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice7452074521_
                                              '1)))
                                          (_target7296073001_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice7452074521_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7296273004_))
                                          (___match7462674627_
                                           _e7290973221_
                                           _hd7290873225_
                                           _tl7290773228_
                                           _e7291273231_
                                           _hd7291173235_
                                           _tl7291073238_
                                           ___splice7452074521_
                                           _target7296073001_
                                           _tl7296273004_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7290372974_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g7290372974_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl7291073238_))
                          (let ((___splice7452074521_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl7291073238_
                                    '0))))
                            (let ((_tl7296273004_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice7452074521_ '1)))
                                  (_target7296073001_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice7452074521_ '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl7296273004_))
                                  (___match7462674627_
                                   _e7290973221_
                                   _hd7290873225_
                                   _tl7290773228_
                                   _e7291273231_
                                   _hd7291173235_
                                   _tl7291073238_
                                   ___splice7452074521_
                                   _target7296073001_
                                   _tl7296273004_)
                                  (let ()
                                    (declare (not safe))
                                    (_g7290372974_)))))
                          (let () (declare (not safe)) (_g7290372974_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7291373248_))
                                                      (let ((___splice7451474515_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7291373248_ '0))))
                (let ((_tl7293473157_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7451474515_ '1)))
                      (_target7293273154_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7451474515_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7293473157_))
                      (___match7458674587_
                       _e7290973221_
                       _hd7290873225_
                       _tl7290773228_
                       _e7291273231_
                       _hd7291173235_
                       _tl7291073238_
                       _e7291573241_
                       _hd7291473245_
                       _tl7291373248_
                       _e7291673251_
                       ___splice7451474515_
                       _target7293273154_
                       _tl7293473157_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl7291373248_))
                          (___kont7451674517_ _hd7291473245_ _hd7291173235_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7291073238_))
                              (let ((___splice7452074521_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7291073238_
                                        '0))))
                                (let ((_tl7296273004_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice7452074521_
                                          '1)))
                                      (_target7296073001_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice7452074521_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7296273004_))
                                      (___match7462674627_
                                       _e7290973221_
                                       _hd7290873225_
                                       _tl7290773228_
                                       _e7291273231_
                                       _hd7291173235_
                                       _tl7291073238_
                                       ___splice7452074521_
                                       _target7296073001_
                                       _tl7296273004_)
                                      (let ()
                                        (declare (not safe))
                                        (_g7290372974_)))))
                              (let ()
                                (declare (not safe))
                                (_g7290372974_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7291373248_))
                  (___kont7451674517_ _hd7291473245_ _hd7291173235_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl7291073238_))
                      (let ((___splice7452074521_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl7291073238_ '0))))
                        (let ((_tl7296273004_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7452074521_ '1)))
                              (_target7296073001_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7452074521_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7296273004_))
                              (___match7462674627_
                               _e7290973221_
                               _hd7290873225_
                               _tl7290773228_
                               _e7291273231_
                               _hd7291173235_
                               _tl7291073238_
                               ___splice7452074521_
                               _target7296073001_
                               _tl7296273004_)
                              (let () (declare (not safe)) (_g7290372974_)))))
                      (let () (declare (not safe)) (_g7290372974_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7291373248_))
                                                  (___kont7451674517_
                                                   _hd7291473245_
                                                   _hd7291173235_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7291073238_))
                                                      (let ((___splice7452074521_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7291073238_ '0))))
                (let ((_tl7296273004_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7452074521_ '1)))
                      (_target7296073001_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7452074521_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7296273004_))
                      (___match7462674627_
                       _e7290973221_
                       _hd7290873225_
                       _tl7290773228_
                       _e7291273231_
                       _hd7291173235_
                       _tl7291073238_
                       ___splice7452074521_
                       _target7296073001_
                       _tl7296273004_)
                      (let () (declare (not safe)) (_g7290372974_)))))
              (let () (declare (not safe)) (_g7290372974_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7291373248_))
                                            (___kont7451674517_
                                             _hd7291473245_
                                             _hd7291173235_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl7291073238_))
                                                (let ((___splice7452074521_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl7291073238_
                                                          '0))))
                                                  (let ((_tl7296273004_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice7452074521_
                                                            '1)))
                                                        (_target7296073001_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice7452074521_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7296273004_))
                                                        (___match7462674627_
                                                         _e7290973221_
                                                         _hd7290873225_
                                                         _tl7290773228_
                                                         _e7291273231_
                                                         _hd7291173235_
                                                         _tl7291073238_
                                                         ___splice7452074521_
                                                         _target7296073001_
                                                         _tl7296273004_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7290372974_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7290372974_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7291073238_))
                                    (let ((___splice7452074521_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7291073238_
                                              '0))))
                                      (let ((_tl7296273004_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7452074521_
                                                '1)))
                                            (_target7296073001_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7452074521_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7296273004_))
                                            (___match7462674627_
                                             _e7290973221_
                                             _hd7290873225_
                                             _tl7290773228_
                                             _e7291273231_
                                             _hd7291173235_
                                             _tl7291073238_
                                             ___splice7452074521_
                                             _target7296073001_
                                             _tl7296273004_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7290372974_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7290372974_))))))
                        (let () (declare (not safe)) (_g7290372974_)))))
                (let () (declare (not safe)) (_g7290372974_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx73291_)
      (let* ((___stx7462974630_ _$stx73291_)
             (_g7329673331_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7462974630_)))))
        (let ((___kont7463274633_
               (lambda (_L73453_ _L73455_)
                 (let ((__tmp75116
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75111
                        (let ((__tmp75112
                               (let ((__tmp75113
                                      (let ((__tmp75115
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp75114
                                             (let ()
                                               (declare (not safe))
                                               (cons _L73453_ '()))))
                                        (declare (not safe))
                                        (cons __tmp75115 __tmp75114))))
                                 (declare (not safe))
                                 (cons __tmp75113 '()))))
                          (declare (not safe))
                          (cons _L73455_ __tmp75112))))
                   (declare (not safe))
                   (cons __tmp75116 __tmp75111))))
              (___kont7463474635_
               (lambda (_L73388_ _L73390_)
                 (let ((__tmp75125
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp75117
                        (let ((__tmp75118
                               (let ((__tmp75119
                                      (let ((__tmp75124
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp75120
                                             (let ((__tmp75121
                                                    (lambda (_g7340773410_
                                                             _g7340873413_)
                                                      (let ((__tmp75122
                                                             (let ((__tmp75123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g7340773410_ __tmp75123))))
                (declare (not safe))
                (cons __tmp75122 _g7340873413_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp75121
                                                       '()
                                                       _L73388_))))
                                        (declare (not safe))
                                        (cons __tmp75124 __tmp75120))))
                                 (declare (not safe))
                                 (cons __tmp75119 '()))))
                          (declare (not safe))
                          (cons _L73390_ __tmp75118))))
                   (declare (not safe))
                   (cons __tmp75125 __tmp75117)))))
          (let ((___match7467874679_
                 (lambda (_e7331373338_
                          _hd7331273342_
                          _tl7331173345_
                          _e7331673348_
                          _hd7331573352_
                          _tl7331473355_
                          ___splice7463674637_
                          _target7331773358_
                          _tl7331973361_)
                   (letrec ((_loop7332073364_
                             (lambda (_hd7331873368_ _arity7332473371_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd7331873368_))
                                   (let ((_e7332173374_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd7331873368_))))
                                     (let ((_lp-tl7332373381_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e7332173374_)))
                                           (_lp-hd7332273378_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e7332173374_))))
                                       (_loop7332073364_
                                        _lp-tl7332373381_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd7332273378_
                                                _arity7332473371_)))))
                                   (let ((_arity7332573384_
                                          (let ()
                                            (declare (not safe))
                                            (reverse _arity7332473371_))))
                                     (___kont7463474635_
                                      _arity7332573384_
                                      _hd7331573352_))))))
                     (_loop7332073364_ _target7331773358_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7462974630_))
                (let ((_e7330273423_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7462974630_))))
                  (let ((_tl7330073430_
                         (let () (declare (not safe)) (##cdr _e7330273423_)))
                        (_hd7330173427_
                         (let () (declare (not safe)) (##car _e7330273423_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7330073430_))
                        (let ((_e7330573433_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7330073430_))))
                          (let ((_tl7330373440_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7330573433_)))
                                (_hd7330473437_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7330573433_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7330373440_))
                                (let ((_e7330873443_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7330373440_))))
                                  (let ((_tl7330673450_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7330873443_)))
                                        (_hd7330773447_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7330873443_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7330673450_))
                                        (___kont7463274633_
                                         _hd7330773447_
                                         _hd7330473437_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl7330373440_))
                                            (let ((___splice7463674637_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl7330373440_
                                                      '0))))
                                              (let ((_tl7331973361_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice7463674637_
                                                        '1)))
                                                    (_target7331773358_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice7463674637_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7331973361_))
                                                    (___match7467874679_
                                                     _e7330273423_
                                                     _hd7330173427_
                                                     _tl7330073430_
                                                     _e7330573433_
                                                     _hd7330473437_
                                                     _tl7330373440_
                                                     ___splice7463674637_
                                                     _target7331773358_
                                                     _tl7331973361_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7329673331_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g7329673331_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7330373440_))
                                    (let ((___splice7463674637_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7330373440_
                                              '0))))
                                      (let ((_tl7331973361_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7463674637_
                                                '1)))
                                            (_target7331773358_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7463674637_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7331973361_))
                                            (___match7467874679_
                                             _e7330273423_
                                             _hd7330173427_
                                             _tl7330073430_
                                             _e7330573433_
                                             _hd7330473437_
                                             _tl7330373440_
                                             ___splice7463674637_
                                             _target7331773358_
                                             _tl7331973361_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7329673331_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7329673331_))))))
                        (let () (declare (not safe)) (_g7329673331_)))))
                (let () (declare (not safe)) (_g7329673331_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx73475_)
      (let* ((_g7347973514_
              (lambda (_g7348073510_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7348073510_))))
             (_g7347873642_
              (lambda (_g7348073518_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7348073518_))
                    (let ((_e7348573521_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7348073518_))))
                      (let ((_hd7348473525_
                             (let ()
                               (declare (not safe))
                               (##car _e7348573521_)))
                            (_tl7348373528_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7348573521_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7348373528_))
                            (let ((_g75126_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7348373528_
                                      '0))))
                              (begin
                                (let ((_g75127_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g75126_)
                                             (##vector-length _g75126_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g75127_ 2)))
                                      (error "Context expects 2 values"
                                             _g75127_)))
                                (let ((_target7348673531_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75126_ 0)))
                                      (_tl7348873534_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75126_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7348873534_))
                                      (letrec ((_loop7348973537_
                                                (lambda (_hd7348773541_
                                                         _arity7349373544_
                                                         _prim7349473546_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7348773541_))
                                                      (let ((_e7349073549_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7348773541_))))
                (let ((_lp-hd7349173553_
                       (let () (declare (not safe)) (##car _e7349073549_)))
                      (_lp-tl7349273556_
                       (let () (declare (not safe)) (##cdr _e7349073549_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7349173553_))
                      (let ((_e7349973559_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7349173553_))))
                        (let ((_hd7349873563_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7349973559_)))
                              (_tl7349773566_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7349973559_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7349773566_))
                              (let ((_g75136_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7349773566_
                                        '0))))
                                (begin
                                  (let ((_g75137_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g75136_)
                                               (##vector-length _g75136_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g75137_ 2)))
                                        (error "Context expects 2 values"
                                               _g75137_)))
                                  (let ((_target7350073569_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g75136_ 0)))
                                        (_tl7350273572_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g75136_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7350273572_))
                                        (letrec ((_loop7350373575_
                                                  (lambda (_hd7350173579_
                                                           _arity7350773582_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd7350173579_))
                                                        (let ((_e7350473585_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd7350173579_))))
                  (let ((_lp-hd7350573589_
                         (let () (declare (not safe)) (##car _e7350473585_)))
                        (_lp-tl7350673592_
                         (let () (declare (not safe)) (##cdr _e7350473585_))))
                    (_loop7350373575_
                     _lp-tl7350673592_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd7350573589_ _arity7350773582_)))))
                (let ((_arity7350873595_
                       (let ()
                         (declare (not safe))
                         (reverse _arity7350773582_))))
                  (_loop7348973537_
                   _lp-tl7349273556_
                   (let ()
                     (declare (not safe))
                     (cons _arity7350873595_ _arity7349373544_))
                   (let ()
                     (declare (not safe))
                     (cons _hd7349873563_ _prim7349473546_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop7350373575_
                                           _target7350073569_
                                           '()))
                                        (_g7347973514_ _g7348073518_)))))
                              (_g7347973514_ _g7348073518_))))
                      (_g7347973514_ _g7348073518_))))
              (let ((_arity7349573599_
                     (let () (declare (not safe)) (reverse _arity7349373544_)))
                    (_prim7349673602_
                     (let () (declare (not safe)) (reverse _prim7349473546_))))
                ((lambda (_L73605_ _L73607_)
                   (let ((__tmp75135
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp75128
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L73605_
                               _L73607_))
                            (let ((__tmp75129
                                   (lambda (_g7362273628_
                                            _g7362373631_
                                            _g7362473633_)
                                     (let ((__tmp75130
                                            (let ((__tmp75134
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp75131
                                                   (let ((__tmp75132
                                                          (let ((__tmp75133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g7362573636_ _g7362673639_)
                           (let ()
                             (declare (not safe))
                             (cons _g7362573636_ _g7362673639_)))))
                    (declare (not safe))
                    (foldr1 __tmp75133 '() _g7362273628_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7362373631_
                                                           __tmp75132))))
                                              (declare (not safe))
                                              (cons __tmp75134 __tmp75131))))
                                       (declare (not safe))
                                       (cons __tmp75130 _g7362473633_)))))
                              (declare (not safe))
                              (foldr2 __tmp75129 '() _L73605_ _L73607_)))))
                     (declare (not safe))
                     (cons __tmp75135 __tmp75128)))
                 _arity7349573599_
                 _prim7349673602_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7348973537_
                                         _target7348673531_
                                         '()
                                         '()))
                                      (_g7347973514_ _g7348073518_)))))
                            (_g7347973514_ _g7348073518_))))
                    (_g7347973514_ _g7348073518_)))))
        (_g7347873642_ _$stx73475_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx73648_)
      (let* ((_g7365273687_
              (lambda (_g7365373683_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7365373683_))))
             (_g7365173815_
              (lambda (_g7365373691_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7365373691_))
                    (let ((_e7365873694_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7365373691_))))
                      (let ((_hd7365773698_
                             (let ()
                               (declare (not safe))
                               (##car _e7365873694_)))
                            (_tl7365673701_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7365873694_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7365673701_))
                            (let ((_g75138_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7365673701_
                                      '0))))
                              (begin
                                (let ((_g75139_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g75138_)
                                             (##vector-length _g75138_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g75139_ 2)))
                                      (error "Context expects 2 values"
                                             _g75139_)))
                                (let ((_target7365973704_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75138_ 0)))
                                      (_tl7366173707_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g75138_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7366173707_))
                                      (letrec ((_loop7366273710_
                                                (lambda (_hd7366073714_
                                                         _arity7366673717_
                                                         _prim7366773719_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7366073714_))
                                                      (let ((_e7366373722_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7366073714_))))
                (let ((_lp-hd7366473726_
                       (let () (declare (not safe)) (##car _e7366373722_)))
                      (_lp-tl7366573729_
                       (let () (declare (not safe)) (##cdr _e7366373722_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7366473726_))
                      (let ((_e7367273732_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7366473726_))))
                        (let ((_hd7367173736_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7367273732_)))
                              (_tl7367073739_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7367273732_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7367073739_))
                              (let ((_g75148_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7367073739_
                                        '0))))
                                (begin
                                  (let ((_g75149_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g75148_)
                                               (##vector-length _g75148_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g75149_ 2)))
                                        (error "Context expects 2 values"
                                               _g75149_)))
                                  (let ((_target7367373742_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g75148_ 0)))
                                        (_tl7367573745_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g75148_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7367573745_))
                                        (letrec ((_loop7367673748_
                                                  (lambda (_hd7367473752_
                                                           _arity7368073755_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd7367473752_))
                                                        (let ((_e7367773758_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd7367473752_))))
                  (let ((_lp-hd7367873762_
                         (let () (declare (not safe)) (##car _e7367773758_)))
                        (_lp-tl7367973765_
                         (let () (declare (not safe)) (##cdr _e7367773758_))))
                    (_loop7367673748_
                     _lp-tl7367973765_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd7367873762_ _arity7368073755_)))))
                (let ((_arity7368173768_
                       (let ()
                         (declare (not safe))
                         (reverse _arity7368073755_))))
                  (_loop7366273710_
                   _lp-tl7366573729_
                   (let ()
                     (declare (not safe))
                     (cons _arity7368173768_ _arity7366673717_))
                   (let ()
                     (declare (not safe))
                     (cons _hd7367173736_ _prim7366773719_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop7367673748_
                                           _target7367373742_
                                           '()))
                                        (_g7365273687_ _g7365373691_)))))
                              (_g7365273687_ _g7365373691_))))
                      (_g7365273687_ _g7365373691_))))
              (let ((_arity7366873772_
                     (let () (declare (not safe)) (reverse _arity7366673717_)))
                    (_prim7366973775_
                     (let () (declare (not safe)) (reverse _prim7366773719_))))
                ((lambda (_L73778_ _L73780_)
                   (let ((__tmp75147
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp75140
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L73778_
                               _L73780_))
                            (let ((__tmp75141
                                   (lambda (_g7379573801_
                                            _g7379673804_
                                            _g7379773806_)
                                     (let ((__tmp75142
                                            (let ((__tmp75146
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp75143
                                                   (let ((__tmp75144
                                                          (let ((__tmp75145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g7379873809_ _g7379973812_)
                           (let ()
                             (declare (not safe))
                             (cons _g7379873809_ _g7379973812_)))))
                    (declare (not safe))
                    (foldr1 __tmp75145 '() _g7379573801_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7379673804_
                                                           __tmp75144))))
                                              (declare (not safe))
                                              (cons __tmp75146 __tmp75143))))
                                       (declare (not safe))
                                       (cons __tmp75142 _g7379773806_)))))
                              (declare (not safe))
                              (foldr2 __tmp75141 '() _L73778_ _L73780_)))))
                     (declare (not safe))
                     (cons __tmp75147 __tmp75140)))
                 _arity7366873772_
                 _prim7366973775_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7366273710_
                                         _target7365973704_
                                         '()
                                         '()))
                                      (_g7365273687_ _g7365373691_)))))
                            (_g7365273687_ _g7365373691_))))
                    (_g7365273687_ _g7365373691_)))))
        (_g7365173815_ _$stx73648_)))))
