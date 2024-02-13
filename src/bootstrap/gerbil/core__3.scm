(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g47742_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g47743_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g47826_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g47827_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
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
                      (let ((_e13501380_ (gx#syntax-e _g13461377_)))
                        (let ((_hd13511384_
                               (let ()
                                 (declare (not safe))
                                 (##car _e13501380_)))
                              (_tl13521387_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e13501380_))))
                          (if (gx#stx-pair? _tl13521387_)
                              (let ((_e13531390_ (gx#syntax-e _tl13521387_)))
                                (let ((_hd13541394_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e13531390_)))
                                      (_tl13551397_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e13531390_))))
                                  (if (gx#stx-pair? _tl13551397_)
                                      (let ((_e13561400_
                                             (gx#syntax-e _tl13551397_)))
                                        (let ((_hd13571404_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e13561400_)))
                                              (_tl13581407_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e13561400_))))
                                          (if (gx#stx-pair/null? _tl13581407_)
                                              (let ((_g47646_
                                                     (gx#syntax-split-splice
                                                      _tl13581407_
                                                      '0)))
                                                (begin
                                                  (let ((_g47647_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g47646_)
                                                               (##vector-length
                                                                _g47646_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g47647_ 2)))
                (error "Context expects 2 values" _g47647_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target13591410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g47646_
                                                            0)))
                                                        (_tl13611413_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g47646_
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
                                         (let ((__tmp47655
                                                (gx#datum->syntax
                                                 '#f
                                                 'define-syntax))
                                               (__tmp47648
                                                (let ((__tmp47649
                                                       (let ((__tmp47650
                                                              (let ((__tmp47654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'syntax-rules))
                            (__tmp47651
                             (let ((__tmp47652
                                    (let ((__tmp47653
                                           (lambda (_g14651468_ _g14661471_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g14651468_
                                                     _g14661471_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp47653 '() _L1440_))))
                               (declare (not safe))
                               (cons _L1442_ __tmp47652))))
                        (declare (not safe))
                        (cons __tmp47654 __tmp47651))))
                 (declare (not safe))
                 (cons __tmp47650 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L1443_ __tmp47649))))
                                           (declare (not safe))
                                           (cons __tmp47655 __tmp47648))
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
        (let* ((___stx4213542136_ _$stx1479_)
               (_g14841523_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4213542136_))))
          (let ((___kont4213842139_
                 (lambda (_L1645_ _L1647_ _L1648_)
                   (let ((__tmp47663 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp47656
                          (let ((__tmp47657
                                 (let ((__tmp47658
                                        (let ((__tmp47662
                                               (gx#datum->syntax '#f 'lambda%))
                                              (__tmp47659
                                               (let ((__tmp47660
                                                      (let ((__tmp47661
                                                             (lambda (_g16671670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g16681673_)
                       (let ()
                         (declare (not safe))
                         (cons _g16671670_ _g16681673_)))))
                (declare (not safe))
                (foldr1 __tmp47661 '() _L1645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L1647_ __tmp47660))))
                                          (declare (not safe))
                                          (cons __tmp47662 __tmp47659))))
                                   (declare (not safe))
                                   (cons __tmp47658 '()))))
                            (declare (not safe))
                            (cons _L1648_ __tmp47657))))
                     (declare (not safe))
                     (cons __tmp47663 __tmp47656))))
                (___kont4214242143_
                 (lambda (_L1560_ _L1562_)
                   (let ((__tmp47666 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp47664
                          (let ((__tmp47665
                                 (let ()
                                   (declare (not safe))
                                   (cons _L1560_ '()))))
                            (declare (not safe))
                            (cons _L1562_ __tmp47665))))
                     (declare (not safe))
                     (cons __tmp47666 __tmp47664)))))
            (let* ((___match4219042191_
                    (lambda (_e15091530_
                             _hd15101534_
                             _tl15111537_
                             _e15121540_
                             _hd15131544_
                             _tl15141547_
                             _e15151550_
                             _hd15161554_
                             _tl15171557_)
                      (let ((_L1560_ _hd15161554_) (_L1562_ _hd15131544_))
                        (if (gx#identifier? _L1562_)
                            (___kont4214242143_ _L1560_ _L1562_)
                            (let () (declare (not safe)) (_g14841523_))))))
                   (___match4218242183_
                    (lambda (_e15091530_
                             _hd15101534_
                             _tl15111537_
                             _e15121540_
                             _hd15131544_
                             _tl15141547_)
                      (if (gx#stx-pair? _tl15141547_)
                          (let ((_e15151550_ (gx#syntax-e _tl15141547_)))
                            (let ((_tl15171557_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e15151550_)))
                                  (_hd15161554_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e15151550_))))
                              (if (gx#stx-null? _tl15171557_)
                                  (___match4219042191_
                                   _e15091530_
                                   _hd15101534_
                                   _tl15111537_
                                   _e15121540_
                                   _hd15131544_
                                   _tl15141547_
                                   _e15151550_
                                   _hd15161554_
                                   _tl15171557_)
                                  (let ()
                                    (declare (not safe))
                                    (_g14841523_)))))
                          (let () (declare (not safe)) (_g14841523_)))))
                   (___match4217042171_
                    (lambda (_e14891585_
                             _hd14901589_
                             _tl14911592_
                             _e14921595_
                             _hd14931599_
                             _tl14941602_
                             _e14951605_
                             _hd14961609_
                             _tl14971612_
                             ___splice4214042141_
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
                                              (_L1647_ _tl14971612_)
                                              (_L1648_ _hd14961609_))
                                          (if (gx#identifier? _L1648_)
                                              (___kont4213842139_
                                               _L1645_
                                               _L1647_
                                               _L1648_)
                                              (___match4218242183_
                                               _e14891585_
                                               _hd14901589_
                                               _tl14911592_
                                               _e14921595_
                                               _hd14931599_
                                               _tl14941602_))))))))
                        (_loop15011621_ _target14981615_ '())))))
              (if (gx#stx-pair? ___stx4213542136_)
                  (let ((_e14891585_ (gx#syntax-e ___stx4213542136_)))
                    (let ((_tl14911592_
                           (let () (declare (not safe)) (##cdr _e14891585_)))
                          (_hd14901589_
                           (let () (declare (not safe)) (##car _e14891585_))))
                      (if (gx#stx-pair? _tl14911592_)
                          (let ((_e14921595_ (gx#syntax-e _tl14911592_)))
                            (let ((_tl14941602_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e14921595_)))
                                  (_hd14931599_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e14921595_))))
                              (if (gx#stx-pair? _hd14931599_)
                                  (let ((_e14951605_
                                         (gx#syntax-e _hd14931599_)))
                                    (let ((_tl14971612_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e14951605_)))
                                          (_hd14961609_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e14951605_))))
                                      (if (gx#stx-pair/null? _tl14941602_)
                                          (let ((___splice4214042141_
                                                 (gx#syntax-split-splice
                                                  _tl14941602_
                                                  '0)))
                                            (let ((_tl15001618_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4214042141_
                                                      '1)))
                                                  (_target14981615_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4214042141_
                                                      '0))))
                                              (if (gx#stx-null? _tl15001618_)
                                                  (___match4217042171_
                                                   _e14891585_
                                                   _hd14901589_
                                                   _tl14911592_
                                                   _e14921595_
                                                   _hd14931599_
                                                   _tl14941602_
                                                   _e14951605_
                                                   _hd14961609_
                                                   _tl14971612_
                                                   ___splice4214042141_
                                                   _target14981615_
                                                   _tl15001618_)
                                                  (if (gx#stx-pair?
                                                       _tl14941602_)
                                                      (let ((_e15151550_
                                                             (gx#syntax-e
                                                              _tl14941602_)))
                                                        (let ((_tl15171557_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e15151550_)))
                      (_hd15161554_
                       (let () (declare (not safe)) (##car _e15151550_))))
                  (if (gx#stx-null? _tl15171557_)
                      (___match4219042191_
                       _e14891585_
                       _hd14901589_
                       _tl14911592_
                       _e14921595_
                       _hd14931599_
                       _tl14941602_
                       _e15151550_
                       _hd15161554_
                       _tl15171557_)
                      (let () (declare (not safe)) (_g14841523_)))))
              (let () (declare (not safe)) (_g14841523_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl14941602_)
                                              (let ((_e15151550_
                                                     (gx#syntax-e
                                                      _tl14941602_)))
                                                (let ((_tl15171557_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e15151550_)))
                                                      (_hd15161554_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e15151550_))))
                                                  (if (gx#stx-null?
                                                       _tl15171557_)
                                                      (___match4219042191_
                                                       _e14891585_
                                                       _hd14901589_
                                                       _tl14911592_
                                                       _e14921595_
                                                       _hd14931599_
                                                       _tl14941602_
                                                       _e15151550_
                                                       _hd15161554_
                                                       _tl15171557_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g14841523_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g14841523_))))))
                                  (if (gx#stx-pair? _tl14941602_)
                                      (let ((_e15151550_
                                             (gx#syntax-e _tl14941602_)))
                                        (let ((_tl15171557_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e15151550_)))
                                              (_hd15161554_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e15151550_))))
                                          (if (gx#stx-null? _tl15171557_)
                                              (___match4219042191_
                                               _e14891585_
                                               _hd14901589_
                                               _tl14911592_
                                               _e14921595_
                                               _hd14931599_
                                               _tl14941602_
                                               _e15151550_
                                               _hd15161554_
                                               _tl15171557_)
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
                      (let ((_e16891710_ (gx#syntax-e _g16861707_)))
                        (let ((_hd16901714_
                               (let ()
                                 (declare (not safe))
                                 (##car _e16891710_)))
                              (_tl16911717_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e16891710_))))
                          (if (gx#stx-pair? _tl16911717_)
                              (let ((_e16921720_ (gx#syntax-e _tl16911717_)))
                                (let ((_hd16931724_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e16921720_)))
                                      (_tl16941727_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e16921720_))))
                                  (if (gx#stx-pair? _tl16941727_)
                                      (let ((_e16951730_
                                             (gx#syntax-e _tl16941727_)))
                                        (let ((_hd16961734_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e16951730_)))
                                              (_tl16971737_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e16951730_))))
                                          (if (gx#stx-null? _tl16971737_)
                                              ((lambda (_L1740_ _L1742_)
                                                 (let ((__tmp47669
                                                        (gx#datum->syntax
                                                         '#f
                                                         'define-alias))
                                                       (__tmp47667
                                                        (let ((__tmp47668
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L1740_ '()))))
                  (declare (not safe))
                  (cons _L1742_ __tmp47668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47669
                                                         __tmp47667)))
                                               _hd16961734_
                                               _hd16931724_)
                                              (_g16851703_ _g16861707_))))
                                      (_g16851703_ _g16861707_))))
                              (_g16851703_ _g16861707_))))
                      (_g16851703_ _g16861707_)))))
          (_g16841758_ _$stx1681_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#define|
      (lambda (_$stx1762_)
        (let* ((___stx4219342194_ _$stx1762_)
               (_g17671806_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4219342194_))))
          (let ((___kont4219642197_
                 (lambda (_L1928_ _L1930_ _L1931_)
                   (let ((__tmp47678 (gx#datum->syntax '#f 'define-values))
                         (__tmp47670
                          (let ((__tmp47677
                                 (let ()
                                   (declare (not safe))
                                   (cons _L1931_ '())))
                                (__tmp47671
                                 (let ((__tmp47672
                                        (let ((__tmp47676
                                               (gx#datum->syntax '#f 'lambda%))
                                              (__tmp47673
                                               (let ((__tmp47674
                                                      (let ((__tmp47675
                                                             (lambda (_g19501953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g19511956_)
                       (let ()
                         (declare (not safe))
                         (cons _g19501953_ _g19511956_)))))
                (declare (not safe))
                (foldr1 __tmp47675 '() _L1928_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L1930_ __tmp47674))))
                                          (declare (not safe))
                                          (cons __tmp47676 __tmp47673))))
                                   (declare (not safe))
                                   (cons __tmp47672 '()))))
                            (declare (not safe))
                            (cons __tmp47677 __tmp47671))))
                     (declare (not safe))
                     (cons __tmp47678 __tmp47670))))
                (___kont4220042201_
                 (lambda (_L1843_ _L1845_)
                   (let ((__tmp47682 (gx#datum->syntax '#f 'define-values))
                         (__tmp47679
                          (let ((__tmp47681
                                 (let ()
                                   (declare (not safe))
                                   (cons _L1845_ '())))
                                (__tmp47680
                                 (let ()
                                   (declare (not safe))
                                   (cons _L1843_ '()))))
                            (declare (not safe))
                            (cons __tmp47681 __tmp47680))))
                     (declare (not safe))
                     (cons __tmp47682 __tmp47679)))))
            (let* ((___match4224842249_
                    (lambda (_e17921813_
                             _hd17931817_
                             _tl17941820_
                             _e17951823_
                             _hd17961827_
                             _tl17971830_
                             _e17981833_
                             _hd17991837_
                             _tl18001840_)
                      (let ((_L1843_ _hd17991837_) (_L1845_ _hd17961827_))
                        (if (gx#identifier? _L1845_)
                            (___kont4220042201_ _L1843_ _L1845_)
                            (let () (declare (not safe)) (_g17671806_))))))
                   (___match4224042241_
                    (lambda (_e17921813_
                             _hd17931817_
                             _tl17941820_
                             _e17951823_
                             _hd17961827_
                             _tl17971830_)
                      (if (gx#stx-pair? _tl17971830_)
                          (let ((_e17981833_ (gx#syntax-e _tl17971830_)))
                            (let ((_tl18001840_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e17981833_)))
                                  (_hd17991837_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e17981833_))))
                              (if (gx#stx-null? _tl18001840_)
                                  (___match4224842249_
                                   _e17921813_
                                   _hd17931817_
                                   _tl17941820_
                                   _e17951823_
                                   _hd17961827_
                                   _tl17971830_
                                   _e17981833_
                                   _hd17991837_
                                   _tl18001840_)
                                  (let ()
                                    (declare (not safe))
                                    (_g17671806_)))))
                          (let () (declare (not safe)) (_g17671806_)))))
                   (___match4222842229_
                    (lambda (_e17721868_
                             _hd17731872_
                             _tl17741875_
                             _e17751878_
                             _hd17761882_
                             _tl17771885_
                             _e17781888_
                             _hd17791892_
                             _tl17801895_
                             ___splice4219842199_
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
                                              (_L1930_ _tl17801895_)
                                              (_L1931_ _hd17791892_))
                                          (if (gx#identifier? _L1931_)
                                              (___kont4219642197_
                                               _L1928_
                                               _L1930_
                                               _L1931_)
                                              (___match4224042241_
                                               _e17721868_
                                               _hd17731872_
                                               _tl17741875_
                                               _e17751878_
                                               _hd17761882_
                                               _tl17771885_))))))))
                        (_loop17841904_ _target17811898_ '())))))
              (if (gx#stx-pair? ___stx4219342194_)
                  (let ((_e17721868_ (gx#syntax-e ___stx4219342194_)))
                    (let ((_tl17741875_
                           (let () (declare (not safe)) (##cdr _e17721868_)))
                          (_hd17731872_
                           (let () (declare (not safe)) (##car _e17721868_))))
                      (if (gx#stx-pair? _tl17741875_)
                          (let ((_e17751878_ (gx#syntax-e _tl17741875_)))
                            (let ((_tl17771885_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e17751878_)))
                                  (_hd17761882_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e17751878_))))
                              (if (gx#stx-pair? _hd17761882_)
                                  (let ((_e17781888_
                                         (gx#syntax-e _hd17761882_)))
                                    (let ((_tl17801895_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e17781888_)))
                                          (_hd17791892_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e17781888_))))
                                      (if (gx#stx-pair/null? _tl17771885_)
                                          (let ((___splice4219842199_
                                                 (gx#syntax-split-splice
                                                  _tl17771885_
                                                  '0)))
                                            (let ((_tl17831901_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4219842199_
                                                      '1)))
                                                  (_target17811898_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4219842199_
                                                      '0))))
                                              (if (gx#stx-null? _tl17831901_)
                                                  (___match4222842229_
                                                   _e17721868_
                                                   _hd17731872_
                                                   _tl17741875_
                                                   _e17751878_
                                                   _hd17761882_
                                                   _tl17771885_
                                                   _e17781888_
                                                   _hd17791892_
                                                   _tl17801895_
                                                   ___splice4219842199_
                                                   _target17811898_
                                                   _tl17831901_)
                                                  (if (gx#stx-pair?
                                                       _tl17771885_)
                                                      (let ((_e17981833_
                                                             (gx#syntax-e
                                                              _tl17771885_)))
                                                        (let ((_tl18001840_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e17981833_)))
                      (_hd17991837_
                       (let () (declare (not safe)) (##car _e17981833_))))
                  (if (gx#stx-null? _tl18001840_)
                      (___match4224842249_
                       _e17721868_
                       _hd17731872_
                       _tl17741875_
                       _e17751878_
                       _hd17761882_
                       _tl17771885_
                       _e17981833_
                       _hd17991837_
                       _tl18001840_)
                      (let () (declare (not safe)) (_g17671806_)))))
              (let () (declare (not safe)) (_g17671806_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl17771885_)
                                              (let ((_e17981833_
                                                     (gx#syntax-e
                                                      _tl17771885_)))
                                                (let ((_tl18001840_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e17981833_)))
                                                      (_hd17991837_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e17981833_))))
                                                  (if (gx#stx-null?
                                                       _tl18001840_)
                                                      (___match4224842249_
                                                       _e17721868_
                                                       _hd17731872_
                                                       _tl17741875_
                                                       _e17751878_
                                                       _hd17761882_
                                                       _tl17771885_
                                                       _e17981833_
                                                       _hd17991837_
                                                       _tl18001840_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g17671806_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g17671806_))))))
                                  (if (gx#stx-pair? _tl17771885_)
                                      (let ((_e17981833_
                                             (gx#syntax-e _tl17771885_)))
                                        (let ((_tl18001840_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e17981833_)))
                                              (_hd17991837_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e17981833_))))
                                          (if (gx#stx-null? _tl18001840_)
                                              (___match4224842249_
                                               _e17721868_
                                               _hd17731872_
                                               _tl17741875_
                                               _e17751878_
                                               _hd17761882_
                                               _tl17771885_
                                               _e17981833_
                                               _hd17991837_
                                               _tl18001840_)
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
        (let* ((___stx4225142252_ _$stx1964_)
               (_g19692014_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4225142252_))))
          (let ((___kont4225442255_
                 (lambda (_L2172_)
                   (let ((__tmp47686 (gx#datum->syntax '#f 'let-values))
                         (__tmp47683
                          (let ((__tmp47684
                                 (let ((__tmp47685
                                        (lambda (_g21882191_ _g21892194_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g21882191_ _g21892194_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp47685 '() _L2172_))))
                            (declare (not safe))
                            (cons '() __tmp47684))))
                     (declare (not safe))
                     (cons __tmp47686 __tmp47683))))
                (___kont4225842259_
                 (lambda (_L2081_ _L2083_ _L2084_ _L2085_)
                   (let ((__tmp47694 (gx#datum->syntax '#f 'let-values))
                         (__tmp47687
                          (let ((__tmp47693
                                 (let ()
                                   (declare (not safe))
                                   (cons _L2084_ '())))
                                (__tmp47688
                                 (let ((__tmp47689
                                        (let ((__tmp47690
                                               (let ((__tmp47691
                                                      (let ((__tmp47692
                                                             (lambda (_g21062109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g21072112_)
                       (let ()
                         (declare (not safe))
                         (cons _g21062109_ _g21072112_)))))
                (declare (not safe))
                (foldr1 __tmp47692 '() _L2081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L2083_ __tmp47691))))
                                          (declare (not safe))
                                          (cons _L2085_ __tmp47690))))
                                   (declare (not safe))
                                   (cons __tmp47689 '()))))
                            (declare (not safe))
                            (cons __tmp47693 __tmp47688))))
                     (declare (not safe))
                     (cons __tmp47694 __tmp47687)))))
            (let* ((___match4231042311_
                    (lambda (_e19912021_
                             _hd19922025_
                             _tl19932028_
                             _e19942031_
                             _hd19952035_
                             _tl19962038_
                             _e19972041_
                             _hd19982045_
                             _tl19992048_
                             ___splice4226042261_
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
                                        (___kont4225842259_
                                         _body20082077_
                                         _tl19992048_
                                         _hd19982045_
                                         _hd19922025_))))))
                        (_loop20032057_ _target20002051_ '()))))
                   (___match4228442285_
                    (lambda (_e19722122_
                             _hd19732126_
                             _tl19742129_
                             _e19752132_
                             _hd19762136_
                             _tl19772139_
                             ___splice4225642257_
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
                                        (___kont4225442255_
                                         _body19862168_))))))
                        (_loop19812148_ _target19782142_ '())))))
              (if (gx#stx-pair? ___stx4225142252_)
                  (let ((_e19722122_ (gx#syntax-e ___stx4225142252_)))
                    (let ((_tl19742129_
                           (let () (declare (not safe)) (##cdr _e19722122_)))
                          (_hd19732126_
                           (let () (declare (not safe)) (##car _e19722122_))))
                      (if (gx#stx-pair? _tl19742129_)
                          (let ((_e19752132_ (gx#syntax-e _tl19742129_)))
                            (let ((_tl19772139_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e19752132_)))
                                  (_hd19762136_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e19752132_))))
                              (if (gx#stx-null? _hd19762136_)
                                  (if (gx#stx-pair/null? _tl19772139_)
                                      (let ((___splice4225642257_
                                             (gx#syntax-split-splice
                                              _tl19772139_
                                              '0)))
                                        (let ((_tl19802145_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4225642257_
                                                  '1)))
                                              (_target19782142_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4225642257_
                                                  '0))))
                                          (if (gx#stx-null? _tl19802145_)
                                              (___match4228442285_
                                               _e19722122_
                                               _hd19732126_
                                               _tl19742129_
                                               _e19752132_
                                               _hd19762136_
                                               _tl19772139_
                                               ___splice4225642257_
                                               _target19782142_
                                               _tl19802145_)
                                              (let ()
                                                (declare (not safe))
                                                (_g19692014_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g19692014_)))
                                  (if (gx#stx-pair? _hd19762136_)
                                      (let ((_e19972041_
                                             (gx#syntax-e _hd19762136_)))
                                        (let ((_tl19992048_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e19972041_)))
                                              (_hd19982045_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e19972041_))))
                                          (if (gx#stx-pair/null? _tl19772139_)
                                              (let ((___splice4226042261_
                                                     (gx#syntax-split-splice
                                                      _tl19772139_
                                                      '0)))
                                                (let ((_tl20022054_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4226042261_
                                                          '1)))
                                                      (_target20002051_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4226042261_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl20022054_)
                                                      (___match4231042311_
                                                       _e19722122_
                                                       _hd19732126_
                                                       _tl19742129_
                                                       _e19752132_
                                                       _hd19762136_
                                                       _tl19772139_
                                                       _e19972041_
                                                       _hd19982045_
                                                       _tl19992048_
                                                       ___splice4226042261_
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
        (let* ((___stx4231342314_ _$stx2203_)
               (_g22082272_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4231342314_))))
          (let ((___kont4231642317_
                 (lambda (_L2478_ _L2480_ _L2481_ _L2482_ _L2483_)
                   (let ((__tmp47697
                          (let ((__tmp47711
                                 (gx#datum->syntax '#f 'letrec-values))
                                (__tmp47698
                                 (let ((__tmp47700
                                        (let ((__tmp47701
                                               (let ((__tmp47710
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L2483_ '())))
                                                     (__tmp47702
                                                      (let ((__tmp47703
                                                             (let ((__tmp47709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda%))
                           (__tmp47704
                            (let ((__tmp47707
                                   (let ((__tmp47708
                                          (lambda (_g25082515_ _g25092518_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g25082515_
                                                    _g25092518_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp47708 _L2480_ _L2482_)))
                                  (__tmp47705
                                   (let ((__tmp47706
                                          (lambda (_g25102521_ _g25112524_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g25102521_
                                                    _g25112524_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp47706 '() _L2478_))))
                              (declare (not safe))
                              (cons __tmp47707 __tmp47705))))
                       (declare (not safe))
                       (cons __tmp47709 __tmp47704))))
                (declare (not safe))
                (cons __tmp47703 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47710
                                                       __tmp47702))))
                                          (declare (not safe))
                                          (cons __tmp47701 '())))
                                       (__tmp47699
                                        (let ()
                                          (declare (not safe))
                                          (cons _L2483_ '()))))
                                   (declare (not safe))
                                   (cons __tmp47700 __tmp47699))))
                            (declare (not safe))
                            (cons __tmp47711 __tmp47698)))
                         (__tmp47695
                          (let ((__tmp47696
                                 (lambda (_g25122527_ _g25132530_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g25122527_ _g25132530_)))))
                            (declare (not safe))
                            (foldr1 __tmp47696 '() _L2481_))))
                     (declare (not safe))
                     (cons __tmp47697 __tmp47695))))
                (___kont4232242323_
                 (lambda (_L2329_ _L2331_)
                   (let ((__tmp47717 (gx#datum->syntax '#f '~let))
                         (__tmp47712
                          (let ((__tmp47716 (gx#datum->syntax '#f 'let-values))
                                (__tmp47713
                                 (let ((__tmp47714
                                        (let ((__tmp47715
                                               (lambda (_g23482351_
                                                        _g23492354_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g23482351_
                                                         _g23492354_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp47715 '() _L2329_))))
                                   (declare (not safe))
                                   (cons _L2331_ __tmp47714))))
                            (declare (not safe))
                            (cons __tmp47716 __tmp47713))))
                     (declare (not safe))
                     (cons __tmp47717 __tmp47712)))))
            (let* ((___match4237042371_
                    (lambda (_e22522279_
                             _hd22532283_
                             _tl22542286_
                             _e22552289_
                             _hd22562293_
                             _tl22572296_
                             ___splice4232442325_
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
                                        (___kont4232242323_
                                         _body22662325_
                                         _hd22562293_))))))
                        (_loop22612305_ _target22582299_ '()))))
                   (___match4236242363_
                    (lambda (_e22522279_
                             _hd22532283_
                             _tl22542286_
                             _e22552289_
                             _hd22562293_
                             _tl22572296_)
                      (if (gx#stx-pair/null? _tl22572296_)
                          (let ((___splice4232442325_
                                 (gx#syntax-split-splice _tl22572296_ '0)))
                            (let ((_tl22602302_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4232442325_ '1)))
                                  (_target22582299_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4232442325_ '0))))
                              (if (gx#stx-null? _tl22602302_)
                                  (___match4237042371_
                                   _e22522279_
                                   _hd22532283_
                                   _tl22542286_
                                   _e22552289_
                                   _hd22562293_
                                   _tl22572296_
                                   ___splice4232442325_
                                   _target22582299_
                                   _tl22602302_)
                                  (let ()
                                    (declare (not safe))
                                    (_g22082272_)))))
                          (let () (declare (not safe)) (_g22082272_)))))
                   (___match4235042351_
                    (lambda (_e22152364_
                             _hd22162368_
                             _tl22172371_
                             _e22182374_
                             _hd22192378_
                             _tl22202381_
                             _e22212384_
                             _hd22222388_
                             _tl22232391_
                             ___splice4231842319_
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
                                              (let ((_e22352422_
                                                     (gx#syntax-e
                                                      _lp-hd22292416_)))
                                                (let ((_tl22372429_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e22352422_)))
                                                      (_hd22362426_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e22352422_))))
                                                  (if (gx#stx-pair?
                                                       _tl22372429_)
                                                      (let ((_e22382432_
                                                             (gx#syntax-e
                                                              _tl22372429_)))
                                                        (let ((_tl22402439_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e22382432_)))
                      (_hd22392436_
                       (let () (declare (not safe)) (##car _e22382432_))))
                  (if (gx#stx-null? _tl22402439_)
                      (_loop22272400_
                       _lp-tl22302419_
                       (let ()
                         (declare (not safe))
                         (cons _hd22392436_ _arg22312407_))
                       (let ()
                         (declare (not safe))
                         (cons _hd22362426_ _var22322409_)))
                      (___match4236242363_
                       _e22152364_
                       _hd22162368_
                       _tl22172371_
                       _e22182374_
                       _hd22192378_
                       _tl22202381_))))
              (___match4236242363_
               _e22152364_
               _hd22162368_
               _tl22172371_
               _e22182374_
               _hd22192378_
               _tl22202381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match4236242363_
                                               _e22152364_
                                               _hd22162368_
                                               _tl22172371_
                                               _e22182374_
                                               _hd22192378_
                                               _tl22202381_))))
                                      (let ((_var22342445_
                                             (reverse _var22322409_))
                                            (_arg22332442_
                                             (reverse _arg22312407_)))
                                        (if (gx#stx-pair/null? _tl22232391_)
                                            (let ((___splice4232042321_
                                                   (gx#syntax-split-splice
                                                    _tl22232391_
                                                    '0)))
                                              (let ((_tl22432451_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4232042321_
                                                        '1)))
                                                    (_target22412448_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4232042321_
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
                                    (___kont4231642317_
                                     _L2478_
                                     _L2480_
                                     _L2481_
                                     _L2482_
                                     _L2483_)
                                    (___match4236242363_
                                     _e22152364_
                                     _hd22162368_
                                     _tl22172371_
                                     _e22182374_
                                     _hd22192378_
                                     _tl22202381_))))))))
              (_loop22442454_ _target22412448_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4236242363_
                                                     _e22152364_
                                                     _hd22162368_
                                                     _tl22172371_
                                                     _e22182374_
                                                     _hd22192378_
                                                     _tl22202381_))))
                                            (___match4236242363_
                                             _e22152364_
                                             _hd22162368_
                                             _tl22172371_
                                             _e22182374_
                                             _hd22192378_
                                             _tl22202381_)))))))
                        (_loop22272400_ _target22242394_ '() '())))))
              (if (gx#stx-pair? ___stx4231342314_)
                  (let ((_e22152364_ (gx#syntax-e ___stx4231342314_)))
                    (let ((_tl22172371_
                           (let () (declare (not safe)) (##cdr _e22152364_)))
                          (_hd22162368_
                           (let () (declare (not safe)) (##car _e22152364_))))
                      (if (gx#stx-pair? _tl22172371_)
                          (let ((_e22182374_ (gx#syntax-e _tl22172371_)))
                            (let ((_tl22202381_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e22182374_)))
                                  (_hd22192378_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e22182374_))))
                              (if (gx#stx-pair? _tl22202381_)
                                  (let ((_e22212384_
                                         (gx#syntax-e _tl22202381_)))
                                    (let ((_tl22232391_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e22212384_)))
                                          (_hd22222388_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e22212384_))))
                                      (if (gx#stx-pair/null? _hd22222388_)
                                          (let ((___splice4231842319_
                                                 (gx#syntax-split-splice
                                                  _hd22222388_
                                                  '0)))
                                            (let ((_tl22262397_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4231842319_
                                                      '1)))
                                                  (_target22242394_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4231842319_
                                                      '0))))
                                              (___match4235042351_
                                               _e22152364_
                                               _hd22162368_
                                               _tl22172371_
                                               _e22182374_
                                               _hd22192378_
                                               _tl22202381_
                                               _e22212384_
                                               _hd22222388_
                                               _tl22232391_
                                               ___splice4231842319_
                                               _target22242394_
                                               _tl22262397_)))
                                          (if (gx#stx-pair/null? _tl22202381_)
                                              (let ((___splice4232442325_
                                                     (gx#syntax-split-splice
                                                      _tl22202381_
                                                      '0)))
                                                (let ((_tl22602302_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4232442325_
                                                          '1)))
                                                      (_target22582299_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4232442325_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl22602302_)
                                                      (___match4237042371_
                                                       _e22152364_
                                                       _hd22162368_
                                                       _tl22172371_
                                                       _e22182374_
                                                       _hd22192378_
                                                       _tl22202381_
                                                       ___splice4232442325_
                                                       _target22582299_
                                                       _tl22602302_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g22082272_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g22082272_))))))
                                  (if (gx#stx-pair/null? _tl22202381_)
                                      (let ((___splice4232442325_
                                             (gx#syntax-split-splice
                                              _tl22202381_
                                              '0)))
                                        (let ((_tl22602302_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4232442325_
                                                  '1)))
                                              (_target22582299_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4232442325_
                                                  '0))))
                                          (if (gx#stx-null? _tl22602302_)
                                              (___match4237042371_
                                               _e22152364_
                                               _hd22162368_
                                               _tl22172371_
                                               _e22182374_
                                               _hd22192378_
                                               _tl22202381_
                                               ___splice4232442325_
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
                      (let ((_e25482575_ (gx#syntax-e _g25452572_)))
                        (let ((_hd25492579_
                               (let ()
                                 (declare (not safe))
                                 (##car _e25482575_)))
                              (_tl25502582_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e25482575_))))
                          (if (gx#stx-pair? _tl25502582_)
                              (let ((_e25512585_ (gx#syntax-e _tl25502582_)))
                                (let ((_hd25522589_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e25512585_)))
                                      (_tl25532592_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e25512585_))))
                                  (if (gx#stx-pair/null? _tl25532592_)
                                      (let ((_g47718_
                                             (gx#syntax-split-splice
                                              _tl25532592_
                                              '0)))
                                        (begin
                                          (let ((_g47719_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47718_)
                                                       (##vector-length
                                                        _g47718_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47719_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47719_)))
                                          (let ((_target25542595_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47718_ 0)))
                                                (_tl25562598_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47718_ 1))))
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
                             (let ((__tmp47725 (gx#datum->syntax '#f '~let))
                                   (__tmp47720
                                    (let ((__tmp47724
                                           (gx#datum->syntax '#f 'let*-values))
                                          (__tmp47721
                                           (let ((__tmp47722
                                                  (let ((__tmp47723
                                                         (lambda (_g26442647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g26452650_)
                   (let ()
                     (declare (not safe))
                     (cons _g26442647_ _g26452650_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp47723
                                                            '()
                                                            _L2625_))))
                                             (declare (not safe))
                                             (cons _L2627_ __tmp47722))))
                                      (declare (not safe))
                                      (cons __tmp47724 __tmp47721))))
                               (declare (not safe))
                               (cons __tmp47725 __tmp47720)))
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
                      (let ((_e26662693_ (gx#syntax-e _g26632690_)))
                        (let ((_hd26672697_
                               (let ()
                                 (declare (not safe))
                                 (##car _e26662693_)))
                              (_tl26682700_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e26662693_))))
                          (if (gx#stx-pair? _tl26682700_)
                              (let ((_e26692703_ (gx#syntax-e _tl26682700_)))
                                (let ((_hd26702707_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e26692703_)))
                                      (_tl26712710_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e26692703_))))
                                  (if (gx#stx-pair/null? _tl26712710_)
                                      (let ((_g47726_
                                             (gx#syntax-split-splice
                                              _tl26712710_
                                              '0)))
                                        (begin
                                          (let ((_g47727_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47726_)
                                                       (##vector-length
                                                        _g47726_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47727_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47727_)))
                                          (let ((_target26722713_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47726_ 0)))
                                                (_tl26742716_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47726_ 1))))
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
                             (let ((__tmp47733 (gx#datum->syntax '#f '~let))
                                   (__tmp47728
                                    (let ((__tmp47732
                                           (gx#datum->syntax
                                            '#f
                                            'letrec-values))
                                          (__tmp47729
                                           (let ((__tmp47730
                                                  (let ((__tmp47731
                                                         (lambda (_g27622765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g27632768_)
                   (let ()
                     (declare (not safe))
                     (cons _g27622765_ _g27632768_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp47731
                                                            '()
                                                            _L2743_))))
                                             (declare (not safe))
                                             (cons _L2745_ __tmp47730))))
                                      (declare (not safe))
                                      (cons __tmp47732 __tmp47729))))
                               (declare (not safe))
                               (cons __tmp47733 __tmp47728)))
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
                      (let ((_e27842811_ (gx#syntax-e _g27812808_)))
                        (let ((_hd27852815_
                               (let ()
                                 (declare (not safe))
                                 (##car _e27842811_)))
                              (_tl27862818_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e27842811_))))
                          (if (gx#stx-pair? _tl27862818_)
                              (let ((_e27872821_ (gx#syntax-e _tl27862818_)))
                                (let ((_hd27882825_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e27872821_)))
                                      (_tl27892828_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e27872821_))))
                                  (if (gx#stx-pair/null? _tl27892828_)
                                      (let ((_g47734_
                                             (gx#syntax-split-splice
                                              _tl27892828_
                                              '0)))
                                        (begin
                                          (let ((_g47735_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47734_)
                                                       (##vector-length
                                                        _g47734_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47735_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47735_)))
                                          (let ((_target27902831_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47734_ 0)))
                                                (_tl27922834_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47734_ 1))))
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
                             (let ((__tmp47741 (gx#datum->syntax '#f '~let))
                                   (__tmp47736
                                    (let ((__tmp47740
                                           (gx#datum->syntax
                                            '#f
                                            'letrec*-values))
                                          (__tmp47737
                                           (let ((__tmp47738
                                                  (let ((__tmp47739
                                                         (lambda (_g28802883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g28812886_)
                   (let ()
                     (declare (not safe))
                     (cons _g28802883_ _g28812886_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp47739
                                                            '()
                                                            _L2861_))))
                                             (declare (not safe))
                                             (cons _L2863_ __tmp47738))))
                                      (declare (not safe))
                                      (cons __tmp47740 __tmp47737))))
                               (declare (not safe))
                               (cons __tmp47741 __tmp47736)))
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
                    (let* ((___stx4237342374_ _x3377_)
                           (_g33813392_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4237342374_))))
                      (let ((___kont4237642377_
                             (lambda (_L3420_)
                               (gx#stx-andmap gx#identifier? _L3420_)))
                            (___kont4237842379_
                             (lambda () (gx#identifier? _x3377_))))
                        (if (gx#stx-pair? ___stx4237342374_)
                            (let ((_e33843410_
                                   (gx#syntax-e ___stx4237342374_)))
                              (let ((_tl33863417_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e33843410_)))
                                    (_hd33853414_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e33843410_))))
                                (if (gx#identifier? _hd33853414_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:1>[1]#_g47742_|
                                         _hd33853414_)
                                        (___kont4237642377_ _tl33863417_)
                                        (___kont4237842379_))
                                    (___kont4237842379_))))
                            (___kont4237842379_))))))
                 (_let-head2899_
                  (lambda (_x3317_)
                    (let* ((___stx4239342394_ _x3317_)
                           (_g33213332_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4239342394_))))
                      (let ((___kont4239642397_ (lambda (_L3360_) _L3360_))
                            (___kont4239842399_ (lambda () (list _x3317_))))
                        (if (gx#stx-pair? ___stx4239342394_)
                            (let ((_e33243350_
                                   (gx#syntax-e ___stx4239342394_)))
                              (let ((_tl33263357_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e33243350_)))
                                    (_hd33253354_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e33243350_))))
                                (if (gx#identifier? _hd33253354_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:1>[1]#_g47743_|
                                         _hd33253354_)
                                        (___kont4239642397_ _tl33263357_)
                                        (___kont4239842399_))
                                    (___kont4239842399_))))
                            (___kont4239842399_)))))))
          (let* ((___stx4241342414_ _stx2894_)
                 (_g29022968_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx4241342414_))))
            (let ((___kont4241642417_
                   (lambda (_L3286_ _L3288_ _L3289_ _L3290_ _L3291_)
                     (let ((__tmp47744
                            (let ((__tmp47745
                                   (let ((__tmp47746
                                          (let ((__tmp47747
                                                 (let ((__tmp47748
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L3288_ '()))))
                                                   (declare (not safe))
                                                   (cons _L3289_ __tmp47748))))
                                            (declare (not safe))
                                            (cons __tmp47747 '()))))
                                     (declare (not safe))
                                     (cons __tmp47746 _L3286_))))
                              (declare (not safe))
                              (cons _L3290_ __tmp47745))))
                       (declare (not safe))
                       (cons _L3291_ __tmp47744))))
                  (___kont4241842419_
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
                                   (let ((_g47749_
                                          (gx#syntax-split-splice
                                           _g31293149_
                                           '0)))
                                     (begin
                                       (let ((_g47750_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g47749_)
                                                    (##vector-length _g47749_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g47750_ 2)))
                                             (error "Context expects 2 values"
                                                    _g47750_)))
                                       (let ((_target31313152_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g47749_ 0)))
                                             (_tl31333155_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g47749_ 1))))
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
                            (let ((__tmp47751
                                   (let ((__tmp47754
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L3091_
                                             _L3182_)
                                            (let ((__tmp47755
                                                   (lambda (_g31973203_
                                                            _g31983206_
                                                            _g31993208_)
                                                     (let ((__tmp47756
                                                            (let ((__tmp47757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _g31973203_ '()))))
                      (declare (not safe))
                      (cons _g31983206_ __tmp47757))))
               (declare (not safe))
               (cons __tmp47756 _g31993208_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldr2 __tmp47755
                                                      '()
                                                      _L3091_
                                                      _L3182_))))
                                         (__tmp47752
                                          (let ((__tmp47753
                                                 (lambda (_g32003211_
                                                          _g32013214_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g32003211_
                                                           _g32013214_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp47753 '() _L3089_))))
                                     (declare (not safe))
                                     (cons __tmp47754 __tmp47752))))
                              (declare (not safe))
                              (cons _L3093_ __tmp47751))))
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
                         (let ((__tmp47758
                                (lambda (_g32203223_ _g32213226_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g32203223_ _g32213226_)))))
                           (declare (not safe))
                           (foldr1 __tmp47758 '() _L3092_))))))))
              (let* ((___match4248242483_
                      (lambda (_e29282975_
                               _hd29292979_
                               _tl29302982_
                               _e29312985_
                               _hd29322989_
                               _tl29332992_
                               _e29342995_
                               _hd29352999_
                               _tl29363002_
                               ___splice4242042421_
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
                                                (let ((_e29483033_
                                                       (gx#syntax-e
                                                        _lp-hd29423027_)))
                                                  (let ((_tl29503040_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e29483033_)))
                                                        (_hd29493037_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e29483033_))))
                                                    (if (gx#stx-pair?
                                                         _tl29503040_)
                                                        (let ((_e29513043_
                                                               (gx#syntax-e
                                                                _tl29503040_)))
                                                          (let ((_tl29533050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e29513043_)))
                        (_hd29523047_
                         (let () (declare (not safe)) (##car _e29513043_))))
                    (if (gx#stx-null? _tl29533050_)
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
                                          (if (gx#stx-pair/null? _tl29363002_)
                                              (let ((___splice4242242423_
                                                     (gx#syntax-split-splice
                                                      _tl29363002_
                                                      '0)))
                                                (let ((_tl29563062_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4242242423_
                                                          '1)))
                                                      (_target29543059_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4242242423_
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
                                       (let ((__tmp47759
                                              (lambda (_g31193122_ _g31203125_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g31193122_
                                                        _g31203125_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp47759 '() _L3092_)))
                                      (___kont4241842419_
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
                     (___match4245642457_
                      (lambda (_e29093236_
                               _hd29103240_
                               _tl29113243_
                               _e29123246_
                               _hd29133250_
                               _tl29143253_
                               _e29153256_
                               _hd29163260_
                               _tl29173263_
                               _e29183266_
                               _hd29193270_
                               _tl29203273_
                               _e29213276_
                               _hd29223280_
                               _tl29233283_)
                        (let ((_L3286_ _tl29173263_)
                              (_L3288_ _hd29223280_)
                              (_L3289_ _hd29193270_)
                              (_L3290_ _hd29133250_)
                              (_L3291_ _hd29103240_))
                          (if (_let-head?2897_ _L3289_)
                              (___kont4241642417_
                               _L3286_
                               _L3288_
                               _L3289_
                               _L3290_
                               _L3291_)
                              (if (gx#stx-pair/null? _hd29163260_)
                                  (let ((___splice4242042421_
                                         (gx#syntax-split-splice
                                          _hd29163260_
                                          '0)))
                                    (let ((_tl29393008_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4242042421_
                                              '1)))
                                          (_target29373005_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4242042421_
                                              '0))))
                                      (if (gx#stx-null? _tl29393008_)
                                          (___match4248242483_
                                           _e29093236_
                                           _hd29103240_
                                           _tl29113243_
                                           _e29123246_
                                           _hd29133250_
                                           _tl29143253_
                                           _e29153256_
                                           _hd29163260_
                                           _tl29173263_
                                           ___splice4242042421_
                                           _target29373005_
                                           _tl29393008_)
                                          (let ()
                                            (declare (not safe))
                                            (_g29022968_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g29022968_))))))))
                (if (gx#stx-pair? ___stx4241342414_)
                    (let ((_e29093236_ (gx#syntax-e ___stx4241342414_)))
                      (let ((_tl29113243_
                             (let () (declare (not safe)) (##cdr _e29093236_)))
                            (_hd29103240_
                             (let ()
                               (declare (not safe))
                               (##car _e29093236_))))
                        (if (gx#stx-pair? _tl29113243_)
                            (let ((_e29123246_ (gx#syntax-e _tl29113243_)))
                              (let ((_tl29143253_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e29123246_)))
                                    (_hd29133250_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e29123246_))))
                                (if (gx#stx-pair? _tl29143253_)
                                    (let ((_e29153256_
                                           (gx#syntax-e _tl29143253_)))
                                      (let ((_tl29173263_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e29153256_)))
                                            (_hd29163260_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e29153256_))))
                                        (if (gx#stx-pair? _hd29163260_)
                                            (let ((_e29183266_
                                                   (gx#syntax-e _hd29163260_)))
                                              (let ((_tl29203273_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e29183266_)))
                                                    (_hd29193270_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e29183266_))))
                                                (if (gx#stx-pair? _tl29203273_)
                                                    (let ((_e29213276_
                                                           (gx#syntax-e
                                                            _tl29203273_)))
                                                      (let ((_tl29233283_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e29213276_)))
                    (_hd29223280_
                     (let () (declare (not safe)) (##car _e29213276_))))
                (if (gx#stx-null? _tl29233283_)
                    (___match4245642457_
                     _e29093236_
                     _hd29103240_
                     _tl29113243_
                     _e29123246_
                     _hd29133250_
                     _tl29143253_
                     _e29153256_
                     _hd29163260_
                     _tl29173263_
                     _e29183266_
                     _hd29193270_
                     _tl29203273_
                     _e29213276_
                     _hd29223280_
                     _tl29233283_)
                    (if (gx#stx-pair/null? _hd29163260_)
                        (let ((___splice4242042421_
                               (gx#syntax-split-splice _hd29163260_ '0)))
                          (let ((_tl29393008_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4242042421_ '1)))
                                (_target29373005_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4242042421_ '0))))
                            (if (gx#stx-null? _tl29393008_)
                                (___match4248242483_
                                 _e29093236_
                                 _hd29103240_
                                 _tl29113243_
                                 _e29123246_
                                 _hd29133250_
                                 _tl29143253_
                                 _e29153256_
                                 _hd29163260_
                                 _tl29173263_
                                 ___splice4242042421_
                                 _target29373005_
                                 _tl29393008_)
                                (let () (declare (not safe)) (_g29022968_)))))
                        (let () (declare (not safe)) (_g29022968_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd29163260_)
                                                        (let ((___splice4242042421_
                                                               (gx#syntax-split-splice
                                                                _hd29163260_
                                                                '0)))
                                                          (let ((_tl29393008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4242042421_ '1)))
                        (_target29373005_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4242042421_ '0))))
                    (if (gx#stx-null? _tl29393008_)
                        (___match4248242483_
                         _e29093236_
                         _hd29103240_
                         _tl29113243_
                         _e29123246_
                         _hd29133250_
                         _tl29143253_
                         _e29153256_
                         _hd29163260_
                         _tl29173263_
                         ___splice4242042421_
                         _target29373005_
                         _tl29393008_)
                        (let () (declare (not safe)) (_g29022968_)))))
                (let () (declare (not safe)) (_g29022968_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd29163260_)
                                                (let ((___splice4242042421_
                                                       (gx#syntax-split-splice
                                                        _hd29163260_
                                                        '0)))
                                                  (let ((_tl29393008_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4242042421_
                                                            '1)))
                                                        (_target29373005_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4242042421_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl29393008_)
                                                        (___match4248242483_
                                                         _e29093236_
                                                         _hd29103240_
                                                         _tl29113243_
                                                         _e29123246_
                                                         _hd29133250_
                                                         _tl29143253_
                                                         _e29153256_
                                                         _hd29163260_
                                                         _tl29173263_
                                                         ___splice4242042421_
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
        (let* ((___stx4248542486_ _$stx3440_)
               (_g34463472_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4248542486_))))
          (let ((___kont4248842489_ (lambda () '#t))
                (___kont4249042491_ (lambda (_L3544_) _L3544_))
                (___kont4249242493_
                 (lambda (_L3499_ _L3501_ _L3502_)
                   (let ((__tmp47764 (gx#datum->syntax '#f 'if))
                         (__tmp47760
                          (let ((__tmp47761
                                 (let ((__tmp47763
                                        (let ()
                                          (declare (not safe))
                                          (cons _L3502_ _L3499_)))
                                       (__tmp47762
                                        (let ()
                                          (declare (not safe))
                                          (cons '#f '()))))
                                   (declare (not safe))
                                   (cons __tmp47763 __tmp47762))))
                            (declare (not safe))
                            (cons _L3501_ __tmp47761))))
                     (declare (not safe))
                     (cons __tmp47764 __tmp47760)))))
            (if (gx#stx-pair? ___stx4248542486_)
                (let ((_e34483564_ (gx#syntax-e ___stx4248542486_)))
                  (let ((_tl34503571_
                         (let () (declare (not safe)) (##cdr _e34483564_)))
                        (_hd34493568_
                         (let () (declare (not safe)) (##car _e34483564_))))
                    (if (gx#stx-null? _tl34503571_)
                        (___kont4248842489_)
                        (if (gx#stx-pair? _tl34503571_)
                            (let ((_e34553534_ (gx#syntax-e _tl34503571_)))
                              (let ((_tl34573541_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e34553534_)))
                                    (_hd34563538_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e34553534_))))
                                (if (gx#stx-null? _tl34573541_)
                                    (___kont4249042491_ _hd34563538_)
                                    (___kont4249242493_
                                     _tl34573541_
                                     _hd34563538_
                                     _hd34493568_))))
                            (let () (declare (not safe)) (_g34463472_))))))
                (let () (declare (not safe)) (_g34463472_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#or|
      (lambda (_$stx3582_)
        (let* ((___stx4253142532_ _$stx3582_)
               (_g35883614_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4253142532_))))
          (let ((___kont4253442535_ (lambda () '#f))
                (___kont4253642537_ (lambda (_L3686_) _L3686_))
                (___kont4253842539_
                 (lambda (_L3641_ _L3643_ _L3644_)
                   (let ((__tmp47778 (gx#datum->syntax '#f 'let))
                         (__tmp47765
                          (let ((__tmp47775
                                 (let ((__tmp47777 (gx#datum->syntax '#f '$e))
                                       (__tmp47776
                                        (let ()
                                          (declare (not safe))
                                          (cons _L3643_ '()))))
                                   (declare (not safe))
                                   (cons __tmp47777 __tmp47776)))
                                (__tmp47766
                                 (let ((__tmp47767
                                        (let ((__tmp47774
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp47768
                                               (let ((__tmp47773
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp47769
                                                      (let ((__tmp47772
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$e))
                                                            (__tmp47770
                                                             (let ((__tmp47771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L3644_ _L3641_))))
                       (declare (not safe))
                       (cons __tmp47771 '()))))
                (declare (not safe))
                (cons __tmp47772 __tmp47770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47773
                                                       __tmp47769))))
                                          (declare (not safe))
                                          (cons __tmp47774 __tmp47768))))
                                   (declare (not safe))
                                   (cons __tmp47767 '()))))
                            (declare (not safe))
                            (cons __tmp47775 __tmp47766))))
                     (declare (not safe))
                     (cons __tmp47778 __tmp47765)))))
            (if (gx#stx-pair? ___stx4253142532_)
                (let ((_e35903706_ (gx#syntax-e ___stx4253142532_)))
                  (let ((_tl35923713_
                         (let () (declare (not safe)) (##cdr _e35903706_)))
                        (_hd35913710_
                         (let () (declare (not safe)) (##car _e35903706_))))
                    (if (gx#stx-null? _tl35923713_)
                        (___kont4253442535_)
                        (if (gx#stx-pair? _tl35923713_)
                            (let ((_e35973676_ (gx#syntax-e _tl35923713_)))
                              (let ((_tl35993683_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e35973676_)))
                                    (_hd35983680_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e35973676_))))
                                (if (gx#stx-null? _tl35993683_)
                                    (___kont4253642537_ _hd35983680_)
                                    (___kont4253842539_
                                     _tl35993683_
                                     _hd35983680_
                                     _hd35913710_))))
                            (let () (declare (not safe)) (_g35883614_))))))
                (let () (declare (not safe)) (_g35883614_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#cond|
      (lambda (_$stx3724_)
        (let* ((___stx4257742578_ _$stx3724_)
               (_g37333824_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4257742578_))))
          (let ((___kont4258042581_ (lambda () '#!void))
                (___kont4258242583_
                 (lambda (_L4171_)
                   (let ((__tmp47784 (gx#datum->syntax '#f '%#expression))
                         (__tmp47779
                          (let ((__tmp47780
                                 (let ((__tmp47783
                                        (gx#datum->syntax '#f 'begin))
                                       (__tmp47781
                                        (let ((__tmp47782
                                               (lambda (_g41904193_
                                                        _g41914196_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g41904193_
                                                         _g41914196_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp47782 '() _L4171_))))
                                   (declare (not safe))
                                   (cons __tmp47783 __tmp47781))))
                            (declare (not safe))
                            (cons __tmp47780 '()))))
                     (declare (not safe))
                     (cons __tmp47784 __tmp47779))))
                (___kont4258642587_
                 (lambda ()
                   (let ((__tmp47786 (gx#datum->syntax '#f 'syntax-error))
                         (__tmp47785
                          (let ()
                            (declare (not safe))
                            (cons '"bad syntax; misplaced else" '()))))
                     (declare (not safe))
                     (cons __tmp47786 __tmp47785))))
                (___kont4258842589_
                 (lambda (_L4044_ _L4046_ _L4047_)
                   (let ((__tmp47800 (gx#datum->syntax '#f 'let))
                         (__tmp47787
                          (let ((__tmp47797
                                 (let ((__tmp47799 (gx#datum->syntax '#f '$e))
                                       (__tmp47798
                                        (let ()
                                          (declare (not safe))
                                          (cons _L4046_ '()))))
                                   (declare (not safe))
                                   (cons __tmp47799 __tmp47798)))
                                (__tmp47788
                                 (let ((__tmp47789
                                        (let ((__tmp47796
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp47790
                                               (let ((__tmp47795
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp47791
                                                      (let ((__tmp47794
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$e))
                                                            (__tmp47792
                                                             (let ((__tmp47793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L4047_ _L4044_))))
                       (declare (not safe))
                       (cons __tmp47793 '()))))
                (declare (not safe))
                (cons __tmp47794 __tmp47792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47795
                                                       __tmp47791))))
                                          (declare (not safe))
                                          (cons __tmp47796 __tmp47790))))
                                   (declare (not safe))
                                   (cons __tmp47789 '()))))
                            (declare (not safe))
                            (cons __tmp47797 __tmp47788))))
                     (declare (not safe))
                     (cons __tmp47800 __tmp47787))))
                (___kont4259042591_
                 (lambda (_L3982_ _L3984_ _L3985_ _L3986_)
                   (let ((__tmp47816 (gx#datum->syntax '#f 'let))
                         (__tmp47801
                          (let ((__tmp47813
                                 (let ((__tmp47815 (gx#datum->syntax '#f '$e))
                                       (__tmp47814
                                        (let ()
                                          (declare (not safe))
                                          (cons _L3985_ '()))))
                                   (declare (not safe))
                                   (cons __tmp47815 __tmp47814)))
                                (__tmp47802
                                 (let ((__tmp47803
                                        (let ((__tmp47812
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp47804
                                               (let ((__tmp47811
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp47805
                                                      (let ((__tmp47808
                                                             (let ((__tmp47809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp47810 (gx#datum->syntax '#f '$e)))
                              (declare (not safe))
                              (cons __tmp47810 '()))))
                       (declare (not safe))
                       (cons _L3984_ __tmp47809)))
                    (__tmp47806
                     (let ((__tmp47807
                            (let ()
                              (declare (not safe))
                              (cons _L3986_ _L3982_))))
                       (declare (not safe))
                       (cons __tmp47807 '()))))
                (declare (not safe))
                (cons __tmp47808 __tmp47806))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47811
                                                       __tmp47805))))
                                          (declare (not safe))
                                          (cons __tmp47812 __tmp47804))))
                                   (declare (not safe))
                                   (cons __tmp47803 '()))))
                            (declare (not safe))
                            (cons __tmp47813 __tmp47802))))
                     (declare (not safe))
                     (cons __tmp47816 __tmp47801))))
                (___kont4259242593_
                 (lambda (_L3891_ _L3893_ _L3894_ _L3895_)
                   (let ((__tmp47825 (gx#datum->syntax '#f 'if))
                         (__tmp47817
                          (let ((__tmp47818
                                 (let ((__tmp47821
                                        (let ((__tmp47824
                                               (gx#datum->syntax '#f 'begin))
                                              (__tmp47822
                                               (let ((__tmp47823
                                                      (lambda (_g39163919_
                                                               _g39173922_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g39163919_
                                                                _g39173922_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp47823
                                                         '()
                                                         _L3893_))))
                                          (declare (not safe))
                                          (cons __tmp47824 __tmp47822)))
                                       (__tmp47819
                                        (let ((__tmp47820
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L3895_ _L3891_))))
                                          (declare (not safe))
                                          (cons __tmp47820 '()))))
                                   (declare (not safe))
                                   (cons __tmp47821 __tmp47819))))
                            (declare (not safe))
                            (cons _L3894_ __tmp47818))))
                     (declare (not safe))
                     (cons __tmp47825 __tmp47817)))))
            (let* ((___match4273842739_
                    (lambda (_e38013831_
                             _hd38023835_
                             _tl38033838_
                             _e38043841_
                             _hd38053845_
                             _tl38063848_
                             _e38073851_
                             _hd38083855_
                             _tl38093858_
                             ___splice4259442595_
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
                                        (___kont4259242593_
                                         _tl38063848_
                                         _body38183887_
                                         _hd38083855_
                                         _hd38023835_))))))
                        (_loop38133867_ _target38103861_ '()))))
                   (___match4263442635_
                    (lambda (_e37394111_
                             _hd37404115_
                             _tl37414118_
                             _e37424121_
                             _hd37434125_
                             _tl37444128_
                             _e37454131_
                             _hd37464135_
                             _tl37474138_
                             ___splice4258442585_
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
                                        (if (gx#stx-null? _tl37444128_)
                                            (___kont4258242583_ _body37564167_)
                                            (___kont4258642587_)))))))
                        (_loop37514147_ _target37484141_ '())))))
              (if (gx#stx-pair? ___stx4257742578_)
                  (let ((_e37354206_ (gx#syntax-e ___stx4257742578_)))
                    (let ((_tl37374213_
                           (let () (declare (not safe)) (##cdr _e37354206_)))
                          (_hd37364210_
                           (let () (declare (not safe)) (##car _e37354206_))))
                      (if (gx#stx-null? _tl37374213_)
                          (___kont4258042581_)
                          (if (gx#stx-pair? _tl37374213_)
                              (let ((_e37424121_ (gx#syntax-e _tl37374213_)))
                                (let ((_tl37444128_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e37424121_)))
                                      (_hd37434125_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e37424121_))))
                                  (if (gx#stx-pair? _hd37434125_)
                                      (let ((_e37454131_
                                             (gx#syntax-e _hd37434125_)))
                                        (let ((_tl37474138_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e37454131_)))
                                              (_hd37464135_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e37454131_))))
                                          (if (gx#identifier? _hd37464135_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:1>[1]#_g47826_|
                                                   _hd37464135_)
                                                  (if (gx#stx-pair/null?
                                                       _tl37474138_)
                                                      (let ((___splice4258442585_
                                                             (gx#syntax-split-splice
                                                              _tl37474138_
                                                              '0)))
                                                        (let ((_tl37504144_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4258442585_ '1)))
                      (_target37484141_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4258442585_ '0))))
                  (if (gx#stx-null? _tl37504144_)
                      (___match4263442635_
                       _e37354206_
                       _hd37364210_
                       _tl37374213_
                       _e37424121_
                       _hd37434125_
                       _tl37444128_
                       _e37454131_
                       _hd37464135_
                       _tl37474138_
                       ___splice4258442585_
                       _target37484141_
                       _tl37504144_)
                      (___kont4258642587_))))
              (___kont4258642587_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl37474138_)
                                                      (___kont4258842589_
                                                       _tl37444128_
                                                       _hd37464135_
                                                       _hd37364210_)
                                                      (if (gx#stx-pair?
                                                           _tl37474138_)
                                                          (let ((_e37913962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl37474138_)))
                    (let ((_tl37933969_
                           (let () (declare (not safe)) (##cdr _e37913962_)))
                          (_hd37923966_
                           (let () (declare (not safe)) (##car _e37913962_))))
                      (if (gx#identifier? _hd37923966_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<sugar>$<sugar:1>[1]#_g47827_|
                               _hd37923966_)
                              (if (gx#stx-pair? _tl37933969_)
                                  (let ((_e37943972_
                                         (gx#syntax-e _tl37933969_)))
                                    (let ((_tl37963979_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e37943972_)))
                                          (_hd37953976_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e37943972_))))
                                      (if (gx#stx-null? _tl37963979_)
                                          (___kont4259042591_
                                           _tl37444128_
                                           _hd37953976_
                                           _hd37464135_
                                           _hd37364210_)
                                          (if (gx#stx-pair/null? _tl37474138_)
                                              (let ((___splice4259442595_
                                                     (gx#syntax-split-splice
                                                      _tl37474138_
                                                      '0)))
                                                (let ((_tl38123864_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4259442595_
                                                          '1)))
                                                      (_target38103861_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4259442595_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl38123864_)
                                                      (___match4273842739_
                                                       _e37354206_
                                                       _hd37364210_
                                                       _tl37374213_
                                                       _e37424121_
                                                       _hd37434125_
                                                       _tl37444128_
                                                       _e37454131_
                                                       _hd37464135_
                                                       _tl37474138_
                                                       ___splice4259442595_
                                                       _target38103861_
                                                       _tl38123864_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g37333824_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g37333824_))))))
                                  (if (gx#stx-pair/null? _tl37474138_)
                                      (let ((___splice4259442595_
                                             (gx#syntax-split-splice
                                              _tl37474138_
                                              '0)))
                                        (let ((_tl38123864_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4259442595_
                                                  '1)))
                                              (_target38103861_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4259442595_
                                                  '0))))
                                          (if (gx#stx-null? _tl38123864_)
                                              (___match4273842739_
                                               _e37354206_
                                               _hd37364210_
                                               _tl37374213_
                                               _e37424121_
                                               _hd37434125_
                                               _tl37444128_
                                               _e37454131_
                                               _hd37464135_
                                               _tl37474138_
                                               ___splice4259442595_
                                               _target38103861_
                                               _tl38123864_)
                                              (let ()
                                                (declare (not safe))
                                                (_g37333824_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g37333824_))))
                              (if (gx#stx-pair/null? _tl37474138_)
                                  (let ((___splice4259442595_
                                         (gx#syntax-split-splice
                                          _tl37474138_
                                          '0)))
                                    (let ((_tl38123864_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4259442595_
                                              '1)))
                                          (_target38103861_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4259442595_
                                              '0))))
                                      (if (gx#stx-null? _tl38123864_)
                                          (___match4273842739_
                                           _e37354206_
                                           _hd37364210_
                                           _tl37374213_
                                           _e37424121_
                                           _hd37434125_
                                           _tl37444128_
                                           _e37454131_
                                           _hd37464135_
                                           _tl37474138_
                                           ___splice4259442595_
                                           _target38103861_
                                           _tl38123864_)
                                          (let ()
                                            (declare (not safe))
                                            (_g37333824_)))))
                                  (let () (declare (not safe)) (_g37333824_))))
                          (if (gx#stx-pair/null? _tl37474138_)
                              (let ((___splice4259442595_
                                     (gx#syntax-split-splice _tl37474138_ '0)))
                                (let ((_tl38123864_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4259442595_
                                          '1)))
                                      (_target38103861_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4259442595_
                                          '0))))
                                  (if (gx#stx-null? _tl38123864_)
                                      (___match4273842739_
                                       _e37354206_
                                       _hd37364210_
                                       _tl37374213_
                                       _e37424121_
                                       _hd37434125_
                                       _tl37444128_
                                       _e37454131_
                                       _hd37464135_
                                       _tl37474138_
                                       ___splice4259442595_
                                       _target38103861_
                                       _tl38123864_)
                                      (let ()
                                        (declare (not safe))
                                        (_g37333824_)))))
                              (let () (declare (not safe)) (_g37333824_))))))
                  (if (gx#stx-pair/null? _tl37474138_)
                      (let ((___splice4259442595_
                             (gx#syntax-split-splice _tl37474138_ '0)))
                        (let ((_tl38123864_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4259442595_ '1)))
                              (_target38103861_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4259442595_ '0))))
                          (if (gx#stx-null? _tl38123864_)
                              (___match4273842739_
                               _e37354206_
                               _hd37364210_
                               _tl37374213_
                               _e37424121_
                               _hd37434125_
                               _tl37444128_
                               _e37454131_
                               _hd37464135_
                               _tl37474138_
                               ___splice4259442595_
                               _target38103861_
                               _tl38123864_)
                              (let () (declare (not safe)) (_g37333824_)))))
                      (let () (declare (not safe)) (_g37333824_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl37474138_)
                                                  (___kont4258842589_
                                                   _tl37444128_
                                                   _hd37464135_
                                                   _hd37364210_)
                                                  (if (gx#stx-pair?
                                                       _tl37474138_)
                                                      (let ((_e37913962_
                                                             (gx#syntax-e
                                                              _tl37474138_)))
                                                        (let ((_tl37933969_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e37913962_)))
                      (_hd37923966_
                       (let () (declare (not safe)) (##car _e37913962_))))
                  (if (gx#identifier? _hd37923966_)
                      (if (gx#free-identifier=?
                           |gerbil/core$<sugar>$<sugar:1>[1]#_g47827_|
                           _hd37923966_)
                          (if (gx#stx-pair? _tl37933969_)
                              (let ((_e37943972_ (gx#syntax-e _tl37933969_)))
                                (let ((_tl37963979_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e37943972_)))
                                      (_hd37953976_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e37943972_))))
                                  (if (gx#stx-null? _tl37963979_)
                                      (___kont4259042591_
                                       _tl37444128_
                                       _hd37953976_
                                       _hd37464135_
                                       _hd37364210_)
                                      (if (gx#stx-pair/null? _tl37474138_)
                                          (let ((___splice4259442595_
                                                 (gx#syntax-split-splice
                                                  _tl37474138_
                                                  '0)))
                                            (let ((_tl38123864_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4259442595_
                                                      '1)))
                                                  (_target38103861_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4259442595_
                                                      '0))))
                                              (if (gx#stx-null? _tl38123864_)
                                                  (___match4273842739_
                                                   _e37354206_
                                                   _hd37364210_
                                                   _tl37374213_
                                                   _e37424121_
                                                   _hd37434125_
                                                   _tl37444128_
                                                   _e37454131_
                                                   _hd37464135_
                                                   _tl37474138_
                                                   ___splice4259442595_
                                                   _target38103861_
                                                   _tl38123864_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g37333824_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g37333824_))))))
                              (if (gx#stx-pair/null? _tl37474138_)
                                  (let ((___splice4259442595_
                                         (gx#syntax-split-splice
                                          _tl37474138_
                                          '0)))
                                    (let ((_tl38123864_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4259442595_
                                              '1)))
                                          (_target38103861_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4259442595_
                                              '0))))
                                      (if (gx#stx-null? _tl38123864_)
                                          (___match4273842739_
                                           _e37354206_
                                           _hd37364210_
                                           _tl37374213_
                                           _e37424121_
                                           _hd37434125_
                                           _tl37444128_
                                           _e37454131_
                                           _hd37464135_
                                           _tl37474138_
                                           ___splice4259442595_
                                           _target38103861_
                                           _tl38123864_)
                                          (let ()
                                            (declare (not safe))
                                            (_g37333824_)))))
                                  (let () (declare (not safe)) (_g37333824_))))
                          (if (gx#stx-pair/null? _tl37474138_)
                              (let ((___splice4259442595_
                                     (gx#syntax-split-splice _tl37474138_ '0)))
                                (let ((_tl38123864_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4259442595_
                                          '1)))
                                      (_target38103861_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4259442595_
                                          '0))))
                                  (if (gx#stx-null? _tl38123864_)
                                      (___match4273842739_
                                       _e37354206_
                                       _hd37364210_
                                       _tl37374213_
                                       _e37424121_
                                       _hd37434125_
                                       _tl37444128_
                                       _e37454131_
                                       _hd37464135_
                                       _tl37474138_
                                       ___splice4259442595_
                                       _target38103861_
                                       _tl38123864_)
                                      (let ()
                                        (declare (not safe))
                                        (_g37333824_)))))
                              (let () (declare (not safe)) (_g37333824_))))
                      (if (gx#stx-pair/null? _tl37474138_)
                          (let ((___splice4259442595_
                                 (gx#syntax-split-splice _tl37474138_ '0)))
                            (let ((_tl38123864_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4259442595_ '1)))
                                  (_target38103861_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4259442595_ '0))))
                              (if (gx#stx-null? _tl38123864_)
                                  (___match4273842739_
                                   _e37354206_
                                   _hd37364210_
                                   _tl37374213_
                                   _e37424121_
                                   _hd37434125_
                                   _tl37444128_
                                   _e37454131_
                                   _hd37464135_
                                   _tl37474138_
                                   ___splice4259442595_
                                   _target38103861_
                                   _tl38123864_)
                                  (let ()
                                    (declare (not safe))
                                    (_g37333824_)))))
                          (let () (declare (not safe)) (_g37333824_))))))
              (if (gx#stx-pair/null? _tl37474138_)
                  (let ((___splice4259442595_
                         (gx#syntax-split-splice _tl37474138_ '0)))
                    (let ((_tl38123864_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4259442595_ '1)))
                          (_target38103861_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4259442595_ '0))))
                      (if (gx#stx-null? _tl38123864_)
                          (___match4273842739_
                           _e37354206_
                           _hd37364210_
                           _tl37374213_
                           _e37424121_
                           _hd37434125_
                           _tl37444128_
                           _e37454131_
                           _hd37464135_
                           _tl37474138_
                           ___splice4259442595_
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
                      (let ((_e42344261_ (gx#syntax-e _g42314258_)))
                        (let ((_hd42354265_
                               (let ()
                                 (declare (not safe))
                                 (##car _e42344261_)))
                              (_tl42364268_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e42344261_))))
                          (if (gx#stx-pair? _tl42364268_)
                              (let ((_e42374271_ (gx#syntax-e _tl42364268_)))
                                (let ((_hd42384275_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e42374271_)))
                                      (_tl42394278_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e42374271_))))
                                  (if (gx#stx-pair/null? _tl42394278_)
                                      (let ((_g47828_
                                             (gx#syntax-split-splice
                                              _tl42394278_
                                              '0)))
                                        (begin
                                          (let ((_g47829_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47828_)
                                                       (##vector-length
                                                        _g47828_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47829_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47829_)))
                                          (let ((_target42404281_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47828_ 0)))
                                                (_tl42424284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47828_ 1))))
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
                             (let ((__tmp47837 (gx#datum->syntax '#f 'if))
                                   (__tmp47830
                                    (let ((__tmp47831
                                           (let ((__tmp47833
                                                  (let ((__tmp47836
                                                         (gx#datum->syntax
                                                          '#f
                                                          'begin))
                                                        (__tmp47834
                                                         (let ((__tmp47835
                                                                (lambda (_g43304333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g43314336_)
                          (let ()
                            (declare (not safe))
                            (cons _g43304333_ _g43314336_)))))
                   (declare (not safe))
                   (foldr1 __tmp47835 '() _L4311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47836
                                                          __tmp47834)))
                                                 (__tmp47832
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons '#!void '()))))
                                             (declare (not safe))
                                             (cons __tmp47833 __tmp47832))))
                                      (declare (not safe))
                                      (cons _L4313_ __tmp47831))))
                               (declare (not safe))
                               (cons __tmp47837 __tmp47830)))
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
                      (let ((_e43524379_ (gx#syntax-e _g43494376_)))
                        (let ((_hd43534383_
                               (let ()
                                 (declare (not safe))
                                 (##car _e43524379_)))
                              (_tl43544386_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e43524379_))))
                          (if (gx#stx-pair? _tl43544386_)
                              (let ((_e43554389_ (gx#syntax-e _tl43544386_)))
                                (let ((_hd43564393_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e43554389_)))
                                      (_tl43574396_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e43554389_))))
                                  (if (gx#stx-pair/null? _tl43574396_)
                                      (let ((_g47838_
                                             (gx#syntax-split-splice
                                              _tl43574396_
                                              '0)))
                                        (begin
                                          (let ((_g47839_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47838_)
                                                       (##vector-length
                                                        _g47838_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47839_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47839_)))
                                          (let ((_target43584399_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47838_ 0)))
                                                (_tl43604402_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47838_ 1))))
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
                             (let ((__tmp47847 (gx#datum->syntax '#f 'if))
                                   (__tmp47840
                                    (let ((__tmp47841
                                           (let ((__tmp47842
                                                  (let ((__tmp47843
                                                         (let ((__tmp47846
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin))
                       (__tmp47844
                        (let ((__tmp47845
                               (lambda (_g44484451_ _g44494454_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g44484451_ _g44494454_)))))
                          (declare (not safe))
                          (foldr1 __tmp47845 '() _L4429_))))
                   (declare (not safe))
                   (cons __tmp47846 __tmp47844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47843 '()))))
                                             (declare (not safe))
                                             (cons '#!void __tmp47842))))
                                      (declare (not safe))
                                      (cons _L4431_ __tmp47841))))
                               (declare (not safe))
                               (cons __tmp47847 __tmp47840)))
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
                      (let ((_e44694496_ (gx#syntax-e _g44664493_)))
                        (let ((_hd44704500_
                               (let ()
                                 (declare (not safe))
                                 (##car _e44694496_)))
                              (_tl44714503_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e44694496_))))
                          (if (gx#stx-pair? _tl44714503_)
                              (let ((_e44724506_ (gx#syntax-e _tl44714503_)))
                                (let ((_hd44734510_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e44724506_)))
                                      (_tl44744513_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e44724506_))))
                                  (if (gx#stx-pair/null? _tl44744513_)
                                      (let ((_g47848_
                                             (gx#syntax-split-splice
                                              _tl44744513_
                                              '0)))
                                        (begin
                                          (let ((_g47849_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47848_)
                                                       (##vector-length
                                                        _g47848_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47849_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47849_)))
                                          (let ((_target44754516_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47848_ 0)))
                                                (_tl44774519_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47848_ 1))))
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
                                         (let ((__tmp47850
                                                (lambda (_g45654568_
                                                         _g45664571_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g45654568_
                                                          _g45664571_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp47850 '() _L4546_))))
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
                      (let ((_e45874608_ (gx#syntax-e _g45844605_)))
                        (let ((_hd45884612_
                               (let ()
                                 (declare (not safe))
                                 (##car _e45874608_)))
                              (_tl45894615_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e45874608_))))
                          (if (gx#stx-pair? _tl45894615_)
                              (let ((_e45904618_ (gx#syntax-e _tl45894615_)))
                                (let ((_hd45914622_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e45904618_)))
                                      (_tl45924625_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e45904618_))))
                                  (if (gx#stx-pair? _tl45924625_)
                                      (let ((_e45934628_
                                             (gx#syntax-e _tl45924625_)))
                                        (let ((_hd45944632_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e45934628_)))
                                              (_tl45954635_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e45934628_))))
                                          (if (gx#stx-null? _tl45954635_)
                                              ((lambda (_L4638_ _L4640_)
                                                 (let ((__tmp47864
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp47851
                                                        (let ((__tmp47860
                                                               (let ((__tmp47863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'def))
                             (__tmp47861
                              (let ((__tmp47862
                                     (let ()
                                       (declare (not safe))
                                       (cons _L4638_ '()))))
                                (declare (not safe))
                                (cons _L4640_ __tmp47862))))
                         (declare (not safe))
                         (cons __tmp47863 __tmp47861)))
                      (__tmp47852
                       (let ((__tmp47856
                              (let ((__tmp47859 (gx#datum->syntax '#f 'set!))
                                    (__tmp47857
                                     (let ((__tmp47858
                                            (let ()
                                              (declare (not safe))
                                              (cons _L4640_ '()))))
                                       (declare (not safe))
                                       (cons _L4640_ __tmp47858))))
                                (declare (not safe))
                                (cons __tmp47859 __tmp47857)))
                             (__tmp47853
                              (let ((__tmp47854
                                     (let ((__tmp47855
                                            (gx#datum->syntax '#f 'void)))
                                       (declare (not safe))
                                       (cons __tmp47855 '()))))
                                (declare (not safe))
                                (cons __tmp47854 '()))))
                         (declare (not safe))
                         (cons __tmp47856 __tmp47853))))
                  (declare (not safe))
                  (cons __tmp47860 __tmp47852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47864
                                                         __tmp47851)))
                                               _hd45944632_
                                               _hd45914622_)
                                              (_g45834601_ _g45844605_))))
                                      (_g45834601_ _g45844605_))))
                              (_g45834601_ _g45844605_))))
                      (_g45834601_ _g45844605_)))))
          (_g45824656_ _$stx4579_))))))
