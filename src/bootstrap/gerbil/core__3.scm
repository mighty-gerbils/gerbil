(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g47775_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g47776_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g47859_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g47860_|
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
                                              (let ((_g47679_
                                                     (gx#syntax-split-splice
                                                      _tl13561407_
                                                      '0)))
                                                (begin
                                                  (let ((_g47680_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g47679_)
                                                               (##vector-length
                                                                _g47679_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g47680_ 2)))
                (error "Context expects 2 values" _g47680_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target13591410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g47679_
                                                            0)))
                                                        (_tl13611413_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g47679_
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
                                         (let ((__tmp47688
                                                (gx#datum->syntax
                                                 '#f
                                                 'define-syntax))
                                               (__tmp47681
                                                (let ((__tmp47682
                                                       (let ((__tmp47683
                                                              (let ((__tmp47687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'syntax-rules))
                            (__tmp47684
                             (let ((__tmp47685
                                    (let ((__tmp47686
                                           (lambda (_g14651468_ _g14661471_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g14651468_
                                                     _g14661471_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp47686 '() _L1440_))))
                               (declare (not safe))
                               (cons _L1442_ __tmp47685))))
                        (declare (not safe))
                        (cons __tmp47687 __tmp47684))))
                 (declare (not safe))
                 (cons __tmp47683 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L1443_ __tmp47682))))
                                           (declare (not safe))
                                           (cons __tmp47688 __tmp47681))
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
        (let* ((___stx4214342144_ _$stx1479_)
               (_g14841523_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4214342144_))))
          (let ((___kont4214642147_
                 (lambda (_L1645_ _L1647_ _L1648_)
                   (let ((__tmp47696 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp47689
                          (let ((__tmp47690
                                 (let ((__tmp47691
                                        (let ((__tmp47695
                                               (gx#datum->syntax '#f 'lambda%))
                                              (__tmp47692
                                               (let ((__tmp47693
                                                      (let ((__tmp47694
                                                             (lambda (_g16671670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g16681673_)
                       (let ()
                         (declare (not safe))
                         (cons _g16671670_ _g16681673_)))))
                (declare (not safe))
                (foldr1 __tmp47694 '() _L1645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L1647_ __tmp47693))))
                                          (declare (not safe))
                                          (cons __tmp47695 __tmp47692))))
                                   (declare (not safe))
                                   (cons __tmp47691 '()))))
                            (declare (not safe))
                            (cons _L1648_ __tmp47690))))
                     (declare (not safe))
                     (cons __tmp47696 __tmp47689))))
                (___kont4215042151_
                 (lambda (_L1560_ _L1562_)
                   (let ((__tmp47699 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp47697
                          (let ((__tmp47698
                                 (let ()
                                   (declare (not safe))
                                   (cons _L1560_ '()))))
                            (declare (not safe))
                            (cons _L1562_ __tmp47698))))
                     (declare (not safe))
                     (cons __tmp47699 __tmp47697)))))
            (let* ((___match4219842199_
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
                            (___kont4215042151_ _L1560_ _L1562_)
                            (let () (declare (not safe)) (_g14841523_))))))
                   (___match4219042191_
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
                                  (___match4219842199_
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
                   (___match4217842179_
                    (lambda (_e14911585_
                             _hd14901589_
                             _tl14891592_
                             _e14941595_
                             _hd14931599_
                             _tl14921602_
                             _e14971605_
                             _hd14961609_
                             _tl14951612_
                             ___splice4214842149_
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
                                              (___kont4214642147_
                                               _L1645_
                                               _L1647_
                                               _L1648_)
                                              (___match4219042191_
                                               _e14911585_
                                               _hd14901589_
                                               _tl14891592_
                                               _e14941595_
                                               _hd14931599_
                                               _tl14921602_))))))))
                        (_loop15011621_ _target14981615_ '())))))
              (if (gx#stx-pair? ___stx4214342144_)
                  (let ((_e14911585_ (gx#syntax-e ___stx4214342144_)))
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
                                          (let ((___splice4214842149_
                                                 (gx#syntax-split-splice
                                                  _tl14921602_
                                                  '0)))
                                            (let ((_tl15001618_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4214842149_
                                                      '1)))
                                                  (_target14981615_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4214842149_
                                                      '0))))
                                              (if (gx#stx-null? _tl15001618_)
                                                  (___match4217842179_
                                                   _e14911585_
                                                   _hd14901589_
                                                   _tl14891592_
                                                   _e14941595_
                                                   _hd14931599_
                                                   _tl14921602_
                                                   _e14971605_
                                                   _hd14961609_
                                                   _tl14951612_
                                                   ___splice4214842149_
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
                      (___match4219842199_
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
                                                      (___match4219842199_
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
                                              (___match4219842199_
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
                                                 (let ((__tmp47702
                                                        (gx#datum->syntax
                                                         '#f
                                                         'define-alias))
                                                       (__tmp47700
                                                        (let ((__tmp47701
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L1740_ '()))))
                  (declare (not safe))
                  (cons _L1742_ __tmp47701))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47702
                                                         __tmp47700)))
                                               _hd16961734_
                                               _hd16931724_)
                                              (_g16851703_ _g16861707_))))
                                      (_g16851703_ _g16861707_))))
                              (_g16851703_ _g16861707_))))
                      (_g16851703_ _g16861707_)))))
          (_g16841758_ _$stx1681_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#define|
      (lambda (_$stx1762_)
        (let* ((___stx4220142202_ _$stx1762_)
               (_g17671806_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4220142202_))))
          (let ((___kont4220442205_
                 (lambda (_L1928_ _L1930_ _L1931_)
                   (let ((__tmp47711 (gx#datum->syntax '#f 'define-values))
                         (__tmp47703
                          (let ((__tmp47710
                                 (let ()
                                   (declare (not safe))
                                   (cons _L1931_ '())))
                                (__tmp47704
                                 (let ((__tmp47705
                                        (let ((__tmp47709
                                               (gx#datum->syntax '#f 'lambda%))
                                              (__tmp47706
                                               (let ((__tmp47707
                                                      (let ((__tmp47708
                                                             (lambda (_g19501953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g19511956_)
                       (let ()
                         (declare (not safe))
                         (cons _g19501953_ _g19511956_)))))
                (declare (not safe))
                (foldr1 __tmp47708 '() _L1928_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L1930_ __tmp47707))))
                                          (declare (not safe))
                                          (cons __tmp47709 __tmp47706))))
                                   (declare (not safe))
                                   (cons __tmp47705 '()))))
                            (declare (not safe))
                            (cons __tmp47710 __tmp47704))))
                     (declare (not safe))
                     (cons __tmp47711 __tmp47703))))
                (___kont4220842209_
                 (lambda (_L1843_ _L1845_)
                   (let ((__tmp47715 (gx#datum->syntax '#f 'define-values))
                         (__tmp47712
                          (let ((__tmp47714
                                 (let ()
                                   (declare (not safe))
                                   (cons _L1845_ '())))
                                (__tmp47713
                                 (let ()
                                   (declare (not safe))
                                   (cons _L1843_ '()))))
                            (declare (not safe))
                            (cons __tmp47714 __tmp47713))))
                     (declare (not safe))
                     (cons __tmp47715 __tmp47712)))))
            (let* ((___match4225642257_
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
                            (___kont4220842209_ _L1843_ _L1845_)
                            (let () (declare (not safe)) (_g17671806_))))))
                   (___match4224842249_
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
                                  (___match4225642257_
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
                   (___match4223642237_
                    (lambda (_e17741868_
                             _hd17731872_
                             _tl17721875_
                             _e17771878_
                             _hd17761882_
                             _tl17751885_
                             _e17801888_
                             _hd17791892_
                             _tl17781895_
                             ___splice4220642207_
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
                                              (___kont4220442205_
                                               _L1928_
                                               _L1930_
                                               _L1931_)
                                              (___match4224842249_
                                               _e17741868_
                                               _hd17731872_
                                               _tl17721875_
                                               _e17771878_
                                               _hd17761882_
                                               _tl17751885_))))))))
                        (_loop17841904_ _target17811898_ '())))))
              (if (gx#stx-pair? ___stx4220142202_)
                  (let ((_e17741868_ (gx#syntax-e ___stx4220142202_)))
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
                                          (let ((___splice4220642207_
                                                 (gx#syntax-split-splice
                                                  _tl17751885_
                                                  '0)))
                                            (let ((_tl17831901_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4220642207_
                                                      '1)))
                                                  (_target17811898_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4220642207_
                                                      '0))))
                                              (if (gx#stx-null? _tl17831901_)
                                                  (___match4223642237_
                                                   _e17741868_
                                                   _hd17731872_
                                                   _tl17721875_
                                                   _e17771878_
                                                   _hd17761882_
                                                   _tl17751885_
                                                   _e17801888_
                                                   _hd17791892_
                                                   _tl17781895_
                                                   ___splice4220642207_
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
                      (___match4225642257_
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
                                                      (___match4225642257_
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
                                              (___match4225642257_
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
        (let* ((___stx4225942260_ _$stx1964_)
               (_g19692014_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4225942260_))))
          (let ((___kont4226242263_
                 (lambda (_L2172_)
                   (let ((__tmp47719 (gx#datum->syntax '#f 'let-values))
                         (__tmp47716
                          (let ((__tmp47717
                                 (let ((__tmp47718
                                        (lambda (_g21882191_ _g21892194_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g21882191_ _g21892194_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp47718 '() _L2172_))))
                            (declare (not safe))
                            (cons '() __tmp47717))))
                     (declare (not safe))
                     (cons __tmp47719 __tmp47716))))
                (___kont4226642267_
                 (lambda (_L2081_ _L2083_ _L2084_ _L2085_)
                   (let ((__tmp47727 (gx#datum->syntax '#f 'let-values))
                         (__tmp47720
                          (let ((__tmp47726
                                 (let ()
                                   (declare (not safe))
                                   (cons _L2084_ '())))
                                (__tmp47721
                                 (let ((__tmp47722
                                        (let ((__tmp47723
                                               (let ((__tmp47724
                                                      (let ((__tmp47725
                                                             (lambda (_g21062109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g21072112_)
                       (let ()
                         (declare (not safe))
                         (cons _g21062109_ _g21072112_)))))
                (declare (not safe))
                (foldr1 __tmp47725 '() _L2081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L2083_ __tmp47724))))
                                          (declare (not safe))
                                          (cons _L2085_ __tmp47723))))
                                   (declare (not safe))
                                   (cons __tmp47722 '()))))
                            (declare (not safe))
                            (cons __tmp47726 __tmp47721))))
                     (declare (not safe))
                     (cons __tmp47727 __tmp47720)))))
            (let* ((___match4231842319_
                    (lambda (_e19932021_
                             _hd19922025_
                             _tl19912028_
                             _e19962031_
                             _hd19952035_
                             _tl19942038_
                             _e19992041_
                             _hd19982045_
                             _tl19972048_
                             ___splice4226842269_
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
                                        (___kont4226642267_
                                         _body20082077_
                                         _tl19972048_
                                         _hd19982045_
                                         _hd19922025_))))))
                        (_loop20032057_ _target20002051_ '()))))
                   (___match4229242293_
                    (lambda (_e19742122_
                             _hd19732126_
                             _tl19722129_
                             _e19772132_
                             _hd19762136_
                             _tl19752139_
                             ___splice4226442265_
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
                                        (___kont4226242263_
                                         _body19862168_))))))
                        (_loop19812148_ _target19782142_ '())))))
              (if (gx#stx-pair? ___stx4225942260_)
                  (let ((_e19742122_ (gx#syntax-e ___stx4225942260_)))
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
                                      (let ((___splice4226442265_
                                             (gx#syntax-split-splice
                                              _tl19752139_
                                              '0)))
                                        (let ((_tl19802145_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4226442265_
                                                  '1)))
                                              (_target19782142_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4226442265_
                                                  '0))))
                                          (if (gx#stx-null? _tl19802145_)
                                              (___match4229242293_
                                               _e19742122_
                                               _hd19732126_
                                               _tl19722129_
                                               _e19772132_
                                               _hd19762136_
                                               _tl19752139_
                                               ___splice4226442265_
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
                                              (let ((___splice4226842269_
                                                     (gx#syntax-split-splice
                                                      _tl19752139_
                                                      '0)))
                                                (let ((_tl20022054_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4226842269_
                                                          '1)))
                                                      (_target20002051_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4226842269_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl20022054_)
                                                      (___match4231842319_
                                                       _e19742122_
                                                       _hd19732126_
                                                       _tl19722129_
                                                       _e19772132_
                                                       _hd19762136_
                                                       _tl19752139_
                                                       _e19992041_
                                                       _hd19982045_
                                                       _tl19972048_
                                                       ___splice4226842269_
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
        (let* ((___stx4232142322_ _$stx2203_)
               (_g22082272_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4232142322_))))
          (let ((___kont4232442325_
                 (lambda (_L2478_ _L2480_ _L2481_ _L2482_ _L2483_)
                   (let ((__tmp47730
                          (let ((__tmp47744
                                 (gx#datum->syntax '#f 'letrec-values))
                                (__tmp47731
                                 (let ((__tmp47733
                                        (let ((__tmp47734
                                               (let ((__tmp47743
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L2483_ '())))
                                                     (__tmp47735
                                                      (let ((__tmp47736
                                                             (let ((__tmp47742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda%))
                           (__tmp47737
                            (let ((__tmp47740
                                   (let ((__tmp47741
                                          (lambda (_g25122515_ _g25132518_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g25122515_
                                                    _g25132518_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp47741 _L2480_ _L2482_)))
                                  (__tmp47738
                                   (let ((__tmp47739
                                          (lambda (_g25102521_ _g25112524_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g25102521_
                                                    _g25112524_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp47739 '() _L2478_))))
                              (declare (not safe))
                              (cons __tmp47740 __tmp47738))))
                       (declare (not safe))
                       (cons __tmp47742 __tmp47737))))
                (declare (not safe))
                (cons __tmp47736 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47743
                                                       __tmp47735))))
                                          (declare (not safe))
                                          (cons __tmp47734 '())))
                                       (__tmp47732
                                        (let ()
                                          (declare (not safe))
                                          (cons _L2483_ '()))))
                                   (declare (not safe))
                                   (cons __tmp47733 __tmp47732))))
                            (declare (not safe))
                            (cons __tmp47744 __tmp47731)))
                         (__tmp47728
                          (let ((__tmp47729
                                 (lambda (_g25082527_ _g25092530_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g25082527_ _g25092530_)))))
                            (declare (not safe))
                            (foldr1 __tmp47729 '() _L2481_))))
                     (declare (not safe))
                     (cons __tmp47730 __tmp47728))))
                (___kont4233042331_
                 (lambda (_L2329_ _L2331_)
                   (let ((__tmp47750 (gx#datum->syntax '#f '~let))
                         (__tmp47745
                          (let ((__tmp47749 (gx#datum->syntax '#f 'let-values))
                                (__tmp47746
                                 (let ((__tmp47747
                                        (let ((__tmp47748
                                               (lambda (_g23482351_
                                                        _g23492354_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g23482351_
                                                         _g23492354_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp47748 '() _L2329_))))
                                   (declare (not safe))
                                   (cons _L2331_ __tmp47747))))
                            (declare (not safe))
                            (cons __tmp47749 __tmp47746))))
                     (declare (not safe))
                     (cons __tmp47750 __tmp47745)))))
            (let* ((___match4237842379_
                    (lambda (_e22542279_
                             _hd22532283_
                             _tl22522286_
                             _e22572289_
                             _hd22562293_
                             _tl22552296_
                             ___splice4233242333_
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
                                        (___kont4233042331_
                                         _body22662325_
                                         _hd22562293_))))))
                        (_loop22612305_ _target22582299_ '()))))
                   (___match4237042371_
                    (lambda (_e22542279_
                             _hd22532283_
                             _tl22522286_
                             _e22572289_
                             _hd22562293_
                             _tl22552296_)
                      (if (gx#stx-pair/null? _tl22552296_)
                          (let ((___splice4233242333_
                                 (gx#syntax-split-splice _tl22552296_ '0)))
                            (let ((_tl22602302_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4233242333_ '1)))
                                  (_target22582299_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4233242333_ '0))))
                              (if (gx#stx-null? _tl22602302_)
                                  (___match4237842379_
                                   _e22542279_
                                   _hd22532283_
                                   _tl22522286_
                                   _e22572289_
                                   _hd22562293_
                                   _tl22552296_
                                   ___splice4233242333_
                                   _target22582299_
                                   _tl22602302_)
                                  (let ()
                                    (declare (not safe))
                                    (_g22082272_)))))
                          (let () (declare (not safe)) (_g22082272_)))))
                   (___match4235842359_
                    (lambda (_e22172364_
                             _hd22162368_
                             _tl22152371_
                             _e22202374_
                             _hd22192378_
                             _tl22182381_
                             _e22232384_
                             _hd22222388_
                             _tl22212391_
                             ___splice4232642327_
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
                      (___match4237042371_
                       _e22172364_
                       _hd22162368_
                       _tl22152371_
                       _e22202374_
                       _hd22192378_
                       _tl22182381_))))
              (___match4237042371_
               _e22172364_
               _hd22162368_
               _tl22152371_
               _e22202374_
               _hd22192378_
               _tl22182381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match4237042371_
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
                                            (let ((___splice4232842329_
                                                   (gx#syntax-split-splice
                                                    _tl22212391_
                                                    '0)))
                                              (let ((_tl22432451_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4232842329_
                                                        '1)))
                                                    (_target22412448_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4232842329_
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
                                    (___kont4232442325_
                                     _L2478_
                                     _L2480_
                                     _L2481_
                                     _L2482_
                                     _L2483_)
                                    (___match4237042371_
                                     _e22172364_
                                     _hd22162368_
                                     _tl22152371_
                                     _e22202374_
                                     _hd22192378_
                                     _tl22182381_))))))))
              (_loop22442454_ _target22412448_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4237042371_
                                                     _e22172364_
                                                     _hd22162368_
                                                     _tl22152371_
                                                     _e22202374_
                                                     _hd22192378_
                                                     _tl22182381_))))
                                            (___match4237042371_
                                             _e22172364_
                                             _hd22162368_
                                             _tl22152371_
                                             _e22202374_
                                             _hd22192378_
                                             _tl22182381_)))))))
                        (_loop22272400_ _target22242394_ '() '())))))
              (if (gx#stx-pair? ___stx4232142322_)
                  (let ((_e22172364_ (gx#syntax-e ___stx4232142322_)))
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
                                          (let ((___splice4232642327_
                                                 (gx#syntax-split-splice
                                                  _hd22222388_
                                                  '0)))
                                            (let ((_tl22262397_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4232642327_
                                                      '1)))
                                                  (_target22242394_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4232642327_
                                                      '0))))
                                              (___match4235842359_
                                               _e22172364_
                                               _hd22162368_
                                               _tl22152371_
                                               _e22202374_
                                               _hd22192378_
                                               _tl22182381_
                                               _e22232384_
                                               _hd22222388_
                                               _tl22212391_
                                               ___splice4232642327_
                                               _target22242394_
                                               _tl22262397_)))
                                          (if (gx#stx-pair/null? _tl22182381_)
                                              (let ((___splice4233242333_
                                                     (gx#syntax-split-splice
                                                      _tl22182381_
                                                      '0)))
                                                (let ((_tl22602302_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4233242333_
                                                          '1)))
                                                      (_target22582299_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4233242333_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl22602302_)
                                                      (___match4237842379_
                                                       _e22172364_
                                                       _hd22162368_
                                                       _tl22152371_
                                                       _e22202374_
                                                       _hd22192378_
                                                       _tl22182381_
                                                       ___splice4233242333_
                                                       _target22582299_
                                                       _tl22602302_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g22082272_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g22082272_))))))
                                  (if (gx#stx-pair/null? _tl22182381_)
                                      (let ((___splice4233242333_
                                             (gx#syntax-split-splice
                                              _tl22182381_
                                              '0)))
                                        (let ((_tl22602302_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4233242333_
                                                  '1)))
                                              (_target22582299_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4233242333_
                                                  '0))))
                                          (if (gx#stx-null? _tl22602302_)
                                              (___match4237842379_
                                               _e22172364_
                                               _hd22162368_
                                               _tl22152371_
                                               _e22202374_
                                               _hd22192378_
                                               _tl22182381_
                                               ___splice4233242333_
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
                                      (let ((_g47751_
                                             (gx#syntax-split-splice
                                              _tl25512592_
                                              '0)))
                                        (begin
                                          (let ((_g47752_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47751_)
                                                       (##vector-length
                                                        _g47751_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47752_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47752_)))
                                          (let ((_target25542595_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47751_ 0)))
                                                (_tl25562598_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47751_ 1))))
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
                             (let ((__tmp47758 (gx#datum->syntax '#f '~let))
                                   (__tmp47753
                                    (let ((__tmp47757
                                           (gx#datum->syntax '#f 'let*-values))
                                          (__tmp47754
                                           (let ((__tmp47755
                                                  (let ((__tmp47756
                                                         (lambda (_g26442647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g26452650_)
                   (let ()
                     (declare (not safe))
                     (cons _g26442647_ _g26452650_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp47756
                                                            '()
                                                            _L2625_))))
                                             (declare (not safe))
                                             (cons _L2627_ __tmp47755))))
                                      (declare (not safe))
                                      (cons __tmp47757 __tmp47754))))
                               (declare (not safe))
                               (cons __tmp47758 __tmp47753)))
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
                                      (let ((_g47759_
                                             (gx#syntax-split-splice
                                              _tl26692710_
                                              '0)))
                                        (begin
                                          (let ((_g47760_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47759_)
                                                       (##vector-length
                                                        _g47759_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47760_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47760_)))
                                          (let ((_target26722713_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47759_ 0)))
                                                (_tl26742716_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47759_ 1))))
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
                             (let ((__tmp47766 (gx#datum->syntax '#f '~let))
                                   (__tmp47761
                                    (let ((__tmp47765
                                           (gx#datum->syntax
                                            '#f
                                            'letrec-values))
                                          (__tmp47762
                                           (let ((__tmp47763
                                                  (let ((__tmp47764
                                                         (lambda (_g27622765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g27632768_)
                   (let ()
                     (declare (not safe))
                     (cons _g27622765_ _g27632768_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp47764
                                                            '()
                                                            _L2743_))))
                                             (declare (not safe))
                                             (cons _L2745_ __tmp47763))))
                                      (declare (not safe))
                                      (cons __tmp47765 __tmp47762))))
                               (declare (not safe))
                               (cons __tmp47766 __tmp47761)))
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
                                      (let ((_g47767_
                                             (gx#syntax-split-splice
                                              _tl27872828_
                                              '0)))
                                        (begin
                                          (let ((_g47768_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47767_)
                                                       (##vector-length
                                                        _g47767_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47768_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47768_)))
                                          (let ((_target27902831_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47767_ 0)))
                                                (_tl27922834_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47767_ 1))))
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
                             (let ((__tmp47774 (gx#datum->syntax '#f '~let))
                                   (__tmp47769
                                    (let ((__tmp47773
                                           (gx#datum->syntax
                                            '#f
                                            'letrec*-values))
                                          (__tmp47770
                                           (let ((__tmp47771
                                                  (let ((__tmp47772
                                                         (lambda (_g28802883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g28812886_)
                   (let ()
                     (declare (not safe))
                     (cons _g28802883_ _g28812886_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp47772
                                                            '()
                                                            _L2861_))))
                                             (declare (not safe))
                                             (cons _L2863_ __tmp47771))))
                                      (declare (not safe))
                                      (cons __tmp47773 __tmp47770))))
                               (declare (not safe))
                               (cons __tmp47774 __tmp47769)))
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
                    (let* ((___stx4238142382_ _x3377_)
                           (_g33813392_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4238142382_))))
                      (let ((___kont4238442385_
                             (lambda (_L3420_)
                               (gx#stx-andmap gx#identifier? _L3420_)))
                            (___kont4238642387_
                             (lambda () (gx#identifier? _x3377_))))
                        (if (gx#stx-pair? ___stx4238142382_)
                            (let ((_e33863410_
                                   (gx#syntax-e ___stx4238142382_)))
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
                                         |gerbil/core$<sugar>$<sugar:1>[1]#_g47775_|
                                         _hd33853414_)
                                        (___kont4238442385_ _tl33843417_)
                                        (___kont4238642387_))
                                    (___kont4238642387_))))
                            (___kont4238642387_))))))
                 (_let-head2899_
                  (lambda (_x3317_)
                    (let* ((___stx4240142402_ _x3317_)
                           (_g33213332_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4240142402_))))
                      (let ((___kont4240442405_ (lambda (_L3360_) _L3360_))
                            (___kont4240642407_ (lambda () (list _x3317_))))
                        (if (gx#stx-pair? ___stx4240142402_)
                            (let ((_e33263350_
                                   (gx#syntax-e ___stx4240142402_)))
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
                                         |gerbil/core$<sugar>$<sugar:1>[1]#_g47776_|
                                         _hd33253354_)
                                        (___kont4240442405_ _tl33243357_)
                                        (___kont4240642407_))
                                    (___kont4240642407_))))
                            (___kont4240642407_)))))))
          (let* ((___stx4242142422_ _stx2894_)
                 (_g29022968_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx4242142422_))))
            (let ((___kont4242442425_
                   (lambda (_L3286_ _L3288_ _L3289_ _L3290_ _L3291_)
                     (let ((__tmp47777
                            (let ((__tmp47778
                                   (let ((__tmp47779
                                          (let ((__tmp47780
                                                 (let ((__tmp47781
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L3288_ '()))))
                                                   (declare (not safe))
                                                   (cons _L3289_ __tmp47781))))
                                            (declare (not safe))
                                            (cons __tmp47780 '()))))
                                     (declare (not safe))
                                     (cons __tmp47779 _L3286_))))
                              (declare (not safe))
                              (cons _L3290_ __tmp47778))))
                       (declare (not safe))
                       (cons _L3291_ __tmp47777))))
                  (___kont4242642427_
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
                                   (let ((_g47782_
                                          (gx#syntax-split-splice
                                           _g31293149_
                                           '0)))
                                     (begin
                                       (let ((_g47783_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g47782_)
                                                    (##vector-length _g47782_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g47783_ 2)))
                                             (error "Context expects 2 values"
                                                    _g47783_)))
                                       (let ((_target31313152_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g47782_ 0)))
                                             (_tl31333155_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g47782_ 1))))
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
                            (let ((__tmp47784
                                   (let ((__tmp47787
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L3091_
                                             _L3182_)
                                            (let ((__tmp47788
                                                   (lambda (_g31993203_
                                                            _g32003206_
                                                            _g32013208_)
                                                     (let ((__tmp47789
                                                            (let ((__tmp47790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _g31993203_ '()))))
                      (declare (not safe))
                      (cons _g32003206_ __tmp47790))))
               (declare (not safe))
               (cons __tmp47789 _g32013208_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldr2 __tmp47788
                                                      '()
                                                      _L3091_
                                                      _L3182_))))
                                         (__tmp47785
                                          (let ((__tmp47786
                                                 (lambda (_g31973211_
                                                          _g31983214_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g31973211_
                                                           _g31983214_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp47786 '() _L3089_))))
                                     (declare (not safe))
                                     (cons __tmp47787 __tmp47785))))
                              (declare (not safe))
                              (cons _L3093_ __tmp47784))))
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
                         (let ((__tmp47791
                                (lambda (_g32203223_ _g32213226_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g32203223_ _g32213226_)))))
                           (declare (not safe))
                           (foldr1 __tmp47791 '() _L3092_))))))))
              (let* ((___match4249042491_
                      (lambda (_e29302975_
                               _hd29292979_
                               _tl29282982_
                               _e29332985_
                               _hd29322989_
                               _tl29312992_
                               _e29362995_
                               _hd29352999_
                               _tl29343002_
                               ___splice4242842429_
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
                                              (let ((___splice4243042431_
                                                     (gx#syntax-split-splice
                                                      _tl29343002_
                                                      '0)))
                                                (let ((_tl29563062_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4243042431_
                                                          '1)))
                                                      (_target29543059_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4243042431_
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
                                       (let ((__tmp47792
                                              (lambda (_g31193122_ _g31203125_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g31193122_
                                                        _g31203125_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp47792 '() _L3092_)))
                                      (___kont4242642427_
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
                     (___match4246442465_
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
                              (___kont4242442425_
                               _L3286_
                               _L3288_
                               _L3289_
                               _L3290_
                               _L3291_)
                              (if (gx#stx-pair/null? _hd29163260_)
                                  (let ((___splice4242842429_
                                         (gx#syntax-split-splice
                                          _hd29163260_
                                          '0)))
                                    (let ((_tl29393008_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4242842429_
                                              '1)))
                                          (_target29373005_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4242842429_
                                              '0))))
                                      (if (gx#stx-null? _tl29393008_)
                                          (___match4249042491_
                                           _e29113236_
                                           _hd29103240_
                                           _tl29093243_
                                           _e29143246_
                                           _hd29133250_
                                           _tl29123253_
                                           _e29173256_
                                           _hd29163260_
                                           _tl29153263_
                                           ___splice4242842429_
                                           _target29373005_
                                           _tl29393008_)
                                          (let ()
                                            (declare (not safe))
                                            (_g29022968_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g29022968_))))))))
                (if (gx#stx-pair? ___stx4242142422_)
                    (let ((_e29113236_ (gx#syntax-e ___stx4242142422_)))
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
                    (___match4246442465_
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
                        (let ((___splice4242842429_
                               (gx#syntax-split-splice _hd29163260_ '0)))
                          (let ((_tl29393008_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4242842429_ '1)))
                                (_target29373005_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4242842429_ '0))))
                            (if (gx#stx-null? _tl29393008_)
                                (___match4249042491_
                                 _e29113236_
                                 _hd29103240_
                                 _tl29093243_
                                 _e29143246_
                                 _hd29133250_
                                 _tl29123253_
                                 _e29173256_
                                 _hd29163260_
                                 _tl29153263_
                                 ___splice4242842429_
                                 _target29373005_
                                 _tl29393008_)
                                (let () (declare (not safe)) (_g29022968_)))))
                        (let () (declare (not safe)) (_g29022968_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd29163260_)
                                                        (let ((___splice4242842429_
                                                               (gx#syntax-split-splice
                                                                _hd29163260_
                                                                '0)))
                                                          (let ((_tl29393008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4242842429_ '1)))
                        (_target29373005_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4242842429_ '0))))
                    (if (gx#stx-null? _tl29393008_)
                        (___match4249042491_
                         _e29113236_
                         _hd29103240_
                         _tl29093243_
                         _e29143246_
                         _hd29133250_
                         _tl29123253_
                         _e29173256_
                         _hd29163260_
                         _tl29153263_
                         ___splice4242842429_
                         _target29373005_
                         _tl29393008_)
                        (let () (declare (not safe)) (_g29022968_)))))
                (let () (declare (not safe)) (_g29022968_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd29163260_)
                                                (let ((___splice4242842429_
                                                       (gx#syntax-split-splice
                                                        _hd29163260_
                                                        '0)))
                                                  (let ((_tl29393008_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4242842429_
                                                            '1)))
                                                        (_target29373005_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4242842429_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl29393008_)
                                                        (___match4249042491_
                                                         _e29113236_
                                                         _hd29103240_
                                                         _tl29093243_
                                                         _e29143246_
                                                         _hd29133250_
                                                         _tl29123253_
                                                         _e29173256_
                                                         _hd29163260_
                                                         _tl29153263_
                                                         ___splice4242842429_
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
        (let* ((___stx4249342494_ _$stx3440_)
               (_g34463472_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4249342494_))))
          (let ((___kont4249642497_ (lambda () '#t))
                (___kont4249842499_ (lambda (_L3544_) _L3544_))
                (___kont4250042501_
                 (lambda (_L3499_ _L3501_ _L3502_)
                   (let ((__tmp47797 (gx#datum->syntax '#f 'if))
                         (__tmp47793
                          (let ((__tmp47794
                                 (let ((__tmp47796
                                        (let ()
                                          (declare (not safe))
                                          (cons _L3502_ _L3499_)))
                                       (__tmp47795
                                        (let ()
                                          (declare (not safe))
                                          (cons '#f '()))))
                                   (declare (not safe))
                                   (cons __tmp47796 __tmp47795))))
                            (declare (not safe))
                            (cons _L3501_ __tmp47794))))
                     (declare (not safe))
                     (cons __tmp47797 __tmp47793)))))
            (if (gx#stx-pair? ___stx4249342494_)
                (let ((_e34503564_ (gx#syntax-e ___stx4249342494_)))
                  (let ((_tl34483571_
                         (let () (declare (not safe)) (##cdr _e34503564_)))
                        (_hd34493568_
                         (let () (declare (not safe)) (##car _e34503564_))))
                    (if (gx#stx-null? _tl34483571_)
                        (___kont4249642497_)
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
                                    (___kont4249842499_ _hd34563538_)
                                    (___kont4250042501_
                                     _tl34553541_
                                     _hd34563538_
                                     _hd34493568_))))
                            (let () (declare (not safe)) (_g34463472_))))))
                (let () (declare (not safe)) (_g34463472_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#or|
      (lambda (_$stx3582_)
        (let* ((___stx4253942540_ _$stx3582_)
               (_g35883614_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4253942540_))))
          (let ((___kont4254242543_ (lambda () '#f))
                (___kont4254442545_ (lambda (_L3686_) _L3686_))
                (___kont4254642547_
                 (lambda (_L3641_ _L3643_ _L3644_)
                   (let ((__tmp47811 (gx#datum->syntax '#f 'let))
                         (__tmp47798
                          (let ((__tmp47808
                                 (let ((__tmp47810 (gx#datum->syntax '#f '$e))
                                       (__tmp47809
                                        (let ()
                                          (declare (not safe))
                                          (cons _L3643_ '()))))
                                   (declare (not safe))
                                   (cons __tmp47810 __tmp47809)))
                                (__tmp47799
                                 (let ((__tmp47800
                                        (let ((__tmp47807
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp47801
                                               (let ((__tmp47806
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp47802
                                                      (let ((__tmp47805
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$e))
                                                            (__tmp47803
                                                             (let ((__tmp47804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L3644_ _L3641_))))
                       (declare (not safe))
                       (cons __tmp47804 '()))))
                (declare (not safe))
                (cons __tmp47805 __tmp47803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47806
                                                       __tmp47802))))
                                          (declare (not safe))
                                          (cons __tmp47807 __tmp47801))))
                                   (declare (not safe))
                                   (cons __tmp47800 '()))))
                            (declare (not safe))
                            (cons __tmp47808 __tmp47799))))
                     (declare (not safe))
                     (cons __tmp47811 __tmp47798)))))
            (if (gx#stx-pair? ___stx4253942540_)
                (let ((_e35923706_ (gx#syntax-e ___stx4253942540_)))
                  (let ((_tl35903713_
                         (let () (declare (not safe)) (##cdr _e35923706_)))
                        (_hd35913710_
                         (let () (declare (not safe)) (##car _e35923706_))))
                    (if (gx#stx-null? _tl35903713_)
                        (___kont4254242543_)
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
                                    (___kont4254442545_ _hd35983680_)
                                    (___kont4254642547_
                                     _tl35973683_
                                     _hd35983680_
                                     _hd35913710_))))
                            (let () (declare (not safe)) (_g35883614_))))))
                (let () (declare (not safe)) (_g35883614_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#cond|
      (lambda (_$stx3724_)
        (let* ((___stx4258542586_ _$stx3724_)
               (_g37333824_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4258542586_))))
          (let ((___kont4258842589_ (lambda () '#!void))
                (___kont4259042591_
                 (lambda (_L4171_)
                   (let ((__tmp47817 (gx#datum->syntax '#f '%#expression))
                         (__tmp47812
                          (let ((__tmp47813
                                 (let ((__tmp47816
                                        (gx#datum->syntax '#f 'begin))
                                       (__tmp47814
                                        (let ((__tmp47815
                                               (lambda (_g41904193_
                                                        _g41914196_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g41904193_
                                                         _g41914196_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp47815 '() _L4171_))))
                                   (declare (not safe))
                                   (cons __tmp47816 __tmp47814))))
                            (declare (not safe))
                            (cons __tmp47813 '()))))
                     (declare (not safe))
                     (cons __tmp47817 __tmp47812))))
                (___kont4259442595_
                 (lambda ()
                   (let ((__tmp47819 (gx#datum->syntax '#f 'syntax-error))
                         (__tmp47818
                          (let ()
                            (declare (not safe))
                            (cons '"bad syntax; misplaced else" '()))))
                     (declare (not safe))
                     (cons __tmp47819 __tmp47818))))
                (___kont4259642597_
                 (lambda (_L4044_ _L4046_ _L4047_)
                   (let ((__tmp47833 (gx#datum->syntax '#f 'let))
                         (__tmp47820
                          (let ((__tmp47830
                                 (let ((__tmp47832 (gx#datum->syntax '#f '$e))
                                       (__tmp47831
                                        (let ()
                                          (declare (not safe))
                                          (cons _L4046_ '()))))
                                   (declare (not safe))
                                   (cons __tmp47832 __tmp47831)))
                                (__tmp47821
                                 (let ((__tmp47822
                                        (let ((__tmp47829
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp47823
                                               (let ((__tmp47828
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp47824
                                                      (let ((__tmp47827
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$e))
                                                            (__tmp47825
                                                             (let ((__tmp47826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L4047_ _L4044_))))
                       (declare (not safe))
                       (cons __tmp47826 '()))))
                (declare (not safe))
                (cons __tmp47827 __tmp47825))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47828
                                                       __tmp47824))))
                                          (declare (not safe))
                                          (cons __tmp47829 __tmp47823))))
                                   (declare (not safe))
                                   (cons __tmp47822 '()))))
                            (declare (not safe))
                            (cons __tmp47830 __tmp47821))))
                     (declare (not safe))
                     (cons __tmp47833 __tmp47820))))
                (___kont4259842599_
                 (lambda (_L3982_ _L3984_ _L3985_ _L3986_)
                   (let ((__tmp47849 (gx#datum->syntax '#f 'let))
                         (__tmp47834
                          (let ((__tmp47846
                                 (let ((__tmp47848 (gx#datum->syntax '#f '$e))
                                       (__tmp47847
                                        (let ()
                                          (declare (not safe))
                                          (cons _L3985_ '()))))
                                   (declare (not safe))
                                   (cons __tmp47848 __tmp47847)))
                                (__tmp47835
                                 (let ((__tmp47836
                                        (let ((__tmp47845
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp47837
                                               (let ((__tmp47844
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp47838
                                                      (let ((__tmp47841
                                                             (let ((__tmp47842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp47843 (gx#datum->syntax '#f '$e)))
                              (declare (not safe))
                              (cons __tmp47843 '()))))
                       (declare (not safe))
                       (cons _L3984_ __tmp47842)))
                    (__tmp47839
                     (let ((__tmp47840
                            (let ()
                              (declare (not safe))
                              (cons _L3986_ _L3982_))))
                       (declare (not safe))
                       (cons __tmp47840 '()))))
                (declare (not safe))
                (cons __tmp47841 __tmp47839))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47844
                                                       __tmp47838))))
                                          (declare (not safe))
                                          (cons __tmp47845 __tmp47837))))
                                   (declare (not safe))
                                   (cons __tmp47836 '()))))
                            (declare (not safe))
                            (cons __tmp47846 __tmp47835))))
                     (declare (not safe))
                     (cons __tmp47849 __tmp47834))))
                (___kont4260042601_
                 (lambda (_L3891_ _L3893_ _L3894_ _L3895_)
                   (let ((__tmp47858 (gx#datum->syntax '#f 'if))
                         (__tmp47850
                          (let ((__tmp47851
                                 (let ((__tmp47854
                                        (let ((__tmp47857
                                               (gx#datum->syntax '#f 'begin))
                                              (__tmp47855
                                               (let ((__tmp47856
                                                      (lambda (_g39163919_
                                                               _g39173922_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g39163919_
                                                                _g39173922_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp47856
                                                         '()
                                                         _L3893_))))
                                          (declare (not safe))
                                          (cons __tmp47857 __tmp47855)))
                                       (__tmp47852
                                        (let ((__tmp47853
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L3895_ _L3891_))))
                                          (declare (not safe))
                                          (cons __tmp47853 '()))))
                                   (declare (not safe))
                                   (cons __tmp47854 __tmp47852))))
                            (declare (not safe))
                            (cons _L3894_ __tmp47851))))
                     (declare (not safe))
                     (cons __tmp47858 __tmp47850)))))
            (let* ((___match4274642747_
                    (lambda (_e38033831_
                             _hd38023835_
                             _tl38013838_
                             _e38063841_
                             _hd38053845_
                             _tl38043848_
                             _e38093851_
                             _hd38083855_
                             _tl38073858_
                             ___splice4260242603_
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
                                        (___kont4260042601_
                                         _tl38043848_
                                         _body38183887_
                                         _hd38083855_
                                         _hd38023835_))))))
                        (_loop38133867_ _target38103861_ '()))))
                   (___match4264242643_
                    (lambda (_e37414111_
                             _hd37404115_
                             _tl37394118_
                             _e37444121_
                             _hd37434125_
                             _tl37424128_
                             _e37474131_
                             _hd37464135_
                             _tl37454138_
                             ___splice4259242593_
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
                                            (___kont4259042591_ _body37564167_)
                                            (___kont4259442595_)))))))
                        (_loop37514147_ _target37484141_ '())))))
              (if (gx#stx-pair? ___stx4258542586_)
                  (let ((_e37374206_ (gx#syntax-e ___stx4258542586_)))
                    (let ((_tl37354213_
                           (let () (declare (not safe)) (##cdr _e37374206_)))
                          (_hd37364210_
                           (let () (declare (not safe)) (##car _e37374206_))))
                      (if (gx#stx-null? _tl37354213_)
                          (___kont4258842589_)
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
                                                   |gerbil/core$<sugar>$<sugar:1>[1]#_g47860_|
                                                   _hd37464135_)
                                                  (if (gx#stx-pair/null?
                                                       _tl37454138_)
                                                      (let ((___splice4259242593_
                                                             (gx#syntax-split-splice
                                                              _tl37454138_
                                                              '0)))
                                                        (let ((_tl37504144_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4259242593_ '1)))
                      (_target37484141_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4259242593_ '0))))
                  (if (gx#stx-null? _tl37504144_)
                      (___match4264242643_
                       _e37374206_
                       _hd37364210_
                       _tl37354213_
                       _e37444121_
                       _hd37434125_
                       _tl37424128_
                       _e37474131_
                       _hd37464135_
                       _tl37454138_
                       ___splice4259242593_
                       _target37484141_
                       _tl37504144_)
                      (___kont4259442595_))))
              (___kont4259442595_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl37454138_)
                                                      (___kont4259642597_
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
                               |gerbil/core$<sugar>$<sugar:1>[1]#_g47859_|
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
                                          (___kont4259842599_
                                           _tl37424128_
                                           _hd37953976_
                                           _hd37464135_
                                           _hd37364210_)
                                          (if (gx#stx-pair/null? _tl37454138_)
                                              (let ((___splice4260242603_
                                                     (gx#syntax-split-splice
                                                      _tl37454138_
                                                      '0)))
                                                (let ((_tl38123864_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4260242603_
                                                          '1)))
                                                      (_target38103861_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4260242603_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl38123864_)
                                                      (___match4274642747_
                                                       _e37374206_
                                                       _hd37364210_
                                                       _tl37354213_
                                                       _e37444121_
                                                       _hd37434125_
                                                       _tl37424128_
                                                       _e37474131_
                                                       _hd37464135_
                                                       _tl37454138_
                                                       ___splice4260242603_
                                                       _target38103861_
                                                       _tl38123864_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g37333824_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g37333824_))))))
                                  (if (gx#stx-pair/null? _tl37454138_)
                                      (let ((___splice4260242603_
                                             (gx#syntax-split-splice
                                              _tl37454138_
                                              '0)))
                                        (let ((_tl38123864_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4260242603_
                                                  '1)))
                                              (_target38103861_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4260242603_
                                                  '0))))
                                          (if (gx#stx-null? _tl38123864_)
                                              (___match4274642747_
                                               _e37374206_
                                               _hd37364210_
                                               _tl37354213_
                                               _e37444121_
                                               _hd37434125_
                                               _tl37424128_
                                               _e37474131_
                                               _hd37464135_
                                               _tl37454138_
                                               ___splice4260242603_
                                               _target38103861_
                                               _tl38123864_)
                                              (let ()
                                                (declare (not safe))
                                                (_g37333824_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g37333824_))))
                              (if (gx#stx-pair/null? _tl37454138_)
                                  (let ((___splice4260242603_
                                         (gx#syntax-split-splice
                                          _tl37454138_
                                          '0)))
                                    (let ((_tl38123864_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4260242603_
                                              '1)))
                                          (_target38103861_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4260242603_
                                              '0))))
                                      (if (gx#stx-null? _tl38123864_)
                                          (___match4274642747_
                                           _e37374206_
                                           _hd37364210_
                                           _tl37354213_
                                           _e37444121_
                                           _hd37434125_
                                           _tl37424128_
                                           _e37474131_
                                           _hd37464135_
                                           _tl37454138_
                                           ___splice4260242603_
                                           _target38103861_
                                           _tl38123864_)
                                          (let ()
                                            (declare (not safe))
                                            (_g37333824_)))))
                                  (let () (declare (not safe)) (_g37333824_))))
                          (if (gx#stx-pair/null? _tl37454138_)
                              (let ((___splice4260242603_
                                     (gx#syntax-split-splice _tl37454138_ '0)))
                                (let ((_tl38123864_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4260242603_
                                          '1)))
                                      (_target38103861_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4260242603_
                                          '0))))
                                  (if (gx#stx-null? _tl38123864_)
                                      (___match4274642747_
                                       _e37374206_
                                       _hd37364210_
                                       _tl37354213_
                                       _e37444121_
                                       _hd37434125_
                                       _tl37424128_
                                       _e37474131_
                                       _hd37464135_
                                       _tl37454138_
                                       ___splice4260242603_
                                       _target38103861_
                                       _tl38123864_)
                                      (let ()
                                        (declare (not safe))
                                        (_g37333824_)))))
                              (let () (declare (not safe)) (_g37333824_))))))
                  (if (gx#stx-pair/null? _tl37454138_)
                      (let ((___splice4260242603_
                             (gx#syntax-split-splice _tl37454138_ '0)))
                        (let ((_tl38123864_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4260242603_ '1)))
                              (_target38103861_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4260242603_ '0))))
                          (if (gx#stx-null? _tl38123864_)
                              (___match4274642747_
                               _e37374206_
                               _hd37364210_
                               _tl37354213_
                               _e37444121_
                               _hd37434125_
                               _tl37424128_
                               _e37474131_
                               _hd37464135_
                               _tl37454138_
                               ___splice4260242603_
                               _target38103861_
                               _tl38123864_)
                              (let () (declare (not safe)) (_g37333824_)))))
                      (let () (declare (not safe)) (_g37333824_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl37454138_)
                                                  (___kont4259642597_
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
                           |gerbil/core$<sugar>$<sugar:1>[1]#_g47859_|
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
                                      (___kont4259842599_
                                       _tl37424128_
                                       _hd37953976_
                                       _hd37464135_
                                       _hd37364210_)
                                      (if (gx#stx-pair/null? _tl37454138_)
                                          (let ((___splice4260242603_
                                                 (gx#syntax-split-splice
                                                  _tl37454138_
                                                  '0)))
                                            (let ((_tl38123864_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4260242603_
                                                      '1)))
                                                  (_target38103861_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4260242603_
                                                      '0))))
                                              (if (gx#stx-null? _tl38123864_)
                                                  (___match4274642747_
                                                   _e37374206_
                                                   _hd37364210_
                                                   _tl37354213_
                                                   _e37444121_
                                                   _hd37434125_
                                                   _tl37424128_
                                                   _e37474131_
                                                   _hd37464135_
                                                   _tl37454138_
                                                   ___splice4260242603_
                                                   _target38103861_
                                                   _tl38123864_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g37333824_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g37333824_))))))
                              (if (gx#stx-pair/null? _tl37454138_)
                                  (let ((___splice4260242603_
                                         (gx#syntax-split-splice
                                          _tl37454138_
                                          '0)))
                                    (let ((_tl38123864_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4260242603_
                                              '1)))
                                          (_target38103861_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4260242603_
                                              '0))))
                                      (if (gx#stx-null? _tl38123864_)
                                          (___match4274642747_
                                           _e37374206_
                                           _hd37364210_
                                           _tl37354213_
                                           _e37444121_
                                           _hd37434125_
                                           _tl37424128_
                                           _e37474131_
                                           _hd37464135_
                                           _tl37454138_
                                           ___splice4260242603_
                                           _target38103861_
                                           _tl38123864_)
                                          (let ()
                                            (declare (not safe))
                                            (_g37333824_)))))
                                  (let () (declare (not safe)) (_g37333824_))))
                          (if (gx#stx-pair/null? _tl37454138_)
                              (let ((___splice4260242603_
                                     (gx#syntax-split-splice _tl37454138_ '0)))
                                (let ((_tl38123864_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4260242603_
                                          '1)))
                                      (_target38103861_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4260242603_
                                          '0))))
                                  (if (gx#stx-null? _tl38123864_)
                                      (___match4274642747_
                                       _e37374206_
                                       _hd37364210_
                                       _tl37354213_
                                       _e37444121_
                                       _hd37434125_
                                       _tl37424128_
                                       _e37474131_
                                       _hd37464135_
                                       _tl37454138_
                                       ___splice4260242603_
                                       _target38103861_
                                       _tl38123864_)
                                      (let ()
                                        (declare (not safe))
                                        (_g37333824_)))))
                              (let () (declare (not safe)) (_g37333824_))))
                      (if (gx#stx-pair/null? _tl37454138_)
                          (let ((___splice4260242603_
                                 (gx#syntax-split-splice _tl37454138_ '0)))
                            (let ((_tl38123864_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4260242603_ '1)))
                                  (_target38103861_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4260242603_ '0))))
                              (if (gx#stx-null? _tl38123864_)
                                  (___match4274642747_
                                   _e37374206_
                                   _hd37364210_
                                   _tl37354213_
                                   _e37444121_
                                   _hd37434125_
                                   _tl37424128_
                                   _e37474131_
                                   _hd37464135_
                                   _tl37454138_
                                   ___splice4260242603_
                                   _target38103861_
                                   _tl38123864_)
                                  (let ()
                                    (declare (not safe))
                                    (_g37333824_)))))
                          (let () (declare (not safe)) (_g37333824_))))))
              (if (gx#stx-pair/null? _tl37454138_)
                  (let ((___splice4260242603_
                         (gx#syntax-split-splice _tl37454138_ '0)))
                    (let ((_tl38123864_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4260242603_ '1)))
                          (_target38103861_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4260242603_ '0))))
                      (if (gx#stx-null? _tl38123864_)
                          (___match4274642747_
                           _e37374206_
                           _hd37364210_
                           _tl37354213_
                           _e37444121_
                           _hd37434125_
                           _tl37424128_
                           _e37474131_
                           _hd37464135_
                           _tl37454138_
                           ___splice4260242603_
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
                                      (let ((_g47861_
                                             (gx#syntax-split-splice
                                              _tl42374278_
                                              '0)))
                                        (begin
                                          (let ((_g47862_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47861_)
                                                       (##vector-length
                                                        _g47861_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47862_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47862_)))
                                          (let ((_target42404281_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47861_ 0)))
                                                (_tl42424284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47861_ 1))))
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
                             (let ((__tmp47870 (gx#datum->syntax '#f 'if))
                                   (__tmp47863
                                    (let ((__tmp47864
                                           (let ((__tmp47866
                                                  (let ((__tmp47869
                                                         (gx#datum->syntax
                                                          '#f
                                                          'begin))
                                                        (__tmp47867
                                                         (let ((__tmp47868
                                                                (lambda (_g43304333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g43314336_)
                          (let ()
                            (declare (not safe))
                            (cons _g43304333_ _g43314336_)))))
                   (declare (not safe))
                   (foldr1 __tmp47868 '() _L4311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47869
                                                          __tmp47867)))
                                                 (__tmp47865
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons '#!void '()))))
                                             (declare (not safe))
                                             (cons __tmp47866 __tmp47865))))
                                      (declare (not safe))
                                      (cons _L4313_ __tmp47864))))
                               (declare (not safe))
                               (cons __tmp47870 __tmp47863)))
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
                                      (let ((_g47871_
                                             (gx#syntax-split-splice
                                              _tl43554396_
                                              '0)))
                                        (begin
                                          (let ((_g47872_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47871_)
                                                       (##vector-length
                                                        _g47871_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47872_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47872_)))
                                          (let ((_target43584399_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47871_ 0)))
                                                (_tl43604402_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47871_ 1))))
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
                             (let ((__tmp47880 (gx#datum->syntax '#f 'if))
                                   (__tmp47873
                                    (let ((__tmp47874
                                           (let ((__tmp47875
                                                  (let ((__tmp47876
                                                         (let ((__tmp47879
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin))
                       (__tmp47877
                        (let ((__tmp47878
                               (lambda (_g44484451_ _g44494454_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g44484451_ _g44494454_)))))
                          (declare (not safe))
                          (foldr1 __tmp47878 '() _L4429_))))
                   (declare (not safe))
                   (cons __tmp47879 __tmp47877))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47876 '()))))
                                             (declare (not safe))
                                             (cons '#!void __tmp47875))))
                                      (declare (not safe))
                                      (cons _L4431_ __tmp47874))))
                               (declare (not safe))
                               (cons __tmp47880 __tmp47873)))
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
                                      (let ((_g47881_
                                             (gx#syntax-split-splice
                                              _tl44724513_
                                              '0)))
                                        (begin
                                          (let ((_g47882_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47881_)
                                                       (##vector-length
                                                        _g47881_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47882_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47882_)))
                                          (let ((_target44754516_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47881_ 0)))
                                                (_tl44774519_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47881_ 1))))
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
                                         (let ((__tmp47883
                                                (lambda (_g45654568_
                                                         _g45664571_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g45654568_
                                                          _g45664571_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp47883 '() _L4546_))))
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
                                                 (let ((__tmp47897
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp47884
                                                        (let ((__tmp47893
                                                               (let ((__tmp47896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'def))
                             (__tmp47894
                              (let ((__tmp47895
                                     (let ()
                                       (declare (not safe))
                                       (cons _L4638_ '()))))
                                (declare (not safe))
                                (cons _L4640_ __tmp47895))))
                         (declare (not safe))
                         (cons __tmp47896 __tmp47894)))
                      (__tmp47885
                       (let ((__tmp47889
                              (let ((__tmp47892 (gx#datum->syntax '#f 'set!))
                                    (__tmp47890
                                     (let ((__tmp47891
                                            (let ()
                                              (declare (not safe))
                                              (cons _L4640_ '()))))
                                       (declare (not safe))
                                       (cons _L4640_ __tmp47891))))
                                (declare (not safe))
                                (cons __tmp47892 __tmp47890)))
                             (__tmp47886
                              (let ((__tmp47887
                                     (let ((__tmp47888
                                            (gx#datum->syntax '#f 'void)))
                                       (declare (not safe))
                                       (cons __tmp47888 '()))))
                                (declare (not safe))
                                (cons __tmp47887 '()))))
                         (declare (not safe))
                         (cons __tmp47889 __tmp47886))))
                  (declare (not safe))
                  (cons __tmp47893 __tmp47885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47897
                                                         __tmp47884)))
                                               _hd45944632_
                                               _hd45914622_)
                                              (_g45834601_ _g45844605_))))
                                      (_g45834601_ _g45844605_))))
                              (_g45834601_ _g45844605_))))
                      (_g45834601_ _g45844605_)))))
          (_g45824656_ _$stx4579_))))))
