(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g47136_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g47137_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g47214_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g47215_|
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
                                              (let ((_g47052_
                                                     (gx#syntax-split-splice
                                                      _tl13581407_
                                                      '0)))
                                                (begin
                                                  (let ((_g47053_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g47052_)
                                                               (##vector-length
                                                                _g47052_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g47053_ 2)))
                (error "Context expects 2 values" _g47053_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target13591410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g47052_
                                                            0)))
                                                        (_tl13611413_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g47052_
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
                                         (let ((__tmp47060
                                                (gx#datum->syntax
                                                 '#f
                                                 'define-syntax))
                                               (__tmp47054
                                                (let ((__tmp47055
                                                       (let ((__tmp47056
                                                              (let ((__tmp47059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'syntax-rules))
                            (__tmp47057
                             (let ((__tmp47058
                                    (foldr (lambda (_g14651468_ _g14661471_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g14651468_ _g14661471_)))
                                           '()
                                           _L1440_)))
                               (declare (not safe))
                               (cons _L1442_ __tmp47058))))
                        (declare (not safe))
                        (cons __tmp47059 __tmp47057))))
                 (declare (not safe))
                 (cons __tmp47056 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L1443_ __tmp47055))))
                                           (declare (not safe))
                                           (cons __tmp47060 __tmp47054))
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
        (let* ((___stx4155441555_ _$stx1479_)
               (_g14841523_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4155441555_))))
          (let ((___kont4155741558_
                 (lambda (_L1645_ _L1647_ _L1648_)
                   (let ((__tmp47067 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp47061
                          (let ((__tmp47062
                                 (let ((__tmp47063
                                        (let ((__tmp47066
                                               (gx#datum->syntax '#f 'lambda%))
                                              (__tmp47064
                                               (let ((__tmp47065
                                                      (foldr (lambda (_g16671670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g16681673_)
                       (let ()
                         (declare (not safe))
                         (cons _g16671670_ _g16681673_)))
                     '()
                     _L1645_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L1647_ __tmp47065))))
                                          (declare (not safe))
                                          (cons __tmp47066 __tmp47064))))
                                   (declare (not safe))
                                   (cons __tmp47063 '()))))
                            (declare (not safe))
                            (cons _L1648_ __tmp47062))))
                     (declare (not safe))
                     (cons __tmp47067 __tmp47061))))
                (___kont4156141562_
                 (lambda (_L1560_ _L1562_)
                   (let ((__tmp47070 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp47068
                          (let ((__tmp47069
                                 (let ()
                                   (declare (not safe))
                                   (cons _L1560_ '()))))
                            (declare (not safe))
                            (cons _L1562_ __tmp47069))))
                     (declare (not safe))
                     (cons __tmp47070 __tmp47068)))))
            (let* ((___match4160941610_
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
                            (___kont4156141562_ _L1560_ _L1562_)
                            (let () (declare (not safe)) (_g14841523_))))))
                   (___match4160141602_
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
                                  (___match4160941610_
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
                   (___match4158941590_
                    (lambda (_e14891585_
                             _hd14901589_
                             _tl14911592_
                             _e14921595_
                             _hd14931599_
                             _tl14941602_
                             _e14951605_
                             _hd14961609_
                             _tl14971612_
                             ___splice4155941560_
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
                                              (___kont4155741558_
                                               _L1645_
                                               _L1647_
                                               _L1648_)
                                              (___match4160141602_
                                               _e14891585_
                                               _hd14901589_
                                               _tl14911592_
                                               _e14921595_
                                               _hd14931599_
                                               _tl14941602_))))))))
                        (_loop15011621_ _target14981615_ '())))))
              (if (gx#stx-pair? ___stx4155441555_)
                  (let ((_e14891585_ (gx#syntax-e ___stx4155441555_)))
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
                                          (let ((___splice4155941560_
                                                 (gx#syntax-split-splice
                                                  _tl14941602_
                                                  '0)))
                                            (let ((_tl15001618_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4155941560_
                                                      '1)))
                                                  (_target14981615_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4155941560_
                                                      '0))))
                                              (if (gx#stx-null? _tl15001618_)
                                                  (___match4158941590_
                                                   _e14891585_
                                                   _hd14901589_
                                                   _tl14911592_
                                                   _e14921595_
                                                   _hd14931599_
                                                   _tl14941602_
                                                   _e14951605_
                                                   _hd14961609_
                                                   _tl14971612_
                                                   ___splice4155941560_
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
                      (___match4160941610_
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
                                                      (___match4160941610_
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
                                              (___match4160941610_
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
                                                 (let ((__tmp47073
                                                        (gx#datum->syntax
                                                         '#f
                                                         'define-alias))
                                                       (__tmp47071
                                                        (let ((__tmp47072
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L1740_ '()))))
                  (declare (not safe))
                  (cons _L1742_ __tmp47072))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47073
                                                         __tmp47071)))
                                               _hd16961734_
                                               _hd16931724_)
                                              (_g16851703_ _g16861707_))))
                                      (_g16851703_ _g16861707_))))
                              (_g16851703_ _g16861707_))))
                      (_g16851703_ _g16861707_)))))
          (_g16841758_ _$stx1681_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#define|
      (lambda (_$stx1762_)
        (let* ((___stx4161241613_ _$stx1762_)
               (_g17671806_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4161241613_))))
          (let ((___kont4161541616_
                 (lambda (_L1928_ _L1930_ _L1931_)
                   (let ((__tmp47081 (gx#datum->syntax '#f 'define-values))
                         (__tmp47074
                          (let ((__tmp47080
                                 (let ()
                                   (declare (not safe))
                                   (cons _L1931_ '())))
                                (__tmp47075
                                 (let ((__tmp47076
                                        (let ((__tmp47079
                                               (gx#datum->syntax '#f 'lambda%))
                                              (__tmp47077
                                               (let ((__tmp47078
                                                      (foldr (lambda (_g19501953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g19511956_)
                       (let ()
                         (declare (not safe))
                         (cons _g19501953_ _g19511956_)))
                     '()
                     _L1928_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L1930_ __tmp47078))))
                                          (declare (not safe))
                                          (cons __tmp47079 __tmp47077))))
                                   (declare (not safe))
                                   (cons __tmp47076 '()))))
                            (declare (not safe))
                            (cons __tmp47080 __tmp47075))))
                     (declare (not safe))
                     (cons __tmp47081 __tmp47074))))
                (___kont4161941620_
                 (lambda (_L1843_ _L1845_)
                   (let ((__tmp47085 (gx#datum->syntax '#f 'define-values))
                         (__tmp47082
                          (let ((__tmp47084
                                 (let ()
                                   (declare (not safe))
                                   (cons _L1845_ '())))
                                (__tmp47083
                                 (let ()
                                   (declare (not safe))
                                   (cons _L1843_ '()))))
                            (declare (not safe))
                            (cons __tmp47084 __tmp47083))))
                     (declare (not safe))
                     (cons __tmp47085 __tmp47082)))))
            (let* ((___match4166741668_
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
                            (___kont4161941620_ _L1843_ _L1845_)
                            (let () (declare (not safe)) (_g17671806_))))))
                   (___match4165941660_
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
                                  (___match4166741668_
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
                   (___match4164741648_
                    (lambda (_e17721868_
                             _hd17731872_
                             _tl17741875_
                             _e17751878_
                             _hd17761882_
                             _tl17771885_
                             _e17781888_
                             _hd17791892_
                             _tl17801895_
                             ___splice4161741618_
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
                                              (___kont4161541616_
                                               _L1928_
                                               _L1930_
                                               _L1931_)
                                              (___match4165941660_
                                               _e17721868_
                                               _hd17731872_
                                               _tl17741875_
                                               _e17751878_
                                               _hd17761882_
                                               _tl17771885_))))))))
                        (_loop17841904_ _target17811898_ '())))))
              (if (gx#stx-pair? ___stx4161241613_)
                  (let ((_e17721868_ (gx#syntax-e ___stx4161241613_)))
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
                                          (let ((___splice4161741618_
                                                 (gx#syntax-split-splice
                                                  _tl17771885_
                                                  '0)))
                                            (let ((_tl17831901_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4161741618_
                                                      '1)))
                                                  (_target17811898_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4161741618_
                                                      '0))))
                                              (if (gx#stx-null? _tl17831901_)
                                                  (___match4164741648_
                                                   _e17721868_
                                                   _hd17731872_
                                                   _tl17741875_
                                                   _e17751878_
                                                   _hd17761882_
                                                   _tl17771885_
                                                   _e17781888_
                                                   _hd17791892_
                                                   _tl17801895_
                                                   ___splice4161741618_
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
                      (___match4166741668_
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
                                                      (___match4166741668_
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
                                              (___match4166741668_
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
        (let* ((___stx4167041671_ _$stx1964_)
               (_g19692014_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4167041671_))))
          (let ((___kont4167341674_
                 (lambda (_L2172_)
                   (let ((__tmp47088 (gx#datum->syntax '#f 'let-values))
                         (__tmp47086
                          (let ((__tmp47087
                                 (foldr (lambda (_g21882191_ _g21892194_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g21882191_ _g21892194_)))
                                        '()
                                        _L2172_)))
                            (declare (not safe))
                            (cons '() __tmp47087))))
                     (declare (not safe))
                     (cons __tmp47088 __tmp47086))))
                (___kont4167741678_
                 (lambda (_L2081_ _L2083_ _L2084_ _L2085_)
                   (let ((__tmp47095 (gx#datum->syntax '#f 'let-values))
                         (__tmp47089
                          (let ((__tmp47094
                                 (let ()
                                   (declare (not safe))
                                   (cons _L2084_ '())))
                                (__tmp47090
                                 (let ((__tmp47091
                                        (let ((__tmp47092
                                               (let ((__tmp47093
                                                      (foldr (lambda (_g21062109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g21072112_)
                       (let ()
                         (declare (not safe))
                         (cons _g21062109_ _g21072112_)))
                     '()
                     _L2081_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L2083_ __tmp47093))))
                                          (declare (not safe))
                                          (cons _L2085_ __tmp47092))))
                                   (declare (not safe))
                                   (cons __tmp47091 '()))))
                            (declare (not safe))
                            (cons __tmp47094 __tmp47090))))
                     (declare (not safe))
                     (cons __tmp47095 __tmp47089)))))
            (let* ((___match4172941730_
                    (lambda (_e19912021_
                             _hd19922025_
                             _tl19932028_
                             _e19942031_
                             _hd19952035_
                             _tl19962038_
                             _e19972041_
                             _hd19982045_
                             _tl19992048_
                             ___splice4167941680_
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
                                        (___kont4167741678_
                                         _body20082077_
                                         _tl19992048_
                                         _hd19982045_
                                         _hd19922025_))))))
                        (_loop20032057_ _target20002051_ '()))))
                   (___match4170341704_
                    (lambda (_e19722122_
                             _hd19732126_
                             _tl19742129_
                             _e19752132_
                             _hd19762136_
                             _tl19772139_
                             ___splice4167541676_
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
                                        (___kont4167341674_
                                         _body19862168_))))))
                        (_loop19812148_ _target19782142_ '())))))
              (if (gx#stx-pair? ___stx4167041671_)
                  (let ((_e19722122_ (gx#syntax-e ___stx4167041671_)))
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
                                      (let ((___splice4167541676_
                                             (gx#syntax-split-splice
                                              _tl19772139_
                                              '0)))
                                        (let ((_tl19802145_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4167541676_
                                                  '1)))
                                              (_target19782142_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4167541676_
                                                  '0))))
                                          (if (gx#stx-null? _tl19802145_)
                                              (___match4170341704_
                                               _e19722122_
                                               _hd19732126_
                                               _tl19742129_
                                               _e19752132_
                                               _hd19762136_
                                               _tl19772139_
                                               ___splice4167541676_
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
                                              (let ((___splice4167941680_
                                                     (gx#syntax-split-splice
                                                      _tl19772139_
                                                      '0)))
                                                (let ((_tl20022054_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4167941680_
                                                          '1)))
                                                      (_target20002051_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4167941680_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl20022054_)
                                                      (___match4172941730_
                                                       _e19722122_
                                                       _hd19732126_
                                                       _tl19742129_
                                                       _e19752132_
                                                       _hd19762136_
                                                       _tl19772139_
                                                       _e19972041_
                                                       _hd19982045_
                                                       _tl19992048_
                                                       ___splice4167941680_
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
        (let* ((___stx4173241733_ _$stx2203_)
               (_g22082272_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4173241733_))))
          (let ((___kont4173541736_
                 (lambda (_L2478_ _L2480_ _L2481_ _L2482_ _L2483_)
                   (let ((__tmp47097
                          (let ((__tmp47109
                                 (gx#datum->syntax '#f 'letrec-values))
                                (__tmp47098
                                 (let ((__tmp47100
                                        (let ((__tmp47101
                                               (let ((__tmp47108
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L2483_ '())))
                                                     (__tmp47102
                                                      (let ((__tmp47103
                                                             (let ((__tmp47107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'lambda%))
                           (__tmp47104
                            (let ((__tmp47106
                                   (foldr (lambda (_g25082515_ _g25092518_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g25082515_ _g25092518_)))
                                          _L2480_
                                          _L2482_))
                                  (__tmp47105
                                   (foldr (lambda (_g25102521_ _g25112524_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g25102521_ _g25112524_)))
                                          '()
                                          _L2478_)))
                              (declare (not safe))
                              (cons __tmp47106 __tmp47105))))
                       (declare (not safe))
                       (cons __tmp47107 __tmp47104))))
                (declare (not safe))
                (cons __tmp47103 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47108
                                                       __tmp47102))))
                                          (declare (not safe))
                                          (cons __tmp47101 '())))
                                       (__tmp47099
                                        (let ()
                                          (declare (not safe))
                                          (cons _L2483_ '()))))
                                   (declare (not safe))
                                   (cons __tmp47100 __tmp47099))))
                            (declare (not safe))
                            (cons __tmp47109 __tmp47098)))
                         (__tmp47096
                          (foldr (lambda (_g25122527_ _g25132530_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g25122527_ _g25132530_)))
                                 '()
                                 _L2481_)))
                     (declare (not safe))
                     (cons __tmp47097 __tmp47096))))
                (___kont4174141742_
                 (lambda (_L2329_ _L2331_)
                   (let ((__tmp47114 (gx#datum->syntax '#f '~let))
                         (__tmp47110
                          (let ((__tmp47113 (gx#datum->syntax '#f 'let-values))
                                (__tmp47111
                                 (let ((__tmp47112
                                        (foldr (lambda (_g23482351_
                                                        _g23492354_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g23482351_
                                                         _g23492354_)))
                                               '()
                                               _L2329_)))
                                   (declare (not safe))
                                   (cons _L2331_ __tmp47112))))
                            (declare (not safe))
                            (cons __tmp47113 __tmp47111))))
                     (declare (not safe))
                     (cons __tmp47114 __tmp47110)))))
            (let* ((___match4178941790_
                    (lambda (_e22522279_
                             _hd22532283_
                             _tl22542286_
                             _e22552289_
                             _hd22562293_
                             _tl22572296_
                             ___splice4174341744_
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
                                        (___kont4174141742_
                                         _body22662325_
                                         _hd22562293_))))))
                        (_loop22612305_ _target22582299_ '()))))
                   (___match4178141782_
                    (lambda (_e22522279_
                             _hd22532283_
                             _tl22542286_
                             _e22552289_
                             _hd22562293_
                             _tl22572296_)
                      (if (gx#stx-pair/null? _tl22572296_)
                          (let ((___splice4174341744_
                                 (gx#syntax-split-splice _tl22572296_ '0)))
                            (let ((_tl22602302_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4174341744_ '1)))
                                  (_target22582299_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4174341744_ '0))))
                              (if (gx#stx-null? _tl22602302_)
                                  (___match4178941790_
                                   _e22522279_
                                   _hd22532283_
                                   _tl22542286_
                                   _e22552289_
                                   _hd22562293_
                                   _tl22572296_
                                   ___splice4174341744_
                                   _target22582299_
                                   _tl22602302_)
                                  (let ()
                                    (declare (not safe))
                                    (_g22082272_)))))
                          (let () (declare (not safe)) (_g22082272_)))))
                   (___match4176941770_
                    (lambda (_e22152364_
                             _hd22162368_
                             _tl22172371_
                             _e22182374_
                             _hd22192378_
                             _tl22202381_
                             _e22212384_
                             _hd22222388_
                             _tl22232391_
                             ___splice4173741738_
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
                      (___match4178141782_
                       _e22152364_
                       _hd22162368_
                       _tl22172371_
                       _e22182374_
                       _hd22192378_
                       _tl22202381_))))
              (___match4178141782_
               _e22152364_
               _hd22162368_
               _tl22172371_
               _e22182374_
               _hd22192378_
               _tl22202381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match4178141782_
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
                                            (let ((___splice4173941740_
                                                   (gx#syntax-split-splice
                                                    _tl22232391_
                                                    '0)))
                                              (let ((_tl22432451_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4173941740_
                                                        '1)))
                                                    (_target22412448_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4173941740_
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
                                    (___kont4173541736_
                                     _L2478_
                                     _L2480_
                                     _L2481_
                                     _L2482_
                                     _L2483_)
                                    (___match4178141782_
                                     _e22152364_
                                     _hd22162368_
                                     _tl22172371_
                                     _e22182374_
                                     _hd22192378_
                                     _tl22202381_))))))))
              (_loop22442454_ _target22412448_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4178141782_
                                                     _e22152364_
                                                     _hd22162368_
                                                     _tl22172371_
                                                     _e22182374_
                                                     _hd22192378_
                                                     _tl22202381_))))
                                            (___match4178141782_
                                             _e22152364_
                                             _hd22162368_
                                             _tl22172371_
                                             _e22182374_
                                             _hd22192378_
                                             _tl22202381_)))))))
                        (_loop22272400_ _target22242394_ '() '())))))
              (if (gx#stx-pair? ___stx4173241733_)
                  (let ((_e22152364_ (gx#syntax-e ___stx4173241733_)))
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
                                          (let ((___splice4173741738_
                                                 (gx#syntax-split-splice
                                                  _hd22222388_
                                                  '0)))
                                            (let ((_tl22262397_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4173741738_
                                                      '1)))
                                                  (_target22242394_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4173741738_
                                                      '0))))
                                              (___match4176941770_
                                               _e22152364_
                                               _hd22162368_
                                               _tl22172371_
                                               _e22182374_
                                               _hd22192378_
                                               _tl22202381_
                                               _e22212384_
                                               _hd22222388_
                                               _tl22232391_
                                               ___splice4173741738_
                                               _target22242394_
                                               _tl22262397_)))
                                          (if (gx#stx-pair/null? _tl22202381_)
                                              (let ((___splice4174341744_
                                                     (gx#syntax-split-splice
                                                      _tl22202381_
                                                      '0)))
                                                (let ((_tl22602302_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4174341744_
                                                          '1)))
                                                      (_target22582299_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4174341744_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl22602302_)
                                                      (___match4178941790_
                                                       _e22152364_
                                                       _hd22162368_
                                                       _tl22172371_
                                                       _e22182374_
                                                       _hd22192378_
                                                       _tl22202381_
                                                       ___splice4174341744_
                                                       _target22582299_
                                                       _tl22602302_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g22082272_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g22082272_))))))
                                  (if (gx#stx-pair/null? _tl22202381_)
                                      (let ((___splice4174341744_
                                             (gx#syntax-split-splice
                                              _tl22202381_
                                              '0)))
                                        (let ((_tl22602302_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4174341744_
                                                  '1)))
                                              (_target22582299_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4174341744_
                                                  '0))))
                                          (if (gx#stx-null? _tl22602302_)
                                              (___match4178941790_
                                               _e22152364_
                                               _hd22162368_
                                               _tl22172371_
                                               _e22182374_
                                               _hd22192378_
                                               _tl22202381_
                                               ___splice4174341744_
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
                                      (let ((_g47115_
                                             (gx#syntax-split-splice
                                              _tl25532592_
                                              '0)))
                                        (begin
                                          (let ((_g47116_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47115_)
                                                       (##vector-length
                                                        _g47115_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47116_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47116_)))
                                          (let ((_target25542595_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47115_ 0)))
                                                (_tl25562598_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47115_ 1))))
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
                             (let ((__tmp47121 (gx#datum->syntax '#f '~let))
                                   (__tmp47117
                                    (let ((__tmp47120
                                           (gx#datum->syntax '#f 'let*-values))
                                          (__tmp47118
                                           (let ((__tmp47119
                                                  (foldr (lambda (_g26442647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g26452650_)
                   (let ()
                     (declare (not safe))
                     (cons _g26442647_ _g26452650_)))
                 '()
                 _L2625_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (cons _L2627_ __tmp47119))))
                                      (declare (not safe))
                                      (cons __tmp47120 __tmp47118))))
                               (declare (not safe))
                               (cons __tmp47121 __tmp47117)))
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
                                      (let ((_g47122_
                                             (gx#syntax-split-splice
                                              _tl26712710_
                                              '0)))
                                        (begin
                                          (let ((_g47123_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47122_)
                                                       (##vector-length
                                                        _g47122_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47123_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47123_)))
                                          (let ((_target26722713_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47122_ 0)))
                                                (_tl26742716_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47122_ 1))))
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
                             (let ((__tmp47128 (gx#datum->syntax '#f '~let))
                                   (__tmp47124
                                    (let ((__tmp47127
                                           (gx#datum->syntax
                                            '#f
                                            'letrec-values))
                                          (__tmp47125
                                           (let ((__tmp47126
                                                  (foldr (lambda (_g27622765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g27632768_)
                   (let ()
                     (declare (not safe))
                     (cons _g27622765_ _g27632768_)))
                 '()
                 _L2743_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (cons _L2745_ __tmp47126))))
                                      (declare (not safe))
                                      (cons __tmp47127 __tmp47125))))
                               (declare (not safe))
                               (cons __tmp47128 __tmp47124)))
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
                                      (let ((_g47129_
                                             (gx#syntax-split-splice
                                              _tl27892828_
                                              '0)))
                                        (begin
                                          (let ((_g47130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47129_)
                                                       (##vector-length
                                                        _g47129_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47130_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47130_)))
                                          (let ((_target27902831_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47129_ 0)))
                                                (_tl27922834_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47129_ 1))))
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
                             (let ((__tmp47135 (gx#datum->syntax '#f '~let))
                                   (__tmp47131
                                    (let ((__tmp47134
                                           (gx#datum->syntax
                                            '#f
                                            'letrec*-values))
                                          (__tmp47132
                                           (let ((__tmp47133
                                                  (foldr (lambda (_g28802883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g28812886_)
                   (let ()
                     (declare (not safe))
                     (cons _g28802883_ _g28812886_)))
                 '()
                 _L2861_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (cons _L2863_ __tmp47133))))
                                      (declare (not safe))
                                      (cons __tmp47134 __tmp47132))))
                               (declare (not safe))
                               (cons __tmp47135 __tmp47131)))
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
                    (let* ((___stx4179241793_ _x3377_)
                           (_g33813392_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4179241793_))))
                      (let ((___kont4179541796_
                             (lambda (_L3420_)
                               (gx#stx-andmap gx#identifier? _L3420_)))
                            (___kont4179741798_
                             (lambda () (gx#identifier? _x3377_))))
                        (if (gx#stx-pair? ___stx4179241793_)
                            (let ((_e33843410_
                                   (gx#syntax-e ___stx4179241793_)))
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
                                         |gerbil/core$<sugar>$<sugar:1>[1]#_g47136_|
                                         _hd33853414_)
                                        (___kont4179541796_ _tl33863417_)
                                        (___kont4179741798_))
                                    (___kont4179741798_))))
                            (___kont4179741798_))))))
                 (_let-head2899_
                  (lambda (_x3317_)
                    (let* ((___stx4181241813_ _x3317_)
                           (_g33213332_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4181241813_))))
                      (let ((___kont4181541816_ (lambda (_L3360_) _L3360_))
                            (___kont4181741818_ (lambda () (list _x3317_))))
                        (if (gx#stx-pair? ___stx4181241813_)
                            (let ((_e33243350_
                                   (gx#syntax-e ___stx4181241813_)))
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
                                         |gerbil/core$<sugar>$<sugar:1>[1]#_g47137_|
                                         _hd33253354_)
                                        (___kont4181541816_ _tl33263357_)
                                        (___kont4181741818_))
                                    (___kont4181741818_))))
                            (___kont4181741818_)))))))
          (let* ((___stx4183241833_ _stx2894_)
                 (_g29022968_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx4183241833_))))
            (let ((___kont4183541836_
                   (lambda (_L3286_ _L3288_ _L3289_ _L3290_ _L3291_)
                     (let ((__tmp47138
                            (let ((__tmp47139
                                   (let ((__tmp47140
                                          (let ((__tmp47141
                                                 (let ((__tmp47142
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L3288_ '()))))
                                                   (declare (not safe))
                                                   (cons _L3289_ __tmp47142))))
                                            (declare (not safe))
                                            (cons __tmp47141 '()))))
                                     (declare (not safe))
                                     (cons __tmp47140 _L3286_))))
                              (declare (not safe))
                              (cons _L3290_ __tmp47139))))
                       (declare (not safe))
                       (cons _L3291_ __tmp47138))))
                  (___kont4183741838_
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
                                   (let ((_g47143_
                                          (gx#syntax-split-splice
                                           _g31293149_
                                           '0)))
                                     (begin
                                       (let ((_g47144_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g47143_)
                                                    (##vector-length _g47143_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g47144_ 2)))
                                             (error "Context expects 2 values"
                                                    _g47144_)))
                                       (let ((_target31313152_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g47143_ 0)))
                                             (_tl31333155_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g47143_ 1))))
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
                            (let ((__tmp47145
                                   (let ((__tmp47147
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _L3091_
                                             _L3182_)
                                            (foldr (lambda (_g31973203_
                                                            _g31983206_
                                                            _g31993208_)
                                                     (let ((__tmp47148
                                                            (let ((__tmp47149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _g31973203_ '()))))
                      (declare (not safe))
                      (cons _g31983206_ __tmp47149))))
               (declare (not safe))
               (cons __tmp47148 _g31993208_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L3091_
                                                   _L3182_)))
                                         (__tmp47146
                                          (foldr (lambda (_g32003211_
                                                          _g32013214_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g32003211_
                                                           _g32013214_)))
                                                 '()
                                                 _L3089_)))
                                     (declare (not safe))
                                     (cons __tmp47147 __tmp47146))))
                              (declare (not safe))
                              (cons _L3093_ __tmp47145))))
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
                         (foldr (lambda (_g32203223_ _g32213226_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g32203223_ _g32213226_)))
                                '()
                                _L3092_)))))))
              (let* ((___match4190141902_
                      (lambda (_e29282975_
                               _hd29292979_
                               _tl29302982_
                               _e29312985_
                               _hd29322989_
                               _tl29332992_
                               _e29342995_
                               _hd29352999_
                               _tl29363002_
                               ___splice4183941840_
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
                                              (let ((___splice4184141842_
                                                     (gx#syntax-split-splice
                                                      _tl29363002_
                                                      '0)))
                                                (let ((_tl29563062_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4184141842_
                                                          '1)))
                                                      (_target29543059_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4184141842_
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
                                       (foldr (lambda (_g31193122_ _g31203125_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g31193122_
                                                        _g31203125_)))
                                              '()
                                              _L3092_))
                                      (___kont4183741838_
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
                     (___match4187541876_
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
                              (___kont4183541836_
                               _L3286_
                               _L3288_
                               _L3289_
                               _L3290_
                               _L3291_)
                              (if (gx#stx-pair/null? _hd29163260_)
                                  (let ((___splice4183941840_
                                         (gx#syntax-split-splice
                                          _hd29163260_
                                          '0)))
                                    (let ((_tl29393008_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4183941840_
                                              '1)))
                                          (_target29373005_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4183941840_
                                              '0))))
                                      (if (gx#stx-null? _tl29393008_)
                                          (___match4190141902_
                                           _e29093236_
                                           _hd29103240_
                                           _tl29113243_
                                           _e29123246_
                                           _hd29133250_
                                           _tl29143253_
                                           _e29153256_
                                           _hd29163260_
                                           _tl29173263_
                                           ___splice4183941840_
                                           _target29373005_
                                           _tl29393008_)
                                          (let ()
                                            (declare (not safe))
                                            (_g29022968_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g29022968_))))))))
                (if (gx#stx-pair? ___stx4183241833_)
                    (let ((_e29093236_ (gx#syntax-e ___stx4183241833_)))
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
                    (___match4187541876_
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
                        (let ((___splice4183941840_
                               (gx#syntax-split-splice _hd29163260_ '0)))
                          (let ((_tl29393008_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4183941840_ '1)))
                                (_target29373005_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice4183941840_ '0))))
                            (if (gx#stx-null? _tl29393008_)
                                (___match4190141902_
                                 _e29093236_
                                 _hd29103240_
                                 _tl29113243_
                                 _e29123246_
                                 _hd29133250_
                                 _tl29143253_
                                 _e29153256_
                                 _hd29163260_
                                 _tl29173263_
                                 ___splice4183941840_
                                 _target29373005_
                                 _tl29393008_)
                                (let () (declare (not safe)) (_g29022968_)))))
                        (let () (declare (not safe)) (_g29022968_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd29163260_)
                                                        (let ((___splice4183941840_
                                                               (gx#syntax-split-splice
                                                                _hd29163260_
                                                                '0)))
                                                          (let ((_tl29393008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4183941840_ '1)))
                        (_target29373005_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4183941840_ '0))))
                    (if (gx#stx-null? _tl29393008_)
                        (___match4190141902_
                         _e29093236_
                         _hd29103240_
                         _tl29113243_
                         _e29123246_
                         _hd29133250_
                         _tl29143253_
                         _e29153256_
                         _hd29163260_
                         _tl29173263_
                         ___splice4183941840_
                         _target29373005_
                         _tl29393008_)
                        (let () (declare (not safe)) (_g29022968_)))))
                (let () (declare (not safe)) (_g29022968_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd29163260_)
                                                (let ((___splice4183941840_
                                                       (gx#syntax-split-splice
                                                        _hd29163260_
                                                        '0)))
                                                  (let ((_tl29393008_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4183941840_
                                                            '1)))
                                                        (_target29373005_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4183941840_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl29393008_)
                                                        (___match4190141902_
                                                         _e29093236_
                                                         _hd29103240_
                                                         _tl29113243_
                                                         _e29123246_
                                                         _hd29133250_
                                                         _tl29143253_
                                                         _e29153256_
                                                         _hd29163260_
                                                         _tl29173263_
                                                         ___splice4183941840_
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
        (let* ((___stx4190441905_ _$stx3440_)
               (_g34463472_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4190441905_))))
          (let ((___kont4190741908_ (lambda () '#t))
                (___kont4190941910_ (lambda (_L3544_) _L3544_))
                (___kont4191141912_
                 (lambda (_L3499_ _L3501_ _L3502_)
                   (let ((__tmp47154 (gx#datum->syntax '#f 'if))
                         (__tmp47150
                          (let ((__tmp47151
                                 (let ((__tmp47153
                                        (let ()
                                          (declare (not safe))
                                          (cons _L3502_ _L3499_)))
                                       (__tmp47152
                                        (let ()
                                          (declare (not safe))
                                          (cons '#f '()))))
                                   (declare (not safe))
                                   (cons __tmp47153 __tmp47152))))
                            (declare (not safe))
                            (cons _L3501_ __tmp47151))))
                     (declare (not safe))
                     (cons __tmp47154 __tmp47150)))))
            (if (gx#stx-pair? ___stx4190441905_)
                (let ((_e34483564_ (gx#syntax-e ___stx4190441905_)))
                  (let ((_tl34503571_
                         (let () (declare (not safe)) (##cdr _e34483564_)))
                        (_hd34493568_
                         (let () (declare (not safe)) (##car _e34483564_))))
                    (if (gx#stx-null? _tl34503571_)
                        (___kont4190741908_)
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
                                    (___kont4190941910_ _hd34563538_)
                                    (___kont4191141912_
                                     _tl34573541_
                                     _hd34563538_
                                     _hd34493568_))))
                            (let () (declare (not safe)) (_g34463472_))))))
                (let () (declare (not safe)) (_g34463472_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#or|
      (lambda (_$stx3582_)
        (let* ((___stx4195041951_ _$stx3582_)
               (_g35883614_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4195041951_))))
          (let ((___kont4195341954_ (lambda () '#f))
                (___kont4195541956_ (lambda (_L3686_) _L3686_))
                (___kont4195741958_
                 (lambda (_L3641_ _L3643_ _L3644_)
                   (let ((__tmp47168 (gx#datum->syntax '#f 'let))
                         (__tmp47155
                          (let ((__tmp47165
                                 (let ((__tmp47167 (gx#datum->syntax '#f '$e))
                                       (__tmp47166
                                        (let ()
                                          (declare (not safe))
                                          (cons _L3643_ '()))))
                                   (declare (not safe))
                                   (cons __tmp47167 __tmp47166)))
                                (__tmp47156
                                 (let ((__tmp47157
                                        (let ((__tmp47164
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp47158
                                               (let ((__tmp47163
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp47159
                                                      (let ((__tmp47162
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$e))
                                                            (__tmp47160
                                                             (let ((__tmp47161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L3644_ _L3641_))))
                       (declare (not safe))
                       (cons __tmp47161 '()))))
                (declare (not safe))
                (cons __tmp47162 __tmp47160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47163
                                                       __tmp47159))))
                                          (declare (not safe))
                                          (cons __tmp47164 __tmp47158))))
                                   (declare (not safe))
                                   (cons __tmp47157 '()))))
                            (declare (not safe))
                            (cons __tmp47165 __tmp47156))))
                     (declare (not safe))
                     (cons __tmp47168 __tmp47155)))))
            (if (gx#stx-pair? ___stx4195041951_)
                (let ((_e35903706_ (gx#syntax-e ___stx4195041951_)))
                  (let ((_tl35923713_
                         (let () (declare (not safe)) (##cdr _e35903706_)))
                        (_hd35913710_
                         (let () (declare (not safe)) (##car _e35903706_))))
                    (if (gx#stx-null? _tl35923713_)
                        (___kont4195341954_)
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
                                    (___kont4195541956_ _hd35983680_)
                                    (___kont4195741958_
                                     _tl35993683_
                                     _hd35983680_
                                     _hd35913710_))))
                            (let () (declare (not safe)) (_g35883614_))))))
                (let () (declare (not safe)) (_g35883614_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#cond|
      (lambda (_$stx3724_)
        (let* ((___stx4199641997_ _$stx3724_)
               (_g37333824_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4199641997_))))
          (let ((___kont4199942000_ (lambda () '#!void))
                (___kont4200142002_
                 (lambda (_L4171_)
                   (let ((__tmp47173 (gx#datum->syntax '#f '%#expression))
                         (__tmp47169
                          (let ((__tmp47170
                                 (let ((__tmp47172
                                        (gx#datum->syntax '#f 'begin))
                                       (__tmp47171
                                        (foldr (lambda (_g41904193_
                                                        _g41914196_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g41904193_
                                                         _g41914196_)))
                                               '()
                                               _L4171_)))
                                   (declare (not safe))
                                   (cons __tmp47172 __tmp47171))))
                            (declare (not safe))
                            (cons __tmp47170 '()))))
                     (declare (not safe))
                     (cons __tmp47173 __tmp47169))))
                (___kont4200542006_
                 (lambda ()
                   (let ((__tmp47175 (gx#datum->syntax '#f 'syntax-error))
                         (__tmp47174
                          (let ()
                            (declare (not safe))
                            (cons '"bad syntax; misplaced else" '()))))
                     (declare (not safe))
                     (cons __tmp47175 __tmp47174))))
                (___kont4200742008_
                 (lambda (_L4044_ _L4046_ _L4047_)
                   (let ((__tmp47189 (gx#datum->syntax '#f 'let))
                         (__tmp47176
                          (let ((__tmp47186
                                 (let ((__tmp47188 (gx#datum->syntax '#f '$e))
                                       (__tmp47187
                                        (let ()
                                          (declare (not safe))
                                          (cons _L4046_ '()))))
                                   (declare (not safe))
                                   (cons __tmp47188 __tmp47187)))
                                (__tmp47177
                                 (let ((__tmp47178
                                        (let ((__tmp47185
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp47179
                                               (let ((__tmp47184
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp47180
                                                      (let ((__tmp47183
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$e))
                                                            (__tmp47181
                                                             (let ((__tmp47182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L4047_ _L4044_))))
                       (declare (not safe))
                       (cons __tmp47182 '()))))
                (declare (not safe))
                (cons __tmp47183 __tmp47181))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47184
                                                       __tmp47180))))
                                          (declare (not safe))
                                          (cons __tmp47185 __tmp47179))))
                                   (declare (not safe))
                                   (cons __tmp47178 '()))))
                            (declare (not safe))
                            (cons __tmp47186 __tmp47177))))
                     (declare (not safe))
                     (cons __tmp47189 __tmp47176))))
                (___kont4200942010_
                 (lambda (_L3982_ _L3984_ _L3985_ _L3986_)
                   (let ((__tmp47205 (gx#datum->syntax '#f 'let))
                         (__tmp47190
                          (let ((__tmp47202
                                 (let ((__tmp47204 (gx#datum->syntax '#f '$e))
                                       (__tmp47203
                                        (let ()
                                          (declare (not safe))
                                          (cons _L3985_ '()))))
                                   (declare (not safe))
                                   (cons __tmp47204 __tmp47203)))
                                (__tmp47191
                                 (let ((__tmp47192
                                        (let ((__tmp47201
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp47193
                                               (let ((__tmp47200
                                                      (gx#datum->syntax
                                                       '#f
                                                       '$e))
                                                     (__tmp47194
                                                      (let ((__tmp47197
                                                             (let ((__tmp47198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp47199 (gx#datum->syntax '#f '$e)))
                              (declare (not safe))
                              (cons __tmp47199 '()))))
                       (declare (not safe))
                       (cons _L3984_ __tmp47198)))
                    (__tmp47195
                     (let ((__tmp47196
                            (let ()
                              (declare (not safe))
                              (cons _L3986_ _L3982_))))
                       (declare (not safe))
                       (cons __tmp47196 '()))))
                (declare (not safe))
                (cons __tmp47197 __tmp47195))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47200
                                                       __tmp47194))))
                                          (declare (not safe))
                                          (cons __tmp47201 __tmp47193))))
                                   (declare (not safe))
                                   (cons __tmp47192 '()))))
                            (declare (not safe))
                            (cons __tmp47202 __tmp47191))))
                     (declare (not safe))
                     (cons __tmp47205 __tmp47190))))
                (___kont4201142012_
                 (lambda (_L3891_ _L3893_ _L3894_ _L3895_)
                   (let ((__tmp47213 (gx#datum->syntax '#f 'if))
                         (__tmp47206
                          (let ((__tmp47207
                                 (let ((__tmp47210
                                        (let ((__tmp47212
                                               (gx#datum->syntax '#f 'begin))
                                              (__tmp47211
                                               (foldr (lambda (_g39163919_
                                                               _g39173922_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g39163919_
                                                                _g39173922_)))
                                                      '()
                                                      _L3893_)))
                                          (declare (not safe))
                                          (cons __tmp47212 __tmp47211)))
                                       (__tmp47208
                                        (let ((__tmp47209
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L3895_ _L3891_))))
                                          (declare (not safe))
                                          (cons __tmp47209 '()))))
                                   (declare (not safe))
                                   (cons __tmp47210 __tmp47208))))
                            (declare (not safe))
                            (cons _L3894_ __tmp47207))))
                     (declare (not safe))
                     (cons __tmp47213 __tmp47206)))))
            (let* ((___match4215742158_
                    (lambda (_e38013831_
                             _hd38023835_
                             _tl38033838_
                             _e38043841_
                             _hd38053845_
                             _tl38063848_
                             _e38073851_
                             _hd38083855_
                             _tl38093858_
                             ___splice4201342014_
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
                                        (___kont4201142012_
                                         _tl38063848_
                                         _body38183887_
                                         _hd38083855_
                                         _hd38023835_))))))
                        (_loop38133867_ _target38103861_ '()))))
                   (___match4205342054_
                    (lambda (_e37394111_
                             _hd37404115_
                             _tl37414118_
                             _e37424121_
                             _hd37434125_
                             _tl37444128_
                             _e37454131_
                             _hd37464135_
                             _tl37474138_
                             ___splice4200342004_
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
                                            (___kont4200142002_ _body37564167_)
                                            (___kont4200542006_)))))))
                        (_loop37514147_ _target37484141_ '())))))
              (if (gx#stx-pair? ___stx4199641997_)
                  (let ((_e37354206_ (gx#syntax-e ___stx4199641997_)))
                    (let ((_tl37374213_
                           (let () (declare (not safe)) (##cdr _e37354206_)))
                          (_hd37364210_
                           (let () (declare (not safe)) (##car _e37354206_))))
                      (if (gx#stx-null? _tl37374213_)
                          (___kont4199942000_)
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
                                                   |gerbil/core$<sugar>$<sugar:1>[1]#_g47214_|
                                                   _hd37464135_)
                                                  (if (gx#stx-pair/null?
                                                       _tl37474138_)
                                                      (let ((___splice4200342004_
                                                             (gx#syntax-split-splice
                                                              _tl37474138_
                                                              '0)))
                                                        (let ((_tl37504144_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4200342004_ '1)))
                      (_target37484141_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4200342004_ '0))))
                  (if (gx#stx-null? _tl37504144_)
                      (___match4205342054_
                       _e37354206_
                       _hd37364210_
                       _tl37374213_
                       _e37424121_
                       _hd37434125_
                       _tl37444128_
                       _e37454131_
                       _hd37464135_
                       _tl37474138_
                       ___splice4200342004_
                       _target37484141_
                       _tl37504144_)
                      (___kont4200542006_))))
              (___kont4200542006_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl37474138_)
                                                      (___kont4200742008_
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
                               |gerbil/core$<sugar>$<sugar:1>[1]#_g47215_|
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
                                          (___kont4200942010_
                                           _tl37444128_
                                           _hd37953976_
                                           _hd37464135_
                                           _hd37364210_)
                                          (if (gx#stx-pair/null? _tl37474138_)
                                              (let ((___splice4201342014_
                                                     (gx#syntax-split-splice
                                                      _tl37474138_
                                                      '0)))
                                                (let ((_tl38123864_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4201342014_
                                                          '1)))
                                                      (_target38103861_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4201342014_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl38123864_)
                                                      (___match4215742158_
                                                       _e37354206_
                                                       _hd37364210_
                                                       _tl37374213_
                                                       _e37424121_
                                                       _hd37434125_
                                                       _tl37444128_
                                                       _e37454131_
                                                       _hd37464135_
                                                       _tl37474138_
                                                       ___splice4201342014_
                                                       _target38103861_
                                                       _tl38123864_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g37333824_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g37333824_))))))
                                  (if (gx#stx-pair/null? _tl37474138_)
                                      (let ((___splice4201342014_
                                             (gx#syntax-split-splice
                                              _tl37474138_
                                              '0)))
                                        (let ((_tl38123864_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4201342014_
                                                  '1)))
                                              (_target38103861_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4201342014_
                                                  '0))))
                                          (if (gx#stx-null? _tl38123864_)
                                              (___match4215742158_
                                               _e37354206_
                                               _hd37364210_
                                               _tl37374213_
                                               _e37424121_
                                               _hd37434125_
                                               _tl37444128_
                                               _e37454131_
                                               _hd37464135_
                                               _tl37474138_
                                               ___splice4201342014_
                                               _target38103861_
                                               _tl38123864_)
                                              (let ()
                                                (declare (not safe))
                                                (_g37333824_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g37333824_))))
                              (if (gx#stx-pair/null? _tl37474138_)
                                  (let ((___splice4201342014_
                                         (gx#syntax-split-splice
                                          _tl37474138_
                                          '0)))
                                    (let ((_tl38123864_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4201342014_
                                              '1)))
                                          (_target38103861_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4201342014_
                                              '0))))
                                      (if (gx#stx-null? _tl38123864_)
                                          (___match4215742158_
                                           _e37354206_
                                           _hd37364210_
                                           _tl37374213_
                                           _e37424121_
                                           _hd37434125_
                                           _tl37444128_
                                           _e37454131_
                                           _hd37464135_
                                           _tl37474138_
                                           ___splice4201342014_
                                           _target38103861_
                                           _tl38123864_)
                                          (let ()
                                            (declare (not safe))
                                            (_g37333824_)))))
                                  (let () (declare (not safe)) (_g37333824_))))
                          (if (gx#stx-pair/null? _tl37474138_)
                              (let ((___splice4201342014_
                                     (gx#syntax-split-splice _tl37474138_ '0)))
                                (let ((_tl38123864_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4201342014_
                                          '1)))
                                      (_target38103861_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4201342014_
                                          '0))))
                                  (if (gx#stx-null? _tl38123864_)
                                      (___match4215742158_
                                       _e37354206_
                                       _hd37364210_
                                       _tl37374213_
                                       _e37424121_
                                       _hd37434125_
                                       _tl37444128_
                                       _e37454131_
                                       _hd37464135_
                                       _tl37474138_
                                       ___splice4201342014_
                                       _target38103861_
                                       _tl38123864_)
                                      (let ()
                                        (declare (not safe))
                                        (_g37333824_)))))
                              (let () (declare (not safe)) (_g37333824_))))))
                  (if (gx#stx-pair/null? _tl37474138_)
                      (let ((___splice4201342014_
                             (gx#syntax-split-splice _tl37474138_ '0)))
                        (let ((_tl38123864_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4201342014_ '1)))
                              (_target38103861_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4201342014_ '0))))
                          (if (gx#stx-null? _tl38123864_)
                              (___match4215742158_
                               _e37354206_
                               _hd37364210_
                               _tl37374213_
                               _e37424121_
                               _hd37434125_
                               _tl37444128_
                               _e37454131_
                               _hd37464135_
                               _tl37474138_
                               ___splice4201342014_
                               _target38103861_
                               _tl38123864_)
                              (let () (declare (not safe)) (_g37333824_)))))
                      (let () (declare (not safe)) (_g37333824_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl37474138_)
                                                  (___kont4200742008_
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
                           |gerbil/core$<sugar>$<sugar:1>[1]#_g47215_|
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
                                      (___kont4200942010_
                                       _tl37444128_
                                       _hd37953976_
                                       _hd37464135_
                                       _hd37364210_)
                                      (if (gx#stx-pair/null? _tl37474138_)
                                          (let ((___splice4201342014_
                                                 (gx#syntax-split-splice
                                                  _tl37474138_
                                                  '0)))
                                            (let ((_tl38123864_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4201342014_
                                                      '1)))
                                                  (_target38103861_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4201342014_
                                                      '0))))
                                              (if (gx#stx-null? _tl38123864_)
                                                  (___match4215742158_
                                                   _e37354206_
                                                   _hd37364210_
                                                   _tl37374213_
                                                   _e37424121_
                                                   _hd37434125_
                                                   _tl37444128_
                                                   _e37454131_
                                                   _hd37464135_
                                                   _tl37474138_
                                                   ___splice4201342014_
                                                   _target38103861_
                                                   _tl38123864_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g37333824_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g37333824_))))))
                              (if (gx#stx-pair/null? _tl37474138_)
                                  (let ((___splice4201342014_
                                         (gx#syntax-split-splice
                                          _tl37474138_
                                          '0)))
                                    (let ((_tl38123864_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4201342014_
                                              '1)))
                                          (_target38103861_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice4201342014_
                                              '0))))
                                      (if (gx#stx-null? _tl38123864_)
                                          (___match4215742158_
                                           _e37354206_
                                           _hd37364210_
                                           _tl37374213_
                                           _e37424121_
                                           _hd37434125_
                                           _tl37444128_
                                           _e37454131_
                                           _hd37464135_
                                           _tl37474138_
                                           ___splice4201342014_
                                           _target38103861_
                                           _tl38123864_)
                                          (let ()
                                            (declare (not safe))
                                            (_g37333824_)))))
                                  (let () (declare (not safe)) (_g37333824_))))
                          (if (gx#stx-pair/null? _tl37474138_)
                              (let ((___splice4201342014_
                                     (gx#syntax-split-splice _tl37474138_ '0)))
                                (let ((_tl38123864_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4201342014_
                                          '1)))
                                      (_target38103861_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4201342014_
                                          '0))))
                                  (if (gx#stx-null? _tl38123864_)
                                      (___match4215742158_
                                       _e37354206_
                                       _hd37364210_
                                       _tl37374213_
                                       _e37424121_
                                       _hd37434125_
                                       _tl37444128_
                                       _e37454131_
                                       _hd37464135_
                                       _tl37474138_
                                       ___splice4201342014_
                                       _target38103861_
                                       _tl38123864_)
                                      (let ()
                                        (declare (not safe))
                                        (_g37333824_)))))
                              (let () (declare (not safe)) (_g37333824_))))
                      (if (gx#stx-pair/null? _tl37474138_)
                          (let ((___splice4201342014_
                                 (gx#syntax-split-splice _tl37474138_ '0)))
                            (let ((_tl38123864_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4201342014_ '1)))
                                  (_target38103861_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4201342014_ '0))))
                              (if (gx#stx-null? _tl38123864_)
                                  (___match4215742158_
                                   _e37354206_
                                   _hd37364210_
                                   _tl37374213_
                                   _e37424121_
                                   _hd37434125_
                                   _tl37444128_
                                   _e37454131_
                                   _hd37464135_
                                   _tl37474138_
                                   ___splice4201342014_
                                   _target38103861_
                                   _tl38123864_)
                                  (let ()
                                    (declare (not safe))
                                    (_g37333824_)))))
                          (let () (declare (not safe)) (_g37333824_))))))
              (if (gx#stx-pair/null? _tl37474138_)
                  (let ((___splice4201342014_
                         (gx#syntax-split-splice _tl37474138_ '0)))
                    (let ((_tl38123864_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4201342014_ '1)))
                          (_target38103861_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4201342014_ '0))))
                      (if (gx#stx-null? _tl38123864_)
                          (___match4215742158_
                           _e37354206_
                           _hd37364210_
                           _tl37374213_
                           _e37424121_
                           _hd37434125_
                           _tl37444128_
                           _e37454131_
                           _hd37464135_
                           _tl37474138_
                           ___splice4201342014_
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
                                      (let ((_g47216_
                                             (gx#syntax-split-splice
                                              _tl42394278_
                                              '0)))
                                        (begin
                                          (let ((_g47217_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47216_)
                                                       (##vector-length
                                                        _g47216_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47217_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47217_)))
                                          (let ((_target42404281_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47216_ 0)))
                                                (_tl42424284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47216_ 1))))
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
                             (let ((__tmp47224 (gx#datum->syntax '#f 'if))
                                   (__tmp47218
                                    (let ((__tmp47219
                                           (let ((__tmp47221
                                                  (let ((__tmp47223
                                                         (gx#datum->syntax
                                                          '#f
                                                          'begin))
                                                        (__tmp47222
                                                         (foldr (lambda (_g43304333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g43314336_)
                          (let ()
                            (declare (not safe))
                            (cons _g43304333_ _g43314336_)))
                        '()
                        _L4311_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47223
                                                          __tmp47222)))
                                                 (__tmp47220
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons '#!void '()))))
                                             (declare (not safe))
                                             (cons __tmp47221 __tmp47220))))
                                      (declare (not safe))
                                      (cons _L4313_ __tmp47219))))
                               (declare (not safe))
                               (cons __tmp47224 __tmp47218)))
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
                                      (let ((_g47225_
                                             (gx#syntax-split-splice
                                              _tl43574396_
                                              '0)))
                                        (begin
                                          (let ((_g47226_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47225_)
                                                       (##vector-length
                                                        _g47225_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47226_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47226_)))
                                          (let ((_target43584399_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47225_ 0)))
                                                (_tl43604402_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47225_ 1))))
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
                             (let ((__tmp47233 (gx#datum->syntax '#f 'if))
                                   (__tmp47227
                                    (let ((__tmp47228
                                           (let ((__tmp47229
                                                  (let ((__tmp47230
                                                         (let ((__tmp47232
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin))
                       (__tmp47231
                        (foldr (lambda (_g44484451_ _g44494454_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g44484451_ _g44494454_)))
                               '()
                               _L4429_)))
                   (declare (not safe))
                   (cons __tmp47232 __tmp47231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47230 '()))))
                                             (declare (not safe))
                                             (cons '#!void __tmp47229))))
                                      (declare (not safe))
                                      (cons _L4431_ __tmp47228))))
                               (declare (not safe))
                               (cons __tmp47233 __tmp47227)))
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
                                      (let ((_g47234_
                                             (gx#syntax-split-splice
                                              _tl44744513_
                                              '0)))
                                        (begin
                                          (let ((_g47235_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47234_)
                                                       (##vector-length
                                                        _g47234_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47235_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47235_)))
                                          (let ((_target44754516_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47234_ 0)))
                                                (_tl44774519_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47234_ 1))))
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
                                         (foldr (lambda (_g45654568_
                                                         _g45664571_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g45654568_
                                                          _g45664571_)))
                                                '()
                                                _L4546_)))
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
                                                 (let ((__tmp47249
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp47236
                                                        (let ((__tmp47245
                                                               (let ((__tmp47248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'def))
                             (__tmp47246
                              (let ((__tmp47247
                                     (let ()
                                       (declare (not safe))
                                       (cons _L4638_ '()))))
                                (declare (not safe))
                                (cons _L4640_ __tmp47247))))
                         (declare (not safe))
                         (cons __tmp47248 __tmp47246)))
                      (__tmp47237
                       (let ((__tmp47241
                              (let ((__tmp47244 (gx#datum->syntax '#f 'set!))
                                    (__tmp47242
                                     (let ((__tmp47243
                                            (let ()
                                              (declare (not safe))
                                              (cons _L4640_ '()))))
                                       (declare (not safe))
                                       (cons _L4640_ __tmp47243))))
                                (declare (not safe))
                                (cons __tmp47244 __tmp47242)))
                             (__tmp47238
                              (let ((__tmp47239
                                     (let ((__tmp47240
                                            (gx#datum->syntax '#f 'void)))
                                       (declare (not safe))
                                       (cons __tmp47240 '()))))
                                (declare (not safe))
                                (cons __tmp47239 '()))))
                         (declare (not safe))
                         (cons __tmp47241 __tmp47238))))
                  (declare (not safe))
                  (cons __tmp47245 __tmp47237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47249
                                                         __tmp47236)))
                                               _hd45944632_
                                               _hd45914622_)
                                              (_g45834601_ _g45844605_))))
                                      (_g45834601_ _g45844605_))))
                              (_g45834601_ _g45844605_))))
                      (_g45834601_ _g45844605_)))))
          (_g45824656_ _$stx4579_))))))
