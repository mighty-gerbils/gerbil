(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx236467_)
      (let* ((_g236471236500_
              (lambda (_g236472236496_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g236472236496_))))
             (_g236470236601_
              (lambda (_g236472236504_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g236472236504_))
                    (let ((_e236477236507_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g236472236504_))))
                      (let ((_hd236476236511_
                             (let ()
                               (declare (not safe))
                               (##car _e236477236507_)))
                            (_tl236475236514_
                             (let ()
                               (declare (not safe))
                               (##cdr _e236477236507_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl236475236514_))
                            (let ((_g251477_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl236475236514_
                                      '0))))
                              (begin
                                (let ((_g251478_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g251477_)
                                             (##vector-length _g251477_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g251478_ 2)))
                                      (error "Context expects 2 values"
                                             _g251478_)))
                                (let ((_target236478236517_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g251477_ 0)))
                                      (_tl236480236520_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g251477_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236480236520_))
                                      (letrec ((_loop236481236523_
                                                (lambda (_hd236479236527_
                                                         _type-e236485236530_
                                                         _id236486236532_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd236479236527_))
                                                      (let ((_e236482236535_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd236479236527_))))
                (let ((_lp-hd236483236539_
                       (let () (declare (not safe)) (##car _e236482236535_)))
                      (_lp-tl236484236542_
                       (let () (declare (not safe)) (##cdr _e236482236535_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd236483236539_))
                      (let ((_e236491236545_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd236483236539_))))
                        (let ((_hd236490236549_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236491236545_)))
                              (_tl236489236552_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236491236545_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236489236552_))
                              (let ((_e236494236555_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl236489236552_))))
                                (let ((_hd236493236559_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236494236555_)))
                                      (_tl236492236562_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236494236555_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236492236562_))
                                      (_loop236481236523_
                                       _lp-tl236484236542_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd236493236559_
                                               _type-e236485236530_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd236490236549_
                                               _id236486236532_)))
                                      (_g236471236500_ _g236472236504_))))
                              (_g236471236500_ _g236472236504_))))
                      (_g236471236500_ _g236472236504_))))
              (let ((_type-e236487236565_ (reverse _type-e236485236530_))
                    (_id236488236568_ (reverse _id236486236532_)))
                ((lambda (_L236571_ _L236573_)
                   (let ((__tmp251490
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp251479
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L236571_
                               _L236573_))
                            (let ((__tmp251480
                                   (lambda (_g236589236593_
                                            _g236590236596_
                                            _g236591236598_)
                                     (let ((__tmp251481
                                            (let ((__tmp251489
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp251482
                                                   (let ((__tmp251488
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp251483
                                                          (let ((__tmp251485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp251487
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp251486
                                (let ()
                                  (declare (not safe))
                                  (cons _g236590236596_ '()))))
                           (declare (not safe))
                           (cons __tmp251487 __tmp251486)))
                        (__tmp251484
                         (let ()
                           (declare (not safe))
                           (cons _g236589236593_ '()))))
                    (declare (not safe))
                    (cons __tmp251485 __tmp251484))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp251488
                                                           __tmp251483))))
                                              (declare (not safe))
                                              (cons __tmp251489 __tmp251482))))
                                       (declare (not safe))
                                       (cons __tmp251481 _g236591236598_)))))
                              (declare (not safe))
                              (foldr2 __tmp251480 '() _L236571_ _L236573_)))))
                     (declare (not safe))
                     (cons __tmp251490 __tmp251479)))
                 _type-e236487236565_
                 _id236488236568_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop236481236523_
                                         _target236478236517_
                                         '()
                                         '()))
                                      (_g236471236500_ _g236472236504_)))))
                            (_g236471236500_ _g236472236504_))))
                    (_g236471236500_ _g236472236504_)))))
        (_g236470236601_ _$stx236467_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx236606_)
      (let* ((_g236610236639_
              (lambda (_g236611236635_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g236611236635_))))
             (_g236609236739_
              (lambda (_g236611236643_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g236611236643_))
                    (let ((_e236616236646_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g236611236643_))))
                      (let ((_hd236615236650_
                             (let ()
                               (declare (not safe))
                               (##car _e236616236646_)))
                            (_tl236614236653_
                             (let ()
                               (declare (not safe))
                               (##cdr _e236616236646_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl236614236653_))
                            (let ((_g251491_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl236614236653_
                                      '0))))
                              (begin
                                (let ((_g251492_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g251491_)
                                             (##vector-length _g251491_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g251492_ 2)))
                                      (error "Context expects 2 values"
                                             _g251492_)))
                                (let ((_target236617236656_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g251491_ 0)))
                                      (_tl236619236659_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g251491_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236619236659_))
                                      (letrec ((_loop236620236662_
                                                (lambda (_hd236618236666_
                                                         _type-e236624236669_
                                                         _id236625236671_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd236618236666_))
                                                      (let ((_e236621236674_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd236618236666_))))
                (let ((_lp-hd236622236678_
                       (let () (declare (not safe)) (##car _e236621236674_)))
                      (_lp-tl236623236681_
                       (let () (declare (not safe)) (##cdr _e236621236674_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd236622236678_))
                      (let ((_e236630236684_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd236622236678_))))
                        (let ((_hd236629236688_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236630236684_)))
                              (_tl236628236691_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236630236684_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl236628236691_))
                              (let ((_e236633236694_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl236628236691_))))
                                (let ((_hd236632236698_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e236633236694_)))
                                      (_tl236631236701_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e236633236694_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl236631236701_))
                                      (_loop236620236662_
                                       _lp-tl236623236681_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd236632236698_
                                               _type-e236624236669_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd236629236688_
                                               _id236625236671_)))
                                      (_g236610236639_ _g236611236643_))))
                              (_g236610236639_ _g236611236643_))))
                      (_g236610236639_ _g236611236643_))))
              (let ((_type-e236626236704_ (reverse _type-e236624236669_))
                    (_id236627236707_ (reverse _id236625236671_)))
                ((lambda (_L236710_ _L236712_)
                   (let ((__tmp251504
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp251493
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L236710_
                               _L236712_))
                            (let ((__tmp251494
                                   (lambda (_g236727236731_
                                            _g236728236734_
                                            _g236729236736_)
                                     (let ((__tmp251495
                                            (let ((__tmp251503
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp251496
                                                   (let ((__tmp251502
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp251497
                                                          (let ((__tmp251499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp251501
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp251500
                                (let ()
                                  (declare (not safe))
                                  (cons _g236728236734_ '()))))
                           (declare (not safe))
                           (cons __tmp251501 __tmp251500)))
                        (__tmp251498
                         (let ()
                           (declare (not safe))
                           (cons _g236727236731_ '()))))
                    (declare (not safe))
                    (cons __tmp251499 __tmp251498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp251502
                                                           __tmp251497))))
                                              (declare (not safe))
                                              (cons __tmp251503 __tmp251496))))
                                       (declare (not safe))
                                       (cons __tmp251495 _g236729236736_)))))
                              (declare (not safe))
                              (foldr2 __tmp251494 '() _L236710_ _L236712_)))))
                     (declare (not safe))
                     (cons __tmp251504 __tmp251493)))
                 _type-e236626236704_
                 _id236627236707_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop236620236662_
                                         _target236617236656_
                                         '()
                                         '()))
                                      (_g236610236639_ _g236611236643_)))))
                            (_g236610236639_ _g236611236643_))))
                    (_g236610236639_ _g236611236643_)))))
        (_g236609236739_ _$stx236606_)))))
