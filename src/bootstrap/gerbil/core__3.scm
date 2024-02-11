(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g47565_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g47566_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g47649_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g47650_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defrules|
      (lambda (_$stx1341_)
        (let* ((_g13451373_
                (lambda (_g13461369_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g13461369_)))
               (_g13441474_
                (lambda (_g13461377_)
                  (if (gx#stx-pair? _g13461377_)
                      (let ((_e13521380_ (gx#syntax-e _g13461377_)))
                        (let ((_hd13511384_
                               (let ()
                                 (declare (not safe))
                                 (##car _e13521380_)))
                              (_tl13501387_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e13521380_))))
                          (if (gx#stx-pair? _tl13501387_)
                              (let ((_e13551390_ (gx#syntax-e _tl13501387_)))
                                (let ((_hd13541394_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e13551390_)))
                                      (_tl13531397_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e13551390_))))
                                  (if (gx#stx-pair? _tl13531397_)
                                      (let ((_e13581400_
                                             (gx#syntax-e _tl13531397_)))
                                        (let ((_hd13571404_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e13581400_)))
                                              (_tl13561407_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e13581400_))))
                                          (if (gx#stx-pair/null? _tl13561407_)
                                              (let ((_g47469_
                                                     (gx#syntax-split-splice
                                                      _tl13561407_
                                                      '0)))
                                                (begin
                                                  (let ((_g47470_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g47469_)
                                                               (##vector-length
                                                                _g47469_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g47470_ 2)))
                (error "Context expects 2 values" _g47470_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target13591410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g47469_
                                                            0)))
                                                        (_tl13611413_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g47469_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl13611413_)
                                                        (letrec ((_loop13621416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd13601420_ _clauses13661423_)
                            (if (gx#stx-pair? _hd13601420_)
                                (let ((_e13631426_ (gx#syntax-e _hd13601420_)))
                                  (let ((_lp-hd13641430_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e13631426_)))
                                        (_lp-tl13651433_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e13631426_))))
                                    (_loop13621416_
                                     _lp-tl13651433_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd13641430_
                                             _clauses13661423_)))))
                                (let ((_clauses13671436_
                                       (reverse _clauses13661423_)))
                                  ((lambda (_L1440_ _L1442_ _L1443_)
                                     (if (gx#identifier? _L1443_)
                                         (let ((__tmp47478
                                                (gx#datum->syntax
                                                 '#f
                                                 'define-syntax))
                                               (__tmp47471
                                                (let ((__tmp47472
                                                       (let ((__tmp47473
                                                              (let ((__tmp47477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'syntax-rules))
                            (__tmp47474
                             (let ((__tmp47475
                                    (let ((__tmp47476
                                           (lambda (_g14651468_ _g14661471_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g14651468_
                                                     _g14661471_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp47476 '() _L1440_))))
                               (declare (not safe))
                               (cons _L1442_ __tmp47475))))
                        (declare (not safe))
                        (cons __tmp47477 __tmp47474))))
                 (declare (not safe))
                 (cons __tmp47473 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L1443_ __tmp47472))))
                                           (declare (not safe))
                                           (cons __tmp47478 __tmp47471))
                                         (_g13451373_ _g13461377_)))
                                   _clauses13671436_
                                   _hd13571404_
                                   _hd13541394_))))))
                  (_loop13621416_ _target13591410_ '()))
                (_g13451373_ _g13461377_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g13451373_ _g13461377_))))
                                      (_g13451373_ _g13461377_))))
                              (_g13451373_ _g13461377_))))
                      (_g13451373_ _g13461377_)))))
          (_g13441474_ _$stx1341_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defsyntax%|
      (lambda (_$stx1479_)
        (let* ((___stx4195841959_ _$stx1479_)
               (_g14841523_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4195841959_))))
          (let ((___kont4196141962_
                 (lambda (_L1645_ _L1647_ _L1648_)
                   (let ((__tmp47486 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp47479
                          (let ((__tmp47480
                                 (let ((__tmp47481
                                        (let ((__tmp47485
                                               (gx#datum->syntax '#f 'lambda%))
                                              (__tmp47482
                                               (let ((__tmp47483
                                                      (let ((__tmp47484
                                                             (lambda (_g16671670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g16681673_)
                       (let ()
                         (declare (not safe))
                         (cons _g16671670_ _g16681673_)))))
                (declare (not safe))
                (foldr1 __tmp47484 '() _L1645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L1647_ __tmp47483))))
                                          (declare (not safe))
                                          (cons __tmp47485 __tmp47482))))
                                   (declare (not safe))
                                   (cons __tmp47481 '()))))
                            (declare (not safe))
                            (cons _L1648_ __tmp47480))))
                     (declare (not safe))
                     (cons __tmp47486 __tmp47479))))
                (___kont4196541966_
                 (lambda (_L1560_ _L1562_)
                   (let ((__tmp47489 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp47487
                          (let ((__tmp47488
                                 (let ()
                                   (declare (not safe))
                                   (cons _L1560_ '()))))
                            (declare (not safe))
                            (cons _L1562_ __tmp47488))))
                     (declare (not safe))
                     (cons __tmp47489 __tmp47487)))))
            (let* ((___match4201342014_
                    (lambda (_e15111530_
                             _hd15101534_
                             _tl15091537_
                             _e15141540_
                             _hd15131544_
                             _tl15121547_
                             _e15171550_
                             _hd15161554_
                             _tl15151557_)
                      (let ((_L1560_ _hd15161554_) (_L1562_ _hd15131544_))
                        (if (gx#identifier? _L1562_)
                            (___kont4196541966_ _L1560_ _L1562_)
                            (let () (declare (not safe)) (_g14841523_))))))
                   (___match4200542006_
                    (lambda (_e15111530_
                             _hd15101534_
                             _tl15091537_
                             _e15141540_
                             _hd15131544_
                             _tl15121547_)
                      (if (gx#stx-pair? _tl15121547_)
                          (let ((_e15171550_ (gx#syntax-e _tl15121547_)))
                            (let ((_tl15151557_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e15171550_)))
                                  (_hd15161554_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e15171550_))))
                              (if (gx#stx-null? _tl15151557_)
                                  (___match4201342014_
                                   _e15111530_
                                   _hd15101534_
                                   _tl15091537_
                                   _e15141540_
                                   _hd15131544_
                                   _tl15121547_
                                   _e15171550_
                                   _hd15161554_
                                   _tl15151557_)
                                  (let ()
                                    (declare (not safe))
                                    (_g14841523_)))))
                          (let () (declare (not safe)) (_g14841523_)))))
                   (___match4199341994_
                    (lambda (_e14911585_
                             _hd14901589_
                             _tl14891592_
                             _e14941595_
                             _hd14931599_
                             _tl14921602_
                             _e14971605_
                             _hd14961609_
                             _tl14951612_
                             ___splice4196341964_
                             _target14981615_
                             _tl15001618_)
                      (letrec ((_loop15011621_
                                (lambda (_hd14991625_ _body15051628_)
                                  (if (gx#stx-pair? _hd14991625_)
                                      (let ((_e15021631_
                                             (gx#syntax-e _hd14991625_)))
                                        (let ((_lp-tl15041638_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e15021631_)))
                                              (_lp-hd15031635_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e15021631_))))
                                          (_loop15011621_
                                           _lp-tl15041638_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd15031635_
                                                   _body15051628_)))))
                                      (let ((_body15061641_
                                             (reverse _body15051628_)))
                                        (let ((_L1645_ _body15061641_)
                                              (_L1647_ _tl14951612_)
                                              (_L1648_ _hd14961609_))
                                          (if (gx#identifier? _L1648_)
                                              (___kont4196141962_
                                               _L1645_
                                               _L1647_
                                               _L1648_)
                                              (___match4200542006_
                                               _e14911585_
                                               _hd14901589_
                                               _tl14891592_
                                               _e14941595_
                                               _hd14931599_
                                               _tl14921602_))))))))
                        (_loop15011621_ _target14981615_ '())))))
              (if (gx#stx-pair? ___stx4195841959_)
                  (let ((_e14911585_ (gx#syntax-e ___stx4195841959_)))
                    (let ((_tl14891592_
                           (let () (declare (not safe)) (##cdr _e14911585_)))
                          (_hd14901589_
                           (let () (declare (not safe)) (##car _e14911585_))))
                      (if (gx#stx-pair? _tl14891592_)
                          (let ((_e14941595_ (gx#syntax-e _tl14891592_)))
                            (let ((_tl14921602_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e14941595_)))
                                  (_hd14931599_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e14941595_))))
                              (if (gx#stx-pair? _hd14931599_)
                                  (let ((_e14971605_
                                         (gx#syntax-e _hd14931599_)))
                                    (let ((_tl14951612_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e14971605_)))
                                          (_hd14961609_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e14971605_))))
                                      (if (gx#stx-pair/null? _tl14921602_)
                                          (let ((___splice4196341964_
                                                 (gx#syntax-split-splice
                                                  _tl14921602_
                                                  '0)))
                                            (let ((_tl15001618_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4196341964_
                                                      '1)))
                                                  (_target14981615_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4196341964_
                                                      '0))))
                                              (if (gx#stx-null? _tl15001618_)
                                                  (___match4199341994_
                                                   _e14911585_
                                                   _hd14901589_
                                                   _tl14891592_
                                                   _e14941595_
                                                   _hd14931599_
                                                   _tl14921602_
                                                   _e14971605_
                                                   _hd14961609_
                                                   _tl14951612_
                                                   ___splice4196341964_
                                                   _target14981615_
                                                   _tl15001618_)
                                                  (if (gx#stx-pair?
                                                       _tl14921602_)
                                                      (let ((_e15171550_
                                                             (gx#syntax-e
                                                              _tl14921602_)))
                                                        (let ((_tl15151557_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e15171550_)))
                      (_hd15161554_
                       (let () (declare (not safe)) (##car _e15171550_))))
                  (if (gx#stx-null? _tl15151557_)
                      (___match4201342014_
                       _e14911585_
                       _hd14901589_
                       _tl14891592_
                       _e14941595_
                       _hd14931599_
                       _tl14921602_
                       _e15171550_
                       _hd15161554_
                       _tl15151557_)
                      (let () (declare (not safe)) (_g14841523_)))))
              (let () (declare (not safe)) (_g14841523_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl14921602_)
                                              (let ((_e15171550_
                                                     (gx#syntax-e
                                                      _tl14921602_)))
                                                (let ((_tl15151557_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e15171550_)))
                                                      (_hd15161554_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e15171550_))))
                                                  (if (gx#stx-null?
                                                       _tl15151557_)
                                                      (___match4201342014_
                                                       _e14911585_
                                                       _hd14901589_
                                                       _tl14891592_
                                                       _e14941595_
                                                       _hd14931599_
                                                       _tl14921602_
                                                       _e15171550_
                                                       _hd15161554_
                                                       _tl15151557_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g14841523_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g14841523_))))))
                                  (if (gx#stx-pair? _tl14921602_)
                                      (let ((_e15171550_
                                             (gx#syntax-e _tl14921602_)))
                                        (let ((_tl15151557_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e15171550_)))
                                              (_hd15161554_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e15171550_))))
                                          (if (gx#stx-null? _tl15151557_)
                                              (___match4201342014_
                                               _e14911585_
                                               _hd14901589_
                                               _tl14891592_
                                               _e14941595_
                                               _hd14931599_
                                               _tl14921602_
                                               _e15171550_
                                               _hd15161554_
                                               _tl15151557_)
                                              (let ()
                                                (declare (not safe))
                                                (_g14841523_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g14841523_))))))
                          (let () (declare (not safe)) (_g14841523_)))))
                  (let () (declare (not safe)) (_g14841523_))))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defalias|
      (lambda (_$stx1681_)
        (let* ((_g16851703_
                (lambda (_g16861699_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g16861699_)))
               (_g16841758_
                (lambda (_g16861707_)
                  (if (gx#stx-pair? _g16861707_)
                      (let ((_e16911710_ (gx#syntax-e _g16861707_)))
                        (let ((_hd16901714_
                               (let ()
                                 (declare (not safe))
                                 (##car _e16911710_)))
                              (_tl16891717_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e16911710_))))
                          (if (gx#stx-pair? _tl16891717_)
                              (let ((_e16941720_ (gx#syntax-e _tl16891717_)))
                                (let ((_hd16931724_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e16941720_)))
                                      (_tl16921727_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e16941720_))))
                                  (if (gx#stx-pair? _tl16921727_)
                                      (let ((_e16971730_
                                             (gx#syntax-e _tl16921727_)))
                                        (let ((_hd16961734_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e16971730_)))
                                              (_tl16951737_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e16971730_))))
                                          (if (gx#stx-null? _tl16951737_)
                                              ((lambda (_L1740_ _L1742_)
                                                 (let ((__tmp47492
                                                        (gx#datum->syntax
                                                         '#f
                                                         'define-alias))
                                                       (__tmp47490
                                                        (let ((__tmp47491
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L1740_ '()))))
                  (declare (not safe))
                  (cons _L1742_ __tmp47491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47492
                                                         __tmp47490)))
                                               _hd16961734_
                                               _hd16931724_)
                                              (_g16851703_ _g16861707_))))
                                      (_g16851703_ _g16861707_))))
                              (_g16851703_ _g16861707_))))
                      (_g16851703_ _g16861707_)))))
          (_g16841758_ _$stx1681_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#define|
      (lambda (_$stx1762_)
        (let* ((___stx4201642017_ _$stx1762_)
               (_g17671806_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4201642017_))))
          (let ((___kont4201942020_
                 (lambda (_L1928_ _L1930_ _L1931_)
                   (let ((__tmp47501 (gx#datum->syntax '#f 'define-values))
                         (__tmp47493
                          (let ((__tmp47500
                                 (let ()
                                   (declare (not safe))
                                   (cons _L1931_ '())))
                                (__tmp47494
                                 (let ((__tmp47495
                                        (let ((__tmp47499
                                               (gx#datum->syntax '#f 'lambda%))
                                              (__tmp47496
                                               (let ((__tmp47497
                                                      (let ((__tmp47498
                                                             (lambda (_g19501953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g19511956_)
                       (let ()
                         (declare (not safe))
                         (cons _g19501953_ _g19511956_)))))
                (declare (not safe))
                (foldr1 __tmp47498 '() _L1928_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L1930_ __tmp47497))))
                                          (declare (not safe))
                                          (cons __tmp47499 __tmp47496))))
                                   (declare (not safe))
                                   (cons __tmp47495 '()))))
                            (declare (not safe))
                            (cons __tmp47500 __tmp47494))))
                     (declare (not safe))
                     (cons __tmp47501 __tmp47493))))
                (___kont4202342024_
                 (lambda (_L1843_ _L1845_)
                   (let ((__tmp47505 (gx#datum->syntax '#f 'define-values))
                         (__tmp47502
                          (let ((__tmp47504
                                 (let ()
                                   (declare (not safe))
                                   (cons _L1845_ '())))
                                (__tmp47503
                                 (let ()
                                   (declare (not safe))
                                   (cons _L1843_ '()))))
                            (declare (not safe))
                            (cons __tmp47504 __tmp47503))))
                     (declare (not safe))
                     (cons __tmp47505 __tmp47502)))))
            (let* ((___match4207142072_
                    (lambda (_e17941813_
                             _hd17931817_
                             _tl17921820_
                             _e17971823_
                             _hd17961827_
                             _tl17951830_
                             _e18001833_
                             _hd17991837_
                             _tl17981840_)
                      (let ((_L1843_ _hd17991837_) (_L1845_ _hd17961827_))
                        (if (gx#identifier? _L1845_)
                            (___kont4202342024_ _L1843_ _L1845_)
                            (let () (declare (not safe)) (_g17671806_))))))
                   (___match4206342064_
                    (lambda (_e17941813_
                             _hd17931817_
                             _tl17921820_
                             _e17971823_
                             _hd17961827_
                             _tl17951830_)
                      (if (gx#stx-pair? _tl17951830_)
                          (let ((_e18001833_ (gx#syntax-e _tl17951830_)))
                            (let ((_tl17981840_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e18001833_)))
                                  (_hd17991837_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e18001833_))))
                              (if (gx#stx-null? _tl17981840_)
                                  (___match4207142072_
                                   _e17941813_
                                   _hd17931817_
                                   _tl17921820_
                                   _e17971823_
                                   _hd17961827_
                                   _tl17951830_
                                   _e18001833_
                                   _hd17991837_
                                   _tl17981840_)
                                  (let ()
                                    (declare (not safe))
                                    (_g17671806_)))))
                          (let () (declare (not safe)) (_g17671806_)))))
                   (___match4205142052_
                    (lambda (_e17741868_
                             _hd17731872_
                             _tl17721875_
                             _e17771878_
                             _hd17761882_
                             _tl17751885_
                             _e17801888_
                             _hd17791892_
                             _tl17781895_
                             ___splice4202142022_
                             _target17811898_
                             _tl17831901_)
                      (letrec ((_loop17841904_
                                (lambda (_hd17821908_ _body17881911_)
                                  (if (gx#stx-pair? _hd17821908_)
                                      (let ((_e17851914_
                                             (gx#syntax-e _hd17821908_)))
                                        (let ((_lp-tl17871921_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e17851914_)))
                                              (_lp-hd17861918_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e17851914_))))
                                          (_loop17841904_
                                           _lp-tl17871921_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd17861918_
                                                   _body17881911_)))))
                                      (let ((_body17891924_
                                             (reverse _body17881911_)))
                                        (let ((_L1928_ _body17891924_)
                                              (_L1930_ _tl17781895_)
                                              (_L1931_ _hd17791892_))
                                          (if (gx#identifier? _L1931_)
                                              (___kont4201942020_
                                               _L1928_
                                               _L1930_
                                               _L1931_)
                                              (___match4206342064_
                                               _e17741868_
                                               _hd17731872_
                                               _tl17721875_
                                               _e17771878_
                                               _hd17761882_
                                               _tl17751885_))))))))
                        (_loop17841904_ _target17811898_ '())))))
              (if (gx#stx-pair? ___stx4201642017_)
                  (let ((_e17741868_ (gx#syntax-e ___stx4201642017_)))
                    (let ((_tl17721875_
                           (let () (declare (not safe)) (##cdr _e17741868_)))
                          (_hd17731872_
                           (let () (declare (not safe)) (##car _e17741868_))))
                      (if (gx#stx-pair? _tl17721875_)
                          (let ((_e17771878_ (gx#syntax-e _tl17721875_)))
                            (let ((_tl17751885_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e17771878_)))
                                  (_hd17761882_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e17771878_))))
                              (if (gx#stx-pair? _hd17761882_)
                                  (let ((_e17801888_
                                         (gx#syntax-e _hd17761882_)))
                                    (let ((_tl17781895_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e17801888_)))
                                          (_hd17791892_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e17801888_))))
                                      (if (gx#stx-pair/null? _tl17751885_)
                                          (let ((___splice4202142022_
                                                 (gx#syntax-split-splice
                                                  _tl17751885_
                                                  '0)))
                                            (let ((_tl17831901_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4202142022_
                                                      '1)))
                                                  (_target17811898_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4202142022_
                                                      '0))))
                                              (if (gx#stx-null? _tl17831901_)
                                                  (___match4205142052_
                                                   _e17741868_
                                                   _hd17731872_
                                                   _tl17721875_
                                                   _e17771878_
                                                   _hd17761882_
                                                   _tl17751885_
                                                   _e17801888_
                                                   _hd17791892_
                                                   _tl17781895_
                                                   ___splice4202142022_
                                                   _target17811898_
                                                   _tl17831901_)
                                                  (if (gx#stx-pair?
                                                       _tl17751885_)
                                                      (let ((_e18001833_
                                                             (gx#syntax-e
                                                              _tl17751885_)))
                                                        (let ((_tl17981840_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e18001833_)))
                      (_hd17991837_
                       (let () (declare (not safe)) (##car _e18001833_))))
                  (if (gx#stx-null? _tl17981840_)
                      (___match4207142072_
                       _e17741868_
                       _hd17731872_
                       _tl17721875_
                       _e17771878_
                       _hd17761882_
                       _tl17751885_
                       _e18001833_
                       _hd17991837_
                       _tl17981840_)
                      (let () (declare (not safe)) (_g17671806_)))))
              (let () (declare (not safe)) (_g17671806_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl17751885_)
                                              (let ((_e18001833_
                                                     (gx#syntax-e
                                                      _tl17751885_)))
                                                (let ((_tl17981840_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e18001833_)))
                                                      (_hd17991837_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e18001833_))))
                                                  (if (gx#stx-null?
                                                       _tl17981840_)
                                                      (___match4207142072_
                                                       _e17741868_
                                                       _hd17731872_
                                                       _tl17721875_
                                                       _e17771878_
                                                       _hd17761882_
                                                       _tl17751885_
                                                       _e18001833_
                                                       _hd17991837_
                                                       _tl17981840_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g17671806_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g17671806_))))))
                                  (if (gx#stx-pair? _tl17751885_)
                                      (let ((_e18001833_
                                             (gx#syntax-e _tl17751885_)))
                                        (let ((_tl17981840_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e18001833_)))
                                              (_hd17991837_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e18001833_))))
                                          (if (gx#stx-null? _tl17981840_)
                                              (___match4207142072_
                                               _e17741868_
                                               _hd17731872_
                                               _tl17721875_
                                               _e17771878_
                                               _hd17761882_
                                               _tl17751885_
                                               _e18001833_
                                               _hd17991837_
                                               _tl17981840_)
                                              (let ()
                                                (declare (not safe))
                                                (_g17671806_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g17671806_))))))
                          (let () (declare (not safe)) (_g17671806_)))))
                  (let () (declare (not safe)) (_g17671806_))))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let*-values|
      (lambda (_$stx1964_)
        (let* ((___stx4207442075_ _$stx1964_)
               (_g19692014_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4207442075_))))
          (let ((___kont4207742078_
                 (lambda (_L2172_)
                   (let ((__tmp47509 (gx#datum->syntax '#f 'let-values))
                         (__tmp47506
                          (let ((__tmp47507
                                 (let ((__tmp47508
                                        (lambda (_g21882191_ _g21892194_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g21882191_ _g21892194_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp47508 '() _L2172_))))
                            (declare (not safe))
                            (cons '() __tmp47507))))
                     (declare (not safe))
                     (cons __tmp47509 __tmp47506))))
                (___kont4208142082_
                 (lambda (_L2081_ _L2083_ _L2084_ _L2085_)
                   (let ((__tmp47517 (gx#datum->syntax '#f 'let-values))
                         (__tmp47510
                          (let ((__tmp47516
                                 (let ()
                                   (declare (not safe))
                                   (cons _L2084_ '())))
                                (__tmp47511
                                 (let ((__tmp47512
                                        (let ((__tmp47513
                                               (let ((__tmp47514
                                                      (let ((__tmp47515
                                                             (lambda (_g21062109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g21072112_)
                       (let ()
                         (declare (not safe))
                         (cons _g21062109_ _g21072112_)))))
                (declare (not safe))
                (foldr1 __tmp47515 '() _L2081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L2083_ __tmp47514))))
                                          (declare (not safe))
                                          (cons _L2085_ __tmp47513))))
                                   (declare (not safe))
                                   (cons __tmp47512 '()))))
                            (declare (not safe))
                            (cons __tmp47516 __tmp47511))))
                     (declare (not safe))
                     (cons __tmp47517 __tmp47510)))))
            (let* ((___match4213342134_
                    (lambda (_e19932021_
                             _hd19922025_
                             _tl19912028_
                             _e19962031_
                             _hd19952035_
                             _tl19942038_
                             _e19992041_
                             _hd19982045_
                             _tl19972048_
                             ___splice4208342084_
                             _target20002051_
                             _tl20022054_)
                      (letrec ((_loop20032057_
                                (lambda (_hd20012061_ _body20072064_)
                                  (if (gx#stx-pair? _hd20012061_)
                                      (let ((_e20042067_
                                             (gx#syntax-e _hd20012061_)))
                                        (let ((_lp-tl20062074_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e20042067_)))
                                              (_lp-hd20052071_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e20042067_))))
                                          (_loop20032057_
                                           _lp-tl20062074_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd20052071_
                                                   _body20072064_)))))
                                      (let ((_body20082077_
                                             (reverse _body20072064_)))
                                        (___kont4208142082_
                                         _body20082077_
                                         _tl19972048_
                                         _hd19982045_
                                         _hd19922025_))))))
                        (_loop20032057_ _target20002051_ '()))))
                   (___match4210742108_
                    (lambda (_e19742122_
                             _hd19732126_
                             _tl19722129_
                             _e19772132_
                             _hd19762136_
                             _tl19752139_
                             ___splice4207942080_
                             _target19782142_
                             _tl19802145_)
                      (letrec ((_loop19812148_
                                (lambda (_hd19792152_ _body19852155_)
                                  (if (gx#stx-pair? _hd19792152_)
                                      (let ((_e19822158_
                                             (gx#syntax-e _hd19792152_)))
                                        (let ((_lp-tl19842165_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e19822158_)))
                                              (_lp-hd19832162_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e19822158_))))
                                          (_loop19812148_
                                           _lp-tl19842165_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd19832162_
                                                   _body19852155_)))))
                                      (let ((_body19862168_
                                             (reverse _body19852155_)))
                                        (___kont4207742078_
                                         _body19862168_))))))
                        (_loop19812148_ _target19782142_ '())))))
              (if (gx#stx-pair? ___stx4207442075_)
                  (let ((_e19742122_ (gx#syntax-e ___stx4207442075_)))
                    (let ((_tl19722129_
                           (let () (declare (not safe)) (##cdr _e19742122_)))
                          (_hd19732126_
                           (let () (declare (not safe)) (##car _e19742122_))))
                      (if (gx#stx-pair? _tl19722129_)
                          (let ((_e19772132_ (gx#syntax-e _tl19722129_)))
                            (let ((_tl19752139_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e19772132_)))
                                  (_hd19762136_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e19772132_))))
                              (if (gx#stx-null? _hd19762136_)
                                  (if (gx#stx-pair/null? _tl19752139_)
                                      (let ((___splice4207942080_
                                             (gx#syntax-split-splice
                                              _tl19752139_
                                              '0)))
                                        (let ((_tl19802145_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4207942080_
                                                  '1)))
                                              (_target19782142_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4207942080_
                                                  '0))))
                                          (if (gx#stx-null? _tl19802145_)
                                              (___match4210742108_
                                               _e19742122_
                                               _hd19732126_
                                               _tl19722129_
                                               _e19772132_
                                               _hd19762136_
                                               _tl19752139_
                                               ___splice4207942080_
                                               _target19782142_
                                               _tl19802145_)
                                              (let ()
                                                (declare (not safe))
                                                (_g19692014_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g19692014_)))
                                  (if (gx#stx-pair? _hd19762136_)
                                      (let ((_e19992041_
                                             (gx#syntax-e _hd19762136_)))
                                        (let ((_tl19972048_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e19992041_)))
                                              (_hd19982045_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e19992041_))))
                                          (if (gx#stx-pair/null? _tl19752139_)
                                              (let ((___splice4208342084_
                                                     (gx#syntax-split-splice
                                                      _tl19752139_
                                                      '0)))
                                                (let ((_tl20022054_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4208342084_
                                                          '1)))
                                                      (_target20002051_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4208342084_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl20022054_)
                                                      (___match4213342134_
                                                       _e19742122_
                                                       _hd19732126_
                                                       _tl19722129_
                                                       _e19772132_
                                                       _hd19762136_
                                                       _tl19752139_
                                                       _e19992041_
                                                       _hd19982045_
                                                       _tl19972048_
                                                       ___splice4208342084_
                                                       _target20002051_
                                                       _tl20022054_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g19692014_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g19692014_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g19692014_))))))
                          (let () (declare (not safe)) (_g19692014_)))))
                  (let () (declare (not safe)) (_g19692014_))))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let|
      (lambda (_$stx2203_)
        (let* ((___stx4213642137_ _$stx2203_)
               (_g22082272_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4213642137_))))
          (let ((___kont4213942140_
                 (lambda (_L2478_ _L2480_ _L2481_ _L2482_ _L2483_)
                   (let ((__tmp47520
                          (let ((__tmp47534
                                 (gx#datum->syntax '#f 'letrec-values))
                                (__tmp47521
                                 (let ((__tmp47523
                                        (let ((__tmp47524
                                               (let ((__tmp47533
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L2483_ '())))
                                                     (__tmp47525
                                                      (let ((__tmp47526
                                                             (let ((__tmp47532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda%))
                           (__tmp47527
                            (let ((__tmp47530
                                   (let ((__tmp47531
                                          (lambda (_g25122515_ _g25132518_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g25122515_
                                                    _g25132518_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp47531 _L2480_ _L2482_)))
                                  (__tmp47528
                                   (let ((__tmp47529
                                          (lambda (_g25102521_ _g25112524_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g25102521_
                                                    _g25112524_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp47529 '() _L2478_))))
                              (declare (not safe))
                              (cons __tmp47530 __tmp47528))))
                       (declare (not safe))
                       (cons __tmp47532 __tmp47527))))
                (declare (not safe))
                (cons __tmp47526 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47533
                                                       __tmp47525))))
                                          (declare (not safe))
                                          (cons __tmp47524 '())))
                                       (__tmp47522
                                        (let ()
                                          (declare (not safe))
                                          (cons _L2483_ '()))))
                                   (declare (not safe))
                                   (cons __tmp47523 __tmp47522))))
                            (declare (not safe))
                            (cons __tmp47534 __tmp47521)))
                         (__tmp47518
                          (let ((__tmp47519
                                 (lambda (_g25082527_ _g25092530_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g25082527_ _g25092530_)))))
                            (declare (not safe))
                            (foldr1 __tmp47519 '() _L2481_))))
                     (declare (not safe))
                     (cons __tmp47520 __tmp47518))))
                (___kont4214542146_
                 (lambda (_L2329_ _L2331_)
                   (let ((__tmp47540 (gx#datum->syntax '#f '~let))
                         (__tmp47535
                          (let ((__tmp47539 (gx#datum->syntax '#f 'let-values))
                                (__tmp47536
                                 (let ((__tmp47537
                                        (let ((__tmp47538
                                               (lambda (_g23482351_
                                                        _g23492354_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g23482351_
                                                         _g23492354_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp47538 '() _L2329_))))
                                   (declare (not safe))
                                   (cons _L2331_ __tmp47537))))
                            (declare (not safe))
                            (cons __tmp47539 __tmp47536))))
                     (declare (not safe))
                     (cons __tmp47540 __tmp47535)))))
            (let* ((___match4219342194_
                    (lambda (_e22542279_
                             _hd22532283_
                             _tl22522286_
                             _e22572289_
                             _hd22562293_
                             _tl22552296_
                             ___splice4214742148_
                             _target22582299_
                             _tl22602302_)
                      (letrec ((_loop22612305_
                                (lambda (_hd22592309_ _body22652312_)
                                  (if (gx#stx-pair? _hd22592309_)
                                      (let ((_e22622315_
                                             (gx#syntax-e _hd22592309_)))
                                        (let ((_lp-tl22642322_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e22622315_)))
                                              (_lp-hd22632319_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e22622315_))))
                                          (_loop22612305_
                                           _lp-tl22642322_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd22632319_
                                                   _body22652312_)))))
                                      (let ((_body22662325_
                                             (reverse _body22652312_)))
                                        (___kont4214542146_
                                         _body22662325_
                                         _hd22562293_))))))
                        (_loop22612305_ _target22582299_ '()))))
                   (___match4218542186_
                    (lambda (_e22542279_
                             _hd22532283_
                             _tl22522286_
                             _e22572289_
                             _hd22562293_
                             _tl22552296_)
                      (if (gx#stx-pair/null? _tl22552296_)
                          (let ((___splice4214742148_
                                 (gx#syntax-split-splice _tl22552296_ '0)))
                            (let ((_tl22602302_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4214742148_ '1)))
                                  (_target22582299_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4214742148_ '0))))
                              (if (gx#stx-null? _tl22602302_)
                                  (___match4219342194_
                                   _e22542279_
                                   _hd22532283_
                                   _tl22522286_
                                   _e22572289_
                                   _hd22562293_
                                   _tl22552296_
                                   ___splice4214742148_
                                   _target22582299_
                                   _tl22602302_)
                                  (let ()
                                    (declare (not safe))
                                    (_g22082272_)))))
                          (let () (declare (not safe)) (_g22082272_)))))
                   (___match4217342174_
                    (lambda (_e22172364_
                             _hd22162368_
                             _tl22152371_
                             _e22202374_
                             _hd22192378_
                             _tl22182381_
                             _e22232384_
                             _hd22222388_
                             _tl22212391_
                             ___splice4214142142_
                             _target22242394_
                             _tl22262397_)
                      (letrec ((_loop22272400_
                                (lambda (_hd22252404_
                                         _arg22312407_
                                         _var22322409_)
                                  (if (gx#stx-pair? _hd22252404_)
                                      (let ((_e22282412_
                                             (gx#syntax-e _hd22252404_)))
                                        (let ((_lp-tl22302419_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e22282412_)))
                                              (_lp-hd22292416_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e22282412_))))
                                          (if (gx#stx-pair? _lp-hd22292416_)
                                              (let ((_e22372422_
                                                     (gx#syntax-e
                                                      _lp-hd22292416_)))
                                                (let ((_tl22352429_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e22372422_)))
                                                      (_hd22362426_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e22372422_))))
                                                  (if (gx#stx-pair?
                                                       _tl22352429_)
                                                      (let ((_e22402432_
                                                             (gx#syntax-e
                                                              _tl22352429_)))
                                                        (let ((_tl22382439_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e22402432_)))
                      (_hd22392436_
                       (let () (declare (not safe)) (##car _e22402432_))))
                  (if (gx#stx-null? _tl22382439_)
                      (_loop22272400_
                       _lp-tl22302419_
                       (let ()
                         (declare (not safe))
                         (cons _hd22392436_ _arg22312407_))
                       (let ()
                         (declare (not safe))
                         (cons _hd22362426_ _var22322409_)))
                      (___match4218542186_
                       _e22172364_
                       _hd22162368_
                       _tl22152371_
                       _e22202374_
                       _hd22192378_
                       _tl22182381_))))
              (___match4218542186_
               _e22172364_
               _hd22162368_
               _tl22152371_
               _e22202374_
               _hd22192378_
               _tl22182381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match4218542186_
                                               _e22172364_
                                               _hd22162368_
                                               _tl22152371_
                                               _e22202374_
                                               _hd22192378_
                                               _tl22182381_))))
                                      (let ((_var22342445_
                                             (reverse _var22322409_))
                                            (_arg22332442_
                                             (reverse _arg22312407_)))
                                        (if (gx#stx-pair/null? _tl22212391_)
                                            (let ((___splice4214342144_
                                                   (gx#syntax-split-splice
                                                    _tl22212391_
                                                    '0)))
                                              (let ((_tl22432451_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4214342144_
                                                        '1)))
                                                    (_target22412448_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4214342144_
                                                        '0))))
                                                (if (gx#stx-null? _tl22432451_)
                                                    (letrec ((_loop22442454_
                                                              (lambda (_hd22422458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body22482461_)
                        (if (gx#stx-pair? _hd22422458_)
                            (let ((_e22452464_ (gx#syntax-e _hd22422458_)))
                              (let ((_lp-tl22472471_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e22452464_)))
                                    (_lp-hd22462468_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e22452464_))))
                                (_loop22442454_
                                 _lp-tl22472471_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd22462468_ _body22482461_)))))
                            (let ((_body22492474_ (reverse _body22482461_)))
                              (let ((_L2478_ _body22492474_)
                                    (_L2480_ _tl22262397_)
                                    (_L2481_ _arg22332442_)
                                    (_L2482_ _var22342445_)
                                    (_L2483_ _hd22192378_))
                                (if (gx#identifier? _L2483_)
                                    (___kont4213942140_
                                     _L2478_
                                     _L2480_
                                     _L2481_
                                     _L2482_
                                     _L2483_)
                                    (___match4218542186_
                                     _e22172364_
                                     _hd22162368_
                                     _tl22152371_
                                     _e22202374_
                                     _hd22192378_
                                     _tl22182381_))))))))
              (_loop22442454_ _target22412448_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4218542186_
                                                     _e22172364_
                                                     _hd22162368_
                                                     _tl22152371_
                                                     _e22202374_
                                                     _hd22192378_
                                                     _tl22182381_))))
                                            (___match4218542186_
                                             _e22172364_
                                             _hd22162368_
                                             _tl22152371_
                                             _e22202374_
                                             _hd22192378_
                                             _tl22182381_)))))))
                        (_loop22272400_ _target22242394_ '() '())))))
              (if (gx#stx-pair? ___stx4213642137_)
                  (let ((_e22172364_ (gx#syntax-e ___stx4213642137_)))
                    (let ((_tl22152371_
                           (let () (declare (not safe)) (##cdr _e22172364_)))
                          (_hd22162368_
                           (let () (declare (not safe)) (##car _e22172364_))))
                      (if (gx#stx-pair? _tl22152371_)
                          (let ((_e22202374_ (gx#syntax-e _tl22152371_)))
                            (let ((_tl22182381_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e22202374_)))
                                  (_hd22192378_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e22202374_))))
                              (if (gx#stx-pair? _tl22182381_)
                                  (let ((_e22232384_
                                         (gx#syntax-e _tl22182381_)))
                                    (let ((_tl22212391_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e22232384_)))
                                          (_hd22222388_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e22232384_))))
                                      (if (gx#stx-pair/null? _hd22222388_)
                                          (let ((___splice4214142142_
                                                 (gx#syntax-split-splice
                                                  _hd22222388_
                                                  '0)))
                                            (let ((_tl22262397_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4214142142_
                                                      '1)))
                                                  (_target22242394_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4214142142_
                                                      '0))))
                                              (___match4217342174_
                                               _e22172364_
                                               _hd22162368_
                                               _tl22152371_
                                               _e22202374_
                                               _hd22192378_
                                               _tl22182381_
                                               _e22232384_
                                               _hd22222388_
                                               _tl22212391_
                                               ___splice4214142142_
                                               _target22242394_
                                               _tl22262397_)))
                                          (if (gx#stx-pair/null? _tl22182381_)
                                              (let ((___splice4214742148_
                                                     (gx#syntax-split-splice
                                                      _tl22182381_
                                                      '0)))
                                                (let ((_tl22602302_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4214742148_
                                                          '1)))
                                                      (_target22582299_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4214742148_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl22602302_)
                                                      (___match4219342194_
                                                       _e22172364_
                                                       _hd22162368_
                                                       _tl22152371_
                                                       _e22202374_
                                                       _hd22192378_
                                                       _tl22182381_
                                                       ___splice4214742148_
                                                       _target22582299_
                                                       _tl22602302_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g22082272_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g22082272_))))))
                                  (if (gx#stx-pair/null? _tl22182381_)
                                      (let ((___splice4214742148_
                                             (gx#syntax-split-splice
                                              _tl22182381_
                                              '0)))
                                        (let ((_tl22602302_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4214742148_
                                                  '1)))
                                              (_target22582299_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4214742148_
                                                  '0))))
                                          (if (gx#stx-null? _tl22602302_)
                                              (___match4219342194_
                                               _e22172364_
                                               _hd22162368_
                                               _tl22152371_
                                               _e22202374_
                                               _hd22192378_
                                               _tl22182381_
                                               ___splice4214742148_
                                               _target22582299_
                                               _tl22602302_)
                                              (let ()
                                                (declare (not safe))
                                                (_g22082272_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g22082272_))))))
                          (let () (declare (not safe)) (_g22082272_)))))
                  (let () (declare (not safe)) (_g22082272_))))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let*|
      (lambda (_$stx2540_)
        (let* ((_g25442568_
                (lambda (_g25452564_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g25452564_)))
               (_g25432653_
                (lambda (_g25452572_)
                  (if (gx#stx-pair? _g25452572_)
                      (let ((_e25502575_ (gx#syntax-e _g25452572_)))
                        (let ((_hd25492579_
                               (let ()
                                 (declare (not safe))
                                 (##car _e25502575_)))
                              (_tl25482582_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e25502575_))))
                          (if (gx#stx-pair? _tl25482582_)
                              (let ((_e25532585_ (gx#syntax-e _tl25482582_)))
                                (let ((_hd25522589_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e25532585_)))
                                      (_tl25512592_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e25532585_))))
                                  (if (gx#stx-pair/null? _tl25512592_)
                                      (let ((_g47541_
                                             (gx#syntax-split-splice
                                              _tl25512592_
                                              '0)))
                                        (begin
                                          (let ((_g47542_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47541_)
                                                       (##vector-length
                                                        _g47541_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47542_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47542_)))
                                          (let ((_target25542595_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47541_ 0)))
                                                (_tl25562598_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47541_ 1))))
                                            (if (gx#stx-null? _tl25562598_)
                                                (letrec ((_loop25572601_
                                                          (lambda (_hd25552605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body25612608_)
                    (if (gx#stx-pair? _hd25552605_)
                        (let ((_e25582611_ (gx#syntax-e _hd25552605_)))
                          (let ((_lp-hd25592615_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e25582611_)))
                                (_lp-tl25602618_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e25582611_))))
                            (_loop25572601_
                             _lp-tl25602618_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd25592615_ _body25612608_)))))
                        (let ((_body25622621_ (reverse _body25612608_)))
                          ((lambda (_L2625_ _L2627_)
                             (let ((__tmp47548 (gx#datum->syntax '#f '~let))
                                   (__tmp47543
                                    (let ((__tmp47547
                                           (gx#datum->syntax '#f 'let*-values))
                                          (__tmp47544
                                           (let ((__tmp47545
                                                  (let ((__tmp47546
                                                         (lambda (_g26442647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g26452650_)
                   (let ()
                     (declare (not safe))
                     (cons _g26442647_ _g26452650_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp47546
                                                            '()
                                                            _L2625_))))
                                             (declare (not safe))
                                             (cons _L2627_ __tmp47545))))
                                      (declare (not safe))
                                      (cons __tmp47547 __tmp47544))))
                               (declare (not safe))
                               (cons __tmp47548 __tmp47543)))
                           _body25622621_
                           _hd25522589_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop25572601_
                                                   _target25542595_
                                                   '()))
                                                (_g25442568_ _g25452572_)))))
                                      (_g25442568_ _g25452572_))))
                              (_g25442568_ _g25452572_))))
                      (_g25442568_ _g25452572_)))))
          (_g25432653_ _$stx2540_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#letrec|
      (lambda (_$stx2658_)
        (let* ((_g26622686_
                (lambda (_g26632682_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g26632682_)))
               (_g26612771_
                (lambda (_g26632690_)
                  (if (gx#stx-pair? _g26632690_)
                      (let ((_e26682693_ (gx#syntax-e _g26632690_)))
                        (let ((_hd26672697_
                               (let ()
                                 (declare (not safe))
                                 (##car _e26682693_)))
                              (_tl26662700_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e26682693_))))
                          (if (gx#stx-pair? _tl26662700_)
                              (let ((_e26712703_ (gx#syntax-e _tl26662700_)))
                                (let ((_hd26702707_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e26712703_)))
                                      (_tl26692710_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e26712703_))))
                                  (if (gx#stx-pair/null? _tl26692710_)
                                      (let ((_g47549_
                                             (gx#syntax-split-splice
                                              _tl26692710_
                                              '0)))
                                        (begin
                                          (let ((_g47550_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47549_)
                                                       (##vector-length
                                                        _g47549_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47550_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47550_)))
                                          (let ((_target26722713_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47549_ 0)))
                                                (_tl26742716_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47549_ 1))))
                                            (if (gx#stx-null? _tl26742716_)
                                                (letrec ((_loop26752719_
                                                          (lambda (_hd26732723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body26792726_)
                    (if (gx#stx-pair? _hd26732723_)
                        (let ((_e26762729_ (gx#syntax-e _hd26732723_)))
                          (let ((_lp-hd26772733_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e26762729_)))
                                (_lp-tl26782736_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e26762729_))))
                            (_loop26752719_
                             _lp-tl26782736_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd26772733_ _body26792726_)))))
                        (let ((_body26802739_ (reverse _body26792726_)))
                          ((lambda (_L2743_ _L2745_)
                             (let ((__tmp47556 (gx#datum->syntax '#f '~let))
                                   (__tmp47551
                                    (let ((__tmp47555
                                           (gx#datum->syntax
                                            '#f
                                            'letrec-values))
                                          (__tmp47552
                                           (let ((__tmp47553
                                                  (let ((__tmp47554
                                                         (lambda (_g27622765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g27632768_)
                   (let ()
                     (declare (not safe))
                     (cons _g27622765_ _g27632768_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp47554
                                                            '()
                                                            _L2743_))))
                                             (declare (not safe))
                                             (cons _L2745_ __tmp47553))))
                                      (declare (not safe))
                                      (cons __tmp47555 __tmp47552))))
                               (declare (not safe))
                               (cons __tmp47556 __tmp47551)))
                           _body26802739_
                           _hd26702707_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop26752719_
                                                   _target26722713_
                                                   '()))
                                                (_g26622686_ _g26632690_)))))
                                      (_g26622686_ _g26632690_))))
                              (_g26622686_ _g26632690_))))
                      (_g26622686_ _g26632690_)))))
          (_g26612771_ _$stx2658_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#letrec*|
      (lambda (_$stx2776_)
        (let* ((_g27802804_
                (lambda (_g27812800_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g27812800_)))
               (_g27792889_
                (lambda (_g27812808_)
                  (if (gx#stx-pair? _g27812808_)
                      (let ((_e27862811_ (gx#syntax-e _g27812808_)))
                        (let ((_hd27852815_
                               (let ()
                                 (declare (not safe))
                                 (##car _e27862811_)))
                              (_tl27842818_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e27862811_))))
                          (if (gx#stx-pair? _tl27842818_)
                              (let ((_e27892821_ (gx#syntax-e _tl27842818_)))
                                (let ((_hd27882825_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e27892821_)))
                                      (_tl27872828_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e27892821_))))
                                  (if (gx#stx-pair/null? _tl27872828_)
                                      (let ((_g47557_
                                             (gx#syntax-split-splice
                                              _tl27872828_
                                              '0)))
                                        (begin
                                          (let ((_g47558_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47557_)
                                                       (##vector-length
                                                        _g47557_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47558_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47558_)))
                                          (let ((_target27902831_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47557_ 0)))
                                                (_tl27922834_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47557_ 1))))
                                            (if (gx#stx-null? _tl27922834_)
                                                (letrec ((_loop27932837_
                                                          (lambda (_hd27912841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body27972844_)
                    (if (gx#stx-pair? _hd27912841_)
                        (let ((_e27942847_ (gx#syntax-e _hd27912841_)))
                          (let ((_lp-hd27952851_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e27942847_)))
                                (_lp-tl27962854_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e27942847_))))
                            (_loop27932837_
                             _lp-tl27962854_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd27952851_ _body27972844_)))))
                        (let ((_body27982857_ (reverse _body27972844_)))
                          ((lambda (_L2861_ _L2863_)
                             (let ((__tmp47564 (gx#datum->syntax '#f '~let))
                                   (__tmp47559
                                    (let ((__tmp47563
                                           (gx#datum->syntax
                                            '#f
                                            'letrec*-values))
                                          (__tmp47560
                                           (let ((__tmp47561
                                                  (let ((__tmp47562
                                                         (lambda (_g28802883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g28812886_)
                   (let ()
                     (declare (not safe))
                     (cons _g28802883_ _g28812886_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp47562
                                                            '()
                                                            _L2861_))))
                                             (declare (not safe))
                                             (cons _L2863_ __tmp47561))))
                                      (declare (not safe))
                                      (cons __tmp47563 __tmp47560))))
                               (declare (not safe))
                               (cons __tmp47564 __tmp47559)))
                           _body27982857_
                           _hd27882825_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop27932837_
                                                   _target27902831_
                                                   '()))
                                                (_g27802804_ _g27812808_)))))
                                      (_g27802804_ _g27812808_))))
                              (_g27802804_ _g27812808_))))
                      (_g27802804_ _g27812808_)))))
          (_g27792889_ _$stx2776_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#~let|
      (lambda (_stx2894_)
        (letrec ((_let-head?2897_
                  (lambda (_x3377_)
                    (let* ((___stx4219642197_ _x3377_)
                           (_g33813392_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4219642197_))))
                      (let ((___kont4219942200_
                             (lambda (_L3420_)
                               (gx#stx-andmap gx#identifier? _L3420_)))
                            (___kont4220142202_
                             (lambda () (gx#identifier? _x3377_))))
                        (if (gx#stx-pair? ___stx4219642197_)
                            (let ((_e33863410_
                                   (gx#syntax-e ___stx4219642197_)))
                              (let ((_tl33843417_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e33863410_)))
                                    (_hd33853414_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e33863410_))))
                                (if (gx#identifier? _hd33853414_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:1>[1]#_g47565_|
                                         _hd33853414_)
                                        (___kont4219942200_ _tl33843417_)
                                        (___kont4220142202_))
                                    (___kont4220142202_))))
                            (___kont4220142202_))))))
                 (_let-head2899_
                  (lambda (_x3317_)
                    (let* ((___stx4221642217_ _x3317_)
                           (_g33213332_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4221642217_))))
                      (let ((___kont4221942220_ (lambda (_L3360_) _L3360_))
                            (___kont4222142222_ (lambda () (list _x3317_))))
                        (if (gx#stx-pair? ___stx4221642217_)
                            (let ((_e33263350_
                                   (gx#syntax-e ___stx4221642217_)))
                              (let ((_tl33243357_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e33263350_)))
                                    (_hd33253354_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e33263350_))))
                                (if (gx#identifier? _hd33253354_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:1>[1]#_g47566_|
                                         _hd33253354_)
                                        (___kont4221942220_ _tl33243357_)
                                        (___kont4222142222_))
                                    (___kont4222142222_))))
                            (___kont4222142222_)))))))
          (let* ((___stx4223642237_ _stx2894_)
                 (_g29022968_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx4223642237_))))
            (let ((___kont4223942240_
                   (lambda (_L3286_ _L3288_ _L3289_ _L3290_ _L3291_)
                     (let ((__tmp47567
                            (let ((__tmp47568
                                   (let ((__tmp47569
                                          (let ((__tmp47570
                                                 (let ((__tmp47571
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L3288_ '()))))
                                                   (declare (not safe))
                                                   (cons _L3289_ __tmp47571))))
                                            (declare (not safe))
                                            (cons __tmp47570 '()))))
                                     (declare (not safe))
                                     (cons __tmp47569 _L3286_))))
                              (declare (not safe))
                              (cons _L3290_ __tmp47568))))
                       (declare (not safe))
                       (cons _L3291_ __tmp47567))))
                  (___kont4224142242_
                   (lambda (_L3089_ _L3091_ _L3092_ _L3093_)
                     (let* ((_g31283145_
                             (lambda (_g31293141_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g31293141_)))
                            (_g31273217_
                             (lambda (_g31293149_)
                               (if (gx#stx-pair/null? _g31293149_)
                                   (let ((_g47572_
                                          (gx#syntax-split-splice
                                           _g31293149_
                                           '0)))
                                     (begin
                                       (let ((_g47573_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g47572_)
                                                    (##vector-length _g47572_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g47573_ 2)))
                                             (error "Context expects 2 values"
                                                    _g47573_)))
                                       (let ((_target31313152_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g47572_ 0)))
                                             (_tl31333155_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g47572_ 1))))
                                         (if (gx#stx-null? _tl31333155_)
                                             (letrec ((_loop31343158_
                                                       (lambda (_hd31323162_
                                                                _hd-bind31383165_)
                                                         (if (gx#stx-pair?
                                                              _hd31323162_)
                                                             (let ((_e31353168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd31323162_)))
                       (let ((_lp-hd31363172_
                              (let ()
                                (declare (not safe))
                                (##car _e31353168_)))
                             (_lp-tl31373175_
                              (let ()
                                (declare (not safe))
                                (##cdr _e31353168_))))
                         (_loop31343158_
                          _lp-tl31373175_
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd31363172_ _hd-bind31383165_)))))
                     (let ((_hd-bind31393178_ (reverse _hd-bind31383165_)))
                       ((lambda (_L3182_)
                          (let ()
                            (let ((__tmp47574
                                   (let ((__tmp47577
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L3091_
                                             _L3182_)
                                            (let ((__tmp47578
                                                   (lambda (_g31993203_
                                                            _g32003206_
                                                            _g32013208_)
                                                     (let ((__tmp47579
                                                            (let ((__tmp47580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _g31993203_ '()))))
                      (declare (not safe))
                      (cons _g32003206_ __tmp47580))))
               (declare (not safe))
               (cons __tmp47579 _g32013208_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldr2 __tmp47578
                                                      '()
                                                      _L3091_
                                                      _L3182_))))
                                         (__tmp47575
                                          (let ((__tmp47576
                                                 (lambda (_g31973211_
                                                          _g31983214_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g31973211_
                                                           _g31983214_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp47576 '() _L3089_))))
                                     (declare (not safe))
                                     (cons __tmp47577 __tmp47575))))
                              (declare (not safe))
                              (cons _L3093_ __tmp47574))))
                        _hd-bind31393178_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop31343158_
                                                _target31313152_
                                                '()))
                                             (_g31283145_ _g31293149_)))))
                                   (_g31283145_ _g31293149_)))))
                       (_g31273217_
                        (gx#stx-map
                         _let-head2899_
                         (let ((__tmp47581
                                (lambda (_g32203223_ _g32213226_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g32203223_ _g32213226_)))))
                           (declare (not safe))
                           (foldr1 __tmp47581 '() _L3092_))))))))
              (let* ((___match4230542306_
                      (lambda (_e29302975_
                               _hd29292979_
                               _tl29282982_
                               _e29332985_
                               _hd29322989_
                               _tl29312992_
                               _e29362995_
                               _hd29352999_
                               _tl29343002_
                               ___splice4224342244_
                               _target29373005_
                               _tl29393008_)
                        (letrec ((_loop29403011_
                                  (lambda (_hd29383015_
                                           _e29443018_
                                           _hd29453020_)
                                    (if (gx#stx-pair? _hd29383015_)
                                        (let ((_e29413023_
                                               (gx#syntax-e _hd29383015_)))
                                          (let ((_lp-tl29433030_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e29413023_)))
                                                (_lp-hd29423027_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e29413023_))))
                                            (if (gx#stx-pair? _lp-hd29423027_)
                                                (let ((_e29503033_
                                                       (gx#syntax-e
                                                        _lp-hd29423027_)))
                                                  (let ((_tl29483040_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e29503033_)))
                                                        (_hd29493037_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e29503033_))))
                                                    (if (gx#stx-pair?
                                                         _tl29483040_)
                                                        (let ((_e29533043_
                                                               (gx#syntax-e
                                                                _tl29483040_)))
                                                          (let ((_tl29513050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e29533043_)))
                        (_hd29523047_
                         (let () (declare (not safe)) (##car _e29533043_))))
                    (if (gx#stx-null? _tl29513050_)
                        (_loop29403011_
                         _lp-tl29433030_
                         (let ()
                           (declare (not safe))
                           (cons _hd29523047_ _e29443018_))
                         (let ()
                           (declare (not safe))
                           (cons _hd29493037_ _hd29453020_)))
                        (let () (declare (not safe)) (_g29022968_)))))
                (let () (declare (not safe)) (_g29022968_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g29022968_)))))
                                        (let ((_hd29473056_
                                               (reverse _hd29453020_))
                                              (_e29463053_
                                               (reverse _e29443018_)))
                                          (if (gx#stx-pair/null? _tl29343002_)
                                              (let ((___splice4224542246_
                                                     (gx#syntax-split-splice
                                                      _tl29343002_
                                                      '0)))
                                                (let ((_tl29563062_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4224542246_
                                                          '1)))
                                                      (_target29543059_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4224542246_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl29563062_)
                                                      (letrec ((_loop29573065_
                                                                (lambda (_hd29553069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body29613072_)
                          (if (gx#stx-pair? _hd29553069_)
                              (let ((_e29583075_ (gx#syntax-e _hd29553069_)))
                                (let ((_lp-tl29603082_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e29583075_)))
                                      (_lp-hd29593079_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e29583075_))))
                                  (_loop29573065_
                                   _lp-tl29603082_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd29593079_ _body29613072_)))))
                              (let ((_body29623085_ (reverse _body29613072_)))
                                (let ((_L3089_ _body29623085_)
                                      (_L3091_ _e29463053_)
                                      (_L3092_ _hd29473056_)
                                      (_L3093_ _hd29322989_))
                                  (if (gx#stx-andmap
                                       _let-head?2897_
                                       (let ((__tmp47582
                                              (lambda (_g31193122_ _g31203125_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g31193122_
                                                        _g31203125_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp47582 '() _L3092_)))
                                      (___kont4224142242_
                                       _L3089_
                                       _L3091_
                                       _L3092_
                                       _L3093_)
                                      (let ()
                                        (declare (not safe))
                                        (_g29022968_)))))))))
                (_loop29573065_ _target29543059_ '()))
              (let () (declare (not safe)) (_g29022968_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g29022968_))))))))
                          (_loop29403011_ _target29373005_ '() '()))))
                     (___match4227942280_
                      (lambda (_e29113236_
                               _hd29103240_
                               _tl29093243_
                               _e29143246_
                               _hd29133250_
                               _tl29123253_
                               _e29173256_
                               _hd29163260_
                               _tl29153263_
                               _e29203266_
                               _hd29193270_
                               _tl29183273_
                               _e29233276_
                               _hd29223280_
                               _tl29213283_)
                        (let ((_L3286_ _tl29153263_)
                              (_L3288_ _hd29223280_)
                              (_L3289_ _hd29193270_)
                              (_L3290_ _hd29133250_)
                              (_L3291_ _hd29103240_))
                          (if (_let-head?2897_ _L3289_)
                              (___kont4223942240_
                               _L3286_
                               _L3288_
                               _L3289_
                               _L3290_
                               _L3291_)
                              (if (gx#stx-pair/null? _hd29163260_)
                                  (let ((___splice4224342244_
                                         (gx#syntax-split-splice
                                          _hd29163260_
                                          '0)))
                                    (let ((_tl29393008_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4224342244_
                                              '1)))
                                          (_target29373005_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4224342244_
                                              '0))))
                                      (if (gx#stx-null? _tl29393008_)
                                          (___match4230542306_
                                           _e29113236_
                                           _hd29103240_
                                           _tl29093243_
                                           _e29143246_
                                           _hd29133250_
                                           _tl29123253_
                                           _e29173256_
                                           _hd29163260_
                                           _tl29153263_
                                           ___splice4224342244_
                                           _target29373005_
                                           _tl29393008_)
                                          (let ()
                                            (declare (not safe))
                                            (_g29022968_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g29022968_))))))))
                (if (gx#stx-pair? ___stx4223642237_)
                    (let ((_e29113236_ (gx#syntax-e ___stx4223642237_)))
                      (let ((_tl29093243_
                             (let () (declare (not safe)) (##cdr _e29113236_)))
                            (_hd29103240_
                             (let ()
                               (declare (not safe))
                               (##car _e29113236_))))
                        (if (gx#stx-pair? _tl29093243_)
                            (let ((_e29143246_ (gx#syntax-e _tl29093243_)))
                              (let ((_tl29123253_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e29143246_)))
                                    (_hd29133250_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e29143246_))))
                                (if (gx#stx-pair? _tl29123253_)
                                    (let ((_e29173256_
                                           (gx#syntax-e _tl29123253_)))
                                      (let ((_tl29153263_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e29173256_)))
                                            (_hd29163260_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e29173256_))))
                                        (if (gx#stx-pair? _hd29163260_)
                                            (let ((_e29203266_
                                                   (gx#syntax-e _hd29163260_)))
                                              (let ((_tl29183273_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e29203266_)))
                                                    (_hd29193270_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e29203266_))))
                                                (if (gx#stx-pair? _tl29183273_)
                                                    (let ((_e29233276_
                                                           (gx#syntax-e
                                                            _tl29183273_)))
                                                      (let ((_tl29213283_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e29233276_)))
                    (_hd29223280_
                     (let () (declare (not safe)) (##car _e29233276_))))
                (if (gx#stx-null? _tl29213283_)
                    (___match4227942280_
                     _e29113236_
                     _hd29103240_
                     _tl29093243_
                     _e29143246_
                     _hd29133250_
                     _tl29123253_
                     _e29173256_
                     _hd29163260_
                     _tl29153263_
                     _e29203266_
                     _hd29193270_
                     _tl29183273_
                     _e29233276_
                     _hd29223280_
                     _tl29213283_)
                    (if (gx#stx-pair/null? _hd29163260_)
                        (let ((___splice4224342244_
                               (gx#syntax-split-splice _hd29163260_ '0)))
                          (let ((_tl29393008_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4224342244_ '1)))
                                (_target29373005_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4224342244_ '0))))
                            (if (gx#stx-null? _tl29393008_)
                                (___match4230542306_
                                 _e29113236_
                                 _hd29103240_
                                 _tl29093243_
                                 _e29143246_
                                 _hd29133250_
                                 _tl29123253_
                                 _e29173256_
                                 _hd29163260_
                                 _tl29153263_
                                 ___splice4224342244_
                                 _target29373005_
                                 _tl29393008_)
                                (let () (declare (not safe)) (_g29022968_)))))
                        (let () (declare (not safe)) (_g29022968_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd29163260_)
                                                        (let ((___splice4224342244_
                                                               (gx#syntax-split-splice
                                                                _hd29163260_
                                                                '0)))
                                                          (let ((_tl29393008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4224342244_ '1)))
                        (_target29373005_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4224342244_ '0))))
                    (if (gx#stx-null? _tl29393008_)
                        (___match4230542306_
                         _e29113236_
                         _hd29103240_
                         _tl29093243_
                         _e29143246_
                         _hd29133250_
                         _tl29123253_
                         _e29173256_
                         _hd29163260_
                         _tl29153263_
                         ___splice4224342244_
                         _target29373005_
                         _tl29393008_)
                        (let () (declare (not safe)) (_g29022968_)))))
                (let () (declare (not safe)) (_g29022968_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd29163260_)
                                                (let ((___splice4224342244_
                                                       (gx#syntax-split-splice
                                                        _hd29163260_
                                                        '0)))
                                                  (let ((_tl29393008_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4224342244_
                                                            '1)))
                                                        (_target29373005_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4224342244_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl29393008_)
                                                        (___match4230542306_
                                                         _e29113236_
                                                         _hd29103240_
                                                         _tl29093243_
                                                         _e29143246_
                                                         _hd29133250_
                                                         _tl29123253_
                                                         _e29173256_
                                                         _hd29163260_
                                                         _tl29153263_
                                                         ___splice4224342244_
                                                         _target29373005_
                                                         _tl29393008_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g29022968_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g29022968_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g29022968_)))))
                            (let () (declare (not safe)) (_g29022968_)))))
                    (let () (declare (not safe)) (_g29022968_)))))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#and|
      (lambda (_$stx3440_)
        (let* ((___stx4230842309_ _$stx3440_)
               (_g34463472_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4230842309_))))
          (let ((___kont4231142312_ (lambda () '#t))
                (___kont4231342314_ (lambda (_L3544_) _L3544_))
                (___kont4231542316_
                 (lambda (_L3499_ _L3501_ _L3502_)
                   (let ((__tmp47587 (gx#datum->syntax '#f 'if))
                         (__tmp47583
                          (let ((__tmp47584
                                 (let ((__tmp47586
                                        (let ()
                                          (declare (not safe))
                                          (cons _L3502_ _L3499_)))
                                       (__tmp47585
                                        (let ()
                                          (declare (not safe))
                                          (cons '#f '()))))
                                   (declare (not safe))
                                   (cons __tmp47586 __tmp47585))))
                            (declare (not safe))
                            (cons _L3501_ __tmp47584))))
                     (declare (not safe))
                     (cons __tmp47587 __tmp47583)))))
            (if (gx#stx-pair? ___stx4230842309_)
                (let ((_e34503564_ (gx#syntax-e ___stx4230842309_)))
                  (let ((_tl34483571_
                         (let () (declare (not safe)) (##cdr _e34503564_)))
                        (_hd34493568_
                         (let () (declare (not safe)) (##car _e34503564_))))
                    (if (gx#stx-null? _tl34483571_)
                        (___kont4231142312_)
                        (if (gx#stx-pair? _tl34483571_)
                            (let ((_e34573534_ (gx#syntax-e _tl34483571_)))
                              (let ((_tl34553541_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e34573534_)))
                                    (_hd34563538_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e34573534_))))
                                (if (gx#stx-null? _tl34553541_)
                                    (___kont4231342314_ _hd34563538_)
                                    (___kont4231542316_
                                     _tl34553541_
                                     _hd34563538_
                                     _hd34493568_))))
                            (let () (declare (not safe)) (_g34463472_))))))
                (let () (declare (not safe)) (_g34463472_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#or|
      (lambda (_$stx3582_)
        (let* ((___stx4235442355_ _$stx3582_)
               (_g35883614_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4235442355_))))
          (let ((___kont4235742358_ (lambda () '#f))
                (___kont4235942360_ (lambda (_L3686_) _L3686_))
                (___kont4236142362_
                 (lambda (_L3641_ _L3643_ _L3644_)
                   (let ((__tmp47601 (gx#datum->syntax '#f 'let))
                         (__tmp47588
                          (let ((__tmp47598
                                 (let ((__tmp47600 (gx#datum->syntax '#f '$e))
                                       (__tmp47599
                                        (let ()
                                          (declare (not safe))
                                          (cons _L3643_ '()))))
                                   (declare (not safe))
                                   (cons __tmp47600 __tmp47599)))
                                (__tmp47589
                                 (let ((__tmp47590
                                        (let ((__tmp47597
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp47591
                                               (let ((__tmp47596
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp47592
                                                      (let ((__tmp47595
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$e))
                                                            (__tmp47593
                                                             (let ((__tmp47594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L3644_ _L3641_))))
                       (declare (not safe))
                       (cons __tmp47594 '()))))
                (declare (not safe))
                (cons __tmp47595 __tmp47593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47596
                                                       __tmp47592))))
                                          (declare (not safe))
                                          (cons __tmp47597 __tmp47591))))
                                   (declare (not safe))
                                   (cons __tmp47590 '()))))
                            (declare (not safe))
                            (cons __tmp47598 __tmp47589))))
                     (declare (not safe))
                     (cons __tmp47601 __tmp47588)))))
            (if (gx#stx-pair? ___stx4235442355_)
                (let ((_e35923706_ (gx#syntax-e ___stx4235442355_)))
                  (let ((_tl35903713_
                         (let () (declare (not safe)) (##cdr _e35923706_)))
                        (_hd35913710_
                         (let () (declare (not safe)) (##car _e35923706_))))
                    (if (gx#stx-null? _tl35903713_)
                        (___kont4235742358_)
                        (if (gx#stx-pair? _tl35903713_)
                            (let ((_e35993676_ (gx#syntax-e _tl35903713_)))
                              (let ((_tl35973683_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e35993676_)))
                                    (_hd35983680_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e35993676_))))
                                (if (gx#stx-null? _tl35973683_)
                                    (___kont4235942360_ _hd35983680_)
                                    (___kont4236142362_
                                     _tl35973683_
                                     _hd35983680_
                                     _hd35913710_))))
                            (let () (declare (not safe)) (_g35883614_))))))
                (let () (declare (not safe)) (_g35883614_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#cond|
      (lambda (_$stx3724_)
        (let* ((___stx4240042401_ _$stx3724_)
               (_g37333824_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4240042401_))))
          (let ((___kont4240342404_ (lambda () '#!void))
                (___kont4240542406_
                 (lambda (_L4171_)
                   (let ((__tmp47607 (gx#datum->syntax '#f '%#expression))
                         (__tmp47602
                          (let ((__tmp47603
                                 (let ((__tmp47606
                                        (gx#datum->syntax '#f 'begin))
                                       (__tmp47604
                                        (let ((__tmp47605
                                               (lambda (_g41904193_
                                                        _g41914196_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g41904193_
                                                         _g41914196_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp47605 '() _L4171_))))
                                   (declare (not safe))
                                   (cons __tmp47606 __tmp47604))))
                            (declare (not safe))
                            (cons __tmp47603 '()))))
                     (declare (not safe))
                     (cons __tmp47607 __tmp47602))))
                (___kont4240942410_
                 (lambda ()
                   (let ((__tmp47609 (gx#datum->syntax '#f 'syntax-error))
                         (__tmp47608
                          (let ()
                            (declare (not safe))
                            (cons '"bad syntax; misplaced else" '()))))
                     (declare (not safe))
                     (cons __tmp47609 __tmp47608))))
                (___kont4241142412_
                 (lambda (_L4044_ _L4046_ _L4047_)
                   (let ((__tmp47623 (gx#datum->syntax '#f 'let))
                         (__tmp47610
                          (let ((__tmp47620
                                 (let ((__tmp47622 (gx#datum->syntax '#f '$e))
                                       (__tmp47621
                                        (let ()
                                          (declare (not safe))
                                          (cons _L4046_ '()))))
                                   (declare (not safe))
                                   (cons __tmp47622 __tmp47621)))
                                (__tmp47611
                                 (let ((__tmp47612
                                        (let ((__tmp47619
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp47613
                                               (let ((__tmp47618
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp47614
                                                      (let ((__tmp47617
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$e))
                                                            (__tmp47615
                                                             (let ((__tmp47616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L4047_ _L4044_))))
                       (declare (not safe))
                       (cons __tmp47616 '()))))
                (declare (not safe))
                (cons __tmp47617 __tmp47615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47618
                                                       __tmp47614))))
                                          (declare (not safe))
                                          (cons __tmp47619 __tmp47613))))
                                   (declare (not safe))
                                   (cons __tmp47612 '()))))
                            (declare (not safe))
                            (cons __tmp47620 __tmp47611))))
                     (declare (not safe))
                     (cons __tmp47623 __tmp47610))))
                (___kont4241342414_
                 (lambda (_L3982_ _L3984_ _L3985_ _L3986_)
                   (let ((__tmp47639 (gx#datum->syntax '#f 'let))
                         (__tmp47624
                          (let ((__tmp47636
                                 (let ((__tmp47638 (gx#datum->syntax '#f '$e))
                                       (__tmp47637
                                        (let ()
                                          (declare (not safe))
                                          (cons _L3985_ '()))))
                                   (declare (not safe))
                                   (cons __tmp47638 __tmp47637)))
                                (__tmp47625
                                 (let ((__tmp47626
                                        (let ((__tmp47635
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp47627
                                               (let ((__tmp47634
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp47628
                                                      (let ((__tmp47631
                                                             (let ((__tmp47632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp47633 (gx#datum->syntax '#f '$e)))
                              (declare (not safe))
                              (cons __tmp47633 '()))))
                       (declare (not safe))
                       (cons _L3984_ __tmp47632)))
                    (__tmp47629
                     (let ((__tmp47630
                            (let ()
                              (declare (not safe))
                              (cons _L3986_ _L3982_))))
                       (declare (not safe))
                       (cons __tmp47630 '()))))
                (declare (not safe))
                (cons __tmp47631 __tmp47629))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47634
                                                       __tmp47628))))
                                          (declare (not safe))
                                          (cons __tmp47635 __tmp47627))))
                                   (declare (not safe))
                                   (cons __tmp47626 '()))))
                            (declare (not safe))
                            (cons __tmp47636 __tmp47625))))
                     (declare (not safe))
                     (cons __tmp47639 __tmp47624))))
                (___kont4241542416_
                 (lambda (_L3891_ _L3893_ _L3894_ _L3895_)
                   (let ((__tmp47648 (gx#datum->syntax '#f 'if))
                         (__tmp47640
                          (let ((__tmp47641
                                 (let ((__tmp47644
                                        (let ((__tmp47647
                                               (gx#datum->syntax '#f 'begin))
                                              (__tmp47645
                                               (let ((__tmp47646
                                                      (lambda (_g39163919_
                                                               _g39173922_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g39163919_
                                                                _g39173922_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp47646
                                                         '()
                                                         _L3893_))))
                                          (declare (not safe))
                                          (cons __tmp47647 __tmp47645)))
                                       (__tmp47642
                                        (let ((__tmp47643
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L3895_ _L3891_))))
                                          (declare (not safe))
                                          (cons __tmp47643 '()))))
                                   (declare (not safe))
                                   (cons __tmp47644 __tmp47642))))
                            (declare (not safe))
                            (cons _L3894_ __tmp47641))))
                     (declare (not safe))
                     (cons __tmp47648 __tmp47640)))))
            (let* ((___match4256142562_
                    (lambda (_e38033831_
                             _hd38023835_
                             _tl38013838_
                             _e38063841_
                             _hd38053845_
                             _tl38043848_
                             _e38093851_
                             _hd38083855_
                             _tl38073858_
                             ___splice4241742418_
                             _target38103861_
                             _tl38123864_)
                      (letrec ((_loop38133867_
                                (lambda (_hd38113871_ _body38173874_)
                                  (if (gx#stx-pair? _hd38113871_)
                                      (let ((_e38143877_
                                             (gx#syntax-e _hd38113871_)))
                                        (let ((_lp-tl38163884_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e38143877_)))
                                              (_lp-hd38153881_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e38143877_))))
                                          (_loop38133867_
                                           _lp-tl38163884_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd38153881_
                                                   _body38173874_)))))
                                      (let ((_body38183887_
                                             (reverse _body38173874_)))
                                        (___kont4241542416_
                                         _tl38043848_
                                         _body38183887_
                                         _hd38083855_
                                         _hd38023835_))))))
                        (_loop38133867_ _target38103861_ '()))))
                   (___match4245742458_
                    (lambda (_e37414111_
                             _hd37404115_
                             _tl37394118_
                             _e37444121_
                             _hd37434125_
                             _tl37424128_
                             _e37474131_
                             _hd37464135_
                             _tl37454138_
                             ___splice4240742408_
                             _target37484141_
                             _tl37504144_)
                      (letrec ((_loop37514147_
                                (lambda (_hd37494151_ _body37554154_)
                                  (if (gx#stx-pair? _hd37494151_)
                                      (let ((_e37524157_
                                             (gx#syntax-e _hd37494151_)))
                                        (let ((_lp-tl37544164_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e37524157_)))
                                              (_lp-hd37534161_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e37524157_))))
                                          (_loop37514147_
                                           _lp-tl37544164_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd37534161_
                                                   _body37554154_)))))
                                      (let ((_body37564167_
                                             (reverse _body37554154_)))
                                        (if (gx#stx-null? _tl37424128_)
                                            (___kont4240542406_ _body37564167_)
                                            (___kont4240942410_)))))))
                        (_loop37514147_ _target37484141_ '())))))
              (if (gx#stx-pair? ___stx4240042401_)
                  (let ((_e37374206_ (gx#syntax-e ___stx4240042401_)))
                    (let ((_tl37354213_
                           (let () (declare (not safe)) (##cdr _e37374206_)))
                          (_hd37364210_
                           (let () (declare (not safe)) (##car _e37374206_))))
                      (if (gx#stx-null? _tl37354213_)
                          (___kont4240342404_)
                          (if (gx#stx-pair? _tl37354213_)
                              (let ((_e37444121_ (gx#syntax-e _tl37354213_)))
                                (let ((_tl37424128_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e37444121_)))
                                      (_hd37434125_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e37444121_))))
                                  (if (gx#stx-pair? _hd37434125_)
                                      (let ((_e37474131_
                                             (gx#syntax-e _hd37434125_)))
                                        (let ((_tl37454138_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e37474131_)))
                                              (_hd37464135_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e37474131_))))
                                          (if (gx#identifier? _hd37464135_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:1>[1]#_g47650_|
                                                   _hd37464135_)
                                                  (if (gx#stx-pair/null?
                                                       _tl37454138_)
                                                      (let ((___splice4240742408_
                                                             (gx#syntax-split-splice
                                                              _tl37454138_
                                                              '0)))
                                                        (let ((_tl37504144_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4240742408_ '1)))
                      (_target37484141_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4240742408_ '0))))
                  (if (gx#stx-null? _tl37504144_)
                      (___match4245742458_
                       _e37374206_
                       _hd37364210_
                       _tl37354213_
                       _e37444121_
                       _hd37434125_
                       _tl37424128_
                       _e37474131_
                       _hd37464135_
                       _tl37454138_
                       ___splice4240742408_
                       _target37484141_
                       _tl37504144_)
                      (___kont4240942410_))))
              (___kont4240942410_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl37454138_)
                                                      (___kont4241142412_
                                                       _tl37424128_
                                                       _hd37464135_
                                                       _hd37364210_)
                                                      (if (gx#stx-pair?
                                                           _tl37454138_)
                                                          (let ((_e37933962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl37454138_)))
                    (let ((_tl37913969_
                           (let () (declare (not safe)) (##cdr _e37933962_)))
                          (_hd37923966_
                           (let () (declare (not safe)) (##car _e37933962_))))
                      (if (gx#identifier? _hd37923966_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<sugar>$<sugar:1>[1]#_g47649_|
                               _hd37923966_)
                              (if (gx#stx-pair? _tl37913969_)
                                  (let ((_e37963972_
                                         (gx#syntax-e _tl37913969_)))
                                    (let ((_tl37943979_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e37963972_)))
                                          (_hd37953976_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e37963972_))))
                                      (if (gx#stx-null? _tl37943979_)
                                          (___kont4241342414_
                                           _tl37424128_
                                           _hd37953976_
                                           _hd37464135_
                                           _hd37364210_)
                                          (if (gx#stx-pair/null? _tl37454138_)
                                              (let ((___splice4241742418_
                                                     (gx#syntax-split-splice
                                                      _tl37454138_
                                                      '0)))
                                                (let ((_tl38123864_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4241742418_
                                                          '1)))
                                                      (_target38103861_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4241742418_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl38123864_)
                                                      (___match4256142562_
                                                       _e37374206_
                                                       _hd37364210_
                                                       _tl37354213_
                                                       _e37444121_
                                                       _hd37434125_
                                                       _tl37424128_
                                                       _e37474131_
                                                       _hd37464135_
                                                       _tl37454138_
                                                       ___splice4241742418_
                                                       _target38103861_
                                                       _tl38123864_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g37333824_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g37333824_))))))
                                  (if (gx#stx-pair/null? _tl37454138_)
                                      (let ((___splice4241742418_
                                             (gx#syntax-split-splice
                                              _tl37454138_
                                              '0)))
                                        (let ((_tl38123864_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4241742418_
                                                  '1)))
                                              (_target38103861_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4241742418_
                                                  '0))))
                                          (if (gx#stx-null? _tl38123864_)
                                              (___match4256142562_
                                               _e37374206_
                                               _hd37364210_
                                               _tl37354213_
                                               _e37444121_
                                               _hd37434125_
                                               _tl37424128_
                                               _e37474131_
                                               _hd37464135_
                                               _tl37454138_
                                               ___splice4241742418_
                                               _target38103861_
                                               _tl38123864_)
                                              (let ()
                                                (declare (not safe))
                                                (_g37333824_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g37333824_))))
                              (if (gx#stx-pair/null? _tl37454138_)
                                  (let ((___splice4241742418_
                                         (gx#syntax-split-splice
                                          _tl37454138_
                                          '0)))
                                    (let ((_tl38123864_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4241742418_
                                              '1)))
                                          (_target38103861_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4241742418_
                                              '0))))
                                      (if (gx#stx-null? _tl38123864_)
                                          (___match4256142562_
                                           _e37374206_
                                           _hd37364210_
                                           _tl37354213_
                                           _e37444121_
                                           _hd37434125_
                                           _tl37424128_
                                           _e37474131_
                                           _hd37464135_
                                           _tl37454138_
                                           ___splice4241742418_
                                           _target38103861_
                                           _tl38123864_)
                                          (let ()
                                            (declare (not safe))
                                            (_g37333824_)))))
                                  (let () (declare (not safe)) (_g37333824_))))
                          (if (gx#stx-pair/null? _tl37454138_)
                              (let ((___splice4241742418_
                                     (gx#syntax-split-splice _tl37454138_ '0)))
                                (let ((_tl38123864_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4241742418_
                                          '1)))
                                      (_target38103861_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4241742418_
                                          '0))))
                                  (if (gx#stx-null? _tl38123864_)
                                      (___match4256142562_
                                       _e37374206_
                                       _hd37364210_
                                       _tl37354213_
                                       _e37444121_
                                       _hd37434125_
                                       _tl37424128_
                                       _e37474131_
                                       _hd37464135_
                                       _tl37454138_
                                       ___splice4241742418_
                                       _target38103861_
                                       _tl38123864_)
                                      (let ()
                                        (declare (not safe))
                                        (_g37333824_)))))
                              (let () (declare (not safe)) (_g37333824_))))))
                  (if (gx#stx-pair/null? _tl37454138_)
                      (let ((___splice4241742418_
                             (gx#syntax-split-splice _tl37454138_ '0)))
                        (let ((_tl38123864_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4241742418_ '1)))
                              (_target38103861_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4241742418_ '0))))
                          (if (gx#stx-null? _tl38123864_)
                              (___match4256142562_
                               _e37374206_
                               _hd37364210_
                               _tl37354213_
                               _e37444121_
                               _hd37434125_
                               _tl37424128_
                               _e37474131_
                               _hd37464135_
                               _tl37454138_
                               ___splice4241742418_
                               _target38103861_
                               _tl38123864_)
                              (let () (declare (not safe)) (_g37333824_)))))
                      (let () (declare (not safe)) (_g37333824_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl37454138_)
                                                  (___kont4241142412_
                                                   _tl37424128_
                                                   _hd37464135_
                                                   _hd37364210_)
                                                  (if (gx#stx-pair?
                                                       _tl37454138_)
                                                      (let ((_e37933962_
                                                             (gx#syntax-e
                                                              _tl37454138_)))
                                                        (let ((_tl37913969_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e37933962_)))
                      (_hd37923966_
                       (let () (declare (not safe)) (##car _e37933962_))))
                  (if (gx#identifier? _hd37923966_)
                      (if (gx#free-identifier=?
                           |gerbil/core$<sugar>$<sugar:1>[1]#_g47649_|
                           _hd37923966_)
                          (if (gx#stx-pair? _tl37913969_)
                              (let ((_e37963972_ (gx#syntax-e _tl37913969_)))
                                (let ((_tl37943979_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e37963972_)))
                                      (_hd37953976_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e37963972_))))
                                  (if (gx#stx-null? _tl37943979_)
                                      (___kont4241342414_
                                       _tl37424128_
                                       _hd37953976_
                                       _hd37464135_
                                       _hd37364210_)
                                      (if (gx#stx-pair/null? _tl37454138_)
                                          (let ((___splice4241742418_
                                                 (gx#syntax-split-splice
                                                  _tl37454138_
                                                  '0)))
                                            (let ((_tl38123864_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4241742418_
                                                      '1)))
                                                  (_target38103861_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4241742418_
                                                      '0))))
                                              (if (gx#stx-null? _tl38123864_)
                                                  (___match4256142562_
                                                   _e37374206_
                                                   _hd37364210_
                                                   _tl37354213_
                                                   _e37444121_
                                                   _hd37434125_
                                                   _tl37424128_
                                                   _e37474131_
                                                   _hd37464135_
                                                   _tl37454138_
                                                   ___splice4241742418_
                                                   _target38103861_
                                                   _tl38123864_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g37333824_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g37333824_))))))
                              (if (gx#stx-pair/null? _tl37454138_)
                                  (let ((___splice4241742418_
                                         (gx#syntax-split-splice
                                          _tl37454138_
                                          '0)))
                                    (let ((_tl38123864_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4241742418_
                                              '1)))
                                          (_target38103861_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4241742418_
                                              '0))))
                                      (if (gx#stx-null? _tl38123864_)
                                          (___match4256142562_
                                           _e37374206_
                                           _hd37364210_
                                           _tl37354213_
                                           _e37444121_
                                           _hd37434125_
                                           _tl37424128_
                                           _e37474131_
                                           _hd37464135_
                                           _tl37454138_
                                           ___splice4241742418_
                                           _target38103861_
                                           _tl38123864_)
                                          (let ()
                                            (declare (not safe))
                                            (_g37333824_)))))
                                  (let () (declare (not safe)) (_g37333824_))))
                          (if (gx#stx-pair/null? _tl37454138_)
                              (let ((___splice4241742418_
                                     (gx#syntax-split-splice _tl37454138_ '0)))
                                (let ((_tl38123864_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4241742418_
                                          '1)))
                                      (_target38103861_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4241742418_
                                          '0))))
                                  (if (gx#stx-null? _tl38123864_)
                                      (___match4256142562_
                                       _e37374206_
                                       _hd37364210_
                                       _tl37354213_
                                       _e37444121_
                                       _hd37434125_
                                       _tl37424128_
                                       _e37474131_
                                       _hd37464135_
                                       _tl37454138_
                                       ___splice4241742418_
                                       _target38103861_
                                       _tl38123864_)
                                      (let ()
                                        (declare (not safe))
                                        (_g37333824_)))))
                              (let () (declare (not safe)) (_g37333824_))))
                      (if (gx#stx-pair/null? _tl37454138_)
                          (let ((___splice4241742418_
                                 (gx#syntax-split-splice _tl37454138_ '0)))
                            (let ((_tl38123864_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4241742418_ '1)))
                                  (_target38103861_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4241742418_ '0))))
                              (if (gx#stx-null? _tl38123864_)
                                  (___match4256142562_
                                   _e37374206_
                                   _hd37364210_
                                   _tl37354213_
                                   _e37444121_
                                   _hd37434125_
                                   _tl37424128_
                                   _e37474131_
                                   _hd37464135_
                                   _tl37454138_
                                   ___splice4241742418_
                                   _target38103861_
                                   _tl38123864_)
                                  (let ()
                                    (declare (not safe))
                                    (_g37333824_)))))
                          (let () (declare (not safe)) (_g37333824_))))))
              (if (gx#stx-pair/null? _tl37454138_)
                  (let ((___splice4241742418_
                         (gx#syntax-split-splice _tl37454138_ '0)))
                    (let ((_tl38123864_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4241742418_ '1)))
                          (_target38103861_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4241742418_ '0))))
                      (if (gx#stx-null? _tl38123864_)
                          (___match4256142562_
                           _e37374206_
                           _hd37364210_
                           _tl37354213_
                           _e37444121_
                           _hd37434125_
                           _tl37424128_
                           _e37474131_
                           _hd37464135_
                           _tl37454138_
                           ___splice4241742418_
                           _target38103861_
                           _tl38123864_)
                          (let () (declare (not safe)) (_g37333824_)))))
                  (let () (declare (not safe)) (_g37333824_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_g37333824_)))))
                              (let () (declare (not safe)) (_g37333824_))))))
                  (let () (declare (not safe)) (_g37333824_))))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#when|
      (lambda (_$stx4226_)
        (let* ((_g42304254_
                (lambda (_g42314250_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g42314250_)))
               (_g42294339_
                (lambda (_g42314258_)
                  (if (gx#stx-pair? _g42314258_)
                      (let ((_e42364261_ (gx#syntax-e _g42314258_)))
                        (let ((_hd42354265_
                               (let ()
                                 (declare (not safe))
                                 (##car _e42364261_)))
                              (_tl42344268_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e42364261_))))
                          (if (gx#stx-pair? _tl42344268_)
                              (let ((_e42394271_ (gx#syntax-e _tl42344268_)))
                                (let ((_hd42384275_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e42394271_)))
                                      (_tl42374278_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e42394271_))))
                                  (if (gx#stx-pair/null? _tl42374278_)
                                      (let ((_g47651_
                                             (gx#syntax-split-splice
                                              _tl42374278_
                                              '0)))
                                        (begin
                                          (let ((_g47652_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47651_)
                                                       (##vector-length
                                                        _g47651_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47652_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47652_)))
                                          (let ((_target42404281_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47651_ 0)))
                                                (_tl42424284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47651_ 1))))
                                            (if (gx#stx-null? _tl42424284_)
                                                (letrec ((_loop42434287_
                                                          (lambda (_hd42414291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr42474294_)
                    (if (gx#stx-pair? _hd42414291_)
                        (let ((_e42444297_ (gx#syntax-e _hd42414291_)))
                          (let ((_lp-hd42454301_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e42444297_)))
                                (_lp-tl42464304_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e42444297_))))
                            (_loop42434287_
                             _lp-tl42464304_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd42454301_ _expr42474294_)))))
                        (let ((_expr42484307_ (reverse _expr42474294_)))
                          ((lambda (_L4311_ _L4313_)
                             (let ((__tmp47660 (gx#datum->syntax '#f 'if))
                                   (__tmp47653
                                    (let ((__tmp47654
                                           (let ((__tmp47656
                                                  (let ((__tmp47659
                                                         (gx#datum->syntax
                                                          '#f
                                                          'begin))
                                                        (__tmp47657
                                                         (let ((__tmp47658
                                                                (lambda (_g43304333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g43314336_)
                          (let ()
                            (declare (not safe))
                            (cons _g43304333_ _g43314336_)))))
                   (declare (not safe))
                   (foldr1 __tmp47658 '() _L4311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47659
                                                          __tmp47657)))
                                                 (__tmp47655
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons '#!void '()))))
                                             (declare (not safe))
                                             (cons __tmp47656 __tmp47655))))
                                      (declare (not safe))
                                      (cons _L4313_ __tmp47654))))
                               (declare (not safe))
                               (cons __tmp47660 __tmp47653)))
                           _expr42484307_
                           _hd42384275_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop42434287_
                                                   _target42404281_
                                                   '()))
                                                (_g42304254_ _g42314258_)))))
                                      (_g42304254_ _g42314258_))))
                              (_g42304254_ _g42314258_))))
                      (_g42304254_ _g42314258_)))))
          (_g42294339_ _$stx4226_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#unless|
      (lambda (_$stx4344_)
        (let* ((_g43484372_
                (lambda (_g43494368_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g43494368_)))
               (_g43474457_
                (lambda (_g43494376_)
                  (if (gx#stx-pair? _g43494376_)
                      (let ((_e43544379_ (gx#syntax-e _g43494376_)))
                        (let ((_hd43534383_
                               (let ()
                                 (declare (not safe))
                                 (##car _e43544379_)))
                              (_tl43524386_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e43544379_))))
                          (if (gx#stx-pair? _tl43524386_)
                              (let ((_e43574389_ (gx#syntax-e _tl43524386_)))
                                (let ((_hd43564393_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e43574389_)))
                                      (_tl43554396_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e43574389_))))
                                  (if (gx#stx-pair/null? _tl43554396_)
                                      (let ((_g47661_
                                             (gx#syntax-split-splice
                                              _tl43554396_
                                              '0)))
                                        (begin
                                          (let ((_g47662_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47661_)
                                                       (##vector-length
                                                        _g47661_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47662_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47662_)))
                                          (let ((_target43584399_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47661_ 0)))
                                                (_tl43604402_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47661_ 1))))
                                            (if (gx#stx-null? _tl43604402_)
                                                (letrec ((_loop43614405_
                                                          (lambda (_hd43594409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr43654412_)
                    (if (gx#stx-pair? _hd43594409_)
                        (let ((_e43624415_ (gx#syntax-e _hd43594409_)))
                          (let ((_lp-hd43634419_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e43624415_)))
                                (_lp-tl43644422_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e43624415_))))
                            (_loop43614405_
                             _lp-tl43644422_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd43634419_ _expr43654412_)))))
                        (let ((_expr43664425_ (reverse _expr43654412_)))
                          ((lambda (_L4429_ _L4431_)
                             (let ((__tmp47670 (gx#datum->syntax '#f 'if))
                                   (__tmp47663
                                    (let ((__tmp47664
                                           (let ((__tmp47665
                                                  (let ((__tmp47666
                                                         (let ((__tmp47669
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin))
                       (__tmp47667
                        (let ((__tmp47668
                               (lambda (_g44484451_ _g44494454_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g44484451_ _g44494454_)))))
                          (declare (not safe))
                          (foldr1 __tmp47668 '() _L4429_))))
                   (declare (not safe))
                   (cons __tmp47669 __tmp47667))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47666 '()))))
                                             (declare (not safe))
                                             (cons '#!void __tmp47665))))
                                      (declare (not safe))
                                      (cons _L4431_ __tmp47664))))
                               (declare (not safe))
                               (cons __tmp47670 __tmp47663)))
                           _expr43664425_
                           _hd43564393_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop43614405_
                                                   _target43584399_
                                                   '()))
                                                (_g43484372_ _g43494376_)))))
                                      (_g43484372_ _g43494376_))))
                              (_g43484372_ _g43494376_))))
                      (_g43484372_ _g43494376_)))))
          (_g43474457_ _$stx4344_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#syntax-error|
      (lambda (_stx4462_)
        (let* ((_g44654489_
                (lambda (_g44664485_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g44664485_)))
               (_g44644574_
                (lambda (_g44664493_)
                  (if (gx#stx-pair? _g44664493_)
                      (let ((_e44714496_ (gx#syntax-e _g44664493_)))
                        (let ((_hd44704500_
                               (let ()
                                 (declare (not safe))
                                 (##car _e44714496_)))
                              (_tl44694503_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e44714496_))))
                          (if (gx#stx-pair? _tl44694503_)
                              (let ((_e44744506_ (gx#syntax-e _tl44694503_)))
                                (let ((_hd44734510_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e44744506_)))
                                      (_tl44724513_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e44744506_))))
                                  (if (gx#stx-pair/null? _tl44724513_)
                                      (let ((_g47671_
                                             (gx#syntax-split-splice
                                              _tl44724513_
                                              '0)))
                                        (begin
                                          (let ((_g47672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47671_)
                                                       (##vector-length
                                                        _g47671_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47672_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47672_)))
                                          (let ((_target44754516_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47671_ 0)))
                                                (_tl44774519_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47671_ 1))))
                                            (if (gx#stx-null? _tl44774519_)
                                                (letrec ((_loop44784522_
                                                          (lambda (_hd44764526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _detail44824529_)
                    (if (gx#stx-pair? _hd44764526_)
                        (let ((_e44794532_ (gx#syntax-e _hd44764526_)))
                          (let ((_lp-hd44804536_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e44794532_)))
                                (_lp-tl44814539_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e44794532_))))
                            (_loop44784522_
                             _lp-tl44814539_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd44804536_ _detail44824529_)))))
                        (let ((_detail44834542_ (reverse _detail44824529_)))
                          ((lambda (_L4546_ _L4548_)
                             (if (gx#stx-string? _L4548_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _L4548_)
                                        _stx4462_
                                        (gx#syntax->list
                                         (let ((__tmp47673
                                                (lambda (_g45654568_
                                                         _g45664571_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g45654568_
                                                          _g45664571_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp47673 '() _L4546_))))
                                 (_g44654489_ _g44664493_)))
                           _detail44834542_
                           _hd44734510_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop44784522_
                                                   _target44754516_
                                                   '()))
                                                (_g44654489_ _g44664493_)))))
                                      (_g44654489_ _g44664493_))))
                              (_g44654489_ _g44664493_))))
                      (_g44654489_ _g44664493_)))))
          (_g44644574_ _stx4462_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defmutable|
      (lambda (_$stx4579_)
        (let* ((_g45834601_
                (lambda (_g45844597_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g45844597_)))
               (_g45824656_
                (lambda (_g45844605_)
                  (if (gx#stx-pair? _g45844605_)
                      (let ((_e45894608_ (gx#syntax-e _g45844605_)))
                        (let ((_hd45884612_
                               (let ()
                                 (declare (not safe))
                                 (##car _e45894608_)))
                              (_tl45874615_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e45894608_))))
                          (if (gx#stx-pair? _tl45874615_)
                              (let ((_e45924618_ (gx#syntax-e _tl45874615_)))
                                (let ((_hd45914622_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e45924618_)))
                                      (_tl45904625_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e45924618_))))
                                  (if (gx#stx-pair? _tl45904625_)
                                      (let ((_e45954628_
                                             (gx#syntax-e _tl45904625_)))
                                        (let ((_hd45944632_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e45954628_)))
                                              (_tl45934635_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e45954628_))))
                                          (if (gx#stx-null? _tl45934635_)
                                              ((lambda (_L4638_ _L4640_)
                                                 (let ((__tmp47687
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp47674
                                                        (let ((__tmp47683
                                                               (let ((__tmp47686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'def))
                             (__tmp47684
                              (let ((__tmp47685
                                     (let ()
                                       (declare (not safe))
                                       (cons _L4638_ '()))))
                                (declare (not safe))
                                (cons _L4640_ __tmp47685))))
                         (declare (not safe))
                         (cons __tmp47686 __tmp47684)))
                      (__tmp47675
                       (let ((__tmp47679
                              (let ((__tmp47682 (gx#datum->syntax '#f 'set!))
                                    (__tmp47680
                                     (let ((__tmp47681
                                            (let ()
                                              (declare (not safe))
                                              (cons _L4640_ '()))))
                                       (declare (not safe))
                                       (cons _L4640_ __tmp47681))))
                                (declare (not safe))
                                (cons __tmp47682 __tmp47680)))
                             (__tmp47676
                              (let ((__tmp47677
                                     (let ((__tmp47678
                                            (gx#datum->syntax '#f 'void)))
                                       (declare (not safe))
                                       (cons __tmp47678 '()))))
                                (declare (not safe))
                                (cons __tmp47677 '()))))
                         (declare (not safe))
                         (cons __tmp47679 __tmp47676))))
                  (declare (not safe))
                  (cons __tmp47683 __tmp47675))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47687
                                                         __tmp47674)))
                                               _hd45944632_
                                               _hd45914622_)
                                              (_g45834601_ _g45844605_))))
                                      (_g45834601_ _g45844605_))))
                              (_g45834601_ _g45844605_))))
                      (_g45834601_ _g45844605_)))))
          (_g45824656_ _$stx4579_))))))
