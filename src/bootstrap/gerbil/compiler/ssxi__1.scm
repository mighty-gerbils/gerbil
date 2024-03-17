(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx160338_)
      (let* ((_g160342160360_
              (lambda (_g160343160356_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160343160356_))))
             (_g160341160415_
              (lambda (_g160343160364_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160343160364_))
                    (let ((_e160348160367_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160343160364_))))
                      (let ((_hd160347160371_
                             (let ()
                               (declare (not safe))
                               (##car _e160348160367_)))
                            (_tl160346160374_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160348160367_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160346160374_))
                            (let ((_e160351160377_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160346160374_))))
                              (let ((_hd160350160381_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160351160377_)))
                                    (_tl160349160384_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160351160377_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160349160384_))
                                    (let ((_e160354160387_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160349160384_))))
                                      (let ((_hd160353160391_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160354160387_)))
                                            (_tl160352160394_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160354160387_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160352160394_))
                                            ((lambda (_L160397_ _L160399_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L160399_))
                                                   (let ((__tmp163897
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp163892
                                                          (let ((__tmp163894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp163896
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp163895
                                (let ()
                                  (declare (not safe))
                                  (cons _L160399_ '()))))
                           (declare (not safe))
                           (cons __tmp163896 __tmp163895)))
                        (__tmp163893
                         (let () (declare (not safe)) (cons _L160397_ '()))))
                    (declare (not safe))
                    (cons __tmp163894 __tmp163893))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp163897
                                                           __tmp163892))
                                                   (_g160342160360_
                                                    _g160343160364_)))
                                             _hd160353160391_
                                             _hd160350160381_)
                                            (_g160342160360_
                                             _g160343160364_))))
                                    (_g160342160360_ _g160343160364_))))
                            (_g160342160360_ _g160343160364_))))
                    (_g160342160360_ _g160343160364_)))))
        (_g160341160415_ _$stx160338_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx160419_)
      (let* ((_g160423160452_
              (lambda (_g160424160448_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160424160448_))))
             (_g160422160552_
              (lambda (_g160424160456_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160424160456_))
                    (let ((_e160429160459_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160424160456_))))
                      (let ((_hd160428160463_
                             (let ()
                               (declare (not safe))
                               (##car _e160429160459_)))
                            (_tl160427160466_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160429160459_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160427160466_))
                            (let ((_g163898_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160427160466_
                                      '0))))
                              (begin
                                (let ((_g163899_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163898_)
                                             (##vector-length _g163898_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163899_ 2)))
                                      (error "Context expects 2 values"
                                             _g163899_)))
                                (let ((_target160430160469_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163898_ 0)))
                                      (_tl160432160472_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163898_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160432160472_))
                                      (letrec ((_loop160433160475_
                                                (lambda (_hd160431160479_
                                                         _type160437160482_
                                                         _symbol160438160484_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160431160479_))
                                                      (let ((_e160434160487_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160431160479_))))
                (let ((_lp-hd160435160491_
                       (let () (declare (not safe)) (##car _e160434160487_)))
                      (_lp-tl160436160494_
                       (let () (declare (not safe)) (##cdr _e160434160487_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160435160491_))
                      (let ((_e160443160497_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160435160491_))))
                        (let ((_hd160442160501_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160443160497_)))
                              (_tl160441160504_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160443160497_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160441160504_))
                              (let ((_e160446160507_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160441160504_))))
                                (let ((_hd160445160511_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160446160507_)))
                                      (_tl160444160514_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160446160507_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160444160514_))
                                      (_loop160433160475_
                                       _lp-tl160436160494_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd160445160511_
                                               _type160437160482_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd160442160501_
                                               _symbol160438160484_)))
                                      (_g160423160452_ _g160424160456_))))
                              (_g160423160452_ _g160424160456_))))
                      (_g160423160452_ _g160424160456_))))
              (let ((_type160439160517_ (reverse _type160437160482_))
                    (_symbol160440160520_ (reverse _symbol160438160484_)))
                ((lambda (_L160523_ _L160525_)
                   (let ((__tmp163906
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163900
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160523_
                               _L160525_))
                            (let ((__tmp163901
                                   (lambda (_g160540160544_
                                            _g160541160547_
                                            _g160542160549_)
                                     (let ((__tmp163902
                                            (let ((__tmp163905
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp163903
                                                   (let ((__tmp163904
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g160540160544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160541160547_
                                                           __tmp163904))))
                                              (declare (not safe))
                                              (cons __tmp163905 __tmp163903))))
                                       (declare (not safe))
                                       (cons __tmp163902 _g160542160549_)))))
                              (declare (not safe))
                              (foldr2 __tmp163901 '() _L160523_ _L160525_)))))
                     (declare (not safe))
                     (cons __tmp163906 __tmp163900)))
                 _type160439160517_
                 _symbol160440160520_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160433160475_
                                         _target160430160469_
                                         '()
                                         '()))
                                      (_g160423160452_ _g160424160456_)))))
                            (_g160423160452_ _g160424160456_))))
                    (_g160423160452_ _g160424160456_)))))
        (_g160422160552_ _$stx160419_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx160557_)
      (let* ((___stx163457163458_ _$stx160557_)
             (_g160562160604_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163457163458_)))))
        (let ((___kont163460163461_
               (lambda (_L160732_ _L160734_ _L160735_ _L160736_)
                 (let ((__tmp163920
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp163907
                        (let ((__tmp163917
                               (let ((__tmp163919
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163918
                                      (let ()
                                        (declare (not safe))
                                        (cons _L160736_ '()))))
                                 (declare (not safe))
                                 (cons __tmp163919 __tmp163918)))
                              (__tmp163908
                               (let ((__tmp163914
                                      (let ((__tmp163916
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp163915
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160735_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163916 __tmp163915)))
                                     (__tmp163909
                                      (let ((__tmp163911
                                             (let ((__tmp163913
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp163912
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160734_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163913 __tmp163912)))
                                            (__tmp163910
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160732_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163911 __tmp163910))))
                                 (declare (not safe))
                                 (cons __tmp163914 __tmp163909))))
                          (declare (not safe))
                          (cons __tmp163917 __tmp163908))))
                   (declare (not safe))
                   (cons __tmp163920 __tmp163907))))
              (___kont163462163463_
               (lambda (_L160651_ _L160653_ _L160654_ _L160655_)
                 (let ((__tmp163921
                        (let ((__tmp163922
                               (let ((__tmp163923
                                      (let ((__tmp163924
                                             (let ((__tmp163925
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp163925 '()))))
                                        (declare (not safe))
                                        (cons _L160651_ __tmp163924))))
                                 (declare (not safe))
                                 (cons _L160653_ __tmp163923))))
                          (declare (not safe))
                          (cons _L160654_ __tmp163922))))
                   (declare (not safe))
                   (cons _L160655_ __tmp163921)))))
          (let ((___match163496163497_
                 (lambda (_e160570160682_
                          _hd160569160686_
                          _tl160568160689_
                          _e160573160692_
                          _hd160572160696_
                          _tl160571160699_
                          _e160576160702_
                          _hd160575160706_
                          _tl160574160709_
                          _e160579160712_
                          _hd160578160716_
                          _tl160577160719_
                          _e160582160722_
                          _hd160581160726_
                          _tl160580160729_)
                   (let ((_L160732_ _hd160581160726_)
                         (_L160734_ _hd160578160716_)
                         (_L160735_ _hd160575160706_)
                         (_L160736_ _hd160572160696_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L160736_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L160735_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L160734_)))
                         (___kont163460163461_
                          _L160732_
                          _L160734_
                          _L160735_
                          _L160736_)
                         (let () (declare (not safe)) (_g160562160604_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163457163458_))
                (let ((_e160570160682_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163457163458_))))
                  (let ((_tl160568160689_
                         (let () (declare (not safe)) (##cdr _e160570160682_)))
                        (_hd160569160686_
                         (let ()
                           (declare (not safe))
                           (##car _e160570160682_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160568160689_))
                        (let ((_e160573160692_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160568160689_))))
                          (let ((_tl160571160699_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160573160692_)))
                                (_hd160572160696_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160573160692_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160571160699_))
                                (let ((_e160576160702_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160571160699_))))
                                  (let ((_tl160574160709_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160576160702_)))
                                        (_hd160575160706_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160576160702_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl160574160709_))
                                        (let ((_e160579160712_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl160574160709_))))
                                          (let ((_tl160577160719_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e160579160712_)))
                                                (_hd160578160716_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e160579160712_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160577160719_))
                                                (let ((_e160582160722_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160577160719_))))
                                                  (let ((_tl160580160729_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160582160722_)))
                                                        (_hd160581160726_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160582160722_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160580160729_))
                                                        (___match163496163497_
                                                         _e160570160682_
                                                         _hd160569160686_
                                                         _tl160568160689_
                                                         _e160573160692_
                                                         _hd160572160696_
                                                         _tl160571160699_
                                                         _e160576160702_
                                                         _hd160575160706_
                                                         _tl160574160709_
                                                         _e160579160712_
                                                         _hd160578160716_
                                                         _tl160577160719_
                                                         _e160582160722_
                                                         _hd160581160726_
                                                         _tl160580160729_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160562160604_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160577160719_))
                                                    (___kont163462163463_
                                                     _hd160578160716_
                                                     _hd160575160706_
                                                     _hd160572160696_
                                                     _hd160569160686_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160562160604_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g160562160604_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g160562160604_)))))
                        (let () (declare (not safe)) (_g160562160604_)))))
                (let () (declare (not safe)) (_g160562160604_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx160761_)
      (let* ((_g160765160800_
              (lambda (_g160766160796_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160766160796_))))
             (_g160764160919_
              (lambda (_g160766160804_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160766160804_))
                    (let ((_e160772160807_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160766160804_))))
                      (let ((_hd160771160811_
                             (let ()
                               (declare (not safe))
                               (##car _e160772160807_)))
                            (_tl160770160814_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160772160807_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160770160814_))
                            (let ((_g163926_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160770160814_
                                      '0))))
                              (begin
                                (let ((_g163927_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163926_)
                                             (##vector-length _g163926_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163927_ 2)))
                                      (error "Context expects 2 values"
                                             _g163927_)))
                                (let ((_target160773160817_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163926_ 0)))
                                      (_tl160775160820_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163926_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160775160820_))
                                      (letrec ((_loop160776160823_
                                                (lambda (_hd160774160827_
                                                         _symbol160780160830_
                                                         _method160781160832_
                                                         _type-t160782160834_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160774160827_))
                                                      (let ((_e160777160837_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160774160827_))))
                (let ((_lp-hd160778160841_
                       (let () (declare (not safe)) (##car _e160777160837_)))
                      (_lp-tl160779160844_
                       (let () (declare (not safe)) (##cdr _e160777160837_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160778160841_))
                      (let ((_e160788160847_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160778160841_))))
                        (let ((_hd160787160851_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160788160847_)))
                              (_tl160786160854_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160788160847_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160786160854_))
                              (let ((_e160791160857_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160786160854_))))
                                (let ((_hd160790160861_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160791160857_)))
                                      (_tl160789160864_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160791160857_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl160789160864_))
                                      (let ((_e160794160867_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl160789160864_))))
                                        (let ((_hd160793160871_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e160794160867_)))
                                              (_tl160792160874_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e160794160867_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160792160874_))
                                              (_loop160776160823_
                                               _lp-tl160779160844_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160793160871_
                                                       _symbol160780160830_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160790160861_
                                                       _method160781160832_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160787160851_
                                                       _type-t160782160834_)))
                                              (_g160765160800_
                                               _g160766160804_))))
                                      (_g160765160800_ _g160766160804_))))
                              (_g160765160800_ _g160766160804_))))
                      (_g160765160800_ _g160766160804_))))
              (let ((_symbol160783160877_ (reverse _symbol160780160830_))
                    (_method160784160880_ (reverse _method160781160832_))
                    (_type-t160785160882_ (reverse _type-t160782160834_)))
                ((lambda (_L160885_ _L160887_ _L160888_)
                   (let ((__tmp163935
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163928
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160885_
                               _L160887_
                               _L160888_))
                            (let ((__tmp163929
                                   (lambda (_g160904160909_
                                            _g160905160912_
                                            _g160906160914_
                                            _g160907160916_)
                                     (let ((__tmp163930
                                            (let ((__tmp163934
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp163931
                                                   (let ((__tmp163932
                                                          (let ((__tmp163933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g160904160909_ '()))))
                    (declare (not safe))
                    (cons _g160905160912_ __tmp163933))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160906160914_
                                                           __tmp163932))))
                                              (declare (not safe))
                                              (cons __tmp163934 __tmp163931))))
                                       (declare (not safe))
                                       (cons __tmp163930 _g160907160916_)))))
                              (declare (not safe))
                              (foldr* __tmp163929
                                      '()
                                      _L160885_
                                      _L160887_
                                      _L160888_)))))
                     (declare (not safe))
                     (cons __tmp163935 __tmp163928)))
                 _symbol160783160877_
                 _method160784160880_
                 _type-t160785160882_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160776160823_
                                         _target160773160817_
                                         '()
                                         '()
                                         '()))
                                      (_g160765160800_ _g160766160804_)))))
                            (_g160765160800_ _g160766160804_))))
                    (_g160765160800_ _g160766160804_)))))
        (_g160764160919_ _$stx160761_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx160924_)
      (let* ((_g160928160961_
              (lambda (_g160929160957_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160929160957_))))
             (_g160927161075_
              (lambda (_g160929160965_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160929160965_))
                    (let ((_e160935160968_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160929160965_))))
                      (let ((_hd160934160972_
                             (let ()
                               (declare (not safe))
                               (##car _e160935160968_)))
                            (_tl160933160975_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160935160968_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160933160975_))
                            (let ((_e160938160978_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160933160975_))))
                              (let ((_hd160937160982_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160938160978_)))
                                    (_tl160936160985_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160938160978_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160936160985_))
                                    (let ((_g163936_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160936160985_
                                              '0))))
                                      (begin
                                        (let ((_g163937_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g163936_)
                                                     (##vector-length
                                                      _g163936_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g163937_ 2)))
                                              (error "Context expects 2 values"
                                                     _g163937_)))
                                        (let ((_target160939160988_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g163936_ 0)))
                                              (_tl160941160991_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g163936_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160941160991_))
                                              (letrec ((_loop160942160994_
                                                        (lambda (_hd160940160998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol160946161001_
                         _method160947161003_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd160940160998_))
                      (let ((_e160943161006_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd160940160998_))))
                        (let ((_lp-hd160944161010_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160943161006_)))
                              (_lp-tl160945161013_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160943161006_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd160944161010_))
                              (let ((_e160952161016_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd160944161010_))))
                                (let ((_hd160951161020_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160952161016_)))
                                      (_tl160950161023_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160952161016_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl160950161023_))
                                      (let ((_e160955161026_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl160950161023_))))
                                        (let ((_hd160954161030_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e160955161026_)))
                                              (_tl160953161033_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e160955161026_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160953161033_))
                                              (_loop160942160994_
                                               _lp-tl160945161013_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160954161030_
                                                       _symbol160946161001_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160951161020_
                                                       _method160947161003_)))
                                              (_g160928160961_
                                               _g160929160965_))))
                                      (_g160928160961_ _g160929160965_))))
                              (_g160928160961_ _g160929160965_))))
                      (let ((_symbol160948161036_
                             (reverse _symbol160946161001_))
                            (_method160949161039_
                             (reverse _method160947161003_)))
                        ((lambda (_L161042_ _L161044_ _L161045_)
                           (let ((__tmp163945
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp163938
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L161042_
                                       _L161044_))
                                    (let ((__tmp163939
                                           (lambda (_g161063161067_
                                                    _g161064161070_
                                                    _g161065161072_)
                                             (let ((__tmp163940
                                                    (let ((__tmp163944
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp163941
                                                           (let ((__tmp163942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp163943
                                 (let ()
                                   (declare (not safe))
                                   (cons _g161063161067_ '()))))
                            (declare (not safe))
                            (cons _g161064161070_ __tmp163943))))
                     (declare (not safe))
                     (cons _L161045_ __tmp163942))))
              (declare (not safe))
              (cons __tmp163944 __tmp163941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp163940
                                                     _g161065161072_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp163939
                                              '()
                                              _L161042_
                                              _L161044_)))))
                             (declare (not safe))
                             (cons __tmp163945 __tmp163938)))
                         _symbol160948161036_
                         _method160949161039_
                         _hd160937160982_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop160942160994_
                                                 _target160939160988_
                                                 '()
                                                 '()))
                                              (_g160928160961_
                                               _g160929160965_)))))
                                    (_g160928160961_ _g160929160965_))))
                            (_g160928160961_ _g160929160965_))))
                    (_g160928160961_ _g160929160965_)))))
        (_g160927161075_ _$stx160924_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx161080_)
      (let* ((_g161084161098_
              (lambda (_g161085161094_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161085161094_))))
             (_g161083161139_
              (lambda (_g161085161102_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161085161102_))
                    (let ((_e161089161105_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161085161102_))))
                      (let ((_hd161088161109_
                             (let ()
                               (declare (not safe))
                               (##car _e161089161105_)))
                            (_tl161087161112_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161089161105_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161087161112_))
                            (let ((_e161092161115_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161087161112_))))
                              (let ((_hd161091161119_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161092161115_)))
                                    (_tl161090161122_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161092161115_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161090161122_))
                                    ((lambda (_L161125_)
                                       (let ((__tmp163950
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp163946
                                              (let ((__tmp163947
                                                     (let ((__tmp163949
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163948
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163949 __tmp163948))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163947 '()))))
                                         (declare (not safe))
                                         (cons __tmp163950 __tmp163946)))
                                     _hd161091161119_)
                                    (_g161084161098_ _g161085161102_))))
                            (_g161084161098_ _g161085161102_))))
                    (_g161084161098_ _g161085161102_)))))
        (_g161083161139_ _$stx161080_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx161143_)
      (let* ((_g161147161201_
              (lambda (_g161148161197_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161148161197_))))
             (_g161146161382_
              (lambda (_g161148161205_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161148161205_))
                    (let ((_e161162161208_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161148161205_))))
                      (let ((_hd161161161212_
                             (let ()
                               (declare (not safe))
                               (##car _e161162161208_)))
                            (_tl161160161215_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161162161208_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161160161215_))
                            (let ((_e161165161218_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161160161215_))))
                              (let ((_hd161164161222_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161165161218_)))
                                    (_tl161163161225_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161165161218_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161163161225_))
                                    (let ((_e161168161228_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161163161225_))))
                                      (let ((_hd161167161232_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161168161228_)))
                                            (_tl161166161235_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161168161228_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161166161235_))
                                            (let ((_e161171161238_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161166161235_))))
                                              (let ((_hd161170161242_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161171161238_)))
                                                    (_tl161169161245_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161171161238_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161169161245_))
                                                    (let ((_e161174161248_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161169161245_))))
                                                      (let ((_hd161173161252_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e161174161248_)))
                    (_tl161172161255_
                     (let () (declare (not safe)) (##cdr _e161174161248_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl161172161255_))
                    (let ((_e161177161258_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl161172161255_))))
                      (let ((_hd161176161262_
                             (let ()
                               (declare (not safe))
                               (##car _e161177161258_)))
                            (_tl161175161265_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161177161258_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161175161265_))
                            (let ((_e161180161268_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161175161265_))))
                              (let ((_hd161179161272_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161180161268_)))
                                    (_tl161178161275_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161180161268_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161178161275_))
                                    (let ((_e161183161278_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161178161275_))))
                                      (let ((_hd161182161282_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161183161278_)))
                                            (_tl161181161285_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161183161278_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161181161285_))
                                            (let ((_e161186161288_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161181161285_))))
                                              (let ((_hd161185161292_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161186161288_)))
                                                    (_tl161184161295_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161186161288_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161184161295_))
                                                    (let ((_e161189161298_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161184161295_))))
                                                      (let ((_hd161188161302_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e161189161298_)))
                    (_tl161187161305_
                     (let () (declare (not safe)) (##cdr _e161189161298_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl161187161305_))
                    (let ((_e161192161308_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl161187161305_))))
                      (let ((_hd161191161312_
                             (let ()
                               (declare (not safe))
                               (##car _e161192161308_)))
                            (_tl161190161315_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161192161308_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161190161315_))
                            (let ((_e161195161318_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161190161315_))))
                              (let ((_hd161194161322_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161195161318_)))
                                    (_tl161193161325_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161195161318_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161193161325_))
                                    ((lambda (_L161328_
                                              _L161330_
                                              _L161331_
                                              _L161332_
                                              _L161333_
                                              _L161334_
                                              _L161335_
                                              _L161336_
                                              _L161337_
                                              _L161338_
                                              _L161339_)
                                       (let ((__tmp163986
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class)))
                                             (__tmp163951
                                              (let ((__tmp163983
                                                     (let ((__tmp163985
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163984
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163985 __tmp163984)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp163952
                                                     (let ((__tmp163980
                                                            (let ((__tmp163982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote)))
                          (__tmp163981
                           (let () (declare (not safe)) (cons _L161338_ '()))))
                      (declare (not safe))
                      (cons __tmp163982 __tmp163981)))
                   (__tmp163953
                    (let ((__tmp163977
                           (let ((__tmp163979
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote)))
                                 (__tmp163978
                                  (let ()
                                    (declare (not safe))
                                    (cons _L161337_ '()))))
                             (declare (not safe))
                             (cons __tmp163979 __tmp163978)))
                          (__tmp163954
                           (let ((__tmp163974
                                  (let ((__tmp163976
                                         (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote)))
                                        (__tmp163975
                                         (let ()
                                           (declare (not safe))
                                           (cons _L161336_ '()))))
                                    (declare (not safe))
                                    (cons __tmp163976 __tmp163975)))
                                 (__tmp163955
                                  (let ((__tmp163971
                                         (let ((__tmp163973
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote)))
                                               (__tmp163972
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L161335_ '()))))
                                           (declare (not safe))
                                           (cons __tmp163973 __tmp163972)))
                                        (__tmp163956
                                         (let ((__tmp163968
                                                (let ((__tmp163970
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'quote)))
                                                      (__tmp163969
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L161334_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp163970
                                                        __tmp163969)))
                                               (__tmp163957
                                                (let ((__tmp163958
                                                       (let ((__tmp163959
                                                              (let ((__tmp163960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp163965
                                    (let ((__tmp163967
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp163966
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161330_ '()))))
                                      (declare (not safe))
                                      (cons __tmp163967 __tmp163966)))
                                   (__tmp163961
                                    (let ((__tmp163962
                                           (let ((__tmp163964
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'quote)))
                                                 (__tmp163963
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L161328_ '()))))
                                             (declare (not safe))
                                             (cons __tmp163964 __tmp163963))))
                                      (declare (not safe))
                                      (cons __tmp163962 '()))))
                               (declare (not safe))
                               (cons __tmp163965 __tmp163961))))
                        (declare (not safe))
                        (cons _L161331_ __tmp163960))))
                 (declare (not safe))
                 (cons _L161332_ __tmp163959))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L161333_
                                                        __tmp163958))))
                                           (declare (not safe))
                                           (cons __tmp163968 __tmp163957))))
                                    (declare (not safe))
                                    (cons __tmp163971 __tmp163956))))
                             (declare (not safe))
                             (cons __tmp163974 __tmp163955))))
                      (declare (not safe))
                      (cons __tmp163977 __tmp163954))))
               (declare (not safe))
               (cons __tmp163980 __tmp163953))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163983
                                                      __tmp163952))))
                                         (declare (not safe))
                                         (cons __tmp163986 __tmp163951)))
                                     _hd161194161322_
                                     _hd161191161312_
                                     _hd161188161302_
                                     _hd161185161292_
                                     _hd161182161282_
                                     _hd161179161272_
                                     _hd161176161262_
                                     _hd161173161252_
                                     _hd161170161242_
                                     _hd161167161232_
                                     _hd161164161222_)
                                    (_g161147161201_ _g161148161205_))))
                            (_g161147161201_ _g161148161205_))))
                    (_g161147161201_ _g161148161205_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g161147161201_
                                                     _g161148161205_))))
                                            (_g161147161201_
                                             _g161148161205_))))
                                    (_g161147161201_ _g161148161205_))))
                            (_g161147161201_ _g161148161205_))))
                    (_g161147161201_ _g161148161205_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g161147161201_
                                                     _g161148161205_))))
                                            (_g161147161201_
                                             _g161148161205_))))
                                    (_g161147161201_ _g161148161205_))))
                            (_g161147161201_ _g161148161205_))))
                    (_g161147161201_ _g161148161205_)))))
        (_g161146161382_ _$stx161143_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx161386_)
      (let* ((_g161390161404_
              (lambda (_g161391161400_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161391161400_))))
             (_g161389161445_
              (lambda (_g161391161408_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161391161408_))
                    (let ((_e161395161411_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161391161408_))))
                      (let ((_hd161394161415_
                             (let ()
                               (declare (not safe))
                               (##car _e161395161411_)))
                            (_tl161393161418_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161395161411_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161393161418_))
                            (let ((_e161398161421_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161393161418_))))
                              (let ((_hd161397161425_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161398161421_)))
                                    (_tl161396161428_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161398161421_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161396161428_))
                                    ((lambda (_L161431_)
                                       (let ((__tmp163991
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp163987
                                              (let ((__tmp163988
                                                     (let ((__tmp163990
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163989
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163990 __tmp163989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163988 '()))))
                                         (declare (not safe))
                                         (cons __tmp163991 __tmp163987)))
                                     _hd161397161425_)
                                    (_g161390161404_ _g161391161408_))))
                            (_g161390161404_ _g161391161408_))))
                    (_g161390161404_ _g161391161408_)))))
        (_g161389161445_ _$stx161386_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx161449_)
      (let* ((_g161453161467_
              (lambda (_g161454161463_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161454161463_))))
             (_g161452161508_
              (lambda (_g161454161471_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161454161471_))
                    (let ((_e161458161474_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161454161471_))))
                      (let ((_hd161457161478_
                             (let ()
                               (declare (not safe))
                               (##car _e161458161474_)))
                            (_tl161456161481_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161458161474_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161456161481_))
                            (let ((_e161461161484_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161456161481_))))
                              (let ((_hd161460161488_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161461161484_)))
                                    (_tl161459161491_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161461161484_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161459161491_))
                                    ((lambda (_L161494_)
                                       (let ((__tmp163996
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp163992
                                              (let ((__tmp163993
                                                     (let ((__tmp163995
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163994
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163995 __tmp163994))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163993 '()))))
                                         (declare (not safe))
                                         (cons __tmp163996 __tmp163992)))
                                     _hd161460161488_)
                                    (_g161453161467_ _g161454161471_))))
                            (_g161453161467_ _g161454161471_))))
                    (_g161453161467_ _g161454161471_)))))
        (_g161452161508_ _$stx161449_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx161512_)
      (let* ((_g161516161538_
              (lambda (_g161517161534_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161517161534_))))
             (_g161515161607_
              (lambda (_g161517161542_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161517161542_))
                    (let ((_e161523161545_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161517161542_))))
                      (let ((_hd161522161549_
                             (let ()
                               (declare (not safe))
                               (##car _e161523161545_)))
                            (_tl161521161552_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161523161545_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161521161552_))
                            (let ((_e161526161555_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161521161552_))))
                              (let ((_hd161525161559_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161526161555_)))
                                    (_tl161524161562_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161526161555_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161524161562_))
                                    (let ((_e161529161565_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161524161562_))))
                                      (let ((_hd161528161569_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161529161565_)))
                                            (_tl161527161572_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161529161565_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161527161572_))
                                            (let ((_e161532161575_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161527161572_))))
                                              (let ((_hd161531161579_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161532161575_)))
                                                    (_tl161530161582_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161532161575_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161530161582_))
                                                    ((lambda (_L161585_
                                                              _L161587_
                                                              _L161588_)
                                                       (let ((__tmp164006
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp163997
                      (let ((__tmp164003
                             (let ((__tmp164005
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp164004
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161588_ '()))))
                               (declare (not safe))
                               (cons __tmp164005 __tmp164004)))
                            (__tmp163998
                             (let ((__tmp164000
                                    (let ((__tmp164002
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164001
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161587_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164002 __tmp164001)))
                                   (__tmp163999
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161585_ '()))))
                               (declare (not safe))
                               (cons __tmp164000 __tmp163999))))
                        (declare (not safe))
                        (cons __tmp164003 __tmp163998))))
                 (declare (not safe))
                 (cons __tmp164006 __tmp163997)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd161531161579_
                                                     _hd161528161569_
                                                     _hd161525161559_)
                                                    (_g161516161538_
                                                     _g161517161542_))))
                                            (_g161516161538_
                                             _g161517161542_))))
                                    (_g161516161538_ _g161517161542_))))
                            (_g161516161538_ _g161517161542_))))
                    (_g161516161538_ _g161517161542_)))))
        (_g161515161607_ _$stx161512_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx161611_)
      (let* ((_g161615161637_
              (lambda (_g161616161633_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161616161633_))))
             (_g161614161706_
              (lambda (_g161616161641_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161616161641_))
                    (let ((_e161622161644_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161616161641_))))
                      (let ((_hd161621161648_
                             (let ()
                               (declare (not safe))
                               (##car _e161622161644_)))
                            (_tl161620161651_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161622161644_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161620161651_))
                            (let ((_e161625161654_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161620161651_))))
                              (let ((_hd161624161658_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161625161654_)))
                                    (_tl161623161661_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161625161654_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161623161661_))
                                    (let ((_e161628161664_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161623161661_))))
                                      (let ((_hd161627161668_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161628161664_)))
                                            (_tl161626161671_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161628161664_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161626161671_))
                                            (let ((_e161631161674_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161626161671_))))
                                              (let ((_hd161630161678_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161631161674_)))
                                                    (_tl161629161681_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161631161674_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161629161681_))
                                                    ((lambda (_L161684_
                                                              _L161686_
                                                              _L161687_)
                                                       (let ((__tmp164016
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp164007
                      (let ((__tmp164013
                             (let ((__tmp164015
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp164014
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161687_ '()))))
                               (declare (not safe))
                               (cons __tmp164015 __tmp164014)))
                            (__tmp164008
                             (let ((__tmp164010
                                    (let ((__tmp164012
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164011
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161686_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164012 __tmp164011)))
                                   (__tmp164009
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161684_ '()))))
                               (declare (not safe))
                               (cons __tmp164010 __tmp164009))))
                        (declare (not safe))
                        (cons __tmp164013 __tmp164008))))
                 (declare (not safe))
                 (cons __tmp164016 __tmp164007)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd161630161678_
                                                     _hd161627161668_
                                                     _hd161624161658_)
                                                    (_g161615161637_
                                                     _g161616161641_))))
                                            (_g161615161637_
                                             _g161616161641_))))
                                    (_g161615161637_ _g161616161641_))))
                            (_g161615161637_ _g161616161641_))))
                    (_g161615161637_ _g161616161641_)))))
        (_g161614161706_ _$stx161611_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx161710_)
      (let* ((___stx163525163526_ _$stx161710_)
             (_g161718161786_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163525163526_)))))
        (let ((___kont163528163529_
               (lambda (_L162064_ _L162066_)
                 (let ((__tmp164037
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp164017
                        (let ((__tmp164033
                               (let ((__tmp164036
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164034
                                      (let ((__tmp164035
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164035 '()))))
                                 (declare (not safe))
                                 (cons __tmp164036 __tmp164034)))
                              (__tmp164018
                               (let ((__tmp164030
                                      (let ((__tmp164032
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164031
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162066_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164032 __tmp164031)))
                                     (__tmp164019
                                      (let ((__tmp164020
                                             (let ((__tmp164021
                                                    (let ((__tmp164022
                                                           (let ((__tmp164029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp164023
                          (let ((__tmp164024
                                 (let ((__tmp164028
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp164025
                                        (let ((__tmp164026
                                               (let ((__tmp164027
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L162064_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp164027))))
                                          (declare (not safe))
                                          (cons _L162066_ __tmp164026))))
                                   (declare (not safe))
                                   (cons __tmp164028 __tmp164025))))
                            (declare (not safe))
                            (cons __tmp164024 '()))))
                     (declare (not safe))
                     (cons __tmp164029 __tmp164023))))
              (declare (not safe))
              (cons __tmp164022 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L162064_ __tmp164021))))
                                        (declare (not safe))
                                        (cons '#f __tmp164020))))
                                 (declare (not safe))
                                 (cons __tmp164030 __tmp164019))))
                          (declare (not safe))
                          (cons __tmp164033 __tmp164018))))
                   (declare (not safe))
                   (cons __tmp164037 __tmp164017))))
              (___kont163530163531_
               (lambda (_L161995_ _L161997_)
                 (let ((__tmp164038
                        (let ((__tmp164039
                               (let ((__tmp164040
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L161995_ __tmp164040))))
                          (declare (not safe))
                          (cons 'primitive: __tmp164039))))
                   (declare (not safe))
                   (cons _L161997_ __tmp164038))))
              (___kont163532163533_
               (lambda (_L161934_ _L161936_)
                 (let ((__tmp164054
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp164041
                        (let ((__tmp164050
                               (let ((__tmp164053
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164051
                                      (let ((__tmp164052
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164052 '()))))
                                 (declare (not safe))
                                 (cons __tmp164053 __tmp164051)))
                              (__tmp164042
                               (let ((__tmp164047
                                      (let ((__tmp164049
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164048
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161936_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164049 __tmp164048)))
                                     (__tmp164043
                                      (let ((__tmp164044
                                             (let ((__tmp164046
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164045
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161934_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164046
                                                     __tmp164045))))
                                        (declare (not safe))
                                        (cons __tmp164044 '()))))
                                 (declare (not safe))
                                 (cons __tmp164047 __tmp164043))))
                          (declare (not safe))
                          (cons __tmp164050 __tmp164042))))
                   (declare (not safe))
                   (cons __tmp164054 __tmp164041))))
              (___kont163534163535_
               (lambda (_L161866_ _L161868_)
                 (let ((__tmp164068
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp164055
                        (let ((__tmp164064
                               (let ((__tmp164067
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164065
                                      (let ((__tmp164066
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164066 '()))))
                                 (declare (not safe))
                                 (cons __tmp164067 __tmp164065)))
                              (__tmp164056
                               (let ((__tmp164061
                                      (let ((__tmp164063
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164062
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161868_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164063 __tmp164062)))
                                     (__tmp164057
                                      (let ((__tmp164058
                                             (let ((__tmp164060
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164059
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161866_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164060
                                                     __tmp164059))))
                                        (declare (not safe))
                                        (cons __tmp164058 '()))))
                                 (declare (not safe))
                                 (cons __tmp164061 __tmp164057))))
                          (declare (not safe))
                          (cons __tmp164064 __tmp164056))))
                   (declare (not safe))
                   (cons __tmp164068 __tmp164055))))
              (___kont163536163537_
               (lambda (_L161813_ _L161815_)
                 (let ((__tmp164069
                        (let ((__tmp164070
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L161813_ __tmp164070))))
                   (declare (not safe))
                   (cons _L161815_ __tmp164069)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx163525163526_))
              (let ((_e161724162020_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx163525163526_))))
                (let ((_tl161722162027_
                       (let () (declare (not safe)) (##cdr _e161724162020_)))
                      (_hd161723162024_
                       (let () (declare (not safe)) (##car _e161724162020_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl161722162027_))
                      (let ((_e161727162030_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl161722162027_))))
                        (let ((_tl161725162037_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161727162030_)))
                              (_hd161726162034_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161727162030_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl161725162037_))
                              (let ((_e161730162040_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl161725162037_))))
                                (let ((_tl161728162047_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e161730162040_)))
                                      (_hd161729162044_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e161730162040_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd161729162044_))
                                      (let ((_e161731162050_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd161729162044_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e161731162050_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl161728162047_))
                                                (let ((_e161734162054_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl161728162047_))))
                                                  (let ((_tl161732162061_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e161734162054_)))
                                                        (_hd161733162058_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e161734162054_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl161732162061_))
                                                        (___kont163528163529_
                                                         _hd161733162058_
                                                         _hd161726162034_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd161726162034_))
                                                            (let ((_e161743161981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd161726162034_))))
                      (declare (not safe))
                      (_g161718161786_))
                    (let () (declare (not safe)) (_g161718161786_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd161726162034_))
                                                    (let ((_e161743161981_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd161726162034_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e161743161981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161728162047_))
                      (___kont163530163531_ _hd161729162044_ _hd161723162024_)
                      (let () (declare (not safe)) (_g161718161786_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161728162047_))
                      (___kont163534163535_ _hd161729162044_ _hd161726162034_)
                      (let () (declare (not safe)) (_g161718161786_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl161728162047_))
                                                        (___kont163534163535_
                                                         _hd161729162044_
                                                         _hd161726162034_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g161718161786_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd161726162034_))
                                                (let ((_e161743161981_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd161726162034_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e161743161981_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl161728162047_))
                                                          (___kont163530163531_
                                                           _hd161729162044_
                                                           _hd161723162024_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl161728162047_))
                      (let ((_e161761161924_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl161728162047_))))
                        (let ((_tl161759161931_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161761161924_)))
                              (_hd161760161928_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161761161924_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161759161931_))
                              (___kont163532163533_
                               _hd161760161928_
                               _hd161729162044_)
                              (let ()
                                (declare (not safe))
                                (_g161718161786_)))))
                      (let () (declare (not safe)) (_g161718161786_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl161728162047_))
                  (___kont163534163535_ _hd161729162044_ _hd161726162034_)
                  (let () (declare (not safe)) (_g161718161786_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161728162047_))
                                                    (___kont163534163535_
                                                     _hd161729162044_
                                                     _hd161726162034_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161718161786_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd161726162034_))
                                          (let ((_e161743161981_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd161726162034_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e161743161981_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161728162047_))
                                                    (___kont163530163531_
                                                     _hd161729162044_
                                                     _hd161723162024_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl161728162047_))
                                                        (let ((_e161761161924_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl161728162047_))))
                  (let ((_tl161759161931_
                         (let () (declare (not safe)) (##cdr _e161761161924_)))
                        (_hd161760161928_
                         (let ()
                           (declare (not safe))
                           (##car _e161761161924_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl161759161931_))
                        (___kont163532163533_
                         _hd161760161928_
                         _hd161729162044_)
                        (let () (declare (not safe)) (_g161718161786_)))))
                (let () (declare (not safe)) (_g161718161786_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161728162047_))
                                                    (___kont163534163535_
                                                     _hd161729162044_
                                                     _hd161726162034_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161718161786_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161728162047_))
                                              (___kont163534163535_
                                               _hd161729162044_
                                               _hd161726162034_)
                                              (let ()
                                                (declare (not safe))
                                                (_g161718161786_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd161726162034_))
                                  (let ((_e161743161981_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd161726162034_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161725162037_))
                                        (___kont163536163537_
                                         _hd161726162034_
                                         _hd161723162024_)
                                        (let ()
                                          (declare (not safe))
                                          (_g161718161786_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161725162037_))
                                      (___kont163536163537_
                                       _hd161726162034_
                                       _hd161723162024_)
                                      (let ()
                                        (declare (not safe))
                                        (_g161718161786_)))))))
                      (let () (declare (not safe)) (_g161718161786_)))))
              (let () (declare (not safe)) (_g161718161786_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx162088_)
      (let* ((___stx163665163666_ _$stx162088_)
             (_g162093162148_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163665163666_)))))
        (let ((___kont163668163669_
               (lambda (_L162333_ _L162335_)
                 (let ((__tmp164086
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp164071
                        (let ((__tmp164082
                               (let ((__tmp164085
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164083
                                      (let ((__tmp164084
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp164084 '()))))
                                 (declare (not safe))
                                 (cons __tmp164085 __tmp164083)))
                              (__tmp164072
                               (let ((__tmp164073
                                      (let ((__tmp164081
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp164074
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L162333_
                                                  _L162335_))
                                               (let ((__tmp164075
                                                      (lambda (_g162352162356_
                                                               _g162353162359_
                                                               _g162354162361_)
                                                        (let ((__tmp164076
                                                               (let ((__tmp164080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp164077
                              (let ((__tmp164078
                                     (let ((__tmp164079
                                            (let ()
                                              (declare (not safe))
                                              (cons _g162352162356_ '()))))
                                       (declare (not safe))
                                       (cons _g162353162359_ __tmp164079))))
                                (declare (not safe))
                                (cons 'primitive: __tmp164078))))
                         (declare (not safe))
                         (cons __tmp164080 __tmp164077))))
                  (declare (not safe))
                  (cons __tmp164076 _g162354162361_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp164075
                                                         '()
                                                         _L162333_
                                                         _L162335_)))))
                                        (declare (not safe))
                                        (cons __tmp164081 __tmp164074))))
                                 (declare (not safe))
                                 (cons __tmp164073 '()))))
                          (declare (not safe))
                          (cons __tmp164082 __tmp164072))))
                   (declare (not safe))
                   (cons __tmp164086 __tmp164071))))
              (___kont163672163673_
               (lambda (_L162219_ _L162221_)
                 (let ((__tmp164101
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp164087
                        (let ((__tmp164097
                               (let ((__tmp164100
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164098
                                      (let ((__tmp164099
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp164099 '()))))
                                 (declare (not safe))
                                 (cons __tmp164100 __tmp164098)))
                              (__tmp164088
                               (let ((__tmp164089
                                      (let ((__tmp164096
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp164090
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L162219_
                                                  _L162221_))
                                               (let ((__tmp164091
                                                      (lambda (_g162236162240_
                                                               _g162237162243_
                                                               _g162238162245_)
                                                        (let ((__tmp164092
                                                               (let ((__tmp164095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp164093
                              (let ((__tmp164094
                                     (let ()
                                       (declare (not safe))
                                       (cons _g162236162240_ '()))))
                                (declare (not safe))
                                (cons _g162237162243_ __tmp164094))))
                         (declare (not safe))
                         (cons __tmp164095 __tmp164093))))
                  (declare (not safe))
                  (cons __tmp164092 _g162238162245_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp164091
                                                         '()
                                                         _L162219_
                                                         _L162221_)))))
                                        (declare (not safe))
                                        (cons __tmp164096 __tmp164090))))
                                 (declare (not safe))
                                 (cons __tmp164089 '()))))
                          (declare (not safe))
                          (cons __tmp164097 __tmp164088))))
                   (declare (not safe))
                   (cons __tmp164101 __tmp164087)))))
          (let* ((___match163716163717_
                  (lambda (_e162125162155_
                           _hd162124162159_
                           _tl162123162162_
                           ___splice163674163675_
                           _target162126162165_
                           _tl162128162168_)
                    (letrec ((_loop162129162171_
                              (lambda (_hd162127162175_
                                       _dispatch162133162178_
                                       _arity162134162180_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162127162175_))
                                    (let ((_e162130162183_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162127162175_))))
                                      (let ((_lp-tl162132162190_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162130162183_)))
                                            (_lp-hd162131162187_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162130162183_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd162131162187_))
                                            (let ((_e162139162193_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd162131162187_))))
                                              (let ((_tl162137162200_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e162139162193_)))
                                                    (_hd162138162197_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e162139162193_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl162137162200_))
                                                    (let ((_e162142162203_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl162137162200_))))
                                                      (let ((_tl162140162210_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e162142162203_)))
                    (_hd162141162207_
                     (let () (declare (not safe)) (##car _e162142162203_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl162140162210_))
                    (_loop162129162171_
                     _lp-tl162132162190_
                     (let ()
                       (declare (not safe))
                       (cons _hd162141162207_ _dispatch162133162178_))
                     (let ()
                       (declare (not safe))
                       (cons _hd162138162197_ _arity162134162180_)))
                    (let () (declare (not safe)) (_g162093162148_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162093162148_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g162093162148_)))))
                                    (let ((_arity162136162216_
                                           (reverse _arity162134162180_))
                                          (_dispatch162135162213_
                                           (reverse _dispatch162133162178_)))
                                      (___kont163672163673_
                                       _dispatch162135162213_
                                       _arity162136162216_))))))
                      (_loop162129162171_ _target162126162165_ '() '()))))
                 (___match163708163709_
                  (lambda (_e162125162155_ _hd162124162159_ _tl162123162162_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl162123162162_))
                        (let ((___splice163674163675_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl162123162162_
                                  '0))))
                          (let ((_tl162128162168_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice163674163675_ '1)))
                                (_target162126162165_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice163674163675_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl162128162168_))
                                (___match163716163717_
                                 _e162125162155_
                                 _hd162124162159_
                                 _tl162123162162_
                                 ___splice163674163675_
                                 _target162126162165_
                                 _tl162128162168_)
                                (let ()
                                  (declare (not safe))
                                  (_g162093162148_)))))
                        (let () (declare (not safe)) (_g162093162148_)))))
                 (___match163702163703_
                  (lambda (_e162099162255_
                           _hd162098162259_
                           _tl162097162262_
                           _e162102162265_
                           _hd162101162269_
                           _tl162100162272_
                           _e162103162275_
                           ___splice163670163671_
                           _target162104162279_
                           _tl162106162282_)
                    (letrec ((_loop162107162285_
                              (lambda (_hd162105162289_
                                       _dispatch162111162292_
                                       _arity162112162294_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162105162289_))
                                    (let ((_e162108162297_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162105162289_))))
                                      (let ((_lp-tl162110162304_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162108162297_)))
                                            (_lp-hd162109162301_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162108162297_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd162109162301_))
                                            (let ((_e162117162307_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd162109162301_))))
                                              (let ((_tl162115162314_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e162117162307_)))
                                                    (_hd162116162311_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e162117162307_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl162115162314_))
                                                    (let ((_e162120162317_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl162115162314_))))
                                                      (let ((_tl162118162324_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e162120162317_)))
                    (_hd162119162321_
                     (let () (declare (not safe)) (##car _e162120162317_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl162118162324_))
                    (_loop162107162285_
                     _lp-tl162110162304_
                     (let ()
                       (declare (not safe))
                       (cons _hd162119162321_ _dispatch162111162292_))
                     (let ()
                       (declare (not safe))
                       (cons _hd162116162311_ _arity162112162294_)))
                    (___match163708163709_
                     _e162099162255_
                     _hd162098162259_
                     _tl162097162262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match163708163709_
                                                     _e162099162255_
                                                     _hd162098162259_
                                                     _tl162097162262_))))
                                            (___match163708163709_
                                             _e162099162255_
                                             _hd162098162259_
                                             _tl162097162262_))))
                                    (let ((_arity162114162330_
                                           (reverse _arity162112162294_))
                                          (_dispatch162113162327_
                                           (reverse _dispatch162111162292_)))
                                      (___kont163668163669_
                                       _dispatch162113162327_
                                       _arity162114162330_))))))
                      (_loop162107162285_ _target162104162279_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163665163666_))
                (let ((_e162099162255_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163665163666_))))
                  (let ((_tl162097162262_
                         (let () (declare (not safe)) (##cdr _e162099162255_)))
                        (_hd162098162259_
                         (let ()
                           (declare (not safe))
                           (##car _e162099162255_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162097162262_))
                        (let ((_e162102162265_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162097162262_))))
                          (let ((_tl162100162272_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162102162265_)))
                                (_hd162101162269_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162102162265_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd162101162269_))
                                (let ((_e162103162275_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd162101162269_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e162103162275_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl162100162272_))
                                          (let ((___splice163670163671_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl162100162272_
                                                    '0))))
                                            (let ((_tl162106162282_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163670163671_
                                                      '1)))
                                                  (_target162104162279_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163670163671_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162106162282_))
                                                  (___match163702163703_
                                                   _e162099162255_
                                                   _hd162098162259_
                                                   _tl162097162262_
                                                   _e162102162265_
                                                   _hd162101162269_
                                                   _tl162100162272_
                                                   _e162103162275_
                                                   ___splice163670163671_
                                                   _target162104162279_
                                                   _tl162106162282_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162097162262_))
                                                      (let ((___splice163674163675_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162097162262_ '0))))
                (let ((_tl162128162168_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163674163675_ '1)))
                      (_target162126162165_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163674163675_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162128162168_))
                      (___match163716163717_
                       _e162099162255_
                       _hd162098162259_
                       _tl162097162262_
                       ___splice163674163675_
                       _target162126162165_
                       _tl162128162168_)
                      (let () (declare (not safe)) (_g162093162148_)))))
              (let () (declare (not safe)) (_g162093162148_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl162097162262_))
                                              (let ((___splice163674163675_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl162097162262_
                                                        '0))))
                                                (let ((_tl162128162168_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice163674163675_
                                                          '1)))
                                                      (_target162126162165_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice163674163675_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl162128162168_))
                                                      (___match163716163717_
                                                       _e162099162255_
                                                       _hd162098162259_
                                                       _tl162097162262_
                                                       ___splice163674163675_
                                                       _target162126162165_
                                                       _tl162128162168_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g162093162148_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g162093162148_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl162097162262_))
                                          (let ((___splice163674163675_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl162097162262_
                                                    '0))))
                                            (let ((_tl162128162168_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163674163675_
                                                      '1)))
                                                  (_target162126162165_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163674163675_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162128162168_))
                                                  (___match163716163717_
                                                   _e162099162255_
                                                   _hd162098162259_
                                                   _tl162097162262_
                                                   ___splice163674163675_
                                                   _target162126162165_
                                                   _tl162128162168_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g162093162148_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g162093162148_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162097162262_))
                                    (let ((___splice163674163675_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162097162262_
                                              '0))))
                                      (let ((_tl162128162168_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163674163675_
                                                '1)))
                                            (_target162126162165_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163674163675_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162128162168_))
                                            (___match163716163717_
                                             _e162099162255_
                                             _hd162098162259_
                                             _tl162097162262_
                                             ___splice163674163675_
                                             _target162126162165_
                                             _tl162128162168_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162093162148_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162093162148_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl162097162262_))
                            (let ((___splice163674163675_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl162097162262_
                                      '0))))
                              (let ((_tl162128162168_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice163674163675_
                                        '1)))
                                    (_target162126162165_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice163674163675_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl162128162168_))
                                    (___match163716163717_
                                     _e162099162255_
                                     _hd162098162259_
                                     _tl162097162262_
                                     ___splice163674163675_
                                     _target162126162165_
                                     _tl162128162168_)
                                    (let ()
                                      (declare (not safe))
                                      (_g162093162148_)))))
                            (let () (declare (not safe)) (_g162093162148_))))))
                (let () (declare (not safe)) (_g162093162148_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx162370_)
      (let* ((_g162374162392_
              (lambda (_g162375162388_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162375162388_))))
             (_g162373162447_
              (lambda (_g162375162396_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162375162396_))
                    (let ((_e162380162399_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162375162396_))))
                      (let ((_hd162379162403_
                             (let ()
                               (declare (not safe))
                               (##car _e162380162399_)))
                            (_tl162378162406_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162380162399_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl162378162406_))
                            (let ((_e162383162409_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl162378162406_))))
                              (let ((_hd162382162413_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e162383162409_)))
                                    (_tl162381162416_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e162383162409_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl162381162416_))
                                    (let ((_e162386162419_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl162381162416_))))
                                      (let ((_hd162385162423_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162386162419_)))
                                            (_tl162384162426_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162386162419_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162384162426_))
                                            ((lambda (_L162429_ _L162431_)
                                               (let ((__tmp164115
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp164102
                                                      (let ((__tmp164111
                                                             (let ((__tmp164114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp164112
                            (let ((__tmp164113
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp164113 '()))))
                       (declare (not safe))
                       (cons __tmp164114 __tmp164112)))
                    (__tmp164103
                     (let ((__tmp164108
                            (let ((__tmp164110
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp164109
                                   (let ()
                                     (declare (not safe))
                                     (cons _L162431_ '()))))
                              (declare (not safe))
                              (cons __tmp164110 __tmp164109)))
                           (__tmp164104
                            (let ((__tmp164105
                                   (let ((__tmp164107
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp164106
                                          (let ()
                                            (declare (not safe))
                                            (cons _L162429_ '()))))
                                     (declare (not safe))
                                     (cons __tmp164107 __tmp164106))))
                              (declare (not safe))
                              (cons __tmp164105 '()))))
                       (declare (not safe))
                       (cons __tmp164108 __tmp164104))))
                (declare (not safe))
                (cons __tmp164111 __tmp164103))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp164115
                                                       __tmp164102)))
                                             _hd162385162423_
                                             _hd162382162413_)
                                            (_g162374162392_
                                             _g162375162396_))))
                                    (_g162374162392_ _g162375162396_))))
                            (_g162374162392_ _g162375162396_))))
                    (_g162374162392_ _g162375162396_)))))
        (_g162373162447_ _$stx162370_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx162451_)
      (let* ((_g162455162473_
              (lambda (_g162456162469_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162456162469_))))
             (_g162454162528_
              (lambda (_g162456162477_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162456162477_))
                    (let ((_e162461162480_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162456162477_))))
                      (let ((_hd162460162484_
                             (let ()
                               (declare (not safe))
                               (##car _e162461162480_)))
                            (_tl162459162487_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162461162480_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl162459162487_))
                            (let ((_e162464162490_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl162459162487_))))
                              (let ((_hd162463162494_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e162464162490_)))
                                    (_tl162462162497_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e162464162490_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl162462162497_))
                                    (let ((_e162467162500_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl162462162497_))))
                                      (let ((_hd162466162504_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162467162500_)))
                                            (_tl162465162507_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162467162500_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162465162507_))
                                            ((lambda (_L162510_ _L162512_)
                                               (let ((__tmp164129
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp164116
                                                      (let ((__tmp164125
                                                             (let ((__tmp164128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp164126
                            (let ((__tmp164127
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp164127 '()))))
                       (declare (not safe))
                       (cons __tmp164128 __tmp164126)))
                    (__tmp164117
                     (let ((__tmp164122
                            (let ((__tmp164124
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp164123
                                   (let ()
                                     (declare (not safe))
                                     (cons _L162512_ '()))))
                              (declare (not safe))
                              (cons __tmp164124 __tmp164123)))
                           (__tmp164118
                            (let ((__tmp164119
                                   (let ((__tmp164121
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp164120
                                          (let ()
                                            (declare (not safe))
                                            (cons _L162510_ '()))))
                                     (declare (not safe))
                                     (cons __tmp164121 __tmp164120))))
                              (declare (not safe))
                              (cons __tmp164119 '()))))
                       (declare (not safe))
                       (cons __tmp164122 __tmp164118))))
                (declare (not safe))
                (cons __tmp164125 __tmp164117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp164129
                                                       __tmp164116)))
                                             _hd162466162504_
                                             _hd162463162494_)
                                            (_g162455162473_
                                             _g162456162477_))))
                                    (_g162455162473_ _g162456162477_))))
                            (_g162455162473_ _g162456162477_))))
                    (_g162455162473_ _g162456162477_)))))
        (_g162454162528_ _$stx162451_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx162532_)
      (let* ((___stx163719163720_ _$stx162532_)
             (_g162539162610_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163719163720_)))))
        (let ((___kont163722163723_
               (lambda (_L162901_ _L162903_)
                 (let ((__tmp164135
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164130
                        (let ((__tmp164131
                               (let ((__tmp164132
                                      (let ((__tmp164134
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164133
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162901_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164134 __tmp164133))))
                                 (declare (not safe))
                                 (cons __tmp164132 '()))))
                          (declare (not safe))
                          (cons _L162903_ __tmp164131))))
                   (declare (not safe))
                   (cons __tmp164135 __tmp164130))))
              (___kont163724163725_
               (lambda (_L162820_ _L162822_)
                 (let ((__tmp164144
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164136
                        (let ((__tmp164137
                               (let ((__tmp164138
                                      (let ((__tmp164143
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164139
                                             (let ((__tmp164140
                                                    (lambda (_g162841162844_
                                                             _g162842162847_)
                                                      (let ((__tmp164141
                                                             (let ((__tmp164142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g162841162844_ __tmp164142))))
                (declare (not safe))
                (cons __tmp164141 _g162842162847_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp164140
                                                       '()
                                                       _L162820_))))
                                        (declare (not safe))
                                        (cons __tmp164143 __tmp164139))))
                                 (declare (not safe))
                                 (cons __tmp164138 '()))))
                          (declare (not safe))
                          (cons _L162822_ __tmp164137))))
                   (declare (not safe))
                   (cons __tmp164144 __tmp164136))))
              (___kont163728163729_
               (lambda (_L162732_ _L162734_)
                 (let ((__tmp164151
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164145
                        (let ((__tmp164146
                               (let ((__tmp164147
                                      (let ((__tmp164150
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164148
                                             (let ((__tmp164149
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L162732_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp164149))))
                                        (declare (not safe))
                                        (cons __tmp164150 __tmp164148))))
                                 (declare (not safe))
                                 (cons __tmp164147 '()))))
                          (declare (not safe))
                          (cons _L162734_ __tmp164146))))
                   (declare (not safe))
                   (cons __tmp164151 __tmp164145))))
              (___kont163730163731_
               (lambda (_L162667_ _L162669_)
                 (let ((__tmp164161
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164152
                        (let ((__tmp164153
                               (let ((__tmp164154
                                      (let ((__tmp164160
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164155
                                             (let ((__tmp164156
                                                    (let ((__tmp164157
                                                           (lambda (_g162686162689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g162687162692_)
                     (let ((__tmp164158
                            (let ((__tmp164159
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g162686162689_ __tmp164159))))
                       (declare (not safe))
                       (cons __tmp164158 _g162687162692_)))))
              (declare (not safe))
              (foldr1 __tmp164157 '() _L162667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp164156))))
                                        (declare (not safe))
                                        (cons __tmp164160 __tmp164155))))
                                 (declare (not safe))
                                 (cons __tmp164154 '()))))
                          (declare (not safe))
                          (cons _L162669_ __tmp164153))))
                   (declare (not safe))
                   (cons __tmp164161 __tmp164152)))))
          (let* ((___match163838163839_
                  (lambda (_e162592162617_
                           _hd162591162621_
                           _tl162590162624_
                           _e162595162627_
                           _hd162594162631_
                           _tl162593162634_
                           ___splice163732163733_
                           _target162596162637_
                           _tl162598162640_)
                    (letrec ((_loop162599162643_
                              (lambda (_hd162597162647_ _arity162603162650_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162597162647_))
                                    (let ((_e162600162653_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162597162647_))))
                                      (let ((_lp-tl162602162660_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162600162653_)))
                                            (_lp-hd162601162657_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162600162653_))))
                                        (_loop162599162643_
                                         _lp-tl162602162660_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd162601162657_
                                                 _arity162603162650_)))))
                                    (let ((_arity162604162663_
                                           (reverse _arity162603162650_)))
                                      (___kont163730163731_
                                       _arity162604162663_
                                       _hd162594162631_))))))
                      (_loop162599162643_ _target162596162637_ '()))))
                 (___match163798163799_
                  (lambda (_e162560162756_
                           _hd162559162760_
                           _tl162558162763_
                           _e162563162766_
                           _hd162562162770_
                           _tl162561162773_
                           _e162566162776_
                           _hd162565162780_
                           _tl162564162783_
                           _e162567162786_
                           ___splice163726163727_
                           _target162568162790_
                           _tl162570162793_)
                    (letrec ((_loop162571162796_
                              (lambda (_hd162569162800_ _arity162575162803_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162569162800_))
                                    (let ((_e162572162806_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162569162800_))))
                                      (let ((_lp-tl162574162813_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162572162806_)))
                                            (_lp-hd162573162810_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162572162806_))))
                                        (_loop162571162796_
                                         _lp-tl162574162813_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd162573162810_
                                                 _arity162575162803_)))))
                                    (let ((_arity162576162816_
                                           (reverse _arity162575162803_)))
                                      (___kont163724163725_
                                       _arity162576162816_
                                       _hd162562162770_))))))
                      (_loop162571162796_ _target162568162790_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163719163720_))
                (let ((_e162545162857_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163719163720_))))
                  (let ((_tl162543162864_
                         (let () (declare (not safe)) (##cdr _e162545162857_)))
                        (_hd162544162861_
                         (let ()
                           (declare (not safe))
                           (##car _e162545162857_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162543162864_))
                        (let ((_e162548162867_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162543162864_))))
                          (let ((_tl162546162874_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162548162867_)))
                                (_hd162547162871_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162548162867_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl162546162874_))
                                (let ((_e162551162877_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl162546162874_))))
                                  (let ((_tl162549162884_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e162551162877_)))
                                        (_hd162550162881_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e162551162877_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd162550162881_))
                                        (let ((_e162552162887_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd162550162881_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e162552162887_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl162549162884_))
                                                  (let ((_e162555162891_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl162549162884_))))
                                                    (let ((_tl162553162898_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e162555162891_)))
                                                          (_hd162554162895_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e162555162891_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl162553162898_))
                                                          (___kont163722163723_
                                                           _hd162554162895_
                                                           _hd162547162871_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl162549162884_))
                      (let ((___splice163726163727_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl162549162884_ '0))))
                        (let ((_tl162570162793_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice163726163727_ '1)))
                              (_target162568162790_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice163726163727_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162570162793_))
                              (___match163798163799_
                               _e162545162857_
                               _hd162544162861_
                               _tl162543162864_
                               _e162548162867_
                               _hd162547162871_
                               _tl162546162874_
                               _e162551162877_
                               _hd162550162881_
                               _tl162549162884_
                               _e162552162887_
                               ___splice163726163727_
                               _target162568162790_
                               _tl162570162793_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl162546162874_))
                                  (let ((___splice163732163733_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl162546162874_
                                            '0))))
                                    (let ((_tl162598162640_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice163732163733_
                                              '1)))
                                          (_target162596162637_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice163732163733_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl162598162640_))
                                          (___match163838163839_
                                           _e162545162857_
                                           _hd162544162861_
                                           _tl162543162864_
                                           _e162548162867_
                                           _hd162547162871_
                                           _tl162546162874_
                                           ___splice163732163733_
                                           _target162596162637_
                                           _tl162598162640_)
                                          (let ()
                                            (declare (not safe))
                                            (_g162539162610_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g162539162610_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl162546162874_))
                          (let ((___splice163732163733_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl162546162874_
                                    '0))))
                            (let ((_tl162598162640_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice163732163733_ '1)))
                                  (_target162596162637_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice163732163733_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl162598162640_))
                                  (___match163838163839_
                                   _e162545162857_
                                   _hd162544162861_
                                   _tl162543162864_
                                   _e162548162867_
                                   _hd162547162871_
                                   _tl162546162874_
                                   ___splice163732163733_
                                   _target162596162637_
                                   _tl162598162640_)
                                  (let ()
                                    (declare (not safe))
                                    (_g162539162610_)))))
                          (let () (declare (not safe)) (_g162539162610_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162549162884_))
                                                      (let ((___splice163726163727_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162549162884_ '0))))
                (let ((_tl162570162793_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163726163727_ '1)))
                      (_target162568162790_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163726163727_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162570162793_))
                      (___match163798163799_
                       _e162545162857_
                       _hd162544162861_
                       _tl162543162864_
                       _e162548162867_
                       _hd162547162871_
                       _tl162546162874_
                       _e162551162877_
                       _hd162550162881_
                       _tl162549162884_
                       _e162552162887_
                       ___splice163726163727_
                       _target162568162790_
                       _tl162570162793_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl162549162884_))
                          (___kont163728163729_
                           _hd162550162881_
                           _hd162547162871_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162546162874_))
                              (let ((___splice163732163733_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162546162874_
                                        '0))))
                                (let ((_tl162598162640_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice163732163733_
                                          '1)))
                                      (_target162596162637_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice163732163733_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162598162640_))
                                      (___match163838163839_
                                       _e162545162857_
                                       _hd162544162861_
                                       _tl162543162864_
                                       _e162548162867_
                                       _hd162547162871_
                                       _tl162546162874_
                                       ___splice163732163733_
                                       _target162596162637_
                                       _tl162598162640_)
                                      (let ()
                                        (declare (not safe))
                                        (_g162539162610_)))))
                              (let ()
                                (declare (not safe))
                                (_g162539162610_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl162549162884_))
                  (___kont163728163729_ _hd162550162881_ _hd162547162871_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl162546162874_))
                      (let ((___splice163732163733_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl162546162874_ '0))))
                        (let ((_tl162598162640_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice163732163733_ '1)))
                              (_target162596162637_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice163732163733_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162598162640_))
                              (___match163838163839_
                               _e162545162857_
                               _hd162544162861_
                               _tl162543162864_
                               _e162548162867_
                               _hd162547162871_
                               _tl162546162874_
                               ___splice163732163733_
                               _target162596162637_
                               _tl162598162640_)
                              (let ()
                                (declare (not safe))
                                (_g162539162610_)))))
                      (let () (declare (not safe)) (_g162539162610_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162549162884_))
                                                  (___kont163728163729_
                                                   _hd162550162881_
                                                   _hd162547162871_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162546162874_))
                                                      (let ((___splice163732163733_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162546162874_ '0))))
                (let ((_tl162598162640_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163732163733_ '1)))
                      (_target162596162637_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163732163733_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162598162640_))
                      (___match163838163839_
                       _e162545162857_
                       _hd162544162861_
                       _tl162543162864_
                       _e162548162867_
                       _hd162547162871_
                       _tl162546162874_
                       ___splice163732163733_
                       _target162596162637_
                       _tl162598162640_)
                      (let () (declare (not safe)) (_g162539162610_)))))
              (let () (declare (not safe)) (_g162539162610_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162549162884_))
                                            (___kont163728163729_
                                             _hd162550162881_
                                             _hd162547162871_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl162546162874_))
                                                (let ((___splice163732163733_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl162546162874_
                                                          '0))))
                                                  (let ((_tl162598162640_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice163732163733_
                                                            '1)))
                                                        (_target162596162637_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice163732163733_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162598162640_))
                                                        (___match163838163839_
                                                         _e162545162857_
                                                         _hd162544162861_
                                                         _tl162543162864_
                                                         _e162548162867_
                                                         _hd162547162871_
                                                         _tl162546162874_
                                                         ___splice163732163733_
                                                         _target162596162637_
                                                         _tl162598162640_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g162539162610_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g162539162610_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162546162874_))
                                    (let ((___splice163732163733_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162546162874_
                                              '0))))
                                      (let ((_tl162598162640_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163732163733_
                                                '1)))
                                            (_target162596162637_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163732163733_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162598162640_))
                                            (___match163838163839_
                                             _e162545162857_
                                             _hd162544162861_
                                             _tl162543162864_
                                             _e162548162867_
                                             _hd162547162871_
                                             _tl162546162874_
                                             ___splice163732163733_
                                             _target162596162637_
                                             _tl162598162640_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162539162610_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162539162610_))))))
                        (let () (declare (not safe)) (_g162539162610_)))))
                (let () (declare (not safe)) (_g162539162610_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx162927_)
      (let* ((___stx163841163842_ _$stx162927_)
             (_g162932162967_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163841163842_)))))
        (let ((___kont163844163845_
               (lambda (_L163089_ _L163091_)
                 (let ((__tmp164167
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164162
                        (let ((__tmp164163
                               (let ((__tmp164164
                                      (let ((__tmp164166
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164165
                                             (let ()
                                               (declare (not safe))
                                               (cons _L163089_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164166 __tmp164165))))
                                 (declare (not safe))
                                 (cons __tmp164164 '()))))
                          (declare (not safe))
                          (cons _L163091_ __tmp164163))))
                   (declare (not safe))
                   (cons __tmp164167 __tmp164162))))
              (___kont163846163847_
               (lambda (_L163024_ _L163026_)
                 (let ((__tmp164176
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164168
                        (let ((__tmp164169
                               (let ((__tmp164170
                                      (let ((__tmp164175
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164171
                                             (let ((__tmp164172
                                                    (lambda (_g163043163046_
                                                             _g163044163049_)
                                                      (let ((__tmp164173
                                                             (let ((__tmp164174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g163043163046_ __tmp164174))))
                (declare (not safe))
                (cons __tmp164173 _g163044163049_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp164172
                                                       '()
                                                       _L163024_))))
                                        (declare (not safe))
                                        (cons __tmp164175 __tmp164171))))
                                 (declare (not safe))
                                 (cons __tmp164170 '()))))
                          (declare (not safe))
                          (cons _L163026_ __tmp164169))))
                   (declare (not safe))
                   (cons __tmp164176 __tmp164168)))))
          (let ((___match163890163891_
                 (lambda (_e162949162974_
                          _hd162948162978_
                          _tl162947162981_
                          _e162952162984_
                          _hd162951162988_
                          _tl162950162991_
                          ___splice163848163849_
                          _target162953162994_
                          _tl162955162997_)
                   (letrec ((_loop162956163000_
                             (lambda (_hd162954163004_ _arity162960163007_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd162954163004_))
                                   (let ((_e162957163010_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd162954163004_))))
                                     (let ((_lp-tl162959163017_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e162957163010_)))
                                           (_lp-hd162958163014_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e162957163010_))))
                                       (_loop162956163000_
                                        _lp-tl162959163017_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd162958163014_
                                                _arity162960163007_)))))
                                   (let ((_arity162961163020_
                                          (reverse _arity162960163007_)))
                                     (___kont163846163847_
                                      _arity162961163020_
                                      _hd162951162988_))))))
                     (_loop162956163000_ _target162953162994_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163841163842_))
                (let ((_e162938163059_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163841163842_))))
                  (let ((_tl162936163066_
                         (let () (declare (not safe)) (##cdr _e162938163059_)))
                        (_hd162937163063_
                         (let ()
                           (declare (not safe))
                           (##car _e162938163059_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162936163066_))
                        (let ((_e162941163069_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162936163066_))))
                          (let ((_tl162939163076_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162941163069_)))
                                (_hd162940163073_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162941163069_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl162939163076_))
                                (let ((_e162944163079_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl162939163076_))))
                                  (let ((_tl162942163086_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e162944163079_)))
                                        (_hd162943163083_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e162944163079_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162942163086_))
                                        (___kont163844163845_
                                         _hd162943163083_
                                         _hd162940163073_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl162939163076_))
                                            (let ((___splice163848163849_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl162939163076_
                                                      '0))))
                                              (let ((_tl162955162997_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice163848163849_
                                                        '1)))
                                                    (_target162953162994_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice163848163849_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162955162997_))
                                                    (___match163890163891_
                                                     _e162938163059_
                                                     _hd162937163063_
                                                     _tl162936163066_
                                                     _e162941163069_
                                                     _hd162940163073_
                                                     _tl162939163076_
                                                     ___splice163848163849_
                                                     _target162953162994_
                                                     _tl162955162997_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162932162967_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g162932162967_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162939163076_))
                                    (let ((___splice163848163849_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162939163076_
                                              '0))))
                                      (let ((_tl162955162997_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163848163849_
                                                '1)))
                                            (_target162953162994_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163848163849_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162955162997_))
                                            (___match163890163891_
                                             _e162938163059_
                                             _hd162937163063_
                                             _tl162936163066_
                                             _e162941163069_
                                             _hd162940163073_
                                             _tl162939163076_
                                             ___splice163848163849_
                                             _target162953162994_
                                             _tl162955162997_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162932162967_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162932162967_))))))
                        (let () (declare (not safe)) (_g162932162967_)))))
                (let () (declare (not safe)) (_g162932162967_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx163111_)
      (let* ((_g163115163150_
              (lambda (_g163116163146_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g163116163146_))))
             (_g163114163278_
              (lambda (_g163116163154_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g163116163154_))
                    (let ((_e163121163157_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g163116163154_))))
                      (let ((_hd163120163161_
                             (let ()
                               (declare (not safe))
                               (##car _e163121163157_)))
                            (_tl163119163164_
                             (let ()
                               (declare (not safe))
                               (##cdr _e163121163157_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl163119163164_))
                            (let ((_g164177_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl163119163164_
                                      '0))))
                              (begin
                                (let ((_g164178_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164177_)
                                             (##vector-length _g164177_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164178_ 2)))
                                      (error "Context expects 2 values"
                                             _g164178_)))
                                (let ((_target163122163167_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164177_ 0)))
                                      (_tl163124163170_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164177_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl163124163170_))
                                      (letrec ((_loop163125163173_
                                                (lambda (_hd163123163177_
                                                         _arity163129163180_
                                                         _prim163130163182_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd163123163177_))
                                                      (let ((_e163126163185_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd163123163177_))))
                (let ((_lp-hd163127163189_
                       (let () (declare (not safe)) (##car _e163126163185_)))
                      (_lp-tl163128163192_
                       (let () (declare (not safe)) (##cdr _e163126163185_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd163127163189_))
                      (let ((_e163135163195_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd163127163189_))))
                        (let ((_hd163134163199_
                               (let ()
                                 (declare (not safe))
                                 (##car _e163135163195_)))
                              (_tl163133163202_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e163135163195_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl163133163202_))
                              (let ((_g164187_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl163133163202_
                                        '0))))
                                (begin
                                  (let ((_g164188_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g164187_)
                                               (##vector-length _g164187_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g164188_ 2)))
                                        (error "Context expects 2 values"
                                               _g164188_)))
                                  (let ((_target163136163205_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164187_ 0)))
                                        (_tl163138163208_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164187_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163138163208_))
                                        (letrec ((_loop163139163211_
                                                  (lambda (_hd163137163215_
                                                           _arity163143163218_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd163137163215_))
                                                        (let ((_e163140163221_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd163137163215_))))
                  (let ((_lp-hd163141163225_
                         (let () (declare (not safe)) (##car _e163140163221_)))
                        (_lp-tl163142163228_
                         (let ()
                           (declare (not safe))
                           (##cdr _e163140163221_))))
                    (_loop163139163211_
                     _lp-tl163142163228_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd163141163225_ _arity163143163218_)))))
                (let ((_arity163144163231_ (reverse _arity163143163218_)))
                  (_loop163125163173_
                   _lp-tl163128163192_
                   (let ()
                     (declare (not safe))
                     (cons _arity163144163231_ _arity163129163180_))
                   (let ()
                     (declare (not safe))
                     (cons _hd163134163199_ _prim163130163182_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop163139163211_
                                           _target163136163205_
                                           '()))
                                        (_g163115163150_ _g163116163154_)))))
                              (_g163115163150_ _g163116163154_))))
                      (_g163115163150_ _g163116163154_))))
              (let ((_arity163131163235_ (reverse _arity163129163180_))
                    (_prim163132163238_ (reverse _prim163130163182_)))
                ((lambda (_L163241_ _L163243_)
                   (let ((__tmp164186
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164179
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L163241_
                               _L163243_))
                            (let ((__tmp164180
                                   (lambda (_g163258163264_
                                            _g163259163267_
                                            _g163260163269_)
                                     (let ((__tmp164181
                                            (let ((__tmp164185
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp164182
                                                   (let ((__tmp164183
                                                          (let ((__tmp164184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g163261163272_ _g163262163275_)
                           (let ()
                             (declare (not safe))
                             (cons _g163261163272_ _g163262163275_)))))
                    (declare (not safe))
                    (foldr1 __tmp164184 '() _g163258163264_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g163259163267_
                                                           __tmp164183))))
                                              (declare (not safe))
                                              (cons __tmp164185 __tmp164182))))
                                       (declare (not safe))
                                       (cons __tmp164181 _g163260163269_)))))
                              (declare (not safe))
                              (foldr2 __tmp164180 '() _L163241_ _L163243_)))))
                     (declare (not safe))
                     (cons __tmp164186 __tmp164179)))
                 _arity163131163235_
                 _prim163132163238_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop163125163173_
                                         _target163122163167_
                                         '()
                                         '()))
                                      (_g163115163150_ _g163116163154_)))))
                            (_g163115163150_ _g163116163154_))))
                    (_g163115163150_ _g163116163154_)))))
        (_g163114163278_ _$stx163111_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx163284_)
      (let* ((_g163288163323_
              (lambda (_g163289163319_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g163289163319_))))
             (_g163287163451_
              (lambda (_g163289163327_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g163289163327_))
                    (let ((_e163294163330_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g163289163327_))))
                      (let ((_hd163293163334_
                             (let ()
                               (declare (not safe))
                               (##car _e163294163330_)))
                            (_tl163292163337_
                             (let ()
                               (declare (not safe))
                               (##cdr _e163294163330_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl163292163337_))
                            (let ((_g164189_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl163292163337_
                                      '0))))
                              (begin
                                (let ((_g164190_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164189_)
                                             (##vector-length _g164189_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164190_ 2)))
                                      (error "Context expects 2 values"
                                             _g164190_)))
                                (let ((_target163295163340_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164189_ 0)))
                                      (_tl163297163343_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164189_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl163297163343_))
                                      (letrec ((_loop163298163346_
                                                (lambda (_hd163296163350_
                                                         _arity163302163353_
                                                         _prim163303163355_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd163296163350_))
                                                      (let ((_e163299163358_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd163296163350_))))
                (let ((_lp-hd163300163362_
                       (let () (declare (not safe)) (##car _e163299163358_)))
                      (_lp-tl163301163365_
                       (let () (declare (not safe)) (##cdr _e163299163358_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd163300163362_))
                      (let ((_e163308163368_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd163300163362_))))
                        (let ((_hd163307163372_
                               (let ()
                                 (declare (not safe))
                                 (##car _e163308163368_)))
                              (_tl163306163375_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e163308163368_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl163306163375_))
                              (let ((_g164199_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl163306163375_
                                        '0))))
                                (begin
                                  (let ((_g164200_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g164199_)
                                               (##vector-length _g164199_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g164200_ 2)))
                                        (error "Context expects 2 values"
                                               _g164200_)))
                                  (let ((_target163309163378_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164199_ 0)))
                                        (_tl163311163381_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164199_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163311163381_))
                                        (letrec ((_loop163312163384_
                                                  (lambda (_hd163310163388_
                                                           _arity163316163391_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd163310163388_))
                                                        (let ((_e163313163394_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd163310163388_))))
                  (let ((_lp-hd163314163398_
                         (let () (declare (not safe)) (##car _e163313163394_)))
                        (_lp-tl163315163401_
                         (let ()
                           (declare (not safe))
                           (##cdr _e163313163394_))))
                    (_loop163312163384_
                     _lp-tl163315163401_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd163314163398_ _arity163316163391_)))))
                (let ((_arity163317163404_ (reverse _arity163316163391_)))
                  (_loop163298163346_
                   _lp-tl163301163365_
                   (let ()
                     (declare (not safe))
                     (cons _arity163317163404_ _arity163302163353_))
                   (let ()
                     (declare (not safe))
                     (cons _hd163307163372_ _prim163303163355_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop163312163384_
                                           _target163309163378_
                                           '()))
                                        (_g163288163323_ _g163289163327_)))))
                              (_g163288163323_ _g163289163327_))))
                      (_g163288163323_ _g163289163327_))))
              (let ((_arity163304163408_ (reverse _arity163302163353_))
                    (_prim163305163411_ (reverse _prim163303163355_)))
                ((lambda (_L163414_ _L163416_)
                   (let ((__tmp164198
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164191
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L163414_
                               _L163416_))
                            (let ((__tmp164192
                                   (lambda (_g163431163437_
                                            _g163432163440_
                                            _g163433163442_)
                                     (let ((__tmp164193
                                            (let ((__tmp164197
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp164194
                                                   (let ((__tmp164195
                                                          (let ((__tmp164196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g163434163445_ _g163435163448_)
                           (let ()
                             (declare (not safe))
                             (cons _g163434163445_ _g163435163448_)))))
                    (declare (not safe))
                    (foldr1 __tmp164196 '() _g163431163437_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g163432163440_
                                                           __tmp164195))))
                                              (declare (not safe))
                                              (cons __tmp164197 __tmp164194))))
                                       (declare (not safe))
                                       (cons __tmp164193 _g163433163442_)))))
                              (declare (not safe))
                              (foldr2 __tmp164192 '() _L163414_ _L163416_)))))
                     (declare (not safe))
                     (cons __tmp164198 __tmp164191)))
                 _arity163304163408_
                 _prim163305163411_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop163298163346_
                                         _target163295163340_
                                         '()
                                         '()))
                                      (_g163288163323_ _g163289163327_)))))
                            (_g163288163323_ _g163289163327_))))
                    (_g163288163323_ _g163289163327_)))))
        (_g163287163451_ _$stx163284_)))))
