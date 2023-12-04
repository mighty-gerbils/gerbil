(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx74477_)
      (let* ((_g7448174499_
              (lambda (_g7448274495_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7448274495_))))
             (_g7448074554_
              (lambda (_g7448274503_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7448274503_))
                    (let ((_e7448774506_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7448274503_))))
                      (let ((_hd7448674510_
                             (let ()
                               (declare (not safe))
                               (##car _e7448774506_)))
                            (_tl7448574513_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7448774506_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7448574513_))
                            (let ((_e7449074516_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7448574513_))))
                              (let ((_hd7448974520_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7449074516_)))
                                    (_tl7448874523_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7449074516_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7448874523_))
                                    (let ((_e7449374526_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7448874523_))))
                                      (let ((_hd7449274530_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7449374526_)))
                                            (_tl7449174533_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7449374526_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7449174533_))
                                            ((lambda (_L74536_ _L74538_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier? _L74538_))
                                                   (let ((__tmp79561
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp79556
                                                          (let ((__tmp79558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79560
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp79559
                                (let ()
                                  (declare (not safe))
                                  (cons _L74538_ '()))))
                           (declare (not safe))
                           (cons __tmp79560 __tmp79559)))
                        (__tmp79557
                         (let () (declare (not safe)) (cons _L74536_ '()))))
                    (declare (not safe))
                    (cons __tmp79558 __tmp79557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79561
                                                           __tmp79556))
                                                   (_g7448174499_
                                                    _g7448274503_)))
                                             _hd7449274530_
                                             _hd7448974520_)
                                            (_g7448174499_ _g7448274503_))))
                                    (_g7448174499_ _g7448274503_))))
                            (_g7448174499_ _g7448274503_))))
                    (_g7448174499_ _g7448274503_)))))
        (_g7448074554_ _$stx74477_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx74558_)
      (let* ((_g7456274591_
              (lambda (_g7456374587_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7456374587_))))
             (_g7456174691_
              (lambda (_g7456374595_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7456374595_))
                    (let ((_e7456874598_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7456374595_))))
                      (let ((_hd7456774602_
                             (let ()
                               (declare (not safe))
                               (##car _e7456874598_)))
                            (_tl7456674605_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7456874598_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7456674605_))
                            (let ((_g79562_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7456674605_
                                      '0))))
                              (begin
                                (let ((_g79563_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g79562_)
                                             (##vector-length _g79562_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g79563_ 2)))
                                      (error "Context expects 2 values"
                                             _g79563_)))
                                (let ((_target7456974608_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79562_ 0)))
                                      (_tl7457174611_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79562_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7457174611_))
                                      (letrec ((_loop7457274614_
                                                (lambda (_hd7457074618_
                                                         _type7457674621_
                                                         _symbol7457774623_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7457074618_))
                                                      (let ((_e7457374626_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7457074618_))))
                (let ((_lp-hd7457474630_
                       (let () (declare (not safe)) (##car _e7457374626_)))
                      (_lp-tl7457574633_
                       (let () (declare (not safe)) (##cdr _e7457374626_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7457474630_))
                      (let ((_e7458274636_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7457474630_))))
                        (let ((_hd7458174640_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7458274636_)))
                              (_tl7458074643_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7458274636_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7458074643_))
                              (let ((_e7458574646_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7458074643_))))
                                (let ((_hd7458474650_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7458574646_)))
                                      (_tl7458374653_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7458574646_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7458374653_))
                                      (_loop7457274614_
                                       _lp-tl7457574633_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd7458474650_
                                               _type7457674621_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd7458174640_
                                               _symbol7457774623_)))
                                      (_g7456274591_ _g7456374595_))))
                              (_g7456274591_ _g7456374595_))))
                      (_g7456274591_ _g7456374595_))))
              (let ((_type7457874656_ (reverse _type7457674621_))
                    (_symbol7457974659_ (reverse _symbol7457774623_)))
                ((lambda (_L74662_ _L74664_)
                   (let ((__tmp79570
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp79564
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L74662_
                               _L74664_))
                            (let ((__tmp79565
                                   (lambda (_g7467974683_
                                            _g7468074686_
                                            _g7468174688_)
                                     (let ((__tmp79566
                                            (let ((__tmp79569
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp79567
                                                   (let ((__tmp79568
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g7467974683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7468074686_
                                                           __tmp79568))))
                                              (declare (not safe))
                                              (cons __tmp79569 __tmp79567))))
                                       (declare (not safe))
                                       (cons __tmp79566 _g7468174688_)))))
                              (declare (not safe))
                              (foldr2 __tmp79565 '() _L74662_ _L74664_)))))
                     (declare (not safe))
                     (cons __tmp79570 __tmp79564)))
                 _type7457874656_
                 _symbol7457974659_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7457274614_
                                         _target7456974608_
                                         '()
                                         '()))
                                      (_g7456274591_ _g7456374595_)))))
                            (_g7456274591_ _g7456374595_))))
                    (_g7456274591_ _g7456374595_)))))
        (_g7456174691_ _$stx74558_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx74696_)
      (let* ((___stx7869778698_ _$stx74696_)
             (_g7470174743_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx7869778698_)))))
        (let ((___kont7870078701_
               (lambda (_L74871_ _L74873_ _L74874_ _L74875_)
                 (let ((__tmp79584
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp79571
                        (let ((__tmp79581
                               (let ((__tmp79583
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79582
                                      (let ()
                                        (declare (not safe))
                                        (cons _L74875_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79583 __tmp79582)))
                              (__tmp79572
                               (let ((__tmp79578
                                      (let ((__tmp79580
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79579
                                             (let ()
                                               (declare (not safe))
                                               (cons _L74874_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79580 __tmp79579)))
                                     (__tmp79573
                                      (let ((__tmp79575
                                             (let ((__tmp79577
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp79576
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L74873_ '()))))
                                               (declare (not safe))
                                               (cons __tmp79577 __tmp79576)))
                                            (__tmp79574
                                             (let ()
                                               (declare (not safe))
                                               (cons _L74871_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79575 __tmp79574))))
                                 (declare (not safe))
                                 (cons __tmp79578 __tmp79573))))
                          (declare (not safe))
                          (cons __tmp79581 __tmp79572))))
                   (declare (not safe))
                   (cons __tmp79584 __tmp79571))))
              (___kont7870278703_
               (lambda (_L74790_ _L74792_ _L74793_ _L74794_)
                 (let ((__tmp79585
                        (let ((__tmp79586
                               (let ((__tmp79587
                                      (let ((__tmp79588
                                             (let ((__tmp79589
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp79589 '()))))
                                        (declare (not safe))
                                        (cons _L74790_ __tmp79588))))
                                 (declare (not safe))
                                 (cons _L74792_ __tmp79587))))
                          (declare (not safe))
                          (cons _L74793_ __tmp79586))))
                   (declare (not safe))
                   (cons _L74794_ __tmp79585)))))
          (let ((___match7873678737_
                 (lambda (_e7470974821_
                          _hd7470874825_
                          _tl7470774828_
                          _e7471274831_
                          _hd7471174835_
                          _tl7471074838_
                          _e7471574841_
                          _hd7471474845_
                          _tl7471374848_
                          _e7471874851_
                          _hd7471774855_
                          _tl7471674858_
                          _e7472174861_
                          _hd7472074865_
                          _tl7471974868_)
                   (let ((_L74871_ _hd7472074865_)
                         (_L74873_ _hd7471774855_)
                         (_L74874_ _hd7471474845_)
                         (_L74875_ _hd7471174835_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L74875_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L74874_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L74873_)))
                         (___kont7870078701_
                          _L74871_
                          _L74873_
                          _L74874_
                          _L74875_)
                         (let () (declare (not safe)) (_g7470174743_)))))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7869778698_))
                (let ((_e7470974821_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7869778698_))))
                  (let ((_tl7470774828_
                         (let () (declare (not safe)) (##cdr _e7470974821_)))
                        (_hd7470874825_
                         (let () (declare (not safe)) (##car _e7470974821_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7470774828_))
                        (let ((_e7471274831_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7470774828_))))
                          (let ((_tl7471074838_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7471274831_)))
                                (_hd7471174835_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7471274831_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7471074838_))
                                (let ((_e7471574841_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7471074838_))))
                                  (let ((_tl7471374848_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7471574841_)))
                                        (_hd7471474845_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7471574841_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl7471374848_))
                                        (let ((_e7471874851_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl7471374848_))))
                                          (let ((_tl7471674858_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7471874851_)))
                                                (_hd7471774855_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7471874851_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7471674858_))
                                                (let ((_e7472174861_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7471674858_))))
                                                  (let ((_tl7471974868_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7472174861_)))
                                                        (_hd7472074865_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7472174861_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7471974868_))
                                                        (___match7873678737_
                                                         _e7470974821_
                                                         _hd7470874825_
                                                         _tl7470774828_
                                                         _e7471274831_
                                                         _hd7471174835_
                                                         _tl7471074838_
                                                         _e7471574841_
                                                         _hd7471474845_
                                                         _tl7471374848_
                                                         _e7471874851_
                                                         _hd7471774855_
                                                         _tl7471674858_
                                                         _e7472174861_
                                                         _hd7472074865_
                                                         _tl7471974868_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7470174743_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7471674858_))
                                                    (___kont7870278703_
                                                     _hd7471774855_
                                                     _hd7471474845_
                                                     _hd7471174835_
                                                     _hd7470874825_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7470174743_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g7470174743_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g7470174743_)))))
                        (let () (declare (not safe)) (_g7470174743_)))))
                (let () (declare (not safe)) (_g7470174743_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx74900_)
      (let* ((_g7490474939_
              (lambda (_g7490574935_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7490574935_))))
             (_g7490375058_
              (lambda (_g7490574943_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7490574943_))
                    (let ((_e7491174946_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7490574943_))))
                      (let ((_hd7491074950_
                             (let ()
                               (declare (not safe))
                               (##car _e7491174946_)))
                            (_tl7490974953_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7491174946_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7490974953_))
                            (let ((_g79590_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7490974953_
                                      '0))))
                              (begin
                                (let ((_g79591_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g79590_)
                                             (##vector-length _g79590_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g79591_ 2)))
                                      (error "Context expects 2 values"
                                             _g79591_)))
                                (let ((_target7491274956_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79590_ 0)))
                                      (_tl7491474959_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79590_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7491474959_))
                                      (letrec ((_loop7491574962_
                                                (lambda (_hd7491374966_
                                                         _symbol7491974969_
                                                         _method7492074971_
                                                         _type-t7492174973_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7491374966_))
                                                      (let ((_e7491674976_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7491374966_))))
                (let ((_lp-hd7491774980_
                       (let () (declare (not safe)) (##car _e7491674976_)))
                      (_lp-tl7491874983_
                       (let () (declare (not safe)) (##cdr _e7491674976_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7491774980_))
                      (let ((_e7492774986_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7491774980_))))
                        (let ((_hd7492674990_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7492774986_)))
                              (_tl7492574993_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7492774986_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7492574993_))
                              (let ((_e7493074996_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7492574993_))))
                                (let ((_hd7492975000_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7493074996_)))
                                      (_tl7492875003_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7493074996_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7492875003_))
                                      (let ((_e7493375006_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7492875003_))))
                                        (let ((_hd7493275010_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7493375006_)))
                                              (_tl7493175013_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7493375006_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7493175013_))
                                              (_loop7491574962_
                                               _lp-tl7491874983_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7493275010_
                                                       _symbol7491974969_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7492975000_
                                                       _method7492074971_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7492674990_
                                                       _type-t7492174973_)))
                                              (_g7490474939_ _g7490574943_))))
                                      (_g7490474939_ _g7490574943_))))
                              (_g7490474939_ _g7490574943_))))
                      (_g7490474939_ _g7490574943_))))
              (let ((_symbol7492275016_ (reverse _symbol7491974969_))
                    (_method7492375019_ (reverse _method7492074971_))
                    (_type-t7492475021_ (reverse _type-t7492174973_)))
                ((lambda (_L75024_ _L75026_ _L75027_)
                   (let ((__tmp79599
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp79592
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L75024_
                               _L75026_
                               _L75027_))
                            (let ((__tmp79593
                                   (lambda (_g7504375048_
                                            _g7504475051_
                                            _g7504575053_
                                            _g7504675055_)
                                     (let ((__tmp79594
                                            (let ((__tmp79598
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp79595
                                                   (let ((__tmp79596
                                                          (let ((__tmp79597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g7504375048_ '()))))
                    (declare (not safe))
                    (cons _g7504475051_ __tmp79597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7504575053_
                                                           __tmp79596))))
                                              (declare (not safe))
                                              (cons __tmp79598 __tmp79595))))
                                       (declare (not safe))
                                       (cons __tmp79594 _g7504675055_)))))
                              (declare (not safe))
                              (foldr* __tmp79593
                                      '()
                                      _L75024_
                                      _L75026_
                                      _L75027_)))))
                     (declare (not safe))
                     (cons __tmp79599 __tmp79592)))
                 _symbol7492275016_
                 _method7492375019_
                 _type-t7492475021_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7491574962_
                                         _target7491274956_
                                         '()
                                         '()
                                         '()))
                                      (_g7490474939_ _g7490574943_)))))
                            (_g7490474939_ _g7490574943_))))
                    (_g7490474939_ _g7490574943_)))))
        (_g7490375058_ _$stx74900_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx75063_)
      (let* ((_g7506775100_
              (lambda (_g7506875096_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7506875096_))))
             (_g7506675214_
              (lambda (_g7506875104_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7506875104_))
                    (let ((_e7507475107_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7506875104_))))
                      (let ((_hd7507375111_
                             (let ()
                               (declare (not safe))
                               (##car _e7507475107_)))
                            (_tl7507275114_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7507475107_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7507275114_))
                            (let ((_e7507775117_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7507275114_))))
                              (let ((_hd7507675121_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7507775117_)))
                                    (_tl7507575124_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7507775117_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7507575124_))
                                    (let ((_g79600_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7507575124_
                                              '0))))
                                      (begin
                                        (let ((_g79601_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g79600_)
                                                     (##vector-length _g79600_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g79601_ 2)))
                                              (error "Context expects 2 values"
                                                     _g79601_)))
                                        (let ((_target7507875127_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79600_ 0)))
                                              (_tl7508075130_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79600_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7508075130_))
                                              (letrec ((_loop7508175133_
                                                        (lambda (_hd7507975137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol7508575140_
                         _method7508675142_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd7507975137_))
                      (let ((_e7508275145_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd7507975137_))))
                        (let ((_lp-hd7508375149_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7508275145_)))
                              (_lp-tl7508475152_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7508275145_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd7508375149_))
                              (let ((_e7509175155_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd7508375149_))))
                                (let ((_hd7509075159_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7509175155_)))
                                      (_tl7508975162_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7509175155_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7508975162_))
                                      (let ((_e7509475165_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7508975162_))))
                                        (let ((_hd7509375169_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7509475165_)))
                                              (_tl7509275172_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7509475165_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7509275172_))
                                              (_loop7508175133_
                                               _lp-tl7508475152_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7509375169_
                                                       _symbol7508575140_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7509075159_
                                                       _method7508675142_)))
                                              (_g7506775100_ _g7506875104_))))
                                      (_g7506775100_ _g7506875104_))))
                              (_g7506775100_ _g7506875104_))))
                      (let ((_symbol7508775175_ (reverse _symbol7508575140_))
                            (_method7508875178_ (reverse _method7508675142_)))
                        ((lambda (_L75181_ _L75183_ _L75184_)
                           (let ((__tmp79609
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp79602
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L75181_
                                       _L75183_))
                                    (let ((__tmp79603
                                           (lambda (_g7520275206_
                                                    _g7520375209_
                                                    _g7520475211_)
                                             (let ((__tmp79604
                                                    (let ((__tmp79608
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp79605
                                                           (let ((__tmp79606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp79607
                                 (let ()
                                   (declare (not safe))
                                   (cons _g7520275206_ '()))))
                            (declare (not safe))
                            (cons _g7520375209_ __tmp79607))))
                     (declare (not safe))
                     (cons _L75184_ __tmp79606))))
              (declare (not safe))
              (cons __tmp79608 __tmp79605))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79604
                                                     _g7520475211_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp79603
                                              '()
                                              _L75181_
                                              _L75183_)))))
                             (declare (not safe))
                             (cons __tmp79609 __tmp79602)))
                         _symbol7508775175_
                         _method7508875178_
                         _hd7507675121_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7508175133_
                                                 _target7507875127_
                                                 '()
                                                 '()))
                                              (_g7506775100_ _g7506875104_)))))
                                    (_g7506775100_ _g7506875104_))))
                            (_g7506775100_ _g7506875104_))))
                    (_g7506775100_ _g7506875104_)))))
        (_g7506675214_ _$stx75063_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx75219_)
      (let* ((_g7522375237_
              (lambda (_g7522475233_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7522475233_))))
             (_g7522275278_
              (lambda (_g7522475241_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7522475241_))
                    (let ((_e7522875244_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7522475241_))))
                      (let ((_hd7522775248_
                             (let ()
                               (declare (not safe))
                               (##car _e7522875244_)))
                            (_tl7522675251_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7522875244_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7522675251_))
                            (let ((_e7523175254_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7522675251_))))
                              (let ((_hd7523075258_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7523175254_)))
                                    (_tl7522975261_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7523175254_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7522975261_))
                                    ((lambda (_L75264_)
                                       (let ((__tmp79614
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp79610
                                              (let ((__tmp79611
                                                     (let ((__tmp79613
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79612
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L75264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79613 __tmp79612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79611 '()))))
                                         (declare (not safe))
                                         (cons __tmp79614 __tmp79610)))
                                     _hd7523075258_)
                                    (_g7522375237_ _g7522475241_))))
                            (_g7522375237_ _g7522475241_))))
                    (_g7522375237_ _g7522475241_)))))
        (_g7522275278_ _$stx75219_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx75282_)
      (let* ((___stx7876578766_ _$stx75282_)
             (_g7528875354_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx7876578766_)))))
        (let ((___kont7876878769_
               (lambda (_L75576_ _L75578_ _L75579_ _L75580_ _L75581_)
                 (let ((__tmp79620
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f '@make-struct-type)))
                       (__tmp79615
                        (let ((__tmp79616
                               (let ((__tmp79617
                                      (let ((__tmp79618
                                             (let ((__tmp79619
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L75576_ '()))))
                                               (declare (not safe))
                                               (cons _L75578_ __tmp79619))))
                                        (declare (not safe))
                                        (cons _L75579_ __tmp79618))))
                                 (declare (not safe))
                                 (cons _L75580_ __tmp79617))))
                          (declare (not safe))
                          (cons _L75581_ __tmp79616))))
                   (declare (not safe))
                   (cons __tmp79620 __tmp79615))))
              (___kont7877078771_
               (lambda (_L75486_ _L75488_ _L75489_ _L75490_)
                 (let ((__tmp79621
                        (let ((__tmp79622
                               (let ((__tmp79623
                                      (let ((__tmp79624
                                             (let ((__tmp79625
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons '#f __tmp79625))))
                                        (declare (not safe))
                                        (cons _L75486_ __tmp79624))))
                                 (declare (not safe))
                                 (cons _L75488_ __tmp79623))))
                          (declare (not safe))
                          (cons _L75489_ __tmp79622))))
                   (declare (not safe))
                   (cons _L75490_ __tmp79621))))
              (___kont7877278773_
               (lambda (_L75411_ _L75413_ _L75414_ _L75415_ _L75416_)
                 (let ((__tmp79626
                        (let ((__tmp79631
                               (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'type)))
                              (__tmp79627
                               (let ((__tmp79628
                                      (let ((__tmp79629
                                             (let ((__tmp79630
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons _L75411_ __tmp79630))))
                                        (declare (not safe))
                                        (cons _L75413_ __tmp79629))))
                                 (declare (not safe))
                                 (cons _L75414_ __tmp79628))))
                          (declare (not safe))
                          (cons __tmp79631 __tmp79627))))
                   (declare (not safe))
                   (cons _L75416_ __tmp79626)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7876578766_))
              (let ((_e7529775516_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7876578766_))))
                (let ((_tl7529575523_
                       (let () (declare (not safe)) (##cdr _e7529775516_)))
                      (_hd7529675520_
                       (let () (declare (not safe)) (##car _e7529775516_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7529575523_))
                      (let ((_e7530075526_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7529575523_))))
                        (let ((_tl7529875533_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7530075526_)))
                              (_hd7529975530_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7530075526_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7529875533_))
                              (let ((_e7530375536_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7529875533_))))
                                (let ((_tl7530175543_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7530375536_)))
                                      (_hd7530275540_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7530375536_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7530175543_))
                                      (let ((_e7530675546_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7530175543_))))
                                        (let ((_tl7530475553_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7530675546_)))
                                              (_hd7530575550_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7530675546_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl7530475553_))
                                              (let ((_e7530975556_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl7530475553_))))
                                                (let ((_tl7530775563_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e7530975556_)))
                                                      (_hd7530875560_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e7530975556_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl7530775563_))
                                                      (let ((_e7531275566_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _tl7530775563_))))
                (let ((_tl7531075573_
                       (let () (declare (not safe)) (##cdr _e7531275566_)))
                      (_hd7531175570_
                       (let () (declare (not safe)) (##car _e7531275566_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7531075573_))
                      (___kont7876878769_
                       _hd7531175570_
                       _hd7530875560_
                       _hd7530575550_
                       _hd7530275540_
                       _hd7529975530_)
                      (let () (declare (not safe)) (_g7528875354_)))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7530775563_))
                  (___kont7877278773_
                   _hd7530875560_
                   _hd7530575550_
                   _hd7530275540_
                   _hd7529975530_
                   _hd7529675520_)
                  (let () (declare (not safe)) (_g7528875354_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7530475553_))
                                                  (___kont7877078771_
                                                   _hd7530575550_
                                                   _hd7530275540_
                                                   _hd7529975530_
                                                   _hd7529675520_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7528875354_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g7528875354_)))))
                              (let () (declare (not safe)) (_g7528875354_)))))
                      (let () (declare (not safe)) (_g7528875354_)))))
              (let () (declare (not safe)) (_g7528875354_)))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx75609_)
      (let* ((___stx7887378874_ _$stx75609_)
             (_g7561475667_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx7887378874_)))))
        (let ((___kont7887678877_
               (lambda (_L75835_ _L75837_ _L75838_ _L75839_)
                 (let ((__tmp79647
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-type)))
                       (__tmp79632
                        (let ((__tmp79644
                               (let ((__tmp79646
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79645
                                      (let ()
                                        (declare (not safe))
                                        (cons _L75839_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79646 __tmp79645)))
                              (__tmp79633
                               (let ((__tmp79634
                                      (let ((__tmp79635
                                             (let ((__tmp79636
                                                    (let ((__tmp79641
                                                           (let ((__tmp79643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp79642
                          (let () (declare (not safe)) (cons _L75837_ '()))))
                     (declare (not safe))
                     (cons __tmp79643 __tmp79642)))
                  (__tmp79637
                   (let ((__tmp79638
                          (let ((__tmp79640
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp79639
                                 (let ()
                                   (declare (not safe))
                                   (cons _L75835_ '()))))
                            (declare (not safe))
                            (cons __tmp79640 __tmp79639))))
                     (declare (not safe))
                     (cons __tmp79638 '()))))
              (declare (not safe))
              (cons __tmp79641 __tmp79637))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '0 __tmp79636))))
                                        (declare (not safe))
                                        (cons _L75838_ __tmp79635))))
                                 (declare (not safe))
                                 (cons '#f __tmp79634))))
                          (declare (not safe))
                          (cons __tmp79644 __tmp79633))))
                   (declare (not safe))
                   (cons __tmp79647 __tmp79632))))
              (___kont7887878879_
               (lambda (_L75734_ _L75736_ _L75737_ _L75738_ _L75739_)
                 (let ((__tmp79729
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'let*)))
                       (__tmp79648
                        (let ((__tmp79669
                               (let ((__tmp79720
                                      (let ((__tmp79728
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'super-type)))
                                            (__tmp79721
                                             (let ((__tmp79722
                                                    (let ((__tmp79727
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-resolve-type)))
                                                          (__tmp79723
                                                           (let ((__tmp79724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp79726
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp79725
                                 (let ()
                                   (declare (not safe))
                                   (cons _L75738_ '()))))
                            (declare (not safe))
                            (cons __tmp79726 __tmp79725))))
                     (declare (not safe))
                     (cons __tmp79724 '()))))
              (declare (not safe))
              (cons __tmp79727 __tmp79723))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79722 '()))))
                                        (declare (not safe))
                                        (cons __tmp79728 __tmp79721)))
                                     (__tmp79670
                                      (let ((__tmp79692
                                             (let ((__tmp79719
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'xfields)))
                                                   (__tmp79693
                                                    (let ((__tmp79694
                                                           (let ((__tmp79718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'and)))
                         (__tmp79695
                          (let ((__tmp79717
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'super-type)))
                                (__tmp79696
                                 (let ((__tmp79697
                                        (let ((__tmp79716
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'alet)))
                                              (__tmp79698
                                               (let ((__tmp79709
                                                      (let ((__tmp79715
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'xfields)))
                    (__tmp79710
                     (let ((__tmp79711
                            (let ((__tmp79714
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-xfields)))
                                  (__tmp79712
                                   (let ((__tmp79713
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp79713 '()))))
                              (declare (not safe))
                              (cons __tmp79714 __tmp79712))))
                       (declare (not safe))
                       (cons __tmp79711 '()))))
                (declare (not safe))
                (cons __tmp79715 __tmp79710)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp79699
                                                      (let ((__tmp79700
                                                             (let ((__tmp79708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'fx+)))
                           (__tmp79701
                            (let ((__tmp79707
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'xfields)))
                                  (__tmp79702
                                   (let ((__tmp79703
                                          (let ((__tmp79706
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '!struct-type-fields)))
                                                (__tmp79704
                                                 (let ((__tmp79705
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'super-type))))
                                                   (declare (not safe))
                                                   (cons __tmp79705 '()))))
                                            (declare (not safe))
                                            (cons __tmp79706 __tmp79704))))
                                     (declare (not safe))
                                     (cons __tmp79703 '()))))
                              (declare (not safe))
                              (cons __tmp79707 __tmp79702))))
                       (declare (not safe))
                       (cons __tmp79708 __tmp79701))))
                (declare (not safe))
                (cons __tmp79700 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp79709
                                                       __tmp79699))))
                                          (declare (not safe))
                                          (cons __tmp79716 __tmp79698))))
                                   (declare (not safe))
                                   (cons __tmp79697 '()))))
                            (declare (not safe))
                            (cons __tmp79717 __tmp79696))))
                     (declare (not safe))
                     (cons __tmp79718 __tmp79695))))
              (declare (not safe))
              (cons __tmp79694 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79719 __tmp79693)))
                                            (__tmp79671
                                             (let ((__tmp79672
                                                    (let ((__tmp79691
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'xtor)))
                                                          (__tmp79673
                                                           (let ((__tmp79674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp79690
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'or)))
                                (__tmp79675
                                 (let ((__tmp79687
                                        (let ((__tmp79689
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp79688
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L75736_ '()))))
                                          (declare (not safe))
                                          (cons __tmp79689 __tmp79688)))
                                       (__tmp79676
                                        (let ((__tmp79677
                                               (let ((__tmp79686
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'if)))
                                                     (__tmp79678
                                                      (let ((__tmp79685
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'super-type)))
                    (__tmp79679
                     (let ((__tmp79681
                            (let ((__tmp79684
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-ctor)))
                                  (__tmp79682
                                   (let ((__tmp79683
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp79683 '()))))
                              (declare (not safe))
                              (cons __tmp79684 __tmp79682)))
                           (__tmp79680
                            (let () (declare (not safe)) (cons '#!void '()))))
                       (declare (not safe))
                       (cons __tmp79681 __tmp79680))))
                (declare (not safe))
                (cons __tmp79685 __tmp79679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp79686
                                                       __tmp79678))))
                                          (declare (not safe))
                                          (cons __tmp79677 '()))))
                                   (declare (not safe))
                                   (cons __tmp79687 __tmp79676))))
                            (declare (not safe))
                            (cons __tmp79690 __tmp79675))))
                     (declare (not safe))
                     (cons __tmp79674 '()))))
              (declare (not safe))
              (cons __tmp79691 __tmp79673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79672 '()))))
                                        (declare (not safe))
                                        (cons __tmp79692 __tmp79671))))
                                 (declare (not safe))
                                 (cons __tmp79720 __tmp79670)))
                              (__tmp79649
                               (let ((__tmp79650
                                      (let ((__tmp79668
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!struct-type)))
                                            (__tmp79651
                                             (let ((__tmp79665
                                                    (let ((__tmp79667
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp79666
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L75739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp79667 __tmp79666)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp79652
                                                    (let ((__tmp79662
                                                           (let ((__tmp79664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp79663
                          (let () (declare (not safe)) (cons _L75738_ '()))))
                     (declare (not safe))
                     (cons __tmp79664 __tmp79663)))
                  (__tmp79653
                   (let ((__tmp79654
                          (let ((__tmp79661
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'xfields)))
                                (__tmp79655
                                 (let ((__tmp79660
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'xtor)))
                                       (__tmp79656
                                        (let ((__tmp79657
                                               (let ((__tmp79659
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'quote)))
                                                     (__tmp79658
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L75734_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79659
                                                       __tmp79658))))
                                          (declare (not safe))
                                          (cons __tmp79657 '()))))
                                   (declare (not safe))
                                   (cons __tmp79660 __tmp79656))))
                            (declare (not safe))
                            (cons __tmp79661 __tmp79655))))
                     (declare (not safe))
                     (cons _L75737_ __tmp79654))))
              (declare (not safe))
              (cons __tmp79662 __tmp79653))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79665 __tmp79652))))
                                        (declare (not safe))
                                        (cons __tmp79668 __tmp79651))))
                                 (declare (not safe))
                                 (cons __tmp79650 '()))))
                          (declare (not safe))
                          (cons __tmp79669 __tmp79649))))
                   (declare (not safe))
                   (cons __tmp79729 __tmp79648)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7887378874_))
              (let ((_e7562275771_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7887378874_))))
                (let ((_tl7562075778_
                       (let () (declare (not safe)) (##cdr _e7562275771_)))
                      (_hd7562175775_
                       (let () (declare (not safe)) (##car _e7562275771_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7562075778_))
                      (let ((_e7562575781_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7562075778_))))
                        (let ((_tl7562375788_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7562575781_)))
                              (_hd7562475785_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7562575781_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7562375788_))
                              (let ((_e7562875791_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7562375788_))))
                                (let ((_tl7562675798_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7562875791_)))
                                      (_hd7562775795_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7562875791_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd7562775795_))
                                      (let ((_e7562975801_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd7562775795_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e7562975801_ '#f))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7562675798_))
                                                (let ((_e7563275805_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7562675798_))))
                                                  (let ((_tl7563075812_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7563275805_)))
                                                        (_hd7563175809_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7563275805_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7563075812_))
                                                        (let ((_e7563575815_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7563075812_))))
                  (let ((_tl7563375822_
                         (let () (declare (not safe)) (##cdr _e7563575815_)))
                        (_hd7563475819_
                         (let () (declare (not safe)) (##car _e7563575815_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7563375822_))
                        (let ((_e7563875825_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7563375822_))))
                          (let ((_tl7563675832_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7563875825_)))
                                (_hd7563775829_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7563875825_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7563675832_))
                                (___kont7887678877_
                                 _hd7563775829_
                                 _hd7563475819_
                                 _hd7563175809_
                                 _hd7562475785_)
                                (let ()
                                  (declare (not safe))
                                  (_g7561475667_)))))
                        (let () (declare (not safe)) (_g7561475667_)))))
                (let () (declare (not safe)) (_g7561475667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7561475667_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7562675798_))
                                                (let ((_e7565575704_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7562675798_))))
                                                  (let ((_tl7565375711_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7565575704_)))
                                                        (_hd7565475708_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7565575704_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7565375711_))
                                                        (let ((_e7565875714_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7565375711_))))
                  (let ((_tl7565675721_
                         (let () (declare (not safe)) (##cdr _e7565875714_)))
                        (_hd7565775718_
                         (let () (declare (not safe)) (##car _e7565875714_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7565675721_))
                        (let ((_e7566175724_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7565675721_))))
                          (let ((_tl7565975731_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7566175724_)))
                                (_hd7566075728_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7566175724_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7565975731_))
                                (___kont7887878879_
                                 _hd7566075728_
                                 _hd7565775718_
                                 _hd7565475708_
                                 _hd7562775795_
                                 _hd7562475785_)
                                (let ()
                                  (declare (not safe))
                                  (_g7561475667_)))))
                        (let () (declare (not safe)) (_g7561475667_)))))
                (let () (declare (not safe)) (_g7561475667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7561475667_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl7562675798_))
                                          (let ((_e7565575704_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl7562675798_))))
                                            (let ((_tl7565375711_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7565575704_)))
                                                  (_hd7565475708_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7565575704_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl7565375711_))
                                                  (let ((_e7565875714_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl7565375711_))))
                                                    (let ((_tl7565675721_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e7565875714_)))
                                                          (_hd7565775718_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e7565875714_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl7565675721_))
                                                          (let ((_e7566175724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _tl7565675721_))))
                    (let ((_tl7565975731_
                           (let () (declare (not safe)) (##cdr _e7566175724_)))
                          (_hd7566075728_
                           (let ()
                             (declare (not safe))
                             (##car _e7566175724_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl7565975731_))
                          (___kont7887878879_
                           _hd7566075728_
                           _hd7565775718_
                           _hd7565475708_
                           _hd7562775795_
                           _hd7562475785_)
                          (let () (declare (not safe)) (_g7561475667_)))))
                  (let () (declare (not safe)) (_g7561475667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7561475667_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g7561475667_))))))
                              (let () (declare (not safe)) (_g7561475667_)))))
                      (let () (declare (not safe)) (_g7561475667_)))))
              (let () (declare (not safe)) (_g7561475667_)))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx75867_)
      (let* ((_g7587175885_
              (lambda (_g7587275881_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7587275881_))))
             (_g7587075926_
              (lambda (_g7587275889_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7587275889_))
                    (let ((_e7587675892_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7587275889_))))
                      (let ((_hd7587575896_
                             (let ()
                               (declare (not safe))
                               (##car _e7587675892_)))
                            (_tl7587475899_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7587675892_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7587475899_))
                            (let ((_e7587975902_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7587475899_))))
                              (let ((_hd7587875906_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7587975902_)))
                                    (_tl7587775909_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7587975902_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7587775909_))
                                    ((lambda (_L75912_)
                                       (let ((__tmp79734
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-pred)))
                                             (__tmp79730
                                              (let ((__tmp79731
                                                     (let ((__tmp79733
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79732
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L75912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79733 __tmp79732))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79731 '()))))
                                         (declare (not safe))
                                         (cons __tmp79734 __tmp79730)))
                                     _hd7587875906_)
                                    (_g7587175885_ _g7587275889_))))
                            (_g7587175885_ _g7587275889_))))
                    (_g7587175885_ _g7587275889_)))))
        (_g7587075926_ _$stx75867_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx75930_)
      (let* ((_g7593475948_
              (lambda (_g7593575944_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7593575944_))))
             (_g7593375989_
              (lambda (_g7593575952_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7593575952_))
                    (let ((_e7593975955_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7593575952_))))
                      (let ((_hd7593875959_
                             (let ()
                               (declare (not safe))
                               (##car _e7593975955_)))
                            (_tl7593775962_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7593975955_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7593775962_))
                            (let ((_e7594275965_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7593775962_))))
                              (let ((_hd7594175969_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7594275965_)))
                                    (_tl7594075972_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7594275965_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7594075972_))
                                    ((lambda (_L75975_)
                                       (let ((__tmp79739
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-cons)))
                                             (__tmp79735
                                              (let ((__tmp79736
                                                     (let ((__tmp79738
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79737
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L75975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79738 __tmp79737))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79736 '()))))
                                         (declare (not safe))
                                         (cons __tmp79739 __tmp79735)))
                                     _hd7594175969_)
                                    (_g7593475948_ _g7593575952_))))
                            (_g7593475948_ _g7593575952_))))
                    (_g7593475948_ _g7593575952_)))))
        (_g7593375989_ _$stx75930_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx75993_)
      (let* ((___stx7896578966_ _$stx75993_)
             (_g7599876031_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx7896578966_)))))
        (let ((___kont7896878969_
               (lambda (_L76133_ _L76135_ _L76136_)
                 (let ((__tmp79746
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp79740
                        (let ((__tmp79743
                               (let ((__tmp79745
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79744
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76136_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79745 __tmp79744)))
                              (__tmp79741
                               (let ((__tmp79742
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76133_ '()))))
                                 (declare (not safe))
                                 (cons _L76135_ __tmp79742))))
                          (declare (not safe))
                          (cons __tmp79743 __tmp79741))))
                   (declare (not safe))
                   (cons __tmp79746 __tmp79740))))
              (___kont7897078971_
               (lambda (_L76068_ _L76070_)
                 (let ((__tmp79753
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp79747
                        (let ((__tmp79750
                               (let ((__tmp79752
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79751
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76070_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79752 __tmp79751)))
                              (__tmp79748
                               (let ((__tmp79749
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L76068_ __tmp79749))))
                          (declare (not safe))
                          (cons __tmp79750 __tmp79748))))
                   (declare (not safe))
                   (cons __tmp79753 __tmp79747)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7896578966_))
              (let ((_e7600576093_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7896578966_))))
                (let ((_tl7600376100_
                       (let () (declare (not safe)) (##cdr _e7600576093_)))
                      (_hd7600476097_
                       (let () (declare (not safe)) (##car _e7600576093_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7600376100_))
                      (let ((_e7600876103_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7600376100_))))
                        (let ((_tl7600676110_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7600876103_)))
                              (_hd7600776107_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7600876103_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7600676110_))
                              (let ((_e7601176113_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7600676110_))))
                                (let ((_tl7600976120_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7601176113_)))
                                      (_hd7601076117_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7601176113_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7600976120_))
                                      (let ((_e7601476123_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7600976120_))))
                                        (let ((_tl7601276130_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7601476123_)))
                                              (_hd7601376127_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7601476123_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7601276130_))
                                              (___kont7896878969_
                                               _hd7601376127_
                                               _hd7601076117_
                                               _hd7600776107_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7599876031_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7600976120_))
                                          (___kont7897078971_
                                           _hd7601076117_
                                           _hd7600776107_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7599876031_))))))
                              (let () (declare (not safe)) (_g7599876031_)))))
                      (let () (declare (not safe)) (_g7599876031_)))))
              (let () (declare (not safe)) (_g7599876031_)))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx76158_)
      (let* ((___stx7902179022_ _$stx76158_)
             (_g7616376196_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx7902179022_)))))
        (let ((___kont7902479025_
               (lambda (_L76298_ _L76300_ _L76301_)
                 (let ((__tmp79760
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp79754
                        (let ((__tmp79757
                               (let ((__tmp79759
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79758
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76301_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79759 __tmp79758)))
                              (__tmp79755
                               (let ((__tmp79756
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76298_ '()))))
                                 (declare (not safe))
                                 (cons _L76300_ __tmp79756))))
                          (declare (not safe))
                          (cons __tmp79757 __tmp79755))))
                   (declare (not safe))
                   (cons __tmp79760 __tmp79754))))
              (___kont7902679027_
               (lambda (_L76233_ _L76235_)
                 (let ((__tmp79767
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp79761
                        (let ((__tmp79764
                               (let ((__tmp79766
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79765
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76235_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79766 __tmp79765)))
                              (__tmp79762
                               (let ((__tmp79763
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L76233_ __tmp79763))))
                          (declare (not safe))
                          (cons __tmp79764 __tmp79762))))
                   (declare (not safe))
                   (cons __tmp79767 __tmp79761)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7902179022_))
              (let ((_e7617076258_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7902179022_))))
                (let ((_tl7616876265_
                       (let () (declare (not safe)) (##cdr _e7617076258_)))
                      (_hd7616976262_
                       (let () (declare (not safe)) (##car _e7617076258_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7616876265_))
                      (let ((_e7617376268_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7616876265_))))
                        (let ((_tl7617176275_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7617376268_)))
                              (_hd7617276272_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7617376268_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7617176275_))
                              (let ((_e7617676278_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7617176275_))))
                                (let ((_tl7617476285_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7617676278_)))
                                      (_hd7617576282_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7617676278_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7617476285_))
                                      (let ((_e7617976288_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7617476285_))))
                                        (let ((_tl7617776295_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7617976288_)))
                                              (_hd7617876292_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7617976288_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7617776295_))
                                              (___kont7902479025_
                                               _hd7617876292_
                                               _hd7617576282_
                                               _hd7617276272_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7616376196_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7617476285_))
                                          (___kont7902679027_
                                           _hd7617576282_
                                           _hd7617276272_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7616376196_))))))
                              (let () (declare (not safe)) (_g7616376196_)))))
                      (let () (declare (not safe)) (_g7616376196_)))))
              (let () (declare (not safe)) (_g7616376196_)))))))
  (define |gxc[:0:]#@class-type|
    (lambda (_$stx76323_)
      (let* ((_g7632776365_
              (lambda (_g7632876361_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7632876361_))))
             (_g7632676490_
              (lambda (_g7632876369_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7632876369_))
                    (let ((_e7633876372_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7632876369_))))
                      (let ((_hd7633776376_
                             (let ()
                               (declare (not safe))
                               (##car _e7633876372_)))
                            (_tl7633676379_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7633876372_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7633676379_))
                            (let ((_e7634176382_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7633676379_))))
                              (let ((_hd7634076386_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7634176382_)))
                                    (_tl7633976389_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7634176382_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7633976389_))
                                    (let ((_e7634476392_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7633976389_))))
                                      (let ((_hd7634376396_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7634476392_)))
                                            (_tl7634276399_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7634476392_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl7634276399_))
                                            (let ((_e7634776402_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl7634276399_))))
                                              (let ((_hd7634676406_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7634776402_)))
                                                    (_tl7634576409_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7634776402_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7634576409_))
                                                    (let ((_e7635076412_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7634576409_))))
                                                      (let ((_hd7634976416_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e7635076412_)))
                    (_tl7634876419_
                     (let () (declare (not safe)) (##cdr _e7635076412_))))
                (if (let () (declare (not safe)) (gx#stx-pair? _tl7634876419_))
                    (let ((_e7635376422_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl7634876419_))))
                      (let ((_hd7635276426_
                             (let ()
                               (declare (not safe))
                               (##car _e7635376422_)))
                            (_tl7635176429_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7635376422_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7635176429_))
                            (let ((_e7635676432_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7635176429_))))
                              (let ((_hd7635576436_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7635676432_)))
                                    (_tl7635476439_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7635676432_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7635476439_))
                                    (let ((_e7635976442_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7635476439_))))
                                      (let ((_hd7635876446_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7635976442_)))
                                            (_tl7635776449_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7635976442_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7635776449_))
                                            ((lambda (_L76452_
                                                      _L76454_
                                                      _L76455_
                                                      _L76456_
                                                      _L76457_
                                                      _L76458_
                                                      _L76459_)
                                               (let ((__tmp79796
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!class-type)))
                                                     (__tmp79768
                                                      (let ((__tmp79793
                                                             (let ((__tmp79795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp79794
                            (let () (declare (not safe)) (cons _L76459_ '()))))
                       (declare (not safe))
                       (cons __tmp79795 __tmp79794)))
                    (__tmp79769
                     (let ((__tmp79790
                            (let ((__tmp79792
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp79791
                                   (let ()
                                     (declare (not safe))
                                     (cons _L76458_ '()))))
                              (declare (not safe))
                              (cons __tmp79792 __tmp79791)))
                           (__tmp79770
                            (let ((__tmp79787
                                   (let ((__tmp79789
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp79788
                                          (let ()
                                            (declare (not safe))
                                            (cons _L76457_ '()))))
                                     (declare (not safe))
                                     (cons __tmp79789 __tmp79788)))
                                  (__tmp79771
                                   (let ((__tmp79784
                                          (let ((__tmp79786
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote)))
                                                (__tmp79785
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L76456_ '()))))
                                            (declare (not safe))
                                            (cons __tmp79786 __tmp79785)))
                                         (__tmp79772
                                          (let ((__tmp79781
                                                 (let ((__tmp79783
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote)))
                                                       (__tmp79782
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L76455_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp79783
                                                         __tmp79782)))
                                                (__tmp79773
                                                 (let ((__tmp79778
                                                        (let ((__tmp79780
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote)))
                      (__tmp79779
                       (let () (declare (not safe)) (cons _L76454_ '()))))
                  (declare (not safe))
                  (cons __tmp79780 __tmp79779)))
               (__tmp79774
                (let ((__tmp79775
                       (let ((__tmp79777
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote)))
                             (__tmp79776
                              (let ()
                                (declare (not safe))
                                (cons _L76452_ '()))))
                         (declare (not safe))
                         (cons __tmp79777 __tmp79776))))
                  (declare (not safe))
                  (cons __tmp79775 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79778
                                                         __tmp79774))))
                                            (declare (not safe))
                                            (cons __tmp79781 __tmp79773))))
                                     (declare (not safe))
                                     (cons __tmp79784 __tmp79772))))
                              (declare (not safe))
                              (cons __tmp79787 __tmp79771))))
                       (declare (not safe))
                       (cons __tmp79790 __tmp79770))))
                (declare (not safe))
                (cons __tmp79793 __tmp79769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp79796 __tmp79768)))
                                             _hd7635876446_
                                             _hd7635576436_
                                             _hd7635276426_
                                             _hd7634976416_
                                             _hd7634676406_
                                             _hd7634376396_
                                             _hd7634076386_)
                                            (_g7632776365_ _g7632876369_))))
                                    (_g7632776365_ _g7632876369_))))
                            (_g7632776365_ _g7632876369_))))
                    (_g7632776365_ _g7632876369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7632776365_
                                                     _g7632876369_))))
                                            (_g7632776365_ _g7632876369_))))
                                    (_g7632776365_ _g7632876369_))))
                            (_g7632776365_ _g7632876369_))))
                    (_g7632776365_ _g7632876369_)))))
        (_g7632676490_ _$stx76323_))))
  (define |gxc[:0:]#@class-pred|
    (lambda (_$stx76494_)
      (let* ((_g7649876512_
              (lambda (_g7649976508_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7649976508_))))
             (_g7649776553_
              (lambda (_g7649976516_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7649976516_))
                    (let ((_e7650376519_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7649976516_))))
                      (let ((_hd7650276523_
                             (let ()
                               (declare (not safe))
                               (##car _e7650376519_)))
                            (_tl7650176526_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7650376519_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7650176526_))
                            (let ((_e7650676529_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7650176526_))))
                              (let ((_hd7650576533_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7650676529_)))
                                    (_tl7650476536_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7650676529_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7650476536_))
                                    ((lambda (_L76539_)
                                       (let ((__tmp79801
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-pred)))
                                             (__tmp79797
                                              (let ((__tmp79798
                                                     (let ((__tmp79800
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79799
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L76539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79800 __tmp79799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79798 '()))))
                                         (declare (not safe))
                                         (cons __tmp79801 __tmp79797)))
                                     _hd7650576533_)
                                    (_g7649876512_ _g7649976516_))))
                            (_g7649876512_ _g7649976516_))))
                    (_g7649876512_ _g7649976516_)))))
        (_g7649776553_ _$stx76494_))))
  (define |gxc[:0:]#@class-cons|
    (lambda (_$stx76557_)
      (let* ((_g7656176575_
              (lambda (_g7656276571_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7656276571_))))
             (_g7656076616_
              (lambda (_g7656276579_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7656276579_))
                    (let ((_e7656676582_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7656276579_))))
                      (let ((_hd7656576586_
                             (let ()
                               (declare (not safe))
                               (##car _e7656676582_)))
                            (_tl7656476589_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7656676582_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7656476589_))
                            (let ((_e7656976592_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7656476589_))))
                              (let ((_hd7656876596_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7656976592_)))
                                    (_tl7656776599_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7656976592_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7656776599_))
                                    ((lambda (_L76602_)
                                       (let ((__tmp79806
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-cons)))
                                             (__tmp79802
                                              (let ((__tmp79803
                                                     (let ((__tmp79805
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79804
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L76602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79805 __tmp79804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79803 '()))))
                                         (declare (not safe))
                                         (cons __tmp79806 __tmp79802)))
                                     _hd7656876596_)
                                    (_g7656176575_ _g7656276579_))))
                            (_g7656176575_ _g7656276579_))))
                    (_g7656176575_ _g7656276579_)))))
        (_g7656076616_ _$stx76557_))))
  (define |gxc[:0:]#@class-getf|
    (lambda (_$stx76620_)
      (let* ((___stx7907779078_ _$stx76620_)
             (_g7662576658_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx7907779078_)))))
        (let ((___kont7908079081_
               (lambda (_L76760_ _L76762_ _L76763_)
                 (let ((__tmp79816
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp79807
                        (let ((__tmp79813
                               (let ((__tmp79815
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79814
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76763_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79815 __tmp79814)))
                              (__tmp79808
                               (let ((__tmp79810
                                      (let ((__tmp79812
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79811
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76762_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79812 __tmp79811)))
                                     (__tmp79809
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76760_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79810 __tmp79809))))
                          (declare (not safe))
                          (cons __tmp79813 __tmp79808))))
                   (declare (not safe))
                   (cons __tmp79816 __tmp79807))))
              (___kont7908279083_
               (lambda (_L76695_ _L76697_)
                 (let ((__tmp79826
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp79817
                        (let ((__tmp79823
                               (let ((__tmp79825
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79824
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76697_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79825 __tmp79824)))
                              (__tmp79818
                               (let ((__tmp79820
                                      (let ((__tmp79822
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79821
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76695_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79822 __tmp79821)))
                                     (__tmp79819
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp79820 __tmp79819))))
                          (declare (not safe))
                          (cons __tmp79823 __tmp79818))))
                   (declare (not safe))
                   (cons __tmp79826 __tmp79817)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7907779078_))
              (let ((_e7663276720_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7907779078_))))
                (let ((_tl7663076727_
                       (let () (declare (not safe)) (##cdr _e7663276720_)))
                      (_hd7663176724_
                       (let () (declare (not safe)) (##car _e7663276720_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7663076727_))
                      (let ((_e7663576730_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7663076727_))))
                        (let ((_tl7663376737_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7663576730_)))
                              (_hd7663476734_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7663576730_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7663376737_))
                              (let ((_e7663876740_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7663376737_))))
                                (let ((_tl7663676747_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7663876740_)))
                                      (_hd7663776744_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7663876740_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7663676747_))
                                      (let ((_e7664176750_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7663676747_))))
                                        (let ((_tl7663976757_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7664176750_)))
                                              (_hd7664076754_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7664176750_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7663976757_))
                                              (___kont7908079081_
                                               _hd7664076754_
                                               _hd7663776744_
                                               _hd7663476734_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7662576658_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7663676747_))
                                          (___kont7908279083_
                                           _hd7663776744_
                                           _hd7663476734_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7662576658_))))))
                              (let () (declare (not safe)) (_g7662576658_)))))
                      (let () (declare (not safe)) (_g7662576658_)))))
              (let () (declare (not safe)) (_g7662576658_)))))))
  (define |gxc[:0:]#@class-setf|
    (lambda (_$stx76785_)
      (let* ((___stx7913379134_ _$stx76785_)
             (_g7679076823_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx7913379134_)))))
        (let ((___kont7913679137_
               (lambda (_L76925_ _L76927_ _L76928_)
                 (let ((__tmp79836
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp79827
                        (let ((__tmp79833
                               (let ((__tmp79835
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79834
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76928_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79835 __tmp79834)))
                              (__tmp79828
                               (let ((__tmp79830
                                      (let ((__tmp79832
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79831
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76927_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79832 __tmp79831)))
                                     (__tmp79829
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76925_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79830 __tmp79829))))
                          (declare (not safe))
                          (cons __tmp79833 __tmp79828))))
                   (declare (not safe))
                   (cons __tmp79836 __tmp79827))))
              (___kont7913879139_
               (lambda (_L76860_ _L76862_)
                 (let ((__tmp79846
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp79837
                        (let ((__tmp79843
                               (let ((__tmp79845
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79844
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76862_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79845 __tmp79844)))
                              (__tmp79838
                               (let ((__tmp79840
                                      (let ((__tmp79842
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79841
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76860_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79842 __tmp79841)))
                                     (__tmp79839
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp79840 __tmp79839))))
                          (declare (not safe))
                          (cons __tmp79843 __tmp79838))))
                   (declare (not safe))
                   (cons __tmp79846 __tmp79837)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7913379134_))
              (let ((_e7679776885_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7913379134_))))
                (let ((_tl7679576892_
                       (let () (declare (not safe)) (##cdr _e7679776885_)))
                      (_hd7679676889_
                       (let () (declare (not safe)) (##car _e7679776885_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7679576892_))
                      (let ((_e7680076895_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7679576892_))))
                        (let ((_tl7679876902_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7680076895_)))
                              (_hd7679976899_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7680076895_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7679876902_))
                              (let ((_e7680376905_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7679876902_))))
                                (let ((_tl7680176912_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7680376905_)))
                                      (_hd7680276909_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7680376905_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7680176912_))
                                      (let ((_e7680676915_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7680176912_))))
                                        (let ((_tl7680476922_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7680676915_)))
                                              (_hd7680576919_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7680676915_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7680476922_))
                                              (___kont7913679137_
                                               _hd7680576919_
                                               _hd7680276909_
                                               _hd7679976899_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7679076823_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7680176912_))
                                          (___kont7913879139_
                                           _hd7680276909_
                                           _hd7679976899_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7679076823_))))))
                              (let () (declare (not safe)) (_g7679076823_)))))
                      (let () (declare (not safe)) (_g7679076823_)))))
              (let () (declare (not safe)) (_g7679076823_)))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx76950_)
      (let* ((___stx7918979190_ _$stx76950_)
             (_g7695877026_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx7918979190_)))))
        (let ((___kont7919279193_
               (lambda (_L77304_ _L77306_)
                 (let ((__tmp79862
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp79847
                        (let ((__tmp79858
                               (let ((__tmp79861
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79859
                                      (let ((__tmp79860
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp79860 '()))))
                                 (declare (not safe))
                                 (cons __tmp79861 __tmp79859)))
                              (__tmp79848
                               (let ((__tmp79855
                                      (let ((__tmp79857
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79856
                                             (let ()
                                               (declare (not safe))
                                               (cons _L77306_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79857 __tmp79856)))
                                     (__tmp79849
                                      (let ((__tmp79850
                                             (let ((__tmp79851
                                                    (let ((__tmp79852
                                                           (let ((__tmp79854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp79853
                          (let () (declare (not safe)) (cons _L77304_ '()))))
                     (declare (not safe))
                     (cons __tmp79854 __tmp79853))))
              (declare (not safe))
              (cons __tmp79852 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L77304_ __tmp79851))))
                                        (declare (not safe))
                                        (cons '#f __tmp79850))))
                                 (declare (not safe))
                                 (cons __tmp79855 __tmp79849))))
                          (declare (not safe))
                          (cons __tmp79858 __tmp79848))))
                   (declare (not safe))
                   (cons __tmp79862 __tmp79847))))
              (___kont7919479195_
               (lambda (_L77235_ _L77237_)
                 (let ((__tmp79863
                        (let ((__tmp79864
                               (let ((__tmp79865
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L77235_ __tmp79865))))
                          (declare (not safe))
                          (cons 'primitive: __tmp79864))))
                   (declare (not safe))
                   (cons _L77237_ __tmp79863))))
              (___kont7919679197_
               (lambda (_L77174_ _L77176_)
                 (let ((__tmp79879
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp79866
                        (let ((__tmp79875
                               (let ((__tmp79878
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79876
                                      (let ((__tmp79877
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp79877 '()))))
                                 (declare (not safe))
                                 (cons __tmp79878 __tmp79876)))
                              (__tmp79867
                               (let ((__tmp79872
                                      (let ((__tmp79874
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79873
                                             (let ()
                                               (declare (not safe))
                                               (cons _L77176_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79874 __tmp79873)))
                                     (__tmp79868
                                      (let ((__tmp79869
                                             (let ((__tmp79871
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp79870
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L77174_ '()))))
                                               (declare (not safe))
                                               (cons __tmp79871 __tmp79870))))
                                        (declare (not safe))
                                        (cons __tmp79869 '()))))
                                 (declare (not safe))
                                 (cons __tmp79872 __tmp79868))))
                          (declare (not safe))
                          (cons __tmp79875 __tmp79867))))
                   (declare (not safe))
                   (cons __tmp79879 __tmp79866))))
              (___kont7919879199_
               (lambda (_L77106_ _L77108_)
                 (let ((__tmp79893
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp79880
                        (let ((__tmp79889
                               (let ((__tmp79892
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79890
                                      (let ((__tmp79891
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp79891 '()))))
                                 (declare (not safe))
                                 (cons __tmp79892 __tmp79890)))
                              (__tmp79881
                               (let ((__tmp79886
                                      (let ((__tmp79888
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79887
                                             (let ()
                                               (declare (not safe))
                                               (cons _L77108_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79888 __tmp79887)))
                                     (__tmp79882
                                      (let ((__tmp79883
                                             (let ((__tmp79885
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp79884
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L77106_ '()))))
                                               (declare (not safe))
                                               (cons __tmp79885 __tmp79884))))
                                        (declare (not safe))
                                        (cons __tmp79883 '()))))
                                 (declare (not safe))
                                 (cons __tmp79886 __tmp79882))))
                          (declare (not safe))
                          (cons __tmp79889 __tmp79881))))
                   (declare (not safe))
                   (cons __tmp79893 __tmp79880))))
              (___kont7920079201_
               (lambda (_L77053_ _L77055_)
                 (let ((__tmp79894
                        (let ((__tmp79895
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L77053_ __tmp79895))))
                   (declare (not safe))
                   (cons _L77055_ __tmp79894)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7918979190_))
              (let ((_e7696477260_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7918979190_))))
                (let ((_tl7696277267_
                       (let () (declare (not safe)) (##cdr _e7696477260_)))
                      (_hd7696377264_
                       (let () (declare (not safe)) (##car _e7696477260_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7696277267_))
                      (let ((_e7696777270_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7696277267_))))
                        (let ((_tl7696577277_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7696777270_)))
                              (_hd7696677274_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7696777270_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7696577277_))
                              (let ((_e7697077280_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7696577277_))))
                                (let ((_tl7696877287_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7697077280_)))
                                      (_hd7696977284_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7697077280_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd7696977284_))
                                      (let ((_e7697177290_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd7696977284_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e7697177290_ 'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7696877287_))
                                                (let ((_e7697477294_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7696877287_))))
                                                  (let ((_tl7697277301_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7697477294_)))
                                                        (_hd7697377298_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7697477294_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7697277301_))
                                                        (___kont7919279193_
                                                         _hd7697377298_
                                                         _hd7696677274_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd7696677274_))
                                                            (let ((_e7698377221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd7696677274_))))
                      (declare (not safe))
                      (_g7695877026_))
                    (let () (declare (not safe)) (_g7695877026_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd7696677274_))
                                                    (let ((_e7698377221_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd7696677274_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e7698377221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7696877287_))
                      (___kont7919479195_ _hd7696977284_ _hd7696377264_)
                      (let () (declare (not safe)) (_g7695877026_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7696877287_))
                      (___kont7919879199_ _hd7696977284_ _hd7696677274_)
                      (let () (declare (not safe)) (_g7695877026_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7696877287_))
                                                        (___kont7919879199_
                                                         _hd7696977284_
                                                         _hd7696677274_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7695877026_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd7696677274_))
                                                (let ((_e7698377221_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd7696677274_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e7698377221_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl7696877287_))
                                                          (___kont7919479195_
                                                           _hd7696977284_
                                                           _hd7696377264_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl7696877287_))
                      (let ((_e7700177164_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7696877287_))))
                        (let ((_tl7699977171_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7700177164_)))
                              (_hd7700077168_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7700177164_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7699977171_))
                              (___kont7919679197_
                               _hd7700077168_
                               _hd7696977284_)
                              (let () (declare (not safe)) (_g7695877026_)))))
                      (let () (declare (not safe)) (_g7695877026_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7696877287_))
                  (___kont7919879199_ _hd7696977284_ _hd7696677274_)
                  (let () (declare (not safe)) (_g7695877026_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7696877287_))
                                                    (___kont7919879199_
                                                     _hd7696977284_
                                                     _hd7696677274_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7695877026_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd7696677274_))
                                          (let ((_e7698377221_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _hd7696677274_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e7698377221_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7696877287_))
                                                    (___kont7919479195_
                                                     _hd7696977284_
                                                     _hd7696377264_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7696877287_))
                                                        (let ((_e7700177164_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7696877287_))))
                  (let ((_tl7699977171_
                         (let () (declare (not safe)) (##cdr _e7700177164_)))
                        (_hd7700077168_
                         (let () (declare (not safe)) (##car _e7700177164_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl7699977171_))
                        (___kont7919679197_ _hd7700077168_ _hd7696977284_)
                        (let () (declare (not safe)) (_g7695877026_)))))
                (let () (declare (not safe)) (_g7695877026_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7696877287_))
                                                    (___kont7919879199_
                                                     _hd7696977284_
                                                     _hd7696677274_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7695877026_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7696877287_))
                                              (___kont7919879199_
                                               _hd7696977284_
                                               _hd7696677274_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7695877026_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd7696677274_))
                                  (let ((_e7698377221_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd7696677274_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7696577277_))
                                        (___kont7920079201_
                                         _hd7696677274_
                                         _hd7696377264_)
                                        (let ()
                                          (declare (not safe))
                                          (_g7695877026_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7696577277_))
                                      (___kont7920079201_
                                       _hd7696677274_
                                       _hd7696377264_)
                                      (let ()
                                        (declare (not safe))
                                        (_g7695877026_)))))))
                      (let () (declare (not safe)) (_g7695877026_)))))
              (let () (declare (not safe)) (_g7695877026_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx77328_)
      (let* ((___stx7932979330_ _$stx77328_)
             (_g7733377388_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx7932979330_)))))
        (let ((___kont7933279333_
               (lambda (_L77573_ _L77575_)
                 (let ((__tmp79911
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp79896
                        (let ((__tmp79907
                               (let ((__tmp79910
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79908
                                      (let ((__tmp79909
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp79909 '()))))
                                 (declare (not safe))
                                 (cons __tmp79910 __tmp79908)))
                              (__tmp79897
                               (let ((__tmp79898
                                      (let ((__tmp79906
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp79899
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L77573_
                                                  _L77575_))
                                               (let ((__tmp79900
                                                      (lambda (_g7759277596_
                                                               _g7759377599_
                                                               _g7759477601_)
                                                        (let ((__tmp79901
                                                               (let ((__tmp79905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp79902
                              (let ((__tmp79903
                                     (let ((__tmp79904
                                            (let ()
                                              (declare (not safe))
                                              (cons _g7759277596_ '()))))
                                       (declare (not safe))
                                       (cons _g7759377599_ __tmp79904))))
                                (declare (not safe))
                                (cons 'primitive: __tmp79903))))
                         (declare (not safe))
                         (cons __tmp79905 __tmp79902))))
                  (declare (not safe))
                  (cons __tmp79901 _g7759477601_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp79900
                                                         '()
                                                         _L77573_
                                                         _L77575_)))))
                                        (declare (not safe))
                                        (cons __tmp79906 __tmp79899))))
                                 (declare (not safe))
                                 (cons __tmp79898 '()))))
                          (declare (not safe))
                          (cons __tmp79907 __tmp79897))))
                   (declare (not safe))
                   (cons __tmp79911 __tmp79896))))
              (___kont7933679337_
               (lambda (_L77459_ _L77461_)
                 (let ((__tmp79926
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp79912
                        (let ((__tmp79922
                               (let ((__tmp79925
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79923
                                      (let ((__tmp79924
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp79924 '()))))
                                 (declare (not safe))
                                 (cons __tmp79925 __tmp79923)))
                              (__tmp79913
                               (let ((__tmp79914
                                      (let ((__tmp79921
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp79915
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L77459_
                                                  _L77461_))
                                               (let ((__tmp79916
                                                      (lambda (_g7747677480_
                                                               _g7747777483_
                                                               _g7747877485_)
                                                        (let ((__tmp79917
                                                               (let ((__tmp79920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp79918
                              (let ((__tmp79919
                                     (let ()
                                       (declare (not safe))
                                       (cons _g7747677480_ '()))))
                                (declare (not safe))
                                (cons _g7747777483_ __tmp79919))))
                         (declare (not safe))
                         (cons __tmp79920 __tmp79918))))
                  (declare (not safe))
                  (cons __tmp79917 _g7747877485_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp79916
                                                         '()
                                                         _L77459_
                                                         _L77461_)))))
                                        (declare (not safe))
                                        (cons __tmp79921 __tmp79915))))
                                 (declare (not safe))
                                 (cons __tmp79914 '()))))
                          (declare (not safe))
                          (cons __tmp79922 __tmp79913))))
                   (declare (not safe))
                   (cons __tmp79926 __tmp79912)))))
          (let* ((___match7938079381_
                  (lambda (_e7736577395_
                           _hd7736477399_
                           _tl7736377402_
                           ___splice7933879339_
                           _target7736677405_
                           _tl7736877408_)
                    (letrec ((_loop7736977411_
                              (lambda (_hd7736777415_
                                       _dispatch7737377418_
                                       _arity7737477420_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7736777415_))
                                    (let ((_e7737077423_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7736777415_))))
                                      (let ((_lp-tl7737277430_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7737077423_)))
                                            (_lp-hd7737177427_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7737077423_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _lp-hd7737177427_))
                                            (let ((_e7737977433_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd7737177427_))))
                                              (let ((_tl7737777440_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7737977433_)))
                                                    (_hd7737877437_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7737977433_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7737777440_))
                                                    (let ((_e7738277443_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7737777440_))))
                                                      (let ((_tl7738077450_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7738277443_)))
                    (_hd7738177447_
                     (let () (declare (not safe)) (##car _e7738277443_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl7738077450_))
                    (_loop7736977411_
                     _lp-tl7737277430_
                     (let ()
                       (declare (not safe))
                       (cons _hd7738177447_ _dispatch7737377418_))
                     (let ()
                       (declare (not safe))
                       (cons _hd7737877437_ _arity7737477420_)))
                    (let () (declare (not safe)) (_g7733377388_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7733377388_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g7733377388_)))))
                                    (let ((_arity7737677456_
                                           (reverse _arity7737477420_))
                                          (_dispatch7737577453_
                                           (reverse _dispatch7737377418_)))
                                      (___kont7933679337_
                                       _dispatch7737577453_
                                       _arity7737677456_))))))
                      (_loop7736977411_ _target7736677405_ '() '()))))
                 (___match7937279373_
                  (lambda (_e7736577395_ _hd7736477399_ _tl7736377402_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl7736377402_))
                        (let ((___splice7933879339_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice _tl7736377402_ '0))))
                          (let ((_tl7736877408_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice7933879339_ '1)))
                                (_target7736677405_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice7933879339_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7736877408_))
                                (___match7938079381_
                                 _e7736577395_
                                 _hd7736477399_
                                 _tl7736377402_
                                 ___splice7933879339_
                                 _target7736677405_
                                 _tl7736877408_)
                                (let ()
                                  (declare (not safe))
                                  (_g7733377388_)))))
                        (let () (declare (not safe)) (_g7733377388_)))))
                 (___match7936679367_
                  (lambda (_e7733977495_
                           _hd7733877499_
                           _tl7733777502_
                           _e7734277505_
                           _hd7734177509_
                           _tl7734077512_
                           _e7734377515_
                           ___splice7933479335_
                           _target7734477519_
                           _tl7734677522_)
                    (letrec ((_loop7734777525_
                              (lambda (_hd7734577529_
                                       _dispatch7735177532_
                                       _arity7735277534_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7734577529_))
                                    (let ((_e7734877537_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7734577529_))))
                                      (let ((_lp-tl7735077544_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7734877537_)))
                                            (_lp-hd7734977541_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7734877537_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _lp-hd7734977541_))
                                            (let ((_e7735777547_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd7734977541_))))
                                              (let ((_tl7735577554_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7735777547_)))
                                                    (_hd7735677551_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7735777547_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7735577554_))
                                                    (let ((_e7736077557_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7735577554_))))
                                                      (let ((_tl7735877564_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7736077557_)))
                    (_hd7735977561_
                     (let () (declare (not safe)) (##car _e7736077557_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl7735877564_))
                    (_loop7734777525_
                     _lp-tl7735077544_
                     (let ()
                       (declare (not safe))
                       (cons _hd7735977561_ _dispatch7735177532_))
                     (let ()
                       (declare (not safe))
                       (cons _hd7735677551_ _arity7735277534_)))
                    (___match7937279373_
                     _e7733977495_
                     _hd7733877499_
                     _tl7733777502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match7937279373_
                                                     _e7733977495_
                                                     _hd7733877499_
                                                     _tl7733777502_))))
                                            (___match7937279373_
                                             _e7733977495_
                                             _hd7733877499_
                                             _tl7733777502_))))
                                    (let ((_arity7735477570_
                                           (reverse _arity7735277534_))
                                          (_dispatch7735377567_
                                           (reverse _dispatch7735177532_)))
                                      (___kont7933279333_
                                       _dispatch7735377567_
                                       _arity7735477570_))))))
                      (_loop7734777525_ _target7734477519_ '() '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7932979330_))
                (let ((_e7733977495_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7932979330_))))
                  (let ((_tl7733777502_
                         (let () (declare (not safe)) (##cdr _e7733977495_)))
                        (_hd7733877499_
                         (let () (declare (not safe)) (##car _e7733977495_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7733777502_))
                        (let ((_e7734277505_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7733777502_))))
                          (let ((_tl7734077512_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7734277505_)))
                                (_hd7734177509_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7734277505_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd7734177509_))
                                (let ((_e7734377515_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd7734177509_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e7734377515_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl7734077512_))
                                          (let ((___splice7933479335_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl7734077512_
                                                    '0))))
                                            (let ((_tl7734677522_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7933479335_
                                                      '1)))
                                                  (_target7734477519_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7933479335_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7734677522_))
                                                  (___match7936679367_
                                                   _e7733977495_
                                                   _hd7733877499_
                                                   _tl7733777502_
                                                   _e7734277505_
                                                   _hd7734177509_
                                                   _tl7734077512_
                                                   _e7734377515_
                                                   ___splice7933479335_
                                                   _target7734477519_
                                                   _tl7734677522_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7733777502_))
                                                      (let ((___splice7933879339_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7733777502_ '0))))
                (let ((_tl7736877408_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7933879339_ '1)))
                      (_target7736677405_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7933879339_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7736877408_))
                      (___match7938079381_
                       _e7733977495_
                       _hd7733877499_
                       _tl7733777502_
                       ___splice7933879339_
                       _target7736677405_
                       _tl7736877408_)
                      (let () (declare (not safe)) (_g7733377388_)))))
              (let () (declare (not safe)) (_g7733377388_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl7733777502_))
                                              (let ((___splice7933879339_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl7733777502_
                                                        '0))))
                                                (let ((_tl7736877408_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice7933879339_
                                                          '1)))
                                                      (_target7736677405_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice7933879339_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl7736877408_))
                                                      (___match7938079381_
                                                       _e7733977495_
                                                       _hd7733877499_
                                                       _tl7733777502_
                                                       ___splice7933879339_
                                                       _target7736677405_
                                                       _tl7736877408_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g7733377388_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g7733377388_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl7733777502_))
                                          (let ((___splice7933879339_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl7733777502_
                                                    '0))))
                                            (let ((_tl7736877408_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7933879339_
                                                      '1)))
                                                  (_target7736677405_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7933879339_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7736877408_))
                                                  (___match7938079381_
                                                   _e7733977495_
                                                   _hd7733877499_
                                                   _tl7733777502_
                                                   ___splice7933879339_
                                                   _target7736677405_
                                                   _tl7736877408_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7733377388_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g7733377388_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7733777502_))
                                    (let ((___splice7933879339_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7733777502_
                                              '0))))
                                      (let ((_tl7736877408_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7933879339_
                                                '1)))
                                            (_target7736677405_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7933879339_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7736877408_))
                                            (___match7938079381_
                                             _e7733977495_
                                             _hd7733877499_
                                             _tl7733777502_
                                             ___splice7933879339_
                                             _target7736677405_
                                             _tl7736877408_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7733377388_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7733377388_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7733777502_))
                            (let ((___splice7933879339_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7733777502_
                                      '0))))
                              (let ((_tl7736877408_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice7933879339_ '1)))
                                    (_target7736677405_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice7933879339_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7736877408_))
                                    (___match7938079381_
                                     _e7733977495_
                                     _hd7733877499_
                                     _tl7733777502_
                                     ___splice7933879339_
                                     _target7736677405_
                                     _tl7736877408_)
                                    (let ()
                                      (declare (not safe))
                                      (_g7733377388_)))))
                            (let () (declare (not safe)) (_g7733377388_))))))
                (let () (declare (not safe)) (_g7733377388_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx77610_)
      (let* ((_g7761477632_
              (lambda (_g7761577628_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7761577628_))))
             (_g7761377687_
              (lambda (_g7761577636_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7761577636_))
                    (let ((_e7762077639_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7761577636_))))
                      (let ((_hd7761977643_
                             (let ()
                               (declare (not safe))
                               (##car _e7762077639_)))
                            (_tl7761877646_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7762077639_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7761877646_))
                            (let ((_e7762377649_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7761877646_))))
                              (let ((_hd7762277653_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7762377649_)))
                                    (_tl7762177656_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7762377649_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7762177656_))
                                    (let ((_e7762677659_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7762177656_))))
                                      (let ((_hd7762577663_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7762677659_)))
                                            (_tl7762477666_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7762677659_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7762477666_))
                                            ((lambda (_L77669_ _L77671_)
                                               (let ((__tmp79940
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp79927
                                                      (let ((__tmp79936
                                                             (let ((__tmp79939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp79937
                            (let ((__tmp79938
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp79938 '()))))
                       (declare (not safe))
                       (cons __tmp79939 __tmp79937)))
                    (__tmp79928
                     (let ((__tmp79933
                            (let ((__tmp79935
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp79934
                                   (let ()
                                     (declare (not safe))
                                     (cons _L77671_ '()))))
                              (declare (not safe))
                              (cons __tmp79935 __tmp79934)))
                           (__tmp79929
                            (let ((__tmp79930
                                   (let ((__tmp79932
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp79931
                                          (let ()
                                            (declare (not safe))
                                            (cons _L77669_ '()))))
                                     (declare (not safe))
                                     (cons __tmp79932 __tmp79931))))
                              (declare (not safe))
                              (cons __tmp79930 '()))))
                       (declare (not safe))
                       (cons __tmp79933 __tmp79929))))
                (declare (not safe))
                (cons __tmp79936 __tmp79928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp79940 __tmp79927)))
                                             _hd7762577663_
                                             _hd7762277653_)
                                            (_g7761477632_ _g7761577636_))))
                                    (_g7761477632_ _g7761577636_))))
                            (_g7761477632_ _g7761577636_))))
                    (_g7761477632_ _g7761577636_)))))
        (_g7761377687_ _$stx77610_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx77691_)
      (let* ((_g7769577713_
              (lambda (_g7769677709_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7769677709_))))
             (_g7769477768_
              (lambda (_g7769677717_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7769677717_))
                    (let ((_e7770177720_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7769677717_))))
                      (let ((_hd7770077724_
                             (let ()
                               (declare (not safe))
                               (##car _e7770177720_)))
                            (_tl7769977727_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7770177720_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7769977727_))
                            (let ((_e7770477730_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7769977727_))))
                              (let ((_hd7770377734_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7770477730_)))
                                    (_tl7770277737_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7770477730_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7770277737_))
                                    (let ((_e7770777740_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7770277737_))))
                                      (let ((_hd7770677744_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7770777740_)))
                                            (_tl7770577747_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7770777740_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7770577747_))
                                            ((lambda (_L77750_ _L77752_)
                                               (let ((__tmp79954
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp79941
                                                      (let ((__tmp79950
                                                             (let ((__tmp79953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp79951
                            (let ((__tmp79952
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp79952 '()))))
                       (declare (not safe))
                       (cons __tmp79953 __tmp79951)))
                    (__tmp79942
                     (let ((__tmp79947
                            (let ((__tmp79949
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp79948
                                   (let ()
                                     (declare (not safe))
                                     (cons _L77752_ '()))))
                              (declare (not safe))
                              (cons __tmp79949 __tmp79948)))
                           (__tmp79943
                            (let ((__tmp79944
                                   (let ((__tmp79946
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp79945
                                          (let ()
                                            (declare (not safe))
                                            (cons _L77750_ '()))))
                                     (declare (not safe))
                                     (cons __tmp79946 __tmp79945))))
                              (declare (not safe))
                              (cons __tmp79944 '()))))
                       (declare (not safe))
                       (cons __tmp79947 __tmp79943))))
                (declare (not safe))
                (cons __tmp79950 __tmp79942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp79954 __tmp79941)))
                                             _hd7770677744_
                                             _hd7770377734_)
                                            (_g7769577713_ _g7769677717_))))
                                    (_g7769577713_ _g7769677717_))))
                            (_g7769577713_ _g7769677717_))))
                    (_g7769577713_ _g7769677717_)))))
        (_g7769477768_ _$stx77691_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx77772_)
      (let* ((___stx7938379384_ _$stx77772_)
             (_g7777977850_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx7938379384_)))))
        (let ((___kont7938679387_
               (lambda (_L78141_ _L78143_)
                 (let ((__tmp79960
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp79955
                        (let ((__tmp79956
                               (let ((__tmp79957
                                      (let ((__tmp79959
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp79958
                                             (let ()
                                               (declare (not safe))
                                               (cons _L78141_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79959 __tmp79958))))
                                 (declare (not safe))
                                 (cons __tmp79957 '()))))
                          (declare (not safe))
                          (cons _L78143_ __tmp79956))))
                   (declare (not safe))
                   (cons __tmp79960 __tmp79955))))
              (___kont7938879389_
               (lambda (_L78060_ _L78062_)
                 (let ((__tmp79969
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp79961
                        (let ((__tmp79962
                               (let ((__tmp79963
                                      (let ((__tmp79968
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp79964
                                             (let ((__tmp79965
                                                    (lambda (_g7808178084_
                                                             _g7808278087_)
                                                      (let ((__tmp79966
                                                             (let ((__tmp79967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g7808178084_ __tmp79967))))
                (declare (not safe))
                (cons __tmp79966 _g7808278087_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp79965
                                                       '()
                                                       _L78060_))))
                                        (declare (not safe))
                                        (cons __tmp79968 __tmp79964))))
                                 (declare (not safe))
                                 (cons __tmp79963 '()))))
                          (declare (not safe))
                          (cons _L78062_ __tmp79962))))
                   (declare (not safe))
                   (cons __tmp79969 __tmp79961))))
              (___kont7939279393_
               (lambda (_L77972_ _L77974_)
                 (let ((__tmp79976
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp79970
                        (let ((__tmp79971
                               (let ((__tmp79972
                                      (let ((__tmp79975
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp79973
                                             (let ((__tmp79974
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L77972_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive: __tmp79974))))
                                        (declare (not safe))
                                        (cons __tmp79975 __tmp79973))))
                                 (declare (not safe))
                                 (cons __tmp79972 '()))))
                          (declare (not safe))
                          (cons _L77974_ __tmp79971))))
                   (declare (not safe))
                   (cons __tmp79976 __tmp79970))))
              (___kont7939479395_
               (lambda (_L77907_ _L77909_)
                 (let ((__tmp79986
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp79977
                        (let ((__tmp79978
                               (let ((__tmp79979
                                      (let ((__tmp79985
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp79980
                                             (let ((__tmp79981
                                                    (let ((__tmp79982
                                                           (lambda (_g7792677929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g7792777932_)
                     (let ((__tmp79983
                            (let ((__tmp79984
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g7792677929_ __tmp79984))))
                       (declare (not safe))
                       (cons __tmp79983 _g7792777932_)))))
              (declare (not safe))
              (foldr1 __tmp79982 '() _L77907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive: __tmp79981))))
                                        (declare (not safe))
                                        (cons __tmp79985 __tmp79980))))
                                 (declare (not safe))
                                 (cons __tmp79979 '()))))
                          (declare (not safe))
                          (cons _L77909_ __tmp79978))))
                   (declare (not safe))
                   (cons __tmp79986 __tmp79977)))))
          (let* ((___match7950279503_
                  (lambda (_e7783277857_
                           _hd7783177861_
                           _tl7783077864_
                           _e7783577867_
                           _hd7783477871_
                           _tl7783377874_
                           ___splice7939679397_
                           _target7783677877_
                           _tl7783877880_)
                    (letrec ((_loop7783977883_
                              (lambda (_hd7783777887_ _arity7784377890_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7783777887_))
                                    (let ((_e7784077893_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7783777887_))))
                                      (let ((_lp-tl7784277900_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7784077893_)))
                                            (_lp-hd7784177897_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7784077893_))))
                                        (_loop7783977883_
                                         _lp-tl7784277900_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd7784177897_
                                                 _arity7784377890_)))))
                                    (let ((_arity7784477903_
                                           (reverse _arity7784377890_)))
                                      (___kont7939479395_
                                       _arity7784477903_
                                       _hd7783477871_))))))
                      (_loop7783977883_ _target7783677877_ '()))))
                 (___match7946279463_
                  (lambda (_e7780077996_
                           _hd7779978000_
                           _tl7779878003_
                           _e7780378006_
                           _hd7780278010_
                           _tl7780178013_
                           _e7780678016_
                           _hd7780578020_
                           _tl7780478023_
                           _e7780778026_
                           ___splice7939079391_
                           _target7780878030_
                           _tl7781078033_)
                    (letrec ((_loop7781178036_
                              (lambda (_hd7780978040_ _arity7781578043_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7780978040_))
                                    (let ((_e7781278046_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7780978040_))))
                                      (let ((_lp-tl7781478053_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7781278046_)))
                                            (_lp-hd7781378050_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7781278046_))))
                                        (_loop7781178036_
                                         _lp-tl7781478053_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd7781378050_
                                                 _arity7781578043_)))))
                                    (let ((_arity7781678056_
                                           (reverse _arity7781578043_)))
                                      (___kont7938879389_
                                       _arity7781678056_
                                       _hd7780278010_))))))
                      (_loop7781178036_ _target7780878030_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7938379384_))
                (let ((_e7778578097_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7938379384_))))
                  (let ((_tl7778378104_
                         (let () (declare (not safe)) (##cdr _e7778578097_)))
                        (_hd7778478101_
                         (let () (declare (not safe)) (##car _e7778578097_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7778378104_))
                        (let ((_e7778878107_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7778378104_))))
                          (let ((_tl7778678114_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7778878107_)))
                                (_hd7778778111_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7778878107_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7778678114_))
                                (let ((_e7779178117_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7778678114_))))
                                  (let ((_tl7778978124_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7779178117_)))
                                        (_hd7779078121_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7779178117_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd7779078121_))
                                        (let ((_e7779278127_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd7779078121_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e7779278127_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl7778978124_))
                                                  (let ((_e7779578131_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl7778978124_))))
                                                    (let ((_tl7779378138_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e7779578131_)))
                                                          (_hd7779478135_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e7779578131_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl7779378138_))
                                                          (___kont7938679387_
                                                           _hd7779478135_
                                                           _hd7778778111_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl7778978124_))
                      (let ((___splice7939079391_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl7778978124_ '0))))
                        (let ((_tl7781078033_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7939079391_ '1)))
                              (_target7780878030_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7939079391_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7781078033_))
                              (___match7946279463_
                               _e7778578097_
                               _hd7778478101_
                               _tl7778378104_
                               _e7778878107_
                               _hd7778778111_
                               _tl7778678114_
                               _e7779178117_
                               _hd7779078121_
                               _tl7778978124_
                               _e7779278127_
                               ___splice7939079391_
                               _target7780878030_
                               _tl7781078033_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl7778678114_))
                                  (let ((___splice7939679397_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl7778678114_
                                            '0))))
                                    (let ((_tl7783877880_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice7939679397_
                                              '1)))
                                          (_target7783677877_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice7939679397_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7783877880_))
                                          (___match7950279503_
                                           _e7778578097_
                                           _hd7778478101_
                                           _tl7778378104_
                                           _e7778878107_
                                           _hd7778778111_
                                           _tl7778678114_
                                           ___splice7939679397_
                                           _target7783677877_
                                           _tl7783877880_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7777977850_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g7777977850_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl7778678114_))
                          (let ((___splice7939679397_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl7778678114_
                                    '0))))
                            (let ((_tl7783877880_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice7939679397_ '1)))
                                  (_target7783677877_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice7939679397_ '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl7783877880_))
                                  (___match7950279503_
                                   _e7778578097_
                                   _hd7778478101_
                                   _tl7778378104_
                                   _e7778878107_
                                   _hd7778778111_
                                   _tl7778678114_
                                   ___splice7939679397_
                                   _target7783677877_
                                   _tl7783877880_)
                                  (let ()
                                    (declare (not safe))
                                    (_g7777977850_)))))
                          (let () (declare (not safe)) (_g7777977850_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7778978124_))
                                                      (let ((___splice7939079391_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7778978124_ '0))))
                (let ((_tl7781078033_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7939079391_ '1)))
                      (_target7780878030_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7939079391_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7781078033_))
                      (___match7946279463_
                       _e7778578097_
                       _hd7778478101_
                       _tl7778378104_
                       _e7778878107_
                       _hd7778778111_
                       _tl7778678114_
                       _e7779178117_
                       _hd7779078121_
                       _tl7778978124_
                       _e7779278127_
                       ___splice7939079391_
                       _target7780878030_
                       _tl7781078033_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl7778978124_))
                          (___kont7939279393_ _hd7779078121_ _hd7778778111_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7778678114_))
                              (let ((___splice7939679397_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7778678114_
                                        '0))))
                                (let ((_tl7783877880_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice7939679397_
                                          '1)))
                                      (_target7783677877_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice7939679397_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7783877880_))
                                      (___match7950279503_
                                       _e7778578097_
                                       _hd7778478101_
                                       _tl7778378104_
                                       _e7778878107_
                                       _hd7778778111_
                                       _tl7778678114_
                                       ___splice7939679397_
                                       _target7783677877_
                                       _tl7783877880_)
                                      (let ()
                                        (declare (not safe))
                                        (_g7777977850_)))))
                              (let ()
                                (declare (not safe))
                                (_g7777977850_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7778978124_))
                  (___kont7939279393_ _hd7779078121_ _hd7778778111_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl7778678114_))
                      (let ((___splice7939679397_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl7778678114_ '0))))
                        (let ((_tl7783877880_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7939679397_ '1)))
                              (_target7783677877_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7939679397_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7783877880_))
                              (___match7950279503_
                               _e7778578097_
                               _hd7778478101_
                               _tl7778378104_
                               _e7778878107_
                               _hd7778778111_
                               _tl7778678114_
                               ___splice7939679397_
                               _target7783677877_
                               _tl7783877880_)
                              (let () (declare (not safe)) (_g7777977850_)))))
                      (let () (declare (not safe)) (_g7777977850_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7778978124_))
                                                  (___kont7939279393_
                                                   _hd7779078121_
                                                   _hd7778778111_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7778678114_))
                                                      (let ((___splice7939679397_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7778678114_ '0))))
                (let ((_tl7783877880_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7939679397_ '1)))
                      (_target7783677877_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7939679397_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7783877880_))
                      (___match7950279503_
                       _e7778578097_
                       _hd7778478101_
                       _tl7778378104_
                       _e7778878107_
                       _hd7778778111_
                       _tl7778678114_
                       ___splice7939679397_
                       _target7783677877_
                       _tl7783877880_)
                      (let () (declare (not safe)) (_g7777977850_)))))
              (let () (declare (not safe)) (_g7777977850_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7778978124_))
                                            (___kont7939279393_
                                             _hd7779078121_
                                             _hd7778778111_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl7778678114_))
                                                (let ((___splice7939679397_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl7778678114_
                                                          '0))))
                                                  (let ((_tl7783877880_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice7939679397_
                                                            '1)))
                                                        (_target7783677877_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice7939679397_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7783877880_))
                                                        (___match7950279503_
                                                         _e7778578097_
                                                         _hd7778478101_
                                                         _tl7778378104_
                                                         _e7778878107_
                                                         _hd7778778111_
                                                         _tl7778678114_
                                                         ___splice7939679397_
                                                         _target7783677877_
                                                         _tl7783877880_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7777977850_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7777977850_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7778678114_))
                                    (let ((___splice7939679397_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7778678114_
                                              '0))))
                                      (let ((_tl7783877880_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7939679397_
                                                '1)))
                                            (_target7783677877_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7939679397_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7783877880_))
                                            (___match7950279503_
                                             _e7778578097_
                                             _hd7778478101_
                                             _tl7778378104_
                                             _e7778878107_
                                             _hd7778778111_
                                             _tl7778678114_
                                             ___splice7939679397_
                                             _target7783677877_
                                             _tl7783877880_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7777977850_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7777977850_))))))
                        (let () (declare (not safe)) (_g7777977850_)))))
                (let () (declare (not safe)) (_g7777977850_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx78167_)
      (let* ((___stx7950579506_ _$stx78167_)
             (_g7817278207_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx7950579506_)))))
        (let ((___kont7950879509_
               (lambda (_L78329_ _L78331_)
                 (let ((__tmp79992
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp79987
                        (let ((__tmp79988
                               (let ((__tmp79989
                                      (let ((__tmp79991
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp79990
                                             (let ()
                                               (declare (not safe))
                                               (cons _L78329_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79991 __tmp79990))))
                                 (declare (not safe))
                                 (cons __tmp79989 '()))))
                          (declare (not safe))
                          (cons _L78331_ __tmp79988))))
                   (declare (not safe))
                   (cons __tmp79992 __tmp79987))))
              (___kont7951079511_
               (lambda (_L78264_ _L78266_)
                 (let ((__tmp80001
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp79993
                        (let ((__tmp79994
                               (let ((__tmp79995
                                      (let ((__tmp80000
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp79996
                                             (let ((__tmp79997
                                                    (lambda (_g7828378286_
                                                             _g7828478289_)
                                                      (let ((__tmp79998
                                                             (let ((__tmp79999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g7828378286_ __tmp79999))))
                (declare (not safe))
                (cons __tmp79998 _g7828478289_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp79997
                                                       '()
                                                       _L78264_))))
                                        (declare (not safe))
                                        (cons __tmp80000 __tmp79996))))
                                 (declare (not safe))
                                 (cons __tmp79995 '()))))
                          (declare (not safe))
                          (cons _L78266_ __tmp79994))))
                   (declare (not safe))
                   (cons __tmp80001 __tmp79993)))))
          (let ((___match7955479555_
                 (lambda (_e7818978214_
                          _hd7818878218_
                          _tl7818778221_
                          _e7819278224_
                          _hd7819178228_
                          _tl7819078231_
                          ___splice7951279513_
                          _target7819378234_
                          _tl7819578237_)
                   (letrec ((_loop7819678240_
                             (lambda (_hd7819478244_ _arity7820078247_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd7819478244_))
                                   (let ((_e7819778250_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd7819478244_))))
                                     (let ((_lp-tl7819978257_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e7819778250_)))
                                           (_lp-hd7819878254_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e7819778250_))))
                                       (_loop7819678240_
                                        _lp-tl7819978257_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd7819878254_
                                                _arity7820078247_)))))
                                   (let ((_arity7820178260_
                                          (reverse _arity7820078247_)))
                                     (___kont7951079511_
                                      _arity7820178260_
                                      _hd7819178228_))))))
                     (_loop7819678240_ _target7819378234_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7950579506_))
                (let ((_e7817878299_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7950579506_))))
                  (let ((_tl7817678306_
                         (let () (declare (not safe)) (##cdr _e7817878299_)))
                        (_hd7817778303_
                         (let () (declare (not safe)) (##car _e7817878299_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7817678306_))
                        (let ((_e7818178309_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7817678306_))))
                          (let ((_tl7817978316_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7818178309_)))
                                (_hd7818078313_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7818178309_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7817978316_))
                                (let ((_e7818478319_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7817978316_))))
                                  (let ((_tl7818278326_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7818478319_)))
                                        (_hd7818378323_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7818478319_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7818278326_))
                                        (___kont7950879509_
                                         _hd7818378323_
                                         _hd7818078313_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl7817978316_))
                                            (let ((___splice7951279513_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl7817978316_
                                                      '0))))
                                              (let ((_tl7819578237_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice7951279513_
                                                        '1)))
                                                    (_target7819378234_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice7951279513_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7819578237_))
                                                    (___match7955479555_
                                                     _e7817878299_
                                                     _hd7817778303_
                                                     _tl7817678306_
                                                     _e7818178309_
                                                     _hd7818078313_
                                                     _tl7817978316_
                                                     ___splice7951279513_
                                                     _target7819378234_
                                                     _tl7819578237_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7817278207_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g7817278207_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7817978316_))
                                    (let ((___splice7951279513_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7817978316_
                                              '0))))
                                      (let ((_tl7819578237_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7951279513_
                                                '1)))
                                            (_target7819378234_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7951279513_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7819578237_))
                                            (___match7955479555_
                                             _e7817878299_
                                             _hd7817778303_
                                             _tl7817678306_
                                             _e7818178309_
                                             _hd7818078313_
                                             _tl7817978316_
                                             ___splice7951279513_
                                             _target7819378234_
                                             _tl7819578237_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7817278207_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7817278207_))))))
                        (let () (declare (not safe)) (_g7817278207_)))))
                (let () (declare (not safe)) (_g7817278207_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx78351_)
      (let* ((_g7835578390_
              (lambda (_g7835678386_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7835678386_))))
             (_g7835478518_
              (lambda (_g7835678394_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7835678394_))
                    (let ((_e7836178397_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7835678394_))))
                      (let ((_hd7836078401_
                             (let ()
                               (declare (not safe))
                               (##car _e7836178397_)))
                            (_tl7835978404_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7836178397_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7835978404_))
                            (let ((_g80002_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7835978404_
                                      '0))))
                              (begin
                                (let ((_g80003_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g80002_)
                                             (##vector-length _g80002_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g80003_ 2)))
                                      (error "Context expects 2 values"
                                             _g80003_)))
                                (let ((_target7836278407_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g80002_ 0)))
                                      (_tl7836478410_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g80002_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7836478410_))
                                      (letrec ((_loop7836578413_
                                                (lambda (_hd7836378417_
                                                         _arity7836978420_
                                                         _prim7837078422_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7836378417_))
                                                      (let ((_e7836678425_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7836378417_))))
                (let ((_lp-hd7836778429_
                       (let () (declare (not safe)) (##car _e7836678425_)))
                      (_lp-tl7836878432_
                       (let () (declare (not safe)) (##cdr _e7836678425_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7836778429_))
                      (let ((_e7837578435_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7836778429_))))
                        (let ((_hd7837478439_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7837578435_)))
                              (_tl7837378442_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7837578435_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7837378442_))
                              (let ((_g80012_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7837378442_
                                        '0))))
                                (begin
                                  (let ((_g80013_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g80012_)
                                               (##vector-length _g80012_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g80013_ 2)))
                                        (error "Context expects 2 values"
                                               _g80013_)))
                                  (let ((_target7837678445_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g80012_ 0)))
                                        (_tl7837878448_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g80012_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7837878448_))
                                        (letrec ((_loop7837978451_
                                                  (lambda (_hd7837778455_
                                                           _arity7838378458_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd7837778455_))
                                                        (let ((_e7838078461_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd7837778455_))))
                  (let ((_lp-hd7838178465_
                         (let () (declare (not safe)) (##car _e7838078461_)))
                        (_lp-tl7838278468_
                         (let () (declare (not safe)) (##cdr _e7838078461_))))
                    (_loop7837978451_
                     _lp-tl7838278468_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd7838178465_ _arity7838378458_)))))
                (let ((_arity7838478471_ (reverse _arity7838378458_)))
                  (_loop7836578413_
                   _lp-tl7836878432_
                   (let ()
                     (declare (not safe))
                     (cons _arity7838478471_ _arity7836978420_))
                   (let ()
                     (declare (not safe))
                     (cons _hd7837478439_ _prim7837078422_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop7837978451_
                                           _target7837678445_
                                           '()))
                                        (_g7835578390_ _g7835678394_)))))
                              (_g7835578390_ _g7835678394_))))
                      (_g7835578390_ _g7835678394_))))
              (let ((_arity7837178475_ (reverse _arity7836978420_))
                    (_prim7837278478_ (reverse _prim7837078422_)))
                ((lambda (_L78481_ _L78483_)
                   (let ((__tmp80011
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp80004
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L78481_
                               _L78483_))
                            (let ((__tmp80005
                                   (lambda (_g7849878504_
                                            _g7849978507_
                                            _g7850078509_)
                                     (let ((__tmp80006
                                            (let ((__tmp80010
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp80007
                                                   (let ((__tmp80008
                                                          (let ((__tmp80009
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g7850178512_ _g7850278515_)
                           (let ()
                             (declare (not safe))
                             (cons _g7850178512_ _g7850278515_)))))
                    (declare (not safe))
                    (foldr1 __tmp80009 '() _g7849878504_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7849978507_
                                                           __tmp80008))))
                                              (declare (not safe))
                                              (cons __tmp80010 __tmp80007))))
                                       (declare (not safe))
                                       (cons __tmp80006 _g7850078509_)))))
                              (declare (not safe))
                              (foldr2 __tmp80005 '() _L78481_ _L78483_)))))
                     (declare (not safe))
                     (cons __tmp80011 __tmp80004)))
                 _arity7837178475_
                 _prim7837278478_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7836578413_
                                         _target7836278407_
                                         '()
                                         '()))
                                      (_g7835578390_ _g7835678394_)))))
                            (_g7835578390_ _g7835678394_))))
                    (_g7835578390_ _g7835678394_)))))
        (_g7835478518_ _$stx78351_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx78524_)
      (let* ((_g7852878563_
              (lambda (_g7852978559_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7852978559_))))
             (_g7852778691_
              (lambda (_g7852978567_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7852978567_))
                    (let ((_e7853478570_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7852978567_))))
                      (let ((_hd7853378574_
                             (let ()
                               (declare (not safe))
                               (##car _e7853478570_)))
                            (_tl7853278577_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7853478570_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7853278577_))
                            (let ((_g80014_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7853278577_
                                      '0))))
                              (begin
                                (let ((_g80015_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g80014_)
                                             (##vector-length _g80014_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g80015_ 2)))
                                      (error "Context expects 2 values"
                                             _g80015_)))
                                (let ((_target7853578580_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g80014_ 0)))
                                      (_tl7853778583_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g80014_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7853778583_))
                                      (letrec ((_loop7853878586_
                                                (lambda (_hd7853678590_
                                                         _arity7854278593_
                                                         _prim7854378595_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7853678590_))
                                                      (let ((_e7853978598_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7853678590_))))
                (let ((_lp-hd7854078602_
                       (let () (declare (not safe)) (##car _e7853978598_)))
                      (_lp-tl7854178605_
                       (let () (declare (not safe)) (##cdr _e7853978598_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7854078602_))
                      (let ((_e7854878608_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7854078602_))))
                        (let ((_hd7854778612_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7854878608_)))
                              (_tl7854678615_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7854878608_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7854678615_))
                              (let ((_g80024_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7854678615_
                                        '0))))
                                (begin
                                  (let ((_g80025_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g80024_)
                                               (##vector-length _g80024_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g80025_ 2)))
                                        (error "Context expects 2 values"
                                               _g80025_)))
                                  (let ((_target7854978618_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g80024_ 0)))
                                        (_tl7855178621_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g80024_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7855178621_))
                                        (letrec ((_loop7855278624_
                                                  (lambda (_hd7855078628_
                                                           _arity7855678631_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd7855078628_))
                                                        (let ((_e7855378634_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd7855078628_))))
                  (let ((_lp-hd7855478638_
                         (let () (declare (not safe)) (##car _e7855378634_)))
                        (_lp-tl7855578641_
                         (let () (declare (not safe)) (##cdr _e7855378634_))))
                    (_loop7855278624_
                     _lp-tl7855578641_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd7855478638_ _arity7855678631_)))))
                (let ((_arity7855778644_ (reverse _arity7855678631_)))
                  (_loop7853878586_
                   _lp-tl7854178605_
                   (let ()
                     (declare (not safe))
                     (cons _arity7855778644_ _arity7854278593_))
                   (let ()
                     (declare (not safe))
                     (cons _hd7854778612_ _prim7854378595_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop7855278624_
                                           _target7854978618_
                                           '()))
                                        (_g7852878563_ _g7852978567_)))))
                              (_g7852878563_ _g7852978567_))))
                      (_g7852878563_ _g7852978567_))))
              (let ((_arity7854478648_ (reverse _arity7854278593_))
                    (_prim7854578651_ (reverse _prim7854378595_)))
                ((lambda (_L78654_ _L78656_)
                   (let ((__tmp80023
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp80016
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L78654_
                               _L78656_))
                            (let ((__tmp80017
                                   (lambda (_g7867178677_
                                            _g7867278680_
                                            _g7867378682_)
                                     (let ((__tmp80018
                                            (let ((__tmp80022
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp80019
                                                   (let ((__tmp80020
                                                          (let ((__tmp80021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g7867478685_ _g7867578688_)
                           (let ()
                             (declare (not safe))
                             (cons _g7867478685_ _g7867578688_)))))
                    (declare (not safe))
                    (foldr1 __tmp80021 '() _g7867178677_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7867278680_
                                                           __tmp80020))))
                                              (declare (not safe))
                                              (cons __tmp80022 __tmp80019))))
                                       (declare (not safe))
                                       (cons __tmp80018 _g7867378682_)))))
                              (declare (not safe))
                              (foldr2 __tmp80017 '() _L78654_ _L78656_)))))
                     (declare (not safe))
                     (cons __tmp80023 __tmp80016)))
                 _arity7854478648_
                 _prim7854578651_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7853878586_
                                         _target7853578580_
                                         '()
                                         '()))
                                      (_g7852878563_ _g7852978567_)))))
                            (_g7852878563_ _g7852978567_))))
                    (_g7852878563_ _g7852978567_)))))
        (_g7852778691_ _$stx78524_)))))
