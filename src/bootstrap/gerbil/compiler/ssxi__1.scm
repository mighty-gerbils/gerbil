(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx73389_)
      (let* ((_g7339373411_
              (lambda (_g7339473407_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7339473407_))))
             (_g7339273466_
              (lambda (_g7339473415_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7339473415_))
                    (let ((_e7339973418_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7339473415_))))
                      (let ((_hd7339873422_
                             (let ()
                               (declare (not safe))
                               (##car _e7339973418_)))
                            (_tl7339773425_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7339973418_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7339773425_))
                            (let ((_e7340273428_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7339773425_))))
                              (let ((_hd7340173432_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7340273428_)))
                                    (_tl7340073435_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7340273428_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7340073435_))
                                    (let ((_e7340573438_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7340073435_))))
                                      (let ((_hd7340473442_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7340573438_)))
                                            (_tl7340373445_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7340573438_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7340373445_))
                                            ((lambda (_L73448_ _L73450_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier? _L73450_))
                                                   (let ((__tmp78473
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp78468
                                                          (let ((__tmp78470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp78472
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp78471
                                (let ()
                                  (declare (not safe))
                                  (cons _L73450_ '()))))
                           (declare (not safe))
                           (cons __tmp78472 __tmp78471)))
                        (__tmp78469
                         (let () (declare (not safe)) (cons _L73448_ '()))))
                    (declare (not safe))
                    (cons __tmp78470 __tmp78469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp78473
                                                           __tmp78468))
                                                   (_g7339373411_
                                                    _g7339473415_)))
                                             _hd7340473442_
                                             _hd7340173432_)
                                            (_g7339373411_ _g7339473415_))))
                                    (_g7339373411_ _g7339473415_))))
                            (_g7339373411_ _g7339473415_))))
                    (_g7339373411_ _g7339473415_)))))
        (_g7339273466_ _$stx73389_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx73470_)
      (let* ((_g7347473503_
              (lambda (_g7347573499_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7347573499_))))
             (_g7347373603_
              (lambda (_g7347573507_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7347573507_))
                    (let ((_e7348073510_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7347573507_))))
                      (let ((_hd7347973514_
                             (let ()
                               (declare (not safe))
                               (##car _e7348073510_)))
                            (_tl7347873517_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7348073510_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7347873517_))
                            (let ((_g78474_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7347873517_
                                      '0))))
                              (begin
                                (let ((_g78475_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g78474_)
                                             (##vector-length _g78474_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g78475_ 2)))
                                      (error "Context expects 2 values"
                                             _g78475_)))
                                (let ((_target7348173520_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g78474_ 0)))
                                      (_tl7348373523_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g78474_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7348373523_))
                                      (letrec ((_loop7348473526_
                                                (lambda (_hd7348273530_
                                                         _type7348873533_
                                                         _symbol7348973535_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7348273530_))
                                                      (let ((_e7348573538_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7348273530_))))
                (let ((_lp-hd7348673542_
                       (let () (declare (not safe)) (##car _e7348573538_)))
                      (_lp-tl7348773545_
                       (let () (declare (not safe)) (##cdr _e7348573538_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7348673542_))
                      (let ((_e7349473548_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7348673542_))))
                        (let ((_hd7349373552_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7349473548_)))
                              (_tl7349273555_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7349473548_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7349273555_))
                              (let ((_e7349773558_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7349273555_))))
                                (let ((_hd7349673562_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7349773558_)))
                                      (_tl7349573565_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7349773558_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7349573565_))
                                      (_loop7348473526_
                                       _lp-tl7348773545_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd7349673562_
                                               _type7348873533_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd7349373552_
                                               _symbol7348973535_)))
                                      (_g7347473503_ _g7347573507_))))
                              (_g7347473503_ _g7347573507_))))
                      (_g7347473503_ _g7347573507_))))
              (let ((_type7349073568_ (reverse _type7348873533_))
                    (_symbol7349173571_ (reverse _symbol7348973535_)))
                ((lambda (_L73574_ _L73576_)
                   (let ((__tmp78482
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp78476
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L73574_
                               _L73576_))
                            (let ((__tmp78477
                                   (lambda (_g7359173595_
                                            _g7359273598_
                                            _g7359373600_)
                                     (let ((__tmp78478
                                            (let ((__tmp78481
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp78479
                                                   (let ((__tmp78480
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g7359173595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7359273598_
                                                           __tmp78480))))
                                              (declare (not safe))
                                              (cons __tmp78481 __tmp78479))))
                                       (declare (not safe))
                                       (cons __tmp78478 _g7359373600_)))))
                              (declare (not safe))
                              (foldr2 __tmp78477 '() _L73574_ _L73576_)))))
                     (declare (not safe))
                     (cons __tmp78482 __tmp78476)))
                 _type7349073568_
                 _symbol7349173571_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7348473526_
                                         _target7348173520_
                                         '()
                                         '()))
                                      (_g7347473503_ _g7347573507_)))))
                            (_g7347473503_ _g7347573507_))))
                    (_g7347473503_ _g7347573507_)))))
        (_g7347373603_ _$stx73470_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx73608_)
      (let* ((___stx7760977610_ _$stx73608_)
             (_g7361373655_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7760977610_)))))
        (let ((___kont7761277613_
               (lambda (_L73783_ _L73785_ _L73786_ _L73787_)
                 (let ((__tmp78496
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp78483
                        (let ((__tmp78493
                               (let ((__tmp78495
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp78494
                                      (let ()
                                        (declare (not safe))
                                        (cons _L73787_ '()))))
                                 (declare (not safe))
                                 (cons __tmp78495 __tmp78494)))
                              (__tmp78484
                               (let ((__tmp78490
                                      (let ((__tmp78492
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp78491
                                             (let ()
                                               (declare (not safe))
                                               (cons _L73786_ '()))))
                                        (declare (not safe))
                                        (cons __tmp78492 __tmp78491)))
                                     (__tmp78485
                                      (let ((__tmp78487
                                             (let ((__tmp78489
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp78488
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L73785_ '()))))
                                               (declare (not safe))
                                               (cons __tmp78489 __tmp78488)))
                                            (__tmp78486
                                             (let ()
                                               (declare (not safe))
                                               (cons _L73783_ '()))))
                                        (declare (not safe))
                                        (cons __tmp78487 __tmp78486))))
                                 (declare (not safe))
                                 (cons __tmp78490 __tmp78485))))
                          (declare (not safe))
                          (cons __tmp78493 __tmp78484))))
                   (declare (not safe))
                   (cons __tmp78496 __tmp78483))))
              (___kont7761477615_
               (lambda (_L73702_ _L73704_ _L73705_ _L73706_)
                 (let ((__tmp78497
                        (let ((__tmp78498
                               (let ((__tmp78499
                                      (let ((__tmp78500
                                             (let ((__tmp78501
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp78501 '()))))
                                        (declare (not safe))
                                        (cons _L73702_ __tmp78500))))
                                 (declare (not safe))
                                 (cons _L73704_ __tmp78499))))
                          (declare (not safe))
                          (cons _L73705_ __tmp78498))))
                   (declare (not safe))
                   (cons _L73706_ __tmp78497)))))
          (let ((___match7764877649_
                 (lambda (_e7362173733_
                          _hd7362073737_
                          _tl7361973740_
                          _e7362473743_
                          _hd7362373747_
                          _tl7362273750_
                          _e7362773753_
                          _hd7362673757_
                          _tl7362573760_
                          _e7363073763_
                          _hd7362973767_
                          _tl7362873770_
                          _e7363373773_
                          _hd7363273777_
                          _tl7363173780_)
                   (let ((_L73783_ _hd7363273777_)
                         (_L73785_ _hd7362973767_)
                         (_L73786_ _hd7362673757_)
                         (_L73787_ _hd7362373747_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L73787_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L73786_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L73785_)))
                         (___kont7761277613_
                          _L73783_
                          _L73785_
                          _L73786_
                          _L73787_)
                         (let () (declare (not safe)) (_g7361373655_)))))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7760977610_))
                (let ((_e7362173733_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7760977610_))))
                  (let ((_tl7361973740_
                         (let () (declare (not safe)) (##cdr _e7362173733_)))
                        (_hd7362073737_
                         (let () (declare (not safe)) (##car _e7362173733_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7361973740_))
                        (let ((_e7362473743_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7361973740_))))
                          (let ((_tl7362273750_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7362473743_)))
                                (_hd7362373747_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7362473743_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7362273750_))
                                (let ((_e7362773753_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7362273750_))))
                                  (let ((_tl7362573760_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7362773753_)))
                                        (_hd7362673757_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7362773753_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl7362573760_))
                                        (let ((_e7363073763_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl7362573760_))))
                                          (let ((_tl7362873770_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7363073763_)))
                                                (_hd7362973767_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7363073763_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7362873770_))
                                                (let ((_e7363373773_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7362873770_))))
                                                  (let ((_tl7363173780_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7363373773_)))
                                                        (_hd7363273777_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7363373773_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7363173780_))
                                                        (___match7764877649_
                                                         _e7362173733_
                                                         _hd7362073737_
                                                         _tl7361973740_
                                                         _e7362473743_
                                                         _hd7362373747_
                                                         _tl7362273750_
                                                         _e7362773753_
                                                         _hd7362673757_
                                                         _tl7362573760_
                                                         _e7363073763_
                                                         _hd7362973767_
                                                         _tl7362873770_
                                                         _e7363373773_
                                                         _hd7363273777_
                                                         _tl7363173780_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7361373655_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7362873770_))
                                                    (___kont7761477615_
                                                     _hd7362973767_
                                                     _hd7362673757_
                                                     _hd7362373747_
                                                     _hd7362073737_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7361373655_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g7361373655_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g7361373655_)))))
                        (let () (declare (not safe)) (_g7361373655_)))))
                (let () (declare (not safe)) (_g7361373655_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx73812_)
      (let* ((_g7381673851_
              (lambda (_g7381773847_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7381773847_))))
             (_g7381573970_
              (lambda (_g7381773855_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7381773855_))
                    (let ((_e7382373858_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7381773855_))))
                      (let ((_hd7382273862_
                             (let ()
                               (declare (not safe))
                               (##car _e7382373858_)))
                            (_tl7382173865_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7382373858_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7382173865_))
                            (let ((_g78502_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7382173865_
                                      '0))))
                              (begin
                                (let ((_g78503_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g78502_)
                                             (##vector-length _g78502_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g78503_ 2)))
                                      (error "Context expects 2 values"
                                             _g78503_)))
                                (let ((_target7382473868_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g78502_ 0)))
                                      (_tl7382673871_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g78502_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7382673871_))
                                      (letrec ((_loop7382773874_
                                                (lambda (_hd7382573878_
                                                         _symbol7383173881_
                                                         _method7383273883_
                                                         _type-t7383373885_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7382573878_))
                                                      (let ((_e7382873888_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7382573878_))))
                (let ((_lp-hd7382973892_
                       (let () (declare (not safe)) (##car _e7382873888_)))
                      (_lp-tl7383073895_
                       (let () (declare (not safe)) (##cdr _e7382873888_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7382973892_))
                      (let ((_e7383973898_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7382973892_))))
                        (let ((_hd7383873902_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7383973898_)))
                              (_tl7383773905_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7383973898_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7383773905_))
                              (let ((_e7384273908_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7383773905_))))
                                (let ((_hd7384173912_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7384273908_)))
                                      (_tl7384073915_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7384273908_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7384073915_))
                                      (let ((_e7384573918_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7384073915_))))
                                        (let ((_hd7384473922_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7384573918_)))
                                              (_tl7384373925_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7384573918_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7384373925_))
                                              (_loop7382773874_
                                               _lp-tl7383073895_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7384473922_
                                                       _symbol7383173881_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7384173912_
                                                       _method7383273883_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7383873902_
                                                       _type-t7383373885_)))
                                              (_g7381673851_ _g7381773855_))))
                                      (_g7381673851_ _g7381773855_))))
                              (_g7381673851_ _g7381773855_))))
                      (_g7381673851_ _g7381773855_))))
              (let ((_symbol7383473928_ (reverse _symbol7383173881_))
                    (_method7383573931_ (reverse _method7383273883_))
                    (_type-t7383673933_ (reverse _type-t7383373885_)))
                ((lambda (_L73936_ _L73938_ _L73939_)
                   (let ((__tmp78511
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp78504
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L73936_
                               _L73938_
                               _L73939_))
                            (let ((__tmp78505
                                   (lambda (_g7395573960_
                                            _g7395673963_
                                            _g7395773965_
                                            _g7395873967_)
                                     (let ((__tmp78506
                                            (let ((__tmp78510
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp78507
                                                   (let ((__tmp78508
                                                          (let ((__tmp78509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g7395573960_ '()))))
                    (declare (not safe))
                    (cons _g7395673963_ __tmp78509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7395773965_
                                                           __tmp78508))))
                                              (declare (not safe))
                                              (cons __tmp78510 __tmp78507))))
                                       (declare (not safe))
                                       (cons __tmp78506 _g7395873967_)))))
                              (declare (not safe))
                              (foldr* __tmp78505
                                      '()
                                      _L73936_
                                      _L73938_
                                      _L73939_)))))
                     (declare (not safe))
                     (cons __tmp78511 __tmp78504)))
                 _symbol7383473928_
                 _method7383573931_
                 _type-t7383673933_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7382773874_
                                         _target7382473868_
                                         '()
                                         '()
                                         '()))
                                      (_g7381673851_ _g7381773855_)))))
                            (_g7381673851_ _g7381773855_))))
                    (_g7381673851_ _g7381773855_)))))
        (_g7381573970_ _$stx73812_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx73975_)
      (let* ((_g7397974012_
              (lambda (_g7398074008_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7398074008_))))
             (_g7397874126_
              (lambda (_g7398074016_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7398074016_))
                    (let ((_e7398674019_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7398074016_))))
                      (let ((_hd7398574023_
                             (let ()
                               (declare (not safe))
                               (##car _e7398674019_)))
                            (_tl7398474026_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7398674019_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7398474026_))
                            (let ((_e7398974029_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7398474026_))))
                              (let ((_hd7398874033_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7398974029_)))
                                    (_tl7398774036_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7398974029_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7398774036_))
                                    (let ((_g78512_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7398774036_
                                              '0))))
                                      (begin
                                        (let ((_g78513_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g78512_)
                                                     (##vector-length _g78512_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g78513_ 2)))
                                              (error "Context expects 2 values"
                                                     _g78513_)))
                                        (let ((_target7399074039_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g78512_ 0)))
                                              (_tl7399274042_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g78512_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7399274042_))
                                              (letrec ((_loop7399374045_
                                                        (lambda (_hd7399174049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol7399774052_
                         _method7399874054_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd7399174049_))
                      (let ((_e7399474057_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd7399174049_))))
                        (let ((_lp-hd7399574061_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7399474057_)))
                              (_lp-tl7399674064_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7399474057_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd7399574061_))
                              (let ((_e7400374067_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd7399574061_))))
                                (let ((_hd7400274071_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7400374067_)))
                                      (_tl7400174074_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7400374067_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7400174074_))
                                      (let ((_e7400674077_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7400174074_))))
                                        (let ((_hd7400574081_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7400674077_)))
                                              (_tl7400474084_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7400674077_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7400474084_))
                                              (_loop7399374045_
                                               _lp-tl7399674064_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7400574081_
                                                       _symbol7399774052_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7400274071_
                                                       _method7399874054_)))
                                              (_g7397974012_ _g7398074016_))))
                                      (_g7397974012_ _g7398074016_))))
                              (_g7397974012_ _g7398074016_))))
                      (let ((_symbol7399974087_ (reverse _symbol7399774052_))
                            (_method7400074090_ (reverse _method7399874054_)))
                        ((lambda (_L74093_ _L74095_ _L74096_)
                           (let ((__tmp78521
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp78514
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L74093_
                                       _L74095_))
                                    (let ((__tmp78515
                                           (lambda (_g7411474118_
                                                    _g7411574121_
                                                    _g7411674123_)
                                             (let ((__tmp78516
                                                    (let ((__tmp78520
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp78517
                                                           (let ((__tmp78518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp78519
                                 (let ()
                                   (declare (not safe))
                                   (cons _g7411474118_ '()))))
                            (declare (not safe))
                            (cons _g7411574121_ __tmp78519))))
                     (declare (not safe))
                     (cons _L74096_ __tmp78518))))
              (declare (not safe))
              (cons __tmp78520 __tmp78517))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp78516
                                                     _g7411674123_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp78515
                                              '()
                                              _L74093_
                                              _L74095_)))))
                             (declare (not safe))
                             (cons __tmp78521 __tmp78514)))
                         _symbol7399974087_
                         _method7400074090_
                         _hd7398874033_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7399374045_
                                                 _target7399074039_
                                                 '()
                                                 '()))
                                              (_g7397974012_ _g7398074016_)))))
                                    (_g7397974012_ _g7398074016_))))
                            (_g7397974012_ _g7398074016_))))
                    (_g7397974012_ _g7398074016_)))))
        (_g7397874126_ _$stx73975_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx74131_)
      (let* ((_g7413574149_
              (lambda (_g7413674145_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7413674145_))))
             (_g7413474190_
              (lambda (_g7413674153_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7413674153_))
                    (let ((_e7414074156_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7413674153_))))
                      (let ((_hd7413974160_
                             (let ()
                               (declare (not safe))
                               (##car _e7414074156_)))
                            (_tl7413874163_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7414074156_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7413874163_))
                            (let ((_e7414374166_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7413874163_))))
                              (let ((_hd7414274170_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7414374166_)))
                                    (_tl7414174173_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7414374166_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7414174173_))
                                    ((lambda (_L74176_)
                                       (let ((__tmp78526
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp78522
                                              (let ((__tmp78523
                                                     (let ((__tmp78525
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp78524
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L74176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp78525 __tmp78524))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78523 '()))))
                                         (declare (not safe))
                                         (cons __tmp78526 __tmp78522)))
                                     _hd7414274170_)
                                    (_g7413574149_ _g7413674153_))))
                            (_g7413574149_ _g7413674153_))))
                    (_g7413574149_ _g7413674153_)))))
        (_g7413474190_ _$stx74131_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx74194_)
      (let* ((___stx7767777678_ _$stx74194_)
             (_g7420074266_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7767777678_)))))
        (let ((___kont7768077681_
               (lambda (_L74488_ _L74490_ _L74491_ _L74492_ _L74493_)
                 (let ((__tmp78532
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f '@make-struct-type)))
                       (__tmp78527
                        (let ((__tmp78528
                               (let ((__tmp78529
                                      (let ((__tmp78530
                                             (let ((__tmp78531
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L74488_ '()))))
                                               (declare (not safe))
                                               (cons _L74490_ __tmp78531))))
                                        (declare (not safe))
                                        (cons _L74491_ __tmp78530))))
                                 (declare (not safe))
                                 (cons _L74492_ __tmp78529))))
                          (declare (not safe))
                          (cons _L74493_ __tmp78528))))
                   (declare (not safe))
                   (cons __tmp78532 __tmp78527))))
              (___kont7768277683_
               (lambda (_L74398_ _L74400_ _L74401_ _L74402_)
                 (let ((__tmp78533
                        (let ((__tmp78534
                               (let ((__tmp78535
                                      (let ((__tmp78536
                                             (let ((__tmp78537
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons '#f __tmp78537))))
                                        (declare (not safe))
                                        (cons _L74398_ __tmp78536))))
                                 (declare (not safe))
                                 (cons _L74400_ __tmp78535))))
                          (declare (not safe))
                          (cons _L74401_ __tmp78534))))
                   (declare (not safe))
                   (cons _L74402_ __tmp78533))))
              (___kont7768477685_
               (lambda (_L74323_ _L74325_ _L74326_ _L74327_ _L74328_)
                 (let ((__tmp78538
                        (let ((__tmp78543
                               (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'type)))
                              (__tmp78539
                               (let ((__tmp78540
                                      (let ((__tmp78541
                                             (let ((__tmp78542
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons _L74323_ __tmp78542))))
                                        (declare (not safe))
                                        (cons _L74325_ __tmp78541))))
                                 (declare (not safe))
                                 (cons _L74326_ __tmp78540))))
                          (declare (not safe))
                          (cons __tmp78543 __tmp78539))))
                   (declare (not safe))
                   (cons _L74328_ __tmp78538)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7767777678_))
              (let ((_e7420974428_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7767777678_))))
                (let ((_tl7420774435_
                       (let () (declare (not safe)) (##cdr _e7420974428_)))
                      (_hd7420874432_
                       (let () (declare (not safe)) (##car _e7420974428_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7420774435_))
                      (let ((_e7421274438_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7420774435_))))
                        (let ((_tl7421074445_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7421274438_)))
                              (_hd7421174442_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7421274438_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7421074445_))
                              (let ((_e7421574448_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7421074445_))))
                                (let ((_tl7421374455_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7421574448_)))
                                      (_hd7421474452_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7421574448_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7421374455_))
                                      (let ((_e7421874458_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7421374455_))))
                                        (let ((_tl7421674465_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7421874458_)))
                                              (_hd7421774462_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7421874458_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl7421674465_))
                                              (let ((_e7422174468_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl7421674465_))))
                                                (let ((_tl7421974475_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e7422174468_)))
                                                      (_hd7422074472_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e7422174468_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl7421974475_))
                                                      (let ((_e7422474478_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _tl7421974475_))))
                (let ((_tl7422274485_
                       (let () (declare (not safe)) (##cdr _e7422474478_)))
                      (_hd7422374482_
                       (let () (declare (not safe)) (##car _e7422474478_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7422274485_))
                      (___kont7768077681_
                       _hd7422374482_
                       _hd7422074472_
                       _hd7421774462_
                       _hd7421474452_
                       _hd7421174442_)
                      (let () (declare (not safe)) (_g7420074266_)))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7421974475_))
                  (___kont7768477685_
                   _hd7422074472_
                   _hd7421774462_
                   _hd7421474452_
                   _hd7421174442_
                   _hd7420874432_)
                  (let () (declare (not safe)) (_g7420074266_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7421674465_))
                                                  (___kont7768277683_
                                                   _hd7421774462_
                                                   _hd7421474452_
                                                   _hd7421174442_
                                                   _hd7420874432_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7420074266_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g7420074266_)))))
                              (let () (declare (not safe)) (_g7420074266_)))))
                      (let () (declare (not safe)) (_g7420074266_)))))
              (let () (declare (not safe)) (_g7420074266_)))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx74521_)
      (let* ((___stx7778577786_ _$stx74521_)
             (_g7452674579_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7778577786_)))))
        (let ((___kont7778877789_
               (lambda (_L74747_ _L74749_ _L74750_ _L74751_)
                 (let ((__tmp78559
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-type)))
                       (__tmp78544
                        (let ((__tmp78556
                               (let ((__tmp78558
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp78557
                                      (let ()
                                        (declare (not safe))
                                        (cons _L74751_ '()))))
                                 (declare (not safe))
                                 (cons __tmp78558 __tmp78557)))
                              (__tmp78545
                               (let ((__tmp78546
                                      (let ((__tmp78547
                                             (let ((__tmp78548
                                                    (let ((__tmp78553
                                                           (let ((__tmp78555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp78554
                          (let () (declare (not safe)) (cons _L74749_ '()))))
                     (declare (not safe))
                     (cons __tmp78555 __tmp78554)))
                  (__tmp78549
                   (let ((__tmp78550
                          (let ((__tmp78552
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp78551
                                 (let ()
                                   (declare (not safe))
                                   (cons _L74747_ '()))))
                            (declare (not safe))
                            (cons __tmp78552 __tmp78551))))
                     (declare (not safe))
                     (cons __tmp78550 '()))))
              (declare (not safe))
              (cons __tmp78553 __tmp78549))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '0 __tmp78548))))
                                        (declare (not safe))
                                        (cons _L74750_ __tmp78547))))
                                 (declare (not safe))
                                 (cons '#f __tmp78546))))
                          (declare (not safe))
                          (cons __tmp78556 __tmp78545))))
                   (declare (not safe))
                   (cons __tmp78559 __tmp78544))))
              (___kont7779077791_
               (lambda (_L74646_ _L74648_ _L74649_ _L74650_ _L74651_)
                 (let ((__tmp78641
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'let*)))
                       (__tmp78560
                        (let ((__tmp78581
                               (let ((__tmp78632
                                      (let ((__tmp78640
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'super-type)))
                                            (__tmp78633
                                             (let ((__tmp78634
                                                    (let ((__tmp78639
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-resolve-type)))
                                                          (__tmp78635
                                                           (let ((__tmp78636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp78638
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp78637
                                 (let ()
                                   (declare (not safe))
                                   (cons _L74650_ '()))))
                            (declare (not safe))
                            (cons __tmp78638 __tmp78637))))
                     (declare (not safe))
                     (cons __tmp78636 '()))))
              (declare (not safe))
              (cons __tmp78639 __tmp78635))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp78634 '()))))
                                        (declare (not safe))
                                        (cons __tmp78640 __tmp78633)))
                                     (__tmp78582
                                      (let ((__tmp78604
                                             (let ((__tmp78631
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'xfields)))
                                                   (__tmp78605
                                                    (let ((__tmp78606
                                                           (let ((__tmp78630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'and)))
                         (__tmp78607
                          (let ((__tmp78629
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'super-type)))
                                (__tmp78608
                                 (let ((__tmp78609
                                        (let ((__tmp78628
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'alet)))
                                              (__tmp78610
                                               (let ((__tmp78621
                                                      (let ((__tmp78627
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'xfields)))
                    (__tmp78622
                     (let ((__tmp78623
                            (let ((__tmp78626
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-xfields)))
                                  (__tmp78624
                                   (let ((__tmp78625
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp78625 '()))))
                              (declare (not safe))
                              (cons __tmp78626 __tmp78624))))
                       (declare (not safe))
                       (cons __tmp78623 '()))))
                (declare (not safe))
                (cons __tmp78627 __tmp78622)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp78611
                                                      (let ((__tmp78612
                                                             (let ((__tmp78620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'fx+)))
                           (__tmp78613
                            (let ((__tmp78619
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'xfields)))
                                  (__tmp78614
                                   (let ((__tmp78615
                                          (let ((__tmp78618
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '!struct-type-fields)))
                                                (__tmp78616
                                                 (let ((__tmp78617
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'super-type))))
                                                   (declare (not safe))
                                                   (cons __tmp78617 '()))))
                                            (declare (not safe))
                                            (cons __tmp78618 __tmp78616))))
                                     (declare (not safe))
                                     (cons __tmp78615 '()))))
                              (declare (not safe))
                              (cons __tmp78619 __tmp78614))))
                       (declare (not safe))
                       (cons __tmp78620 __tmp78613))))
                (declare (not safe))
                (cons __tmp78612 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp78621
                                                       __tmp78611))))
                                          (declare (not safe))
                                          (cons __tmp78628 __tmp78610))))
                                   (declare (not safe))
                                   (cons __tmp78609 '()))))
                            (declare (not safe))
                            (cons __tmp78629 __tmp78608))))
                     (declare (not safe))
                     (cons __tmp78630 __tmp78607))))
              (declare (not safe))
              (cons __tmp78606 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp78631 __tmp78605)))
                                            (__tmp78583
                                             (let ((__tmp78584
                                                    (let ((__tmp78603
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'xtor)))
                                                          (__tmp78585
                                                           (let ((__tmp78586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp78602
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'or)))
                                (__tmp78587
                                 (let ((__tmp78599
                                        (let ((__tmp78601
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp78600
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L74648_ '()))))
                                          (declare (not safe))
                                          (cons __tmp78601 __tmp78600)))
                                       (__tmp78588
                                        (let ((__tmp78589
                                               (let ((__tmp78598
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'if)))
                                                     (__tmp78590
                                                      (let ((__tmp78597
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'super-type)))
                    (__tmp78591
                     (let ((__tmp78593
                            (let ((__tmp78596
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-ctor)))
                                  (__tmp78594
                                   (let ((__tmp78595
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp78595 '()))))
                              (declare (not safe))
                              (cons __tmp78596 __tmp78594)))
                           (__tmp78592
                            (let () (declare (not safe)) (cons '#!void '()))))
                       (declare (not safe))
                       (cons __tmp78593 __tmp78592))))
                (declare (not safe))
                (cons __tmp78597 __tmp78591))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp78598
                                                       __tmp78590))))
                                          (declare (not safe))
                                          (cons __tmp78589 '()))))
                                   (declare (not safe))
                                   (cons __tmp78599 __tmp78588))))
                            (declare (not safe))
                            (cons __tmp78602 __tmp78587))))
                     (declare (not safe))
                     (cons __tmp78586 '()))))
              (declare (not safe))
              (cons __tmp78603 __tmp78585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp78584 '()))))
                                        (declare (not safe))
                                        (cons __tmp78604 __tmp78583))))
                                 (declare (not safe))
                                 (cons __tmp78632 __tmp78582)))
                              (__tmp78561
                               (let ((__tmp78562
                                      (let ((__tmp78580
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!struct-type)))
                                            (__tmp78563
                                             (let ((__tmp78577
                                                    (let ((__tmp78579
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp78578
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L74651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp78579 __tmp78578)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp78564
                                                    (let ((__tmp78574
                                                           (let ((__tmp78576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp78575
                          (let () (declare (not safe)) (cons _L74650_ '()))))
                     (declare (not safe))
                     (cons __tmp78576 __tmp78575)))
                  (__tmp78565
                   (let ((__tmp78566
                          (let ((__tmp78573
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'xfields)))
                                (__tmp78567
                                 (let ((__tmp78572
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'xtor)))
                                       (__tmp78568
                                        (let ((__tmp78569
                                               (let ((__tmp78571
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'quote)))
                                                     (__tmp78570
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L74646_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp78571
                                                       __tmp78570))))
                                          (declare (not safe))
                                          (cons __tmp78569 '()))))
                                   (declare (not safe))
                                   (cons __tmp78572 __tmp78568))))
                            (declare (not safe))
                            (cons __tmp78573 __tmp78567))))
                     (declare (not safe))
                     (cons _L74649_ __tmp78566))))
              (declare (not safe))
              (cons __tmp78574 __tmp78565))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp78577 __tmp78564))))
                                        (declare (not safe))
                                        (cons __tmp78580 __tmp78563))))
                                 (declare (not safe))
                                 (cons __tmp78562 '()))))
                          (declare (not safe))
                          (cons __tmp78581 __tmp78561))))
                   (declare (not safe))
                   (cons __tmp78641 __tmp78560)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7778577786_))
              (let ((_e7453474683_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7778577786_))))
                (let ((_tl7453274690_
                       (let () (declare (not safe)) (##cdr _e7453474683_)))
                      (_hd7453374687_
                       (let () (declare (not safe)) (##car _e7453474683_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7453274690_))
                      (let ((_e7453774693_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7453274690_))))
                        (let ((_tl7453574700_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7453774693_)))
                              (_hd7453674697_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7453774693_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7453574700_))
                              (let ((_e7454074703_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7453574700_))))
                                (let ((_tl7453874710_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7454074703_)))
                                      (_hd7453974707_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7454074703_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd7453974707_))
                                      (let ((_e7454174713_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd7453974707_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e7454174713_ '#f))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7453874710_))
                                                (let ((_e7454474717_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7453874710_))))
                                                  (let ((_tl7454274724_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7454474717_)))
                                                        (_hd7454374721_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7454474717_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7454274724_))
                                                        (let ((_e7454774727_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7454274724_))))
                  (let ((_tl7454574734_
                         (let () (declare (not safe)) (##cdr _e7454774727_)))
                        (_hd7454674731_
                         (let () (declare (not safe)) (##car _e7454774727_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7454574734_))
                        (let ((_e7455074737_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7454574734_))))
                          (let ((_tl7454874744_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7455074737_)))
                                (_hd7454974741_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7455074737_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7454874744_))
                                (___kont7778877789_
                                 _hd7454974741_
                                 _hd7454674731_
                                 _hd7454374721_
                                 _hd7453674697_)
                                (let ()
                                  (declare (not safe))
                                  (_g7452674579_)))))
                        (let () (declare (not safe)) (_g7452674579_)))))
                (let () (declare (not safe)) (_g7452674579_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7452674579_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7453874710_))
                                                (let ((_e7456774616_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7453874710_))))
                                                  (let ((_tl7456574623_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7456774616_)))
                                                        (_hd7456674620_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7456774616_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7456574623_))
                                                        (let ((_e7457074626_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7456574623_))))
                  (let ((_tl7456874633_
                         (let () (declare (not safe)) (##cdr _e7457074626_)))
                        (_hd7456974630_
                         (let () (declare (not safe)) (##car _e7457074626_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7456874633_))
                        (let ((_e7457374636_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7456874633_))))
                          (let ((_tl7457174643_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7457374636_)))
                                (_hd7457274640_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7457374636_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7457174643_))
                                (___kont7779077791_
                                 _hd7457274640_
                                 _hd7456974630_
                                 _hd7456674620_
                                 _hd7453974707_
                                 _hd7453674697_)
                                (let ()
                                  (declare (not safe))
                                  (_g7452674579_)))))
                        (let () (declare (not safe)) (_g7452674579_)))))
                (let () (declare (not safe)) (_g7452674579_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7452674579_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl7453874710_))
                                          (let ((_e7456774616_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl7453874710_))))
                                            (let ((_tl7456574623_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7456774616_)))
                                                  (_hd7456674620_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7456774616_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl7456574623_))
                                                  (let ((_e7457074626_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl7456574623_))))
                                                    (let ((_tl7456874633_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e7457074626_)))
                                                          (_hd7456974630_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e7457074626_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl7456874633_))
                                                          (let ((_e7457374636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _tl7456874633_))))
                    (let ((_tl7457174643_
                           (let () (declare (not safe)) (##cdr _e7457374636_)))
                          (_hd7457274640_
                           (let ()
                             (declare (not safe))
                             (##car _e7457374636_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl7457174643_))
                          (___kont7779077791_
                           _hd7457274640_
                           _hd7456974630_
                           _hd7456674620_
                           _hd7453974707_
                           _hd7453674697_)
                          (let () (declare (not safe)) (_g7452674579_)))))
                  (let () (declare (not safe)) (_g7452674579_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7452674579_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g7452674579_))))))
                              (let () (declare (not safe)) (_g7452674579_)))))
                      (let () (declare (not safe)) (_g7452674579_)))))
              (let () (declare (not safe)) (_g7452674579_)))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx74779_)
      (let* ((_g7478374797_
              (lambda (_g7478474793_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7478474793_))))
             (_g7478274838_
              (lambda (_g7478474801_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7478474801_))
                    (let ((_e7478874804_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7478474801_))))
                      (let ((_hd7478774808_
                             (let ()
                               (declare (not safe))
                               (##car _e7478874804_)))
                            (_tl7478674811_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7478874804_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7478674811_))
                            (let ((_e7479174814_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7478674811_))))
                              (let ((_hd7479074818_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7479174814_)))
                                    (_tl7478974821_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7479174814_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7478974821_))
                                    ((lambda (_L74824_)
                                       (let ((__tmp78646
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-pred)))
                                             (__tmp78642
                                              (let ((__tmp78643
                                                     (let ((__tmp78645
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp78644
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L74824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp78645 __tmp78644))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78643 '()))))
                                         (declare (not safe))
                                         (cons __tmp78646 __tmp78642)))
                                     _hd7479074818_)
                                    (_g7478374797_ _g7478474801_))))
                            (_g7478374797_ _g7478474801_))))
                    (_g7478374797_ _g7478474801_)))))
        (_g7478274838_ _$stx74779_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx74842_)
      (let* ((_g7484674860_
              (lambda (_g7484774856_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7484774856_))))
             (_g7484574901_
              (lambda (_g7484774864_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7484774864_))
                    (let ((_e7485174867_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7484774864_))))
                      (let ((_hd7485074871_
                             (let ()
                               (declare (not safe))
                               (##car _e7485174867_)))
                            (_tl7484974874_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7485174867_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7484974874_))
                            (let ((_e7485474877_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7484974874_))))
                              (let ((_hd7485374881_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7485474877_)))
                                    (_tl7485274884_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7485474877_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7485274884_))
                                    ((lambda (_L74887_)
                                       (let ((__tmp78651
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-cons)))
                                             (__tmp78647
                                              (let ((__tmp78648
                                                     (let ((__tmp78650
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp78649
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L74887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp78650 __tmp78649))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78648 '()))))
                                         (declare (not safe))
                                         (cons __tmp78651 __tmp78647)))
                                     _hd7485374881_)
                                    (_g7484674860_ _g7484774864_))))
                            (_g7484674860_ _g7484774864_))))
                    (_g7484674860_ _g7484774864_)))))
        (_g7484574901_ _$stx74842_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx74905_)
      (let* ((___stx7787777878_ _$stx74905_)
             (_g7491074943_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7787777878_)))))
        (let ((___kont7788077881_
               (lambda (_L75045_ _L75047_ _L75048_)
                 (let ((__tmp78658
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp78652
                        (let ((__tmp78655
                               (let ((__tmp78657
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp78656
                                      (let ()
                                        (declare (not safe))
                                        (cons _L75048_ '()))))
                                 (declare (not safe))
                                 (cons __tmp78657 __tmp78656)))
                              (__tmp78653
                               (let ((__tmp78654
                                      (let ()
                                        (declare (not safe))
                                        (cons _L75045_ '()))))
                                 (declare (not safe))
                                 (cons _L75047_ __tmp78654))))
                          (declare (not safe))
                          (cons __tmp78655 __tmp78653))))
                   (declare (not safe))
                   (cons __tmp78658 __tmp78652))))
              (___kont7788277883_
               (lambda (_L74980_ _L74982_)
                 (let ((__tmp78665
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp78659
                        (let ((__tmp78662
                               (let ((__tmp78664
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp78663
                                      (let ()
                                        (declare (not safe))
                                        (cons _L74982_ '()))))
                                 (declare (not safe))
                                 (cons __tmp78664 __tmp78663)))
                              (__tmp78660
                               (let ((__tmp78661
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L74980_ __tmp78661))))
                          (declare (not safe))
                          (cons __tmp78662 __tmp78660))))
                   (declare (not safe))
                   (cons __tmp78665 __tmp78659)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7787777878_))
              (let ((_e7491775005_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7787777878_))))
                (let ((_tl7491575012_
                       (let () (declare (not safe)) (##cdr _e7491775005_)))
                      (_hd7491675009_
                       (let () (declare (not safe)) (##car _e7491775005_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7491575012_))
                      (let ((_e7492075015_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7491575012_))))
                        (let ((_tl7491875022_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7492075015_)))
                              (_hd7491975019_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7492075015_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7491875022_))
                              (let ((_e7492375025_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7491875022_))))
                                (let ((_tl7492175032_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7492375025_)))
                                      (_hd7492275029_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7492375025_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7492175032_))
                                      (let ((_e7492675035_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7492175032_))))
                                        (let ((_tl7492475042_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7492675035_)))
                                              (_hd7492575039_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7492675035_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7492475042_))
                                              (___kont7788077881_
                                               _hd7492575039_
                                               _hd7492275029_
                                               _hd7491975019_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7491074943_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7492175032_))
                                          (___kont7788277883_
                                           _hd7492275029_
                                           _hd7491975019_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7491074943_))))))
                              (let () (declare (not safe)) (_g7491074943_)))))
                      (let () (declare (not safe)) (_g7491074943_)))))
              (let () (declare (not safe)) (_g7491074943_)))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx75070_)
      (let* ((___stx7793377934_ _$stx75070_)
             (_g7507575108_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7793377934_)))))
        (let ((___kont7793677937_
               (lambda (_L75210_ _L75212_ _L75213_)
                 (let ((__tmp78672
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp78666
                        (let ((__tmp78669
                               (let ((__tmp78671
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp78670
                                      (let ()
                                        (declare (not safe))
                                        (cons _L75213_ '()))))
                                 (declare (not safe))
                                 (cons __tmp78671 __tmp78670)))
                              (__tmp78667
                               (let ((__tmp78668
                                      (let ()
                                        (declare (not safe))
                                        (cons _L75210_ '()))))
                                 (declare (not safe))
                                 (cons _L75212_ __tmp78668))))
                          (declare (not safe))
                          (cons __tmp78669 __tmp78667))))
                   (declare (not safe))
                   (cons __tmp78672 __tmp78666))))
              (___kont7793877939_
               (lambda (_L75145_ _L75147_)
                 (let ((__tmp78679
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp78673
                        (let ((__tmp78676
                               (let ((__tmp78678
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp78677
                                      (let ()
                                        (declare (not safe))
                                        (cons _L75147_ '()))))
                                 (declare (not safe))
                                 (cons __tmp78678 __tmp78677)))
                              (__tmp78674
                               (let ((__tmp78675
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L75145_ __tmp78675))))
                          (declare (not safe))
                          (cons __tmp78676 __tmp78674))))
                   (declare (not safe))
                   (cons __tmp78679 __tmp78673)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7793377934_))
              (let ((_e7508275170_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7793377934_))))
                (let ((_tl7508075177_
                       (let () (declare (not safe)) (##cdr _e7508275170_)))
                      (_hd7508175174_
                       (let () (declare (not safe)) (##car _e7508275170_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7508075177_))
                      (let ((_e7508575180_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7508075177_))))
                        (let ((_tl7508375187_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7508575180_)))
                              (_hd7508475184_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7508575180_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7508375187_))
                              (let ((_e7508875190_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7508375187_))))
                                (let ((_tl7508675197_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7508875190_)))
                                      (_hd7508775194_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7508875190_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7508675197_))
                                      (let ((_e7509175200_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7508675197_))))
                                        (let ((_tl7508975207_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7509175200_)))
                                              (_hd7509075204_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7509175200_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7508975207_))
                                              (___kont7793677937_
                                               _hd7509075204_
                                               _hd7508775194_
                                               _hd7508475184_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7507575108_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7508675197_))
                                          (___kont7793877939_
                                           _hd7508775194_
                                           _hd7508475184_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7507575108_))))))
                              (let () (declare (not safe)) (_g7507575108_)))))
                      (let () (declare (not safe)) (_g7507575108_)))))
              (let () (declare (not safe)) (_g7507575108_)))))))
  (define |gxc[:0:]#@class-type|
    (lambda (_$stx75235_)
      (let* ((_g7523975277_
              (lambda (_g7524075273_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7524075273_))))
             (_g7523875402_
              (lambda (_g7524075281_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7524075281_))
                    (let ((_e7525075284_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7524075281_))))
                      (let ((_hd7524975288_
                             (let ()
                               (declare (not safe))
                               (##car _e7525075284_)))
                            (_tl7524875291_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7525075284_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7524875291_))
                            (let ((_e7525375294_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7524875291_))))
                              (let ((_hd7525275298_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7525375294_)))
                                    (_tl7525175301_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7525375294_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7525175301_))
                                    (let ((_e7525675304_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7525175301_))))
                                      (let ((_hd7525575308_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7525675304_)))
                                            (_tl7525475311_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7525675304_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl7525475311_))
                                            (let ((_e7525975314_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl7525475311_))))
                                              (let ((_hd7525875318_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7525975314_)))
                                                    (_tl7525775321_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7525975314_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7525775321_))
                                                    (let ((_e7526275324_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7525775321_))))
                                                      (let ((_hd7526175328_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e7526275324_)))
                    (_tl7526075331_
                     (let () (declare (not safe)) (##cdr _e7526275324_))))
                (if (let () (declare (not safe)) (gx#stx-pair? _tl7526075331_))
                    (let ((_e7526575334_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl7526075331_))))
                      (let ((_hd7526475338_
                             (let ()
                               (declare (not safe))
                               (##car _e7526575334_)))
                            (_tl7526375341_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7526575334_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7526375341_))
                            (let ((_e7526875344_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7526375341_))))
                              (let ((_hd7526775348_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7526875344_)))
                                    (_tl7526675351_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7526875344_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7526675351_))
                                    (let ((_e7527175354_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7526675351_))))
                                      (let ((_hd7527075358_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7527175354_)))
                                            (_tl7526975361_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7527175354_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7526975361_))
                                            ((lambda (_L75364_
                                                      _L75366_
                                                      _L75367_
                                                      _L75368_
                                                      _L75369_
                                                      _L75370_
                                                      _L75371_)
                                               (let ((__tmp78708
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!class-type)))
                                                     (__tmp78680
                                                      (let ((__tmp78705
                                                             (let ((__tmp78707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp78706
                            (let () (declare (not safe)) (cons _L75371_ '()))))
                       (declare (not safe))
                       (cons __tmp78707 __tmp78706)))
                    (__tmp78681
                     (let ((__tmp78702
                            (let ((__tmp78704
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp78703
                                   (let ()
                                     (declare (not safe))
                                     (cons _L75370_ '()))))
                              (declare (not safe))
                              (cons __tmp78704 __tmp78703)))
                           (__tmp78682
                            (let ((__tmp78699
                                   (let ((__tmp78701
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp78700
                                          (let ()
                                            (declare (not safe))
                                            (cons _L75369_ '()))))
                                     (declare (not safe))
                                     (cons __tmp78701 __tmp78700)))
                                  (__tmp78683
                                   (let ((__tmp78696
                                          (let ((__tmp78698
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote)))
                                                (__tmp78697
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L75368_ '()))))
                                            (declare (not safe))
                                            (cons __tmp78698 __tmp78697)))
                                         (__tmp78684
                                          (let ((__tmp78693
                                                 (let ((__tmp78695
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote)))
                                                       (__tmp78694
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L75367_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp78695
                                                         __tmp78694)))
                                                (__tmp78685
                                                 (let ((__tmp78690
                                                        (let ((__tmp78692
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote)))
                      (__tmp78691
                       (let () (declare (not safe)) (cons _L75366_ '()))))
                  (declare (not safe))
                  (cons __tmp78692 __tmp78691)))
               (__tmp78686
                (let ((__tmp78687
                       (let ((__tmp78689
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote)))
                             (__tmp78688
                              (let ()
                                (declare (not safe))
                                (cons _L75364_ '()))))
                         (declare (not safe))
                         (cons __tmp78689 __tmp78688))))
                  (declare (not safe))
                  (cons __tmp78687 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp78690
                                                         __tmp78686))))
                                            (declare (not safe))
                                            (cons __tmp78693 __tmp78685))))
                                     (declare (not safe))
                                     (cons __tmp78696 __tmp78684))))
                              (declare (not safe))
                              (cons __tmp78699 __tmp78683))))
                       (declare (not safe))
                       (cons __tmp78702 __tmp78682))))
                (declare (not safe))
                (cons __tmp78705 __tmp78681))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp78708 __tmp78680)))
                                             _hd7527075358_
                                             _hd7526775348_
                                             _hd7526475338_
                                             _hd7526175328_
                                             _hd7525875318_
                                             _hd7525575308_
                                             _hd7525275298_)
                                            (_g7523975277_ _g7524075281_))))
                                    (_g7523975277_ _g7524075281_))))
                            (_g7523975277_ _g7524075281_))))
                    (_g7523975277_ _g7524075281_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7523975277_
                                                     _g7524075281_))))
                                            (_g7523975277_ _g7524075281_))))
                                    (_g7523975277_ _g7524075281_))))
                            (_g7523975277_ _g7524075281_))))
                    (_g7523975277_ _g7524075281_)))))
        (_g7523875402_ _$stx75235_))))
  (define |gxc[:0:]#@class-pred|
    (lambda (_$stx75406_)
      (let* ((_g7541075424_
              (lambda (_g7541175420_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7541175420_))))
             (_g7540975465_
              (lambda (_g7541175428_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7541175428_))
                    (let ((_e7541575431_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7541175428_))))
                      (let ((_hd7541475435_
                             (let ()
                               (declare (not safe))
                               (##car _e7541575431_)))
                            (_tl7541375438_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7541575431_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7541375438_))
                            (let ((_e7541875441_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7541375438_))))
                              (let ((_hd7541775445_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7541875441_)))
                                    (_tl7541675448_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7541875441_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7541675448_))
                                    ((lambda (_L75451_)
                                       (let ((__tmp78713
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-pred)))
                                             (__tmp78709
                                              (let ((__tmp78710
                                                     (let ((__tmp78712
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp78711
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L75451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp78712 __tmp78711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78710 '()))))
                                         (declare (not safe))
                                         (cons __tmp78713 __tmp78709)))
                                     _hd7541775445_)
                                    (_g7541075424_ _g7541175428_))))
                            (_g7541075424_ _g7541175428_))))
                    (_g7541075424_ _g7541175428_)))))
        (_g7540975465_ _$stx75406_))))
  (define |gxc[:0:]#@class-cons|
    (lambda (_$stx75469_)
      (let* ((_g7547375487_
              (lambda (_g7547475483_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7547475483_))))
             (_g7547275528_
              (lambda (_g7547475491_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7547475491_))
                    (let ((_e7547875494_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7547475491_))))
                      (let ((_hd7547775498_
                             (let ()
                               (declare (not safe))
                               (##car _e7547875494_)))
                            (_tl7547675501_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7547875494_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7547675501_))
                            (let ((_e7548175504_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7547675501_))))
                              (let ((_hd7548075508_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7548175504_)))
                                    (_tl7547975511_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7548175504_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7547975511_))
                                    ((lambda (_L75514_)
                                       (let ((__tmp78718
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-cons)))
                                             (__tmp78714
                                              (let ((__tmp78715
                                                     (let ((__tmp78717
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp78716
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L75514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp78717 __tmp78716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78715 '()))))
                                         (declare (not safe))
                                         (cons __tmp78718 __tmp78714)))
                                     _hd7548075508_)
                                    (_g7547375487_ _g7547475491_))))
                            (_g7547375487_ _g7547475491_))))
                    (_g7547375487_ _g7547475491_)))))
        (_g7547275528_ _$stx75469_))))
  (define |gxc[:0:]#@class-getf|
    (lambda (_$stx75532_)
      (let* ((___stx7798977990_ _$stx75532_)
             (_g7553775570_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7798977990_)))))
        (let ((___kont7799277993_
               (lambda (_L75672_ _L75674_ _L75675_)
                 (let ((__tmp78728
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp78719
                        (let ((__tmp78725
                               (let ((__tmp78727
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp78726
                                      (let ()
                                        (declare (not safe))
                                        (cons _L75675_ '()))))
                                 (declare (not safe))
                                 (cons __tmp78727 __tmp78726)))
                              (__tmp78720
                               (let ((__tmp78722
                                      (let ((__tmp78724
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp78723
                                             (let ()
                                               (declare (not safe))
                                               (cons _L75674_ '()))))
                                        (declare (not safe))
                                        (cons __tmp78724 __tmp78723)))
                                     (__tmp78721
                                      (let ()
                                        (declare (not safe))
                                        (cons _L75672_ '()))))
                                 (declare (not safe))
                                 (cons __tmp78722 __tmp78721))))
                          (declare (not safe))
                          (cons __tmp78725 __tmp78720))))
                   (declare (not safe))
                   (cons __tmp78728 __tmp78719))))
              (___kont7799477995_
               (lambda (_L75607_ _L75609_)
                 (let ((__tmp78738
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp78729
                        (let ((__tmp78735
                               (let ((__tmp78737
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp78736
                                      (let ()
                                        (declare (not safe))
                                        (cons _L75609_ '()))))
                                 (declare (not safe))
                                 (cons __tmp78737 __tmp78736)))
                              (__tmp78730
                               (let ((__tmp78732
                                      (let ((__tmp78734
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp78733
                                             (let ()
                                               (declare (not safe))
                                               (cons _L75607_ '()))))
                                        (declare (not safe))
                                        (cons __tmp78734 __tmp78733)))
                                     (__tmp78731
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp78732 __tmp78731))))
                          (declare (not safe))
                          (cons __tmp78735 __tmp78730))))
                   (declare (not safe))
                   (cons __tmp78738 __tmp78729)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7798977990_))
              (let ((_e7554475632_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7798977990_))))
                (let ((_tl7554275639_
                       (let () (declare (not safe)) (##cdr _e7554475632_)))
                      (_hd7554375636_
                       (let () (declare (not safe)) (##car _e7554475632_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7554275639_))
                      (let ((_e7554775642_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7554275639_))))
                        (let ((_tl7554575649_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7554775642_)))
                              (_hd7554675646_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7554775642_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7554575649_))
                              (let ((_e7555075652_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7554575649_))))
                                (let ((_tl7554875659_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7555075652_)))
                                      (_hd7554975656_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7555075652_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7554875659_))
                                      (let ((_e7555375662_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7554875659_))))
                                        (let ((_tl7555175669_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7555375662_)))
                                              (_hd7555275666_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7555375662_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7555175669_))
                                              (___kont7799277993_
                                               _hd7555275666_
                                               _hd7554975656_
                                               _hd7554675646_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7553775570_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7554875659_))
                                          (___kont7799477995_
                                           _hd7554975656_
                                           _hd7554675646_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7553775570_))))))
                              (let () (declare (not safe)) (_g7553775570_)))))
                      (let () (declare (not safe)) (_g7553775570_)))))
              (let () (declare (not safe)) (_g7553775570_)))))))
  (define |gxc[:0:]#@class-setf|
    (lambda (_$stx75697_)
      (let* ((___stx7804578046_ _$stx75697_)
             (_g7570275735_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7804578046_)))))
        (let ((___kont7804878049_
               (lambda (_L75837_ _L75839_ _L75840_)
                 (let ((__tmp78748
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp78739
                        (let ((__tmp78745
                               (let ((__tmp78747
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp78746
                                      (let ()
                                        (declare (not safe))
                                        (cons _L75840_ '()))))
                                 (declare (not safe))
                                 (cons __tmp78747 __tmp78746)))
                              (__tmp78740
                               (let ((__tmp78742
                                      (let ((__tmp78744
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp78743
                                             (let ()
                                               (declare (not safe))
                                               (cons _L75839_ '()))))
                                        (declare (not safe))
                                        (cons __tmp78744 __tmp78743)))
                                     (__tmp78741
                                      (let ()
                                        (declare (not safe))
                                        (cons _L75837_ '()))))
                                 (declare (not safe))
                                 (cons __tmp78742 __tmp78741))))
                          (declare (not safe))
                          (cons __tmp78745 __tmp78740))))
                   (declare (not safe))
                   (cons __tmp78748 __tmp78739))))
              (___kont7805078051_
               (lambda (_L75772_ _L75774_)
                 (let ((__tmp78758
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp78749
                        (let ((__tmp78755
                               (let ((__tmp78757
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp78756
                                      (let ()
                                        (declare (not safe))
                                        (cons _L75774_ '()))))
                                 (declare (not safe))
                                 (cons __tmp78757 __tmp78756)))
                              (__tmp78750
                               (let ((__tmp78752
                                      (let ((__tmp78754
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp78753
                                             (let ()
                                               (declare (not safe))
                                               (cons _L75772_ '()))))
                                        (declare (not safe))
                                        (cons __tmp78754 __tmp78753)))
                                     (__tmp78751
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp78752 __tmp78751))))
                          (declare (not safe))
                          (cons __tmp78755 __tmp78750))))
                   (declare (not safe))
                   (cons __tmp78758 __tmp78749)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7804578046_))
              (let ((_e7570975797_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7804578046_))))
                (let ((_tl7570775804_
                       (let () (declare (not safe)) (##cdr _e7570975797_)))
                      (_hd7570875801_
                       (let () (declare (not safe)) (##car _e7570975797_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7570775804_))
                      (let ((_e7571275807_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7570775804_))))
                        (let ((_tl7571075814_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7571275807_)))
                              (_hd7571175811_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7571275807_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7571075814_))
                              (let ((_e7571575817_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7571075814_))))
                                (let ((_tl7571375824_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7571575817_)))
                                      (_hd7571475821_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7571575817_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7571375824_))
                                      (let ((_e7571875827_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7571375824_))))
                                        (let ((_tl7571675834_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7571875827_)))
                                              (_hd7571775831_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7571875827_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7571675834_))
                                              (___kont7804878049_
                                               _hd7571775831_
                                               _hd7571475821_
                                               _hd7571175811_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7570275735_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7571375824_))
                                          (___kont7805078051_
                                           _hd7571475821_
                                           _hd7571175811_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7570275735_))))))
                              (let () (declare (not safe)) (_g7570275735_)))))
                      (let () (declare (not safe)) (_g7570275735_)))))
              (let () (declare (not safe)) (_g7570275735_)))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx75862_)
      (let* ((___stx7810178102_ _$stx75862_)
             (_g7587075938_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7810178102_)))))
        (let ((___kont7810478105_
               (lambda (_L76216_ _L76218_)
                 (let ((__tmp78774
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp78759
                        (let ((__tmp78770
                               (let ((__tmp78773
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp78771
                                      (let ((__tmp78772
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp78772 '()))))
                                 (declare (not safe))
                                 (cons __tmp78773 __tmp78771)))
                              (__tmp78760
                               (let ((__tmp78767
                                      (let ((__tmp78769
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp78768
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76218_ '()))))
                                        (declare (not safe))
                                        (cons __tmp78769 __tmp78768)))
                                     (__tmp78761
                                      (let ((__tmp78762
                                             (let ((__tmp78763
                                                    (let ((__tmp78764
                                                           (let ((__tmp78766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp78765
                          (let () (declare (not safe)) (cons _L76216_ '()))))
                     (declare (not safe))
                     (cons __tmp78766 __tmp78765))))
              (declare (not safe))
              (cons __tmp78764 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L76216_ __tmp78763))))
                                        (declare (not safe))
                                        (cons '#f __tmp78762))))
                                 (declare (not safe))
                                 (cons __tmp78767 __tmp78761))))
                          (declare (not safe))
                          (cons __tmp78770 __tmp78760))))
                   (declare (not safe))
                   (cons __tmp78774 __tmp78759))))
              (___kont7810678107_
               (lambda (_L76147_ _L76149_)
                 (let ((__tmp78775
                        (let ((__tmp78776
                               (let ((__tmp78777
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L76147_ __tmp78777))))
                          (declare (not safe))
                          (cons 'primitive: __tmp78776))))
                   (declare (not safe))
                   (cons _L76149_ __tmp78775))))
              (___kont7810878109_
               (lambda (_L76086_ _L76088_)
                 (let ((__tmp78791
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp78778
                        (let ((__tmp78787
                               (let ((__tmp78790
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp78788
                                      (let ((__tmp78789
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp78789 '()))))
                                 (declare (not safe))
                                 (cons __tmp78790 __tmp78788)))
                              (__tmp78779
                               (let ((__tmp78784
                                      (let ((__tmp78786
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp78785
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76088_ '()))))
                                        (declare (not safe))
                                        (cons __tmp78786 __tmp78785)))
                                     (__tmp78780
                                      (let ((__tmp78781
                                             (let ((__tmp78783
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp78782
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L76086_ '()))))
                                               (declare (not safe))
                                               (cons __tmp78783 __tmp78782))))
                                        (declare (not safe))
                                        (cons __tmp78781 '()))))
                                 (declare (not safe))
                                 (cons __tmp78784 __tmp78780))))
                          (declare (not safe))
                          (cons __tmp78787 __tmp78779))))
                   (declare (not safe))
                   (cons __tmp78791 __tmp78778))))
              (___kont7811078111_
               (lambda (_L76018_ _L76020_)
                 (let ((__tmp78805
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp78792
                        (let ((__tmp78801
                               (let ((__tmp78804
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp78802
                                      (let ((__tmp78803
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp78803 '()))))
                                 (declare (not safe))
                                 (cons __tmp78804 __tmp78802)))
                              (__tmp78793
                               (let ((__tmp78798
                                      (let ((__tmp78800
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp78799
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76020_ '()))))
                                        (declare (not safe))
                                        (cons __tmp78800 __tmp78799)))
                                     (__tmp78794
                                      (let ((__tmp78795
                                             (let ((__tmp78797
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp78796
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L76018_ '()))))
                                               (declare (not safe))
                                               (cons __tmp78797 __tmp78796))))
                                        (declare (not safe))
                                        (cons __tmp78795 '()))))
                                 (declare (not safe))
                                 (cons __tmp78798 __tmp78794))))
                          (declare (not safe))
                          (cons __tmp78801 __tmp78793))))
                   (declare (not safe))
                   (cons __tmp78805 __tmp78792))))
              (___kont7811278113_
               (lambda (_L75965_ _L75967_)
                 (let ((__tmp78806
                        (let ((__tmp78807
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L75965_ __tmp78807))))
                   (declare (not safe))
                   (cons _L75967_ __tmp78806)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7810178102_))
              (let ((_e7587676172_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7810178102_))))
                (let ((_tl7587476179_
                       (let () (declare (not safe)) (##cdr _e7587676172_)))
                      (_hd7587576176_
                       (let () (declare (not safe)) (##car _e7587676172_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7587476179_))
                      (let ((_e7587976182_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7587476179_))))
                        (let ((_tl7587776189_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7587976182_)))
                              (_hd7587876186_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7587976182_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7587776189_))
                              (let ((_e7588276192_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7587776189_))))
                                (let ((_tl7588076199_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7588276192_)))
                                      (_hd7588176196_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7588276192_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd7588176196_))
                                      (let ((_e7588376202_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd7588176196_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e7588376202_ 'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7588076199_))
                                                (let ((_e7588676206_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7588076199_))))
                                                  (let ((_tl7588476213_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7588676206_)))
                                                        (_hd7588576210_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7588676206_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7588476213_))
                                                        (___kont7810478105_
                                                         _hd7588576210_
                                                         _hd7587876186_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd7587876186_))
                                                            (let ((_e7589576133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd7587876186_))))
                      (declare (not safe))
                      (_g7587075938_))
                    (let () (declare (not safe)) (_g7587075938_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd7587876186_))
                                                    (let ((_e7589576133_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd7587876186_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e7589576133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7588076199_))
                      (___kont7810678107_ _hd7588176196_ _hd7587576176_)
                      (let () (declare (not safe)) (_g7587075938_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7588076199_))
                      (___kont7811078111_ _hd7588176196_ _hd7587876186_)
                      (let () (declare (not safe)) (_g7587075938_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7588076199_))
                                                        (___kont7811078111_
                                                         _hd7588176196_
                                                         _hd7587876186_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7587075938_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd7587876186_))
                                                (let ((_e7589576133_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd7587876186_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e7589576133_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl7588076199_))
                                                          (___kont7810678107_
                                                           _hd7588176196_
                                                           _hd7587576176_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl7588076199_))
                      (let ((_e7591376076_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7588076199_))))
                        (let ((_tl7591176083_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7591376076_)))
                              (_hd7591276080_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7591376076_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7591176083_))
                              (___kont7810878109_
                               _hd7591276080_
                               _hd7588176196_)
                              (let () (declare (not safe)) (_g7587075938_)))))
                      (let () (declare (not safe)) (_g7587075938_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7588076199_))
                  (___kont7811078111_ _hd7588176196_ _hd7587876186_)
                  (let () (declare (not safe)) (_g7587075938_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7588076199_))
                                                    (___kont7811078111_
                                                     _hd7588176196_
                                                     _hd7587876186_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7587075938_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd7587876186_))
                                          (let ((_e7589576133_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _hd7587876186_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e7589576133_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7588076199_))
                                                    (___kont7810678107_
                                                     _hd7588176196_
                                                     _hd7587576176_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7588076199_))
                                                        (let ((_e7591376076_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7588076199_))))
                  (let ((_tl7591176083_
                         (let () (declare (not safe)) (##cdr _e7591376076_)))
                        (_hd7591276080_
                         (let () (declare (not safe)) (##car _e7591376076_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl7591176083_))
                        (___kont7810878109_ _hd7591276080_ _hd7588176196_)
                        (let () (declare (not safe)) (_g7587075938_)))))
                (let () (declare (not safe)) (_g7587075938_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7588076199_))
                                                    (___kont7811078111_
                                                     _hd7588176196_
                                                     _hd7587876186_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7587075938_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7588076199_))
                                              (___kont7811078111_
                                               _hd7588176196_
                                               _hd7587876186_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7587075938_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd7587876186_))
                                  (let ((_e7589576133_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd7587876186_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7587776189_))
                                        (___kont7811278113_
                                         _hd7587876186_
                                         _hd7587576176_)
                                        (let ()
                                          (declare (not safe))
                                          (_g7587075938_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7587776189_))
                                      (___kont7811278113_
                                       _hd7587876186_
                                       _hd7587576176_)
                                      (let ()
                                        (declare (not safe))
                                        (_g7587075938_)))))))
                      (let () (declare (not safe)) (_g7587075938_)))))
              (let () (declare (not safe)) (_g7587075938_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx76240_)
      (let* ((___stx7824178242_ _$stx76240_)
             (_g7624576300_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7824178242_)))))
        (let ((___kont7824478245_
               (lambda (_L76485_ _L76487_)
                 (let ((__tmp78823
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp78808
                        (let ((__tmp78819
                               (let ((__tmp78822
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp78820
                                      (let ((__tmp78821
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp78821 '()))))
                                 (declare (not safe))
                                 (cons __tmp78822 __tmp78820)))
                              (__tmp78809
                               (let ((__tmp78810
                                      (let ((__tmp78818
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp78811
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L76485_
                                                  _L76487_))
                                               (let ((__tmp78812
                                                      (lambda (_g7650476508_
                                                               _g7650576511_
                                                               _g7650676513_)
                                                        (let ((__tmp78813
                                                               (let ((__tmp78817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp78814
                              (let ((__tmp78815
                                     (let ((__tmp78816
                                            (let ()
                                              (declare (not safe))
                                              (cons _g7650476508_ '()))))
                                       (declare (not safe))
                                       (cons _g7650576511_ __tmp78816))))
                                (declare (not safe))
                                (cons 'primitive: __tmp78815))))
                         (declare (not safe))
                         (cons __tmp78817 __tmp78814))))
                  (declare (not safe))
                  (cons __tmp78813 _g7650676513_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp78812
                                                         '()
                                                         _L76485_
                                                         _L76487_)))))
                                        (declare (not safe))
                                        (cons __tmp78818 __tmp78811))))
                                 (declare (not safe))
                                 (cons __tmp78810 '()))))
                          (declare (not safe))
                          (cons __tmp78819 __tmp78809))))
                   (declare (not safe))
                   (cons __tmp78823 __tmp78808))))
              (___kont7824878249_
               (lambda (_L76371_ _L76373_)
                 (let ((__tmp78838
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp78824
                        (let ((__tmp78834
                               (let ((__tmp78837
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp78835
                                      (let ((__tmp78836
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp78836 '()))))
                                 (declare (not safe))
                                 (cons __tmp78837 __tmp78835)))
                              (__tmp78825
                               (let ((__tmp78826
                                      (let ((__tmp78833
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp78827
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L76371_
                                                  _L76373_))
                                               (let ((__tmp78828
                                                      (lambda (_g7638876392_
                                                               _g7638976395_
                                                               _g7639076397_)
                                                        (let ((__tmp78829
                                                               (let ((__tmp78832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp78830
                              (let ((__tmp78831
                                     (let ()
                                       (declare (not safe))
                                       (cons _g7638876392_ '()))))
                                (declare (not safe))
                                (cons _g7638976395_ __tmp78831))))
                         (declare (not safe))
                         (cons __tmp78832 __tmp78830))))
                  (declare (not safe))
                  (cons __tmp78829 _g7639076397_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp78828
                                                         '()
                                                         _L76371_
                                                         _L76373_)))))
                                        (declare (not safe))
                                        (cons __tmp78833 __tmp78827))))
                                 (declare (not safe))
                                 (cons __tmp78826 '()))))
                          (declare (not safe))
                          (cons __tmp78834 __tmp78825))))
                   (declare (not safe))
                   (cons __tmp78838 __tmp78824)))))
          (let* ((___match7829278293_
                  (lambda (_e7627776307_
                           _hd7627676311_
                           _tl7627576314_
                           ___splice7825078251_
                           _target7627876317_
                           _tl7628076320_)
                    (letrec ((_loop7628176323_
                              (lambda (_hd7627976327_
                                       _dispatch7628576330_
                                       _arity7628676332_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7627976327_))
                                    (let ((_e7628276335_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7627976327_))))
                                      (let ((_lp-tl7628476342_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7628276335_)))
                                            (_lp-hd7628376339_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7628276335_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _lp-hd7628376339_))
                                            (let ((_e7629176345_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd7628376339_))))
                                              (let ((_tl7628976352_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7629176345_)))
                                                    (_hd7629076349_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7629176345_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7628976352_))
                                                    (let ((_e7629476355_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7628976352_))))
                                                      (let ((_tl7629276362_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7629476355_)))
                    (_hd7629376359_
                     (let () (declare (not safe)) (##car _e7629476355_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl7629276362_))
                    (_loop7628176323_
                     _lp-tl7628476342_
                     (let ()
                       (declare (not safe))
                       (cons _hd7629376359_ _dispatch7628576330_))
                     (let ()
                       (declare (not safe))
                       (cons _hd7629076349_ _arity7628676332_)))
                    (let () (declare (not safe)) (_g7624576300_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7624576300_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g7624576300_)))))
                                    (let ((_arity7628876368_
                                           (reverse _arity7628676332_))
                                          (_dispatch7628776365_
                                           (reverse _dispatch7628576330_)))
                                      (___kont7824878249_
                                       _dispatch7628776365_
                                       _arity7628876368_))))))
                      (_loop7628176323_ _target7627876317_ '() '()))))
                 (___match7828478285_
                  (lambda (_e7627776307_ _hd7627676311_ _tl7627576314_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl7627576314_))
                        (let ((___splice7825078251_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice _tl7627576314_ '0))))
                          (let ((_tl7628076320_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice7825078251_ '1)))
                                (_target7627876317_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice7825078251_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7628076320_))
                                (___match7829278293_
                                 _e7627776307_
                                 _hd7627676311_
                                 _tl7627576314_
                                 ___splice7825078251_
                                 _target7627876317_
                                 _tl7628076320_)
                                (let ()
                                  (declare (not safe))
                                  (_g7624576300_)))))
                        (let () (declare (not safe)) (_g7624576300_)))))
                 (___match7827878279_
                  (lambda (_e7625176407_
                           _hd7625076411_
                           _tl7624976414_
                           _e7625476417_
                           _hd7625376421_
                           _tl7625276424_
                           _e7625576427_
                           ___splice7824678247_
                           _target7625676431_
                           _tl7625876434_)
                    (letrec ((_loop7625976437_
                              (lambda (_hd7625776441_
                                       _dispatch7626376444_
                                       _arity7626476446_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7625776441_))
                                    (let ((_e7626076449_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7625776441_))))
                                      (let ((_lp-tl7626276456_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7626076449_)))
                                            (_lp-hd7626176453_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7626076449_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _lp-hd7626176453_))
                                            (let ((_e7626976459_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd7626176453_))))
                                              (let ((_tl7626776466_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7626976459_)))
                                                    (_hd7626876463_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7626976459_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7626776466_))
                                                    (let ((_e7627276469_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7626776466_))))
                                                      (let ((_tl7627076476_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7627276469_)))
                    (_hd7627176473_
                     (let () (declare (not safe)) (##car _e7627276469_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl7627076476_))
                    (_loop7625976437_
                     _lp-tl7626276456_
                     (let ()
                       (declare (not safe))
                       (cons _hd7627176473_ _dispatch7626376444_))
                     (let ()
                       (declare (not safe))
                       (cons _hd7626876463_ _arity7626476446_)))
                    (___match7828478285_
                     _e7625176407_
                     _hd7625076411_
                     _tl7624976414_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match7828478285_
                                                     _e7625176407_
                                                     _hd7625076411_
                                                     _tl7624976414_))))
                                            (___match7828478285_
                                             _e7625176407_
                                             _hd7625076411_
                                             _tl7624976414_))))
                                    (let ((_arity7626676482_
                                           (reverse _arity7626476446_))
                                          (_dispatch7626576479_
                                           (reverse _dispatch7626376444_)))
                                      (___kont7824478245_
                                       _dispatch7626576479_
                                       _arity7626676482_))))))
                      (_loop7625976437_ _target7625676431_ '() '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7824178242_))
                (let ((_e7625176407_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7824178242_))))
                  (let ((_tl7624976414_
                         (let () (declare (not safe)) (##cdr _e7625176407_)))
                        (_hd7625076411_
                         (let () (declare (not safe)) (##car _e7625176407_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7624976414_))
                        (let ((_e7625476417_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7624976414_))))
                          (let ((_tl7625276424_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7625476417_)))
                                (_hd7625376421_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7625476417_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd7625376421_))
                                (let ((_e7625576427_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd7625376421_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e7625576427_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl7625276424_))
                                          (let ((___splice7824678247_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl7625276424_
                                                    '0))))
                                            (let ((_tl7625876434_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7824678247_
                                                      '1)))
                                                  (_target7625676431_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7824678247_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7625876434_))
                                                  (___match7827878279_
                                                   _e7625176407_
                                                   _hd7625076411_
                                                   _tl7624976414_
                                                   _e7625476417_
                                                   _hd7625376421_
                                                   _tl7625276424_
                                                   _e7625576427_
                                                   ___splice7824678247_
                                                   _target7625676431_
                                                   _tl7625876434_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7624976414_))
                                                      (let ((___splice7825078251_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7624976414_ '0))))
                (let ((_tl7628076320_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7825078251_ '1)))
                      (_target7627876317_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7825078251_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7628076320_))
                      (___match7829278293_
                       _e7625176407_
                       _hd7625076411_
                       _tl7624976414_
                       ___splice7825078251_
                       _target7627876317_
                       _tl7628076320_)
                      (let () (declare (not safe)) (_g7624576300_)))))
              (let () (declare (not safe)) (_g7624576300_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl7624976414_))
                                              (let ((___splice7825078251_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl7624976414_
                                                        '0))))
                                                (let ((_tl7628076320_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice7825078251_
                                                          '1)))
                                                      (_target7627876317_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice7825078251_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl7628076320_))
                                                      (___match7829278293_
                                                       _e7625176407_
                                                       _hd7625076411_
                                                       _tl7624976414_
                                                       ___splice7825078251_
                                                       _target7627876317_
                                                       _tl7628076320_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g7624576300_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g7624576300_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl7624976414_))
                                          (let ((___splice7825078251_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl7624976414_
                                                    '0))))
                                            (let ((_tl7628076320_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7825078251_
                                                      '1)))
                                                  (_target7627876317_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7825078251_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7628076320_))
                                                  (___match7829278293_
                                                   _e7625176407_
                                                   _hd7625076411_
                                                   _tl7624976414_
                                                   ___splice7825078251_
                                                   _target7627876317_
                                                   _tl7628076320_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7624576300_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g7624576300_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7624976414_))
                                    (let ((___splice7825078251_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7624976414_
                                              '0))))
                                      (let ((_tl7628076320_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7825078251_
                                                '1)))
                                            (_target7627876317_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7825078251_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7628076320_))
                                            (___match7829278293_
                                             _e7625176407_
                                             _hd7625076411_
                                             _tl7624976414_
                                             ___splice7825078251_
                                             _target7627876317_
                                             _tl7628076320_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7624576300_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7624576300_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7624976414_))
                            (let ((___splice7825078251_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7624976414_
                                      '0))))
                              (let ((_tl7628076320_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice7825078251_ '1)))
                                    (_target7627876317_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice7825078251_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7628076320_))
                                    (___match7829278293_
                                     _e7625176407_
                                     _hd7625076411_
                                     _tl7624976414_
                                     ___splice7825078251_
                                     _target7627876317_
                                     _tl7628076320_)
                                    (let ()
                                      (declare (not safe))
                                      (_g7624576300_)))))
                            (let () (declare (not safe)) (_g7624576300_))))))
                (let () (declare (not safe)) (_g7624576300_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx76522_)
      (let* ((_g7652676544_
              (lambda (_g7652776540_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7652776540_))))
             (_g7652576599_
              (lambda (_g7652776548_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7652776548_))
                    (let ((_e7653276551_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7652776548_))))
                      (let ((_hd7653176555_
                             (let ()
                               (declare (not safe))
                               (##car _e7653276551_)))
                            (_tl7653076558_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7653276551_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7653076558_))
                            (let ((_e7653576561_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7653076558_))))
                              (let ((_hd7653476565_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7653576561_)))
                                    (_tl7653376568_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7653576561_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7653376568_))
                                    (let ((_e7653876571_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7653376568_))))
                                      (let ((_hd7653776575_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7653876571_)))
                                            (_tl7653676578_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7653876571_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7653676578_))
                                            ((lambda (_L76581_ _L76583_)
                                               (let ((__tmp78852
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp78839
                                                      (let ((__tmp78848
                                                             (let ((__tmp78851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp78849
                            (let ((__tmp78850
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp78850 '()))))
                       (declare (not safe))
                       (cons __tmp78851 __tmp78849)))
                    (__tmp78840
                     (let ((__tmp78845
                            (let ((__tmp78847
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp78846
                                   (let ()
                                     (declare (not safe))
                                     (cons _L76583_ '()))))
                              (declare (not safe))
                              (cons __tmp78847 __tmp78846)))
                           (__tmp78841
                            (let ((__tmp78842
                                   (let ((__tmp78844
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp78843
                                          (let ()
                                            (declare (not safe))
                                            (cons _L76581_ '()))))
                                     (declare (not safe))
                                     (cons __tmp78844 __tmp78843))))
                              (declare (not safe))
                              (cons __tmp78842 '()))))
                       (declare (not safe))
                       (cons __tmp78845 __tmp78841))))
                (declare (not safe))
                (cons __tmp78848 __tmp78840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp78852 __tmp78839)))
                                             _hd7653776575_
                                             _hd7653476565_)
                                            (_g7652676544_ _g7652776548_))))
                                    (_g7652676544_ _g7652776548_))))
                            (_g7652676544_ _g7652776548_))))
                    (_g7652676544_ _g7652776548_)))))
        (_g7652576599_ _$stx76522_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx76603_)
      (let* ((_g7660776625_
              (lambda (_g7660876621_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7660876621_))))
             (_g7660676680_
              (lambda (_g7660876629_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7660876629_))
                    (let ((_e7661376632_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7660876629_))))
                      (let ((_hd7661276636_
                             (let ()
                               (declare (not safe))
                               (##car _e7661376632_)))
                            (_tl7661176639_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7661376632_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7661176639_))
                            (let ((_e7661676642_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7661176639_))))
                              (let ((_hd7661576646_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7661676642_)))
                                    (_tl7661476649_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7661676642_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7661476649_))
                                    (let ((_e7661976652_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7661476649_))))
                                      (let ((_hd7661876656_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7661976652_)))
                                            (_tl7661776659_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7661976652_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7661776659_))
                                            ((lambda (_L76662_ _L76664_)
                                               (let ((__tmp78866
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp78853
                                                      (let ((__tmp78862
                                                             (let ((__tmp78865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp78863
                            (let ((__tmp78864
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp78864 '()))))
                       (declare (not safe))
                       (cons __tmp78865 __tmp78863)))
                    (__tmp78854
                     (let ((__tmp78859
                            (let ((__tmp78861
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp78860
                                   (let ()
                                     (declare (not safe))
                                     (cons _L76664_ '()))))
                              (declare (not safe))
                              (cons __tmp78861 __tmp78860)))
                           (__tmp78855
                            (let ((__tmp78856
                                   (let ((__tmp78858
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp78857
                                          (let ()
                                            (declare (not safe))
                                            (cons _L76662_ '()))))
                                     (declare (not safe))
                                     (cons __tmp78858 __tmp78857))))
                              (declare (not safe))
                              (cons __tmp78856 '()))))
                       (declare (not safe))
                       (cons __tmp78859 __tmp78855))))
                (declare (not safe))
                (cons __tmp78862 __tmp78854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp78866 __tmp78853)))
                                             _hd7661876656_
                                             _hd7661576646_)
                                            (_g7660776625_ _g7660876629_))))
                                    (_g7660776625_ _g7660876629_))))
                            (_g7660776625_ _g7660876629_))))
                    (_g7660776625_ _g7660876629_)))))
        (_g7660676680_ _$stx76603_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx76684_)
      (let* ((___stx7829578296_ _$stx76684_)
             (_g7669176762_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7829578296_)))))
        (let ((___kont7829878299_
               (lambda (_L77053_ _L77055_)
                 (let ((__tmp78872
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp78867
                        (let ((__tmp78868
                               (let ((__tmp78869
                                      (let ((__tmp78871
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp78870
                                             (let ()
                                               (declare (not safe))
                                               (cons _L77053_ '()))))
                                        (declare (not safe))
                                        (cons __tmp78871 __tmp78870))))
                                 (declare (not safe))
                                 (cons __tmp78869 '()))))
                          (declare (not safe))
                          (cons _L77055_ __tmp78868))))
                   (declare (not safe))
                   (cons __tmp78872 __tmp78867))))
              (___kont7830078301_
               (lambda (_L76972_ _L76974_)
                 (let ((__tmp78881
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp78873
                        (let ((__tmp78874
                               (let ((__tmp78875
                                      (let ((__tmp78880
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp78876
                                             (let ((__tmp78877
                                                    (lambda (_g7699376996_
                                                             _g7699476999_)
                                                      (let ((__tmp78878
                                                             (let ((__tmp78879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g7699376996_ __tmp78879))))
                (declare (not safe))
                (cons __tmp78878 _g7699476999_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp78877
                                                       '()
                                                       _L76972_))))
                                        (declare (not safe))
                                        (cons __tmp78880 __tmp78876))))
                                 (declare (not safe))
                                 (cons __tmp78875 '()))))
                          (declare (not safe))
                          (cons _L76974_ __tmp78874))))
                   (declare (not safe))
                   (cons __tmp78881 __tmp78873))))
              (___kont7830478305_
               (lambda (_L76884_ _L76886_)
                 (let ((__tmp78888
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp78882
                        (let ((__tmp78883
                               (let ((__tmp78884
                                      (let ((__tmp78887
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp78885
                                             (let ((__tmp78886
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L76884_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive: __tmp78886))))
                                        (declare (not safe))
                                        (cons __tmp78887 __tmp78885))))
                                 (declare (not safe))
                                 (cons __tmp78884 '()))))
                          (declare (not safe))
                          (cons _L76886_ __tmp78883))))
                   (declare (not safe))
                   (cons __tmp78888 __tmp78882))))
              (___kont7830678307_
               (lambda (_L76819_ _L76821_)
                 (let ((__tmp78898
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp78889
                        (let ((__tmp78890
                               (let ((__tmp78891
                                      (let ((__tmp78897
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp78892
                                             (let ((__tmp78893
                                                    (let ((__tmp78894
                                                           (lambda (_g7683876841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g7683976844_)
                     (let ((__tmp78895
                            (let ((__tmp78896
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g7683876841_ __tmp78896))))
                       (declare (not safe))
                       (cons __tmp78895 _g7683976844_)))))
              (declare (not safe))
              (foldr1 __tmp78894 '() _L76819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive: __tmp78893))))
                                        (declare (not safe))
                                        (cons __tmp78897 __tmp78892))))
                                 (declare (not safe))
                                 (cons __tmp78891 '()))))
                          (declare (not safe))
                          (cons _L76821_ __tmp78890))))
                   (declare (not safe))
                   (cons __tmp78898 __tmp78889)))))
          (let* ((___match7841478415_
                  (lambda (_e7674476769_
                           _hd7674376773_
                           _tl7674276776_
                           _e7674776779_
                           _hd7674676783_
                           _tl7674576786_
                           ___splice7830878309_
                           _target7674876789_
                           _tl7675076792_)
                    (letrec ((_loop7675176795_
                              (lambda (_hd7674976799_ _arity7675576802_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7674976799_))
                                    (let ((_e7675276805_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7674976799_))))
                                      (let ((_lp-tl7675476812_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7675276805_)))
                                            (_lp-hd7675376809_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7675276805_))))
                                        (_loop7675176795_
                                         _lp-tl7675476812_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd7675376809_
                                                 _arity7675576802_)))))
                                    (let ((_arity7675676815_
                                           (reverse _arity7675576802_)))
                                      (___kont7830678307_
                                       _arity7675676815_
                                       _hd7674676783_))))))
                      (_loop7675176795_ _target7674876789_ '()))))
                 (___match7837478375_
                  (lambda (_e7671276908_
                           _hd7671176912_
                           _tl7671076915_
                           _e7671576918_
                           _hd7671476922_
                           _tl7671376925_
                           _e7671876928_
                           _hd7671776932_
                           _tl7671676935_
                           _e7671976938_
                           ___splice7830278303_
                           _target7672076942_
                           _tl7672276945_)
                    (letrec ((_loop7672376948_
                              (lambda (_hd7672176952_ _arity7672776955_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7672176952_))
                                    (let ((_e7672476958_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7672176952_))))
                                      (let ((_lp-tl7672676965_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7672476958_)))
                                            (_lp-hd7672576962_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7672476958_))))
                                        (_loop7672376948_
                                         _lp-tl7672676965_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd7672576962_
                                                 _arity7672776955_)))))
                                    (let ((_arity7672876968_
                                           (reverse _arity7672776955_)))
                                      (___kont7830078301_
                                       _arity7672876968_
                                       _hd7671476922_))))))
                      (_loop7672376948_ _target7672076942_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7829578296_))
                (let ((_e7669777009_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7829578296_))))
                  (let ((_tl7669577016_
                         (let () (declare (not safe)) (##cdr _e7669777009_)))
                        (_hd7669677013_
                         (let () (declare (not safe)) (##car _e7669777009_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7669577016_))
                        (let ((_e7670077019_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7669577016_))))
                          (let ((_tl7669877026_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7670077019_)))
                                (_hd7669977023_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7670077019_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7669877026_))
                                (let ((_e7670377029_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7669877026_))))
                                  (let ((_tl7670177036_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7670377029_)))
                                        (_hd7670277033_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7670377029_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd7670277033_))
                                        (let ((_e7670477039_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd7670277033_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e7670477039_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl7670177036_))
                                                  (let ((_e7670777043_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl7670177036_))))
                                                    (let ((_tl7670577050_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e7670777043_)))
                                                          (_hd7670677047_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e7670777043_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl7670577050_))
                                                          (___kont7829878299_
                                                           _hd7670677047_
                                                           _hd7669977023_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl7670177036_))
                      (let ((___splice7830278303_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl7670177036_ '0))))
                        (let ((_tl7672276945_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7830278303_ '1)))
                              (_target7672076942_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7830278303_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7672276945_))
                              (___match7837478375_
                               _e7669777009_
                               _hd7669677013_
                               _tl7669577016_
                               _e7670077019_
                               _hd7669977023_
                               _tl7669877026_
                               _e7670377029_
                               _hd7670277033_
                               _tl7670177036_
                               _e7670477039_
                               ___splice7830278303_
                               _target7672076942_
                               _tl7672276945_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl7669877026_))
                                  (let ((___splice7830878309_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl7669877026_
                                            '0))))
                                    (let ((_tl7675076792_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice7830878309_
                                              '1)))
                                          (_target7674876789_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice7830878309_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7675076792_))
                                          (___match7841478415_
                                           _e7669777009_
                                           _hd7669677013_
                                           _tl7669577016_
                                           _e7670077019_
                                           _hd7669977023_
                                           _tl7669877026_
                                           ___splice7830878309_
                                           _target7674876789_
                                           _tl7675076792_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7669176762_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g7669176762_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl7669877026_))
                          (let ((___splice7830878309_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl7669877026_
                                    '0))))
                            (let ((_tl7675076792_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice7830878309_ '1)))
                                  (_target7674876789_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice7830878309_ '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl7675076792_))
                                  (___match7841478415_
                                   _e7669777009_
                                   _hd7669677013_
                                   _tl7669577016_
                                   _e7670077019_
                                   _hd7669977023_
                                   _tl7669877026_
                                   ___splice7830878309_
                                   _target7674876789_
                                   _tl7675076792_)
                                  (let ()
                                    (declare (not safe))
                                    (_g7669176762_)))))
                          (let () (declare (not safe)) (_g7669176762_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7670177036_))
                                                      (let ((___splice7830278303_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7670177036_ '0))))
                (let ((_tl7672276945_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7830278303_ '1)))
                      (_target7672076942_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7830278303_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7672276945_))
                      (___match7837478375_
                       _e7669777009_
                       _hd7669677013_
                       _tl7669577016_
                       _e7670077019_
                       _hd7669977023_
                       _tl7669877026_
                       _e7670377029_
                       _hd7670277033_
                       _tl7670177036_
                       _e7670477039_
                       ___splice7830278303_
                       _target7672076942_
                       _tl7672276945_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl7670177036_))
                          (___kont7830478305_ _hd7670277033_ _hd7669977023_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7669877026_))
                              (let ((___splice7830878309_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7669877026_
                                        '0))))
                                (let ((_tl7675076792_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice7830878309_
                                          '1)))
                                      (_target7674876789_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice7830878309_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7675076792_))
                                      (___match7841478415_
                                       _e7669777009_
                                       _hd7669677013_
                                       _tl7669577016_
                                       _e7670077019_
                                       _hd7669977023_
                                       _tl7669877026_
                                       ___splice7830878309_
                                       _target7674876789_
                                       _tl7675076792_)
                                      (let ()
                                        (declare (not safe))
                                        (_g7669176762_)))))
                              (let ()
                                (declare (not safe))
                                (_g7669176762_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7670177036_))
                  (___kont7830478305_ _hd7670277033_ _hd7669977023_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl7669877026_))
                      (let ((___splice7830878309_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl7669877026_ '0))))
                        (let ((_tl7675076792_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7830878309_ '1)))
                              (_target7674876789_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7830878309_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7675076792_))
                              (___match7841478415_
                               _e7669777009_
                               _hd7669677013_
                               _tl7669577016_
                               _e7670077019_
                               _hd7669977023_
                               _tl7669877026_
                               ___splice7830878309_
                               _target7674876789_
                               _tl7675076792_)
                              (let () (declare (not safe)) (_g7669176762_)))))
                      (let () (declare (not safe)) (_g7669176762_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7670177036_))
                                                  (___kont7830478305_
                                                   _hd7670277033_
                                                   _hd7669977023_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7669877026_))
                                                      (let ((___splice7830878309_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7669877026_ '0))))
                (let ((_tl7675076792_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7830878309_ '1)))
                      (_target7674876789_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7830878309_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7675076792_))
                      (___match7841478415_
                       _e7669777009_
                       _hd7669677013_
                       _tl7669577016_
                       _e7670077019_
                       _hd7669977023_
                       _tl7669877026_
                       ___splice7830878309_
                       _target7674876789_
                       _tl7675076792_)
                      (let () (declare (not safe)) (_g7669176762_)))))
              (let () (declare (not safe)) (_g7669176762_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7670177036_))
                                            (___kont7830478305_
                                             _hd7670277033_
                                             _hd7669977023_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl7669877026_))
                                                (let ((___splice7830878309_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl7669877026_
                                                          '0))))
                                                  (let ((_tl7675076792_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice7830878309_
                                                            '1)))
                                                        (_target7674876789_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice7830878309_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7675076792_))
                                                        (___match7841478415_
                                                         _e7669777009_
                                                         _hd7669677013_
                                                         _tl7669577016_
                                                         _e7670077019_
                                                         _hd7669977023_
                                                         _tl7669877026_
                                                         ___splice7830878309_
                                                         _target7674876789_
                                                         _tl7675076792_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7669176762_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7669176762_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7669877026_))
                                    (let ((___splice7830878309_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7669877026_
                                              '0))))
                                      (let ((_tl7675076792_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7830878309_
                                                '1)))
                                            (_target7674876789_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7830878309_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7675076792_))
                                            (___match7841478415_
                                             _e7669777009_
                                             _hd7669677013_
                                             _tl7669577016_
                                             _e7670077019_
                                             _hd7669977023_
                                             _tl7669877026_
                                             ___splice7830878309_
                                             _target7674876789_
                                             _tl7675076792_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7669176762_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7669176762_))))))
                        (let () (declare (not safe)) (_g7669176762_)))))
                (let () (declare (not safe)) (_g7669176762_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx77079_)
      (let* ((___stx7841778418_ _$stx77079_)
             (_g7708477119_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7841778418_)))))
        (let ((___kont7842078421_
               (lambda (_L77241_ _L77243_)
                 (let ((__tmp78904
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp78899
                        (let ((__tmp78900
                               (let ((__tmp78901
                                      (let ((__tmp78903
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp78902
                                             (let ()
                                               (declare (not safe))
                                               (cons _L77241_ '()))))
                                        (declare (not safe))
                                        (cons __tmp78903 __tmp78902))))
                                 (declare (not safe))
                                 (cons __tmp78901 '()))))
                          (declare (not safe))
                          (cons _L77243_ __tmp78900))))
                   (declare (not safe))
                   (cons __tmp78904 __tmp78899))))
              (___kont7842278423_
               (lambda (_L77176_ _L77178_)
                 (let ((__tmp78913
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp78905
                        (let ((__tmp78906
                               (let ((__tmp78907
                                      (let ((__tmp78912
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp78908
                                             (let ((__tmp78909
                                                    (lambda (_g7719577198_
                                                             _g7719677201_)
                                                      (let ((__tmp78910
                                                             (let ((__tmp78911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g7719577198_ __tmp78911))))
                (declare (not safe))
                (cons __tmp78910 _g7719677201_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp78909
                                                       '()
                                                       _L77176_))))
                                        (declare (not safe))
                                        (cons __tmp78912 __tmp78908))))
                                 (declare (not safe))
                                 (cons __tmp78907 '()))))
                          (declare (not safe))
                          (cons _L77178_ __tmp78906))))
                   (declare (not safe))
                   (cons __tmp78913 __tmp78905)))))
          (let ((___match7846678467_
                 (lambda (_e7710177126_
                          _hd7710077130_
                          _tl7709977133_
                          _e7710477136_
                          _hd7710377140_
                          _tl7710277143_
                          ___splice7842478425_
                          _target7710577146_
                          _tl7710777149_)
                   (letrec ((_loop7710877152_
                             (lambda (_hd7710677156_ _arity7711277159_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd7710677156_))
                                   (let ((_e7710977162_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd7710677156_))))
                                     (let ((_lp-tl7711177169_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e7710977162_)))
                                           (_lp-hd7711077166_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e7710977162_))))
                                       (_loop7710877152_
                                        _lp-tl7711177169_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd7711077166_
                                                _arity7711277159_)))))
                                   (let ((_arity7711377172_
                                          (reverse _arity7711277159_)))
                                     (___kont7842278423_
                                      _arity7711377172_
                                      _hd7710377140_))))))
                     (_loop7710877152_ _target7710577146_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7841778418_))
                (let ((_e7709077211_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7841778418_))))
                  (let ((_tl7708877218_
                         (let () (declare (not safe)) (##cdr _e7709077211_)))
                        (_hd7708977215_
                         (let () (declare (not safe)) (##car _e7709077211_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7708877218_))
                        (let ((_e7709377221_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7708877218_))))
                          (let ((_tl7709177228_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7709377221_)))
                                (_hd7709277225_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7709377221_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7709177228_))
                                (let ((_e7709677231_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7709177228_))))
                                  (let ((_tl7709477238_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7709677231_)))
                                        (_hd7709577235_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7709677231_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7709477238_))
                                        (___kont7842078421_
                                         _hd7709577235_
                                         _hd7709277225_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl7709177228_))
                                            (let ((___splice7842478425_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl7709177228_
                                                      '0))))
                                              (let ((_tl7710777149_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice7842478425_
                                                        '1)))
                                                    (_target7710577146_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice7842478425_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7710777149_))
                                                    (___match7846678467_
                                                     _e7709077211_
                                                     _hd7708977215_
                                                     _tl7708877218_
                                                     _e7709377221_
                                                     _hd7709277225_
                                                     _tl7709177228_
                                                     ___splice7842478425_
                                                     _target7710577146_
                                                     _tl7710777149_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7708477119_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g7708477119_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7709177228_))
                                    (let ((___splice7842478425_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7709177228_
                                              '0))))
                                      (let ((_tl7710777149_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7842478425_
                                                '1)))
                                            (_target7710577146_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7842478425_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7710777149_))
                                            (___match7846678467_
                                             _e7709077211_
                                             _hd7708977215_
                                             _tl7708877218_
                                             _e7709377221_
                                             _hd7709277225_
                                             _tl7709177228_
                                             ___splice7842478425_
                                             _target7710577146_
                                             _tl7710777149_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7708477119_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7708477119_))))))
                        (let () (declare (not safe)) (_g7708477119_)))))
                (let () (declare (not safe)) (_g7708477119_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx77263_)
      (let* ((_g7726777302_
              (lambda (_g7726877298_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7726877298_))))
             (_g7726677430_
              (lambda (_g7726877306_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7726877306_))
                    (let ((_e7727377309_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7726877306_))))
                      (let ((_hd7727277313_
                             (let ()
                               (declare (not safe))
                               (##car _e7727377309_)))
                            (_tl7727177316_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7727377309_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7727177316_))
                            (let ((_g78914_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7727177316_
                                      '0))))
                              (begin
                                (let ((_g78915_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g78914_)
                                             (##vector-length _g78914_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g78915_ 2)))
                                      (error "Context expects 2 values"
                                             _g78915_)))
                                (let ((_target7727477319_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g78914_ 0)))
                                      (_tl7727677322_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g78914_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7727677322_))
                                      (letrec ((_loop7727777325_
                                                (lambda (_hd7727577329_
                                                         _arity7728177332_
                                                         _prim7728277334_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7727577329_))
                                                      (let ((_e7727877337_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7727577329_))))
                (let ((_lp-hd7727977341_
                       (let () (declare (not safe)) (##car _e7727877337_)))
                      (_lp-tl7728077344_
                       (let () (declare (not safe)) (##cdr _e7727877337_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7727977341_))
                      (let ((_e7728777347_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7727977341_))))
                        (let ((_hd7728677351_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7728777347_)))
                              (_tl7728577354_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7728777347_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7728577354_))
                              (let ((_g78924_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7728577354_
                                        '0))))
                                (begin
                                  (let ((_g78925_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g78924_)
                                               (##vector-length _g78924_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g78925_ 2)))
                                        (error "Context expects 2 values"
                                               _g78925_)))
                                  (let ((_target7728877357_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g78924_ 0)))
                                        (_tl7729077360_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g78924_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7729077360_))
                                        (letrec ((_loop7729177363_
                                                  (lambda (_hd7728977367_
                                                           _arity7729577370_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd7728977367_))
                                                        (let ((_e7729277373_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd7728977367_))))
                  (let ((_lp-hd7729377377_
                         (let () (declare (not safe)) (##car _e7729277373_)))
                        (_lp-tl7729477380_
                         (let () (declare (not safe)) (##cdr _e7729277373_))))
                    (_loop7729177363_
                     _lp-tl7729477380_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd7729377377_ _arity7729577370_)))))
                (let ((_arity7729677383_ (reverse _arity7729577370_)))
                  (_loop7727777325_
                   _lp-tl7728077344_
                   (let ()
                     (declare (not safe))
                     (cons _arity7729677383_ _arity7728177332_))
                   (let ()
                     (declare (not safe))
                     (cons _hd7728677351_ _prim7728277334_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop7729177363_
                                           _target7728877357_
                                           '()))
                                        (_g7726777302_ _g7726877306_)))))
                              (_g7726777302_ _g7726877306_))))
                      (_g7726777302_ _g7726877306_))))
              (let ((_arity7728377387_ (reverse _arity7728177332_))
                    (_prim7728477390_ (reverse _prim7728277334_)))
                ((lambda (_L77393_ _L77395_)
                   (let ((__tmp78923
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp78916
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L77393_
                               _L77395_))
                            (let ((__tmp78917
                                   (lambda (_g7741077416_
                                            _g7741177419_
                                            _g7741277421_)
                                     (let ((__tmp78918
                                            (let ((__tmp78922
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp78919
                                                   (let ((__tmp78920
                                                          (let ((__tmp78921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g7741377424_ _g7741477427_)
                           (let ()
                             (declare (not safe))
                             (cons _g7741377424_ _g7741477427_)))))
                    (declare (not safe))
                    (foldr1 __tmp78921 '() _g7741077416_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7741177419_
                                                           __tmp78920))))
                                              (declare (not safe))
                                              (cons __tmp78922 __tmp78919))))
                                       (declare (not safe))
                                       (cons __tmp78918 _g7741277421_)))))
                              (declare (not safe))
                              (foldr2 __tmp78917 '() _L77393_ _L77395_)))))
                     (declare (not safe))
                     (cons __tmp78923 __tmp78916)))
                 _arity7728377387_
                 _prim7728477390_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7727777325_
                                         _target7727477319_
                                         '()
                                         '()))
                                      (_g7726777302_ _g7726877306_)))))
                            (_g7726777302_ _g7726877306_))))
                    (_g7726777302_ _g7726877306_)))))
        (_g7726677430_ _$stx77263_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx77436_)
      (let* ((_g7744077475_
              (lambda (_g7744177471_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7744177471_))))
             (_g7743977603_
              (lambda (_g7744177479_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7744177479_))
                    (let ((_e7744677482_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7744177479_))))
                      (let ((_hd7744577486_
                             (let ()
                               (declare (not safe))
                               (##car _e7744677482_)))
                            (_tl7744477489_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7744677482_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7744477489_))
                            (let ((_g78926_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7744477489_
                                      '0))))
                              (begin
                                (let ((_g78927_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g78926_)
                                             (##vector-length _g78926_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g78927_ 2)))
                                      (error "Context expects 2 values"
                                             _g78927_)))
                                (let ((_target7744777492_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g78926_ 0)))
                                      (_tl7744977495_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g78926_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7744977495_))
                                      (letrec ((_loop7745077498_
                                                (lambda (_hd7744877502_
                                                         _arity7745477505_
                                                         _prim7745577507_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7744877502_))
                                                      (let ((_e7745177510_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7744877502_))))
                (let ((_lp-hd7745277514_
                       (let () (declare (not safe)) (##car _e7745177510_)))
                      (_lp-tl7745377517_
                       (let () (declare (not safe)) (##cdr _e7745177510_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7745277514_))
                      (let ((_e7746077520_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7745277514_))))
                        (let ((_hd7745977524_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7746077520_)))
                              (_tl7745877527_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7746077520_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7745877527_))
                              (let ((_g78936_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7745877527_
                                        '0))))
                                (begin
                                  (let ((_g78937_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g78936_)
                                               (##vector-length _g78936_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g78937_ 2)))
                                        (error "Context expects 2 values"
                                               _g78937_)))
                                  (let ((_target7746177530_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g78936_ 0)))
                                        (_tl7746377533_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g78936_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7746377533_))
                                        (letrec ((_loop7746477536_
                                                  (lambda (_hd7746277540_
                                                           _arity7746877543_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd7746277540_))
                                                        (let ((_e7746577546_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd7746277540_))))
                  (let ((_lp-hd7746677550_
                         (let () (declare (not safe)) (##car _e7746577546_)))
                        (_lp-tl7746777553_
                         (let () (declare (not safe)) (##cdr _e7746577546_))))
                    (_loop7746477536_
                     _lp-tl7746777553_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd7746677550_ _arity7746877543_)))))
                (let ((_arity7746977556_ (reverse _arity7746877543_)))
                  (_loop7745077498_
                   _lp-tl7745377517_
                   (let ()
                     (declare (not safe))
                     (cons _arity7746977556_ _arity7745477505_))
                   (let ()
                     (declare (not safe))
                     (cons _hd7745977524_ _prim7745577507_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop7746477536_
                                           _target7746177530_
                                           '()))
                                        (_g7744077475_ _g7744177479_)))))
                              (_g7744077475_ _g7744177479_))))
                      (_g7744077475_ _g7744177479_))))
              (let ((_arity7745677560_ (reverse _arity7745477505_))
                    (_prim7745777563_ (reverse _prim7745577507_)))
                ((lambda (_L77566_ _L77568_)
                   (let ((__tmp78935
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp78928
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L77566_
                               _L77568_))
                            (let ((__tmp78929
                                   (lambda (_g7758377589_
                                            _g7758477592_
                                            _g7758577594_)
                                     (let ((__tmp78930
                                            (let ((__tmp78934
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp78931
                                                   (let ((__tmp78932
                                                          (let ((__tmp78933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g7758677597_ _g7758777600_)
                           (let ()
                             (declare (not safe))
                             (cons _g7758677597_ _g7758777600_)))))
                    (declare (not safe))
                    (foldr1 __tmp78933 '() _g7758377589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7758477592_
                                                           __tmp78932))))
                                              (declare (not safe))
                                              (cons __tmp78934 __tmp78931))))
                                       (declare (not safe))
                                       (cons __tmp78930 _g7758577594_)))))
                              (declare (not safe))
                              (foldr2 __tmp78929 '() _L77566_ _L77568_)))))
                     (declare (not safe))
                     (cons __tmp78935 __tmp78928)))
                 _arity7745677560_
                 _prim7745777563_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7745077498_
                                         _target7744777492_
                                         '()
                                         '()))
                                      (_g7744077475_ _g7744177479_)))))
                            (_g7744077475_ _g7744177479_))))
                    (_g7744077475_ _g7744177479_)))))
        (_g7743977603_ _$stx77436_)))))
