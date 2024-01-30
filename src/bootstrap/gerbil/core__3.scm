(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g42612_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g42613_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g42616_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g42617_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defrules|
      (lambda (_$stx1335_)
        (let* ((_g13391367_
                (lambda (_g13401363_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g13401363_)))
               (_g13381468_
                (lambda (_g13401371_)
                  (if (gx#stx-pair? _g13401371_)
                      (let ((_e13461374_ (gx#syntax-e _g13401371_)))
                        (let ((_hd13451378_
                               (let ()
                                 (declare (not safe))
                                 (##car _e13461374_)))
                              (_tl13441381_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e13461374_))))
                          (if (gx#stx-pair? _tl13441381_)
                              (let ((_e13491384_ (gx#syntax-e _tl13441381_)))
                                (let ((_hd13481388_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e13491384_)))
                                      (_tl13471391_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e13491384_))))
                                  (if (gx#stx-pair? _tl13471391_)
                                      (let ((_e13521394_
                                             (gx#syntax-e _tl13471391_)))
                                        (let ((_hd13511398_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e13521394_)))
                                              (_tl13501401_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e13521394_))))
                                          (if (gx#stx-pair/null? _tl13501401_)
                                              (let ((_g42604_
                                                     (gx#syntax-split-splice
                                                      _tl13501401_
                                                      '0)))
                                                (begin
                                                  (let ((_g42605_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g42604_)
                                                               (##vector-length
                                                                _g42604_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g42605_ 2)))
                (error "Context expects 2 values" _g42605_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target13531404_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g42604_
                                                            0)))
                                                        (_tl13551407_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g42604_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl13551407_)
                                                        (letrec ((_loop13561410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd13541414_ _clauses13601417_)
                            (if (gx#stx-pair? _hd13541414_)
                                (let ((_e13571420_ (gx#syntax-e _hd13541414_)))
                                  (let ((_lp-hd13581424_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e13571420_)))
                                        (_lp-tl13591427_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e13571420_))))
                                    (_loop13561410_
                                     _lp-tl13591427_
                                     (cons _lp-hd13581424_
                                           _clauses13601417_))))
                                (let ((_clauses13611430_
                                       (reverse _clauses13601417_)))
                                  ((lambda (_L1434_ _L1436_ _L1437_)
                                     (if (gx#identifier? _L1437_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'define-syntax)
                                               (cons _L1437_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'syntax-rules)
                         (cons _L1436_
                               (foldr (lambda (_g14591462_ _g14601465_)
                                        (cons _g14591462_ _g14601465_))
                                      '()
                                      _L1434_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_g13391367_ _g13401371_)))
                                   _clauses13611430_
                                   _hd13511398_
                                   _hd13481388_))))))
                  (_loop13561410_ _target13531404_ '()))
                (_g13391367_ _g13401371_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g13391367_ _g13401371_))))
                                      (_g13391367_ _g13401371_))))
                              (_g13391367_ _g13401371_))))
                      (_g13391367_ _g13401371_)))))
          (_g13381468_ _$stx1335_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defsyntax%|
      (lambda (_$stx1473_)
        (let* ((___stx3720437205_ _$stx1473_)
               (_g14781517_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3720437205_))))
          (let ((___kont3720737208_
                 (lambda (_L1639_ _L1641_ _L1642_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _L1642_
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L1641_
                                                 (foldr (lambda (_g16611664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g16621667_)
                  (cons _g16611664_ _g16621667_))
                '()
                _L1639_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3721137212_
                 (lambda (_L1554_ _L1556_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _L1556_ (cons _L1554_ '()))))))
            (let* ((___match3725937260_
                    (lambda (_e15051524_
                             _hd15041528_
                             _tl15031531_
                             _e15081534_
                             _hd15071538_
                             _tl15061541_
                             _e15111544_
                             _hd15101548_
                             _tl15091551_)
                      (let ((_L1554_ _hd15101548_) (_L1556_ _hd15071538_))
                        (if (gx#identifier? _L1556_)
                            (___kont3721137212_ _L1554_ _L1556_)
                            (let () (declare (not safe)) (_g14781517_))))))
                   (___match3725137252_
                    (lambda (_e15051524_
                             _hd15041528_
                             _tl15031531_
                             _e15081534_
                             _hd15071538_
                             _tl15061541_)
                      (if (gx#stx-pair? _tl15061541_)
                          (let ((_e15111544_ (gx#syntax-e _tl15061541_)))
                            (let ((_tl15091551_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e15111544_)))
                                  (_hd15101548_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e15111544_))))
                              (if (gx#stx-null? _tl15091551_)
                                  (___match3725937260_
                                   _e15051524_
                                   _hd15041528_
                                   _tl15031531_
                                   _e15081534_
                                   _hd15071538_
                                   _tl15061541_
                                   _e15111544_
                                   _hd15101548_
                                   _tl15091551_)
                                  (let ()
                                    (declare (not safe))
                                    (_g14781517_)))))
                          (let () (declare (not safe)) (_g14781517_)))))
                   (___match3723937240_
                    (lambda (_e14851579_
                             _hd14841583_
                             _tl14831586_
                             _e14881589_
                             _hd14871593_
                             _tl14861596_
                             _e14911599_
                             _hd14901603_
                             _tl14891606_
                             ___splice3720937210_
                             _target14921609_
                             _tl14941612_)
                      (letrec ((_loop14951615_
                                (lambda (_hd14931619_ _body14991622_)
                                  (if (gx#stx-pair? _hd14931619_)
                                      (let ((_e14961625_
                                             (gx#syntax-e _hd14931619_)))
                                        (let ((_lp-tl14981632_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e14961625_)))
                                              (_lp-hd14971629_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e14961625_))))
                                          (_loop14951615_
                                           _lp-tl14981632_
                                           (cons _lp-hd14971629_
                                                 _body14991622_))))
                                      (let ((_body15001635_
                                             (reverse _body14991622_)))
                                        (let ((_L1639_ _body15001635_)
                                              (_L1641_ _tl14891606_)
                                              (_L1642_ _hd14901603_))
                                          (if (gx#identifier? _L1642_)
                                              (___kont3720737208_
                                               _L1639_
                                               _L1641_
                                               _L1642_)
                                              (___match3725137252_
                                               _e14851579_
                                               _hd14841583_
                                               _tl14831586_
                                               _e14881589_
                                               _hd14871593_
                                               _tl14861596_))))))))
                        (_loop14951615_ _target14921609_ '())))))
              (if (gx#stx-pair? ___stx3720437205_)
                  (let ((_e14851579_ (gx#syntax-e ___stx3720437205_)))
                    (let ((_tl14831586_
                           (let () (declare (not safe)) (##cdr _e14851579_)))
                          (_hd14841583_
                           (let () (declare (not safe)) (##car _e14851579_))))
                      (if (gx#stx-pair? _tl14831586_)
                          (let ((_e14881589_ (gx#syntax-e _tl14831586_)))
                            (let ((_tl14861596_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e14881589_)))
                                  (_hd14871593_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e14881589_))))
                              (if (gx#stx-pair? _hd14871593_)
                                  (let ((_e14911599_
                                         (gx#syntax-e _hd14871593_)))
                                    (let ((_tl14891606_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e14911599_)))
                                          (_hd14901603_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e14911599_))))
                                      (if (gx#stx-pair/null? _tl14861596_)
                                          (let ((___splice3720937210_
                                                 (gx#syntax-split-splice
                                                  _tl14861596_
                                                  '0)))
                                            (let ((_tl14941612_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3720937210_
                                                      '1)))
                                                  (_target14921609_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3720937210_
                                                      '0))))
                                              (if (gx#stx-null? _tl14941612_)
                                                  (___match3723937240_
                                                   _e14851579_
                                                   _hd14841583_
                                                   _tl14831586_
                                                   _e14881589_
                                                   _hd14871593_
                                                   _tl14861596_
                                                   _e14911599_
                                                   _hd14901603_
                                                   _tl14891606_
                                                   ___splice3720937210_
                                                   _target14921609_
                                                   _tl14941612_)
                                                  (if (gx#stx-pair?
                                                       _tl14861596_)
                                                      (let ((_e15111544_
                                                             (gx#syntax-e
                                                              _tl14861596_)))
                                                        (let ((_tl15091551_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e15111544_)))
                      (_hd15101548_
                       (let () (declare (not safe)) (##car _e15111544_))))
                  (if (gx#stx-null? _tl15091551_)
                      (___match3725937260_
                       _e14851579_
                       _hd14841583_
                       _tl14831586_
                       _e14881589_
                       _hd14871593_
                       _tl14861596_
                       _e15111544_
                       _hd15101548_
                       _tl15091551_)
                      (let () (declare (not safe)) (_g14781517_)))))
              (let () (declare (not safe)) (_g14781517_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl14861596_)
                                              (let ((_e15111544_
                                                     (gx#syntax-e
                                                      _tl14861596_)))
                                                (let ((_tl15091551_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e15111544_)))
                                                      (_hd15101548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e15111544_))))
                                                  (if (gx#stx-null?
                                                       _tl15091551_)
                                                      (___match3725937260_
                                                       _e14851579_
                                                       _hd14841583_
                                                       _tl14831586_
                                                       _e14881589_
                                                       _hd14871593_
                                                       _tl14861596_
                                                       _e15111544_
                                                       _hd15101548_
                                                       _tl15091551_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g14781517_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g14781517_))))))
                                  (if (gx#stx-pair? _tl14861596_)
                                      (let ((_e15111544_
                                             (gx#syntax-e _tl14861596_)))
                                        (let ((_tl15091551_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e15111544_)))
                                              (_hd15101548_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e15111544_))))
                                          (if (gx#stx-null? _tl15091551_)
                                              (___match3725937260_
                                               _e14851579_
                                               _hd14841583_
                                               _tl14831586_
                                               _e14881589_
                                               _hd14871593_
                                               _tl14861596_
                                               _e15111544_
                                               _hd15101548_
                                               _tl15091551_)
                                              (let ()
                                                (declare (not safe))
                                                (_g14781517_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g14781517_))))))
                          (let () (declare (not safe)) (_g14781517_)))))
                  (let () (declare (not safe)) (_g14781517_))))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defalias|
      (lambda (_$stx1675_)
        (let* ((_g16791697_
                (lambda (_g16801693_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g16801693_)))
               (_g16781752_
                (lambda (_g16801701_)
                  (if (gx#stx-pair? _g16801701_)
                      (let ((_e16851704_ (gx#syntax-e _g16801701_)))
                        (let ((_hd16841708_
                               (let ()
                                 (declare (not safe))
                                 (##car _e16851704_)))
                              (_tl16831711_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e16851704_))))
                          (if (gx#stx-pair? _tl16831711_)
                              (let ((_e16881714_ (gx#syntax-e _tl16831711_)))
                                (let ((_hd16871718_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e16881714_)))
                                      (_tl16861721_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e16881714_))))
                                  (if (gx#stx-pair? _tl16861721_)
                                      (let ((_e16911724_
                                             (gx#syntax-e _tl16861721_)))
                                        (let ((_hd16901728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e16911724_)))
                                              (_tl16891731_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e16911724_))))
                                          (if (gx#stx-null? _tl16891731_)
                                              ((lambda (_L1734_ _L1736_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'define-alias)
                                                       (cons _L1736_
                                                             (cons _L1734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd16901728_
                                               _hd16871718_)
                                              (_g16791697_ _g16801701_))))
                                      (_g16791697_ _g16801701_))))
                              (_g16791697_ _g16801701_))))
                      (_g16791697_ _g16801701_)))))
          (_g16781752_ _$stx1675_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#define|
      (lambda (_$stx1756_)
        (let* ((___stx3726237263_ _$stx1756_)
               (_g17611800_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3726237263_))))
          (let ((___kont3726537266_
                 (lambda (_L1922_ _L1924_ _L1925_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L1925_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L1924_
                                                 (foldr (lambda (_g19441947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g19451950_)
                  (cons _g19441947_ _g19451950_))
                '()
                _L1922_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3726937270_
                 (lambda (_L1837_ _L1839_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L1839_ '()) (cons _L1837_ '()))))))
            (let* ((___match3731737318_
                    (lambda (_e17881807_
                             _hd17871811_
                             _tl17861814_
                             _e17911817_
                             _hd17901821_
                             _tl17891824_
                             _e17941827_
                             _hd17931831_
                             _tl17921834_)
                      (let ((_L1837_ _hd17931831_) (_L1839_ _hd17901821_))
                        (if (gx#identifier? _L1839_)
                            (___kont3726937270_ _L1837_ _L1839_)
                            (let () (declare (not safe)) (_g17611800_))))))
                   (___match3730937310_
                    (lambda (_e17881807_
                             _hd17871811_
                             _tl17861814_
                             _e17911817_
                             _hd17901821_
                             _tl17891824_)
                      (if (gx#stx-pair? _tl17891824_)
                          (let ((_e17941827_ (gx#syntax-e _tl17891824_)))
                            (let ((_tl17921834_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e17941827_)))
                                  (_hd17931831_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e17941827_))))
                              (if (gx#stx-null? _tl17921834_)
                                  (___match3731737318_
                                   _e17881807_
                                   _hd17871811_
                                   _tl17861814_
                                   _e17911817_
                                   _hd17901821_
                                   _tl17891824_
                                   _e17941827_
                                   _hd17931831_
                                   _tl17921834_)
                                  (let ()
                                    (declare (not safe))
                                    (_g17611800_)))))
                          (let () (declare (not safe)) (_g17611800_)))))
                   (___match3729737298_
                    (lambda (_e17681862_
                             _hd17671866_
                             _tl17661869_
                             _e17711872_
                             _hd17701876_
                             _tl17691879_
                             _e17741882_
                             _hd17731886_
                             _tl17721889_
                             ___splice3726737268_
                             _target17751892_
                             _tl17771895_)
                      (letrec ((_loop17781898_
                                (lambda (_hd17761902_ _body17821905_)
                                  (if (gx#stx-pair? _hd17761902_)
                                      (let ((_e17791908_
                                             (gx#syntax-e _hd17761902_)))
                                        (let ((_lp-tl17811915_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e17791908_)))
                                              (_lp-hd17801912_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e17791908_))))
                                          (_loop17781898_
                                           _lp-tl17811915_
                                           (cons _lp-hd17801912_
                                                 _body17821905_))))
                                      (let ((_body17831918_
                                             (reverse _body17821905_)))
                                        (let ((_L1922_ _body17831918_)
                                              (_L1924_ _tl17721889_)
                                              (_L1925_ _hd17731886_))
                                          (if (gx#identifier? _L1925_)
                                              (___kont3726537266_
                                               _L1922_
                                               _L1924_
                                               _L1925_)
                                              (___match3730937310_
                                               _e17681862_
                                               _hd17671866_
                                               _tl17661869_
                                               _e17711872_
                                               _hd17701876_
                                               _tl17691879_))))))))
                        (_loop17781898_ _target17751892_ '())))))
              (if (gx#stx-pair? ___stx3726237263_)
                  (let ((_e17681862_ (gx#syntax-e ___stx3726237263_)))
                    (let ((_tl17661869_
                           (let () (declare (not safe)) (##cdr _e17681862_)))
                          (_hd17671866_
                           (let () (declare (not safe)) (##car _e17681862_))))
                      (if (gx#stx-pair? _tl17661869_)
                          (let ((_e17711872_ (gx#syntax-e _tl17661869_)))
                            (let ((_tl17691879_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e17711872_)))
                                  (_hd17701876_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e17711872_))))
                              (if (gx#stx-pair? _hd17701876_)
                                  (let ((_e17741882_
                                         (gx#syntax-e _hd17701876_)))
                                    (let ((_tl17721889_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e17741882_)))
                                          (_hd17731886_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e17741882_))))
                                      (if (gx#stx-pair/null? _tl17691879_)
                                          (let ((___splice3726737268_
                                                 (gx#syntax-split-splice
                                                  _tl17691879_
                                                  '0)))
                                            (let ((_tl17771895_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3726737268_
                                                      '1)))
                                                  (_target17751892_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3726737268_
                                                      '0))))
                                              (if (gx#stx-null? _tl17771895_)
                                                  (___match3729737298_
                                                   _e17681862_
                                                   _hd17671866_
                                                   _tl17661869_
                                                   _e17711872_
                                                   _hd17701876_
                                                   _tl17691879_
                                                   _e17741882_
                                                   _hd17731886_
                                                   _tl17721889_
                                                   ___splice3726737268_
                                                   _target17751892_
                                                   _tl17771895_)
                                                  (if (gx#stx-pair?
                                                       _tl17691879_)
                                                      (let ((_e17941827_
                                                             (gx#syntax-e
                                                              _tl17691879_)))
                                                        (let ((_tl17921834_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e17941827_)))
                      (_hd17931831_
                       (let () (declare (not safe)) (##car _e17941827_))))
                  (if (gx#stx-null? _tl17921834_)
                      (___match3731737318_
                       _e17681862_
                       _hd17671866_
                       _tl17661869_
                       _e17711872_
                       _hd17701876_
                       _tl17691879_
                       _e17941827_
                       _hd17931831_
                       _tl17921834_)
                      (let () (declare (not safe)) (_g17611800_)))))
              (let () (declare (not safe)) (_g17611800_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl17691879_)
                                              (let ((_e17941827_
                                                     (gx#syntax-e
                                                      _tl17691879_)))
                                                (let ((_tl17921834_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e17941827_)))
                                                      (_hd17931831_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e17941827_))))
                                                  (if (gx#stx-null?
                                                       _tl17921834_)
                                                      (___match3731737318_
                                                       _e17681862_
                                                       _hd17671866_
                                                       _tl17661869_
                                                       _e17711872_
                                                       _hd17701876_
                                                       _tl17691879_
                                                       _e17941827_
                                                       _hd17931831_
                                                       _tl17921834_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g17611800_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g17611800_))))))
                                  (if (gx#stx-pair? _tl17691879_)
                                      (let ((_e17941827_
                                             (gx#syntax-e _tl17691879_)))
                                        (let ((_tl17921834_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e17941827_)))
                                              (_hd17931831_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e17941827_))))
                                          (if (gx#stx-null? _tl17921834_)
                                              (___match3731737318_
                                               _e17681862_
                                               _hd17671866_
                                               _tl17661869_
                                               _e17711872_
                                               _hd17701876_
                                               _tl17691879_
                                               _e17941827_
                                               _hd17931831_
                                               _tl17921834_)
                                              (let ()
                                                (declare (not safe))
                                                (_g17611800_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g17611800_))))))
                          (let () (declare (not safe)) (_g17611800_)))))
                  (let () (declare (not safe)) (_g17611800_))))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let*-values|
      (lambda (_$stx1958_)
        (let* ((___stx3732037321_ _$stx1958_)
               (_g19632008_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3732037321_))))
          (let ((___kont3732337324_
                 (lambda (_L2166_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_g21822185_ _g21832188_)
                                        (cons _g21822185_ _g21832188_))
                                      '()
                                      _L2166_)))))
                (___kont3732737328_
                 (lambda (_L2075_ _L2077_ _L2078_ _L2079_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons _L2078_ '())
                               (cons (cons _L2079_
                                           (cons _L2077_
                                                 (foldr (lambda (_g21002103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g21012106_)
                  (cons _g21002103_ _g21012106_))
                '()
                _L2075_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match3737937380_
                    (lambda (_e19872015_
                             _hd19862019_
                             _tl19852022_
                             _e19902025_
                             _hd19892029_
                             _tl19882032_
                             _e19932035_
                             _hd19922039_
                             _tl19912042_
                             ___splice3732937330_
                             _target19942045_
                             _tl19962048_)
                      (letrec ((_loop19972051_
                                (lambda (_hd19952055_ _body20012058_)
                                  (if (gx#stx-pair? _hd19952055_)
                                      (let ((_e19982061_
                                             (gx#syntax-e _hd19952055_)))
                                        (let ((_lp-tl20002068_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e19982061_)))
                                              (_lp-hd19992065_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e19982061_))))
                                          (_loop19972051_
                                           _lp-tl20002068_
                                           (cons _lp-hd19992065_
                                                 _body20012058_))))
                                      (let ((_body20022071_
                                             (reverse _body20012058_)))
                                        (___kont3732737328_
                                         _body20022071_
                                         _tl19912042_
                                         _hd19922039_
                                         _hd19862019_))))))
                        (_loop19972051_ _target19942045_ '()))))
                   (___match3735337354_
                    (lambda (_e19682116_
                             _hd19672120_
                             _tl19662123_
                             _e19712126_
                             _hd19702130_
                             _tl19692133_
                             ___splice3732537326_
                             _target19722136_
                             _tl19742139_)
                      (letrec ((_loop19752142_
                                (lambda (_hd19732146_ _body19792149_)
                                  (if (gx#stx-pair? _hd19732146_)
                                      (let ((_e19762152_
                                             (gx#syntax-e _hd19732146_)))
                                        (let ((_lp-tl19782159_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e19762152_)))
                                              (_lp-hd19772156_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e19762152_))))
                                          (_loop19752142_
                                           _lp-tl19782159_
                                           (cons _lp-hd19772156_
                                                 _body19792149_))))
                                      (let ((_body19802162_
                                             (reverse _body19792149_)))
                                        (___kont3732337324_
                                         _body19802162_))))))
                        (_loop19752142_ _target19722136_ '())))))
              (if (gx#stx-pair? ___stx3732037321_)
                  (let ((_e19682116_ (gx#syntax-e ___stx3732037321_)))
                    (let ((_tl19662123_
                           (let () (declare (not safe)) (##cdr _e19682116_)))
                          (_hd19672120_
                           (let () (declare (not safe)) (##car _e19682116_))))
                      (if (gx#stx-pair? _tl19662123_)
                          (let ((_e19712126_ (gx#syntax-e _tl19662123_)))
                            (let ((_tl19692133_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e19712126_)))
                                  (_hd19702130_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e19712126_))))
                              (if (gx#stx-null? _hd19702130_)
                                  (if (gx#stx-pair/null? _tl19692133_)
                                      (let ((___splice3732537326_
                                             (gx#syntax-split-splice
                                              _tl19692133_
                                              '0)))
                                        (let ((_tl19742139_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3732537326_
                                                  '1)))
                                              (_target19722136_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3732537326_
                                                  '0))))
                                          (if (gx#stx-null? _tl19742139_)
                                              (___match3735337354_
                                               _e19682116_
                                               _hd19672120_
                                               _tl19662123_
                                               _e19712126_
                                               _hd19702130_
                                               _tl19692133_
                                               ___splice3732537326_
                                               _target19722136_
                                               _tl19742139_)
                                              (let ()
                                                (declare (not safe))
                                                (_g19632008_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g19632008_)))
                                  (if (gx#stx-pair? _hd19702130_)
                                      (let ((_e19932035_
                                             (gx#syntax-e _hd19702130_)))
                                        (let ((_tl19912042_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e19932035_)))
                                              (_hd19922039_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e19932035_))))
                                          (if (gx#stx-pair/null? _tl19692133_)
                                              (let ((___splice3732937330_
                                                     (gx#syntax-split-splice
                                                      _tl19692133_
                                                      '0)))
                                                (let ((_tl19962048_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3732937330_
                                                          '1)))
                                                      (_target19942045_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3732937330_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl19962048_)
                                                      (___match3737937380_
                                                       _e19682116_
                                                       _hd19672120_
                                                       _tl19662123_
                                                       _e19712126_
                                                       _hd19702130_
                                                       _tl19692133_
                                                       _e19932035_
                                                       _hd19922039_
                                                       _tl19912042_
                                                       ___splice3732937330_
                                                       _target19942045_
                                                       _tl19962048_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g19632008_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g19632008_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g19632008_))))))
                          (let () (declare (not safe)) (_g19632008_)))))
                  (let () (declare (not safe)) (_g19632008_))))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let|
      (lambda (_$stx2197_)
        (let* ((___stx3738237383_ _$stx2197_)
               (_g22022266_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3738237383_))))
          (let ((___kont3738537386_
                 (lambda (_L2472_ _L2474_ _L2475_ _L2476_ _L2477_)
                   (cons (cons (gx#datum->syntax '#f 'letrec-values)
                               (cons (cons (cons (cons _L2477_ '())
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda%)
                                                             (cons (foldr (lambda (_g25062509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _g25072512_)
                                    (cons _g25062509_ _g25072512_))
                                  _L2474_
                                  _L2476_)
                           (foldr (lambda (_g25042515_ _g25052518_)
                                    (cons _g25042515_ _g25052518_))
                                  '()
                                  _L2472_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _L2477_ '())))
                         (foldr (lambda (_g25022521_ _g25032524_)
                                  (cons _g25022521_ _g25032524_))
                                '()
                                _L2475_))))
                (___kont3739137392_
                 (lambda (_L2323_ _L2325_)
                   (cons (gx#datum->syntax '#f '~let)
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons _L2325_
                                     (foldr (lambda (_g23422345_ _g23432348_)
                                              (cons _g23422345_ _g23432348_))
                                            '()
                                            _L2323_)))))))
            (let* ((___match3743937440_
                    (lambda (_e22482273_
                             _hd22472277_
                             _tl22462280_
                             _e22512283_
                             _hd22502287_
                             _tl22492290_
                             ___splice3739337394_
                             _target22522293_
                             _tl22542296_)
                      (letrec ((_loop22552299_
                                (lambda (_hd22532303_ _body22592306_)
                                  (if (gx#stx-pair? _hd22532303_)
                                      (let ((_e22562309_
                                             (gx#syntax-e _hd22532303_)))
                                        (let ((_lp-tl22582316_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e22562309_)))
                                              (_lp-hd22572313_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e22562309_))))
                                          (_loop22552299_
                                           _lp-tl22582316_
                                           (cons _lp-hd22572313_
                                                 _body22592306_))))
                                      (let ((_body22602319_
                                             (reverse _body22592306_)))
                                        (___kont3739137392_
                                         _body22602319_
                                         _hd22502287_))))))
                        (_loop22552299_ _target22522293_ '()))))
                   (___match3743137432_
                    (lambda (_e22482273_
                             _hd22472277_
                             _tl22462280_
                             _e22512283_
                             _hd22502287_
                             _tl22492290_)
                      (if (gx#stx-pair/null? _tl22492290_)
                          (let ((___splice3739337394_
                                 (gx#syntax-split-splice _tl22492290_ '0)))
                            (let ((_tl22542296_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3739337394_ '1)))
                                  (_target22522293_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3739337394_ '0))))
                              (if (gx#stx-null? _tl22542296_)
                                  (___match3743937440_
                                   _e22482273_
                                   _hd22472277_
                                   _tl22462280_
                                   _e22512283_
                                   _hd22502287_
                                   _tl22492290_
                                   ___splice3739337394_
                                   _target22522293_
                                   _tl22542296_)
                                  (let ()
                                    (declare (not safe))
                                    (_g22022266_)))))
                          (let () (declare (not safe)) (_g22022266_)))))
                   (___match3741937420_
                    (lambda (_e22112358_
                             _hd22102362_
                             _tl22092365_
                             _e22142368_
                             _hd22132372_
                             _tl22122375_
                             _e22172378_
                             _hd22162382_
                             _tl22152385_
                             ___splice3738737388_
                             _target22182388_
                             _tl22202391_)
                      (letrec ((_loop22212394_
                                (lambda (_hd22192398_
                                         _arg22252401_
                                         _var22262403_)
                                  (if (gx#stx-pair? _hd22192398_)
                                      (let ((_e22222406_
                                             (gx#syntax-e _hd22192398_)))
                                        (let ((_lp-tl22242413_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e22222406_)))
                                              (_lp-hd22232410_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e22222406_))))
                                          (if (gx#stx-pair? _lp-hd22232410_)
                                              (let ((_e22312416_
                                                     (gx#syntax-e
                                                      _lp-hd22232410_)))
                                                (let ((_tl22292423_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e22312416_)))
                                                      (_hd22302420_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e22312416_))))
                                                  (if (gx#stx-pair?
                                                       _tl22292423_)
                                                      (let ((_e22342426_
                                                             (gx#syntax-e
                                                              _tl22292423_)))
                                                        (let ((_tl22322433_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e22342426_)))
                      (_hd22332430_
                       (let () (declare (not safe)) (##car _e22342426_))))
                  (if (gx#stx-null? _tl22322433_)
                      (_loop22212394_
                       _lp-tl22242413_
                       (cons _hd22332430_ _arg22252401_)
                       (cons _hd22302420_ _var22262403_))
                      (___match3743137432_
                       _e22112358_
                       _hd22102362_
                       _tl22092365_
                       _e22142368_
                       _hd22132372_
                       _tl22122375_))))
              (___match3743137432_
               _e22112358_
               _hd22102362_
               _tl22092365_
               _e22142368_
               _hd22132372_
               _tl22122375_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match3743137432_
                                               _e22112358_
                                               _hd22102362_
                                               _tl22092365_
                                               _e22142368_
                                               _hd22132372_
                                               _tl22122375_))))
                                      (let ((_var22282439_
                                             (reverse _var22262403_))
                                            (_arg22272436_
                                             (reverse _arg22252401_)))
                                        (if (gx#stx-pair/null? _tl22152385_)
                                            (let ((___splice3738937390_
                                                   (gx#syntax-split-splice
                                                    _tl22152385_
                                                    '0)))
                                              (let ((_tl22372445_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3738937390_
                                                        '1)))
                                                    (_target22352442_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3738937390_
                                                        '0))))
                                                (if (gx#stx-null? _tl22372445_)
                                                    (letrec ((_loop22382448_
                                                              (lambda (_hd22362452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body22422455_)
                        (if (gx#stx-pair? _hd22362452_)
                            (let ((_e22392458_ (gx#syntax-e _hd22362452_)))
                              (let ((_lp-tl22412465_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e22392458_)))
                                    (_lp-hd22402462_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e22392458_))))
                                (_loop22382448_
                                 _lp-tl22412465_
                                 (cons _lp-hd22402462_ _body22422455_))))
                            (let ((_body22432468_ (reverse _body22422455_)))
                              (let ((_L2472_ _body22432468_)
                                    (_L2474_ _tl22202391_)
                                    (_L2475_ _arg22272436_)
                                    (_L2476_ _var22282439_)
                                    (_L2477_ _hd22132372_))
                                (if (gx#identifier? _L2477_)
                                    (___kont3738537386_
                                     _L2472_
                                     _L2474_
                                     _L2475_
                                     _L2476_
                                     _L2477_)
                                    (___match3743137432_
                                     _e22112358_
                                     _hd22102362_
                                     _tl22092365_
                                     _e22142368_
                                     _hd22132372_
                                     _tl22122375_))))))))
              (_loop22382448_ _target22352442_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3743137432_
                                                     _e22112358_
                                                     _hd22102362_
                                                     _tl22092365_
                                                     _e22142368_
                                                     _hd22132372_
                                                     _tl22122375_))))
                                            (___match3743137432_
                                             _e22112358_
                                             _hd22102362_
                                             _tl22092365_
                                             _e22142368_
                                             _hd22132372_
                                             _tl22122375_)))))))
                        (_loop22212394_ _target22182388_ '() '())))))
              (if (gx#stx-pair? ___stx3738237383_)
                  (let ((_e22112358_ (gx#syntax-e ___stx3738237383_)))
                    (let ((_tl22092365_
                           (let () (declare (not safe)) (##cdr _e22112358_)))
                          (_hd22102362_
                           (let () (declare (not safe)) (##car _e22112358_))))
                      (if (gx#stx-pair? _tl22092365_)
                          (let ((_e22142368_ (gx#syntax-e _tl22092365_)))
                            (let ((_tl22122375_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e22142368_)))
                                  (_hd22132372_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e22142368_))))
                              (if (gx#stx-pair? _tl22122375_)
                                  (let ((_e22172378_
                                         (gx#syntax-e _tl22122375_)))
                                    (let ((_tl22152385_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e22172378_)))
                                          (_hd22162382_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e22172378_))))
                                      (if (gx#stx-pair/null? _hd22162382_)
                                          (let ((___splice3738737388_
                                                 (gx#syntax-split-splice
                                                  _hd22162382_
                                                  '0)))
                                            (let ((_tl22202391_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3738737388_
                                                      '1)))
                                                  (_target22182388_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3738737388_
                                                      '0))))
                                              (___match3741937420_
                                               _e22112358_
                                               _hd22102362_
                                               _tl22092365_
                                               _e22142368_
                                               _hd22132372_
                                               _tl22122375_
                                               _e22172378_
                                               _hd22162382_
                                               _tl22152385_
                                               ___splice3738737388_
                                               _target22182388_
                                               _tl22202391_)))
                                          (if (gx#stx-pair/null? _tl22122375_)
                                              (let ((___splice3739337394_
                                                     (gx#syntax-split-splice
                                                      _tl22122375_
                                                      '0)))
                                                (let ((_tl22542296_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3739337394_
                                                          '1)))
                                                      (_target22522293_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3739337394_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl22542296_)
                                                      (___match3743937440_
                                                       _e22112358_
                                                       _hd22102362_
                                                       _tl22092365_
                                                       _e22142368_
                                                       _hd22132372_
                                                       _tl22122375_
                                                       ___splice3739337394_
                                                       _target22522293_
                                                       _tl22542296_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g22022266_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g22022266_))))))
                                  (if (gx#stx-pair/null? _tl22122375_)
                                      (let ((___splice3739337394_
                                             (gx#syntax-split-splice
                                              _tl22122375_
                                              '0)))
                                        (let ((_tl22542296_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3739337394_
                                                  '1)))
                                              (_target22522293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3739337394_
                                                  '0))))
                                          (if (gx#stx-null? _tl22542296_)
                                              (___match3743937440_
                                               _e22112358_
                                               _hd22102362_
                                               _tl22092365_
                                               _e22142368_
                                               _hd22132372_
                                               _tl22122375_
                                               ___splice3739337394_
                                               _target22522293_
                                               _tl22542296_)
                                              (let ()
                                                (declare (not safe))
                                                (_g22022266_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g22022266_))))))
                          (let () (declare (not safe)) (_g22022266_)))))
                  (let () (declare (not safe)) (_g22022266_))))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let*|
      (lambda (_$stx2534_)
        (let* ((_g25382562_
                (lambda (_g25392558_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g25392558_)))
               (_g25372647_
                (lambda (_g25392566_)
                  (if (gx#stx-pair? _g25392566_)
                      (let ((_e25442569_ (gx#syntax-e _g25392566_)))
                        (let ((_hd25432573_
                               (let ()
                                 (declare (not safe))
                                 (##car _e25442569_)))
                              (_tl25422576_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e25442569_))))
                          (if (gx#stx-pair? _tl25422576_)
                              (let ((_e25472579_ (gx#syntax-e _tl25422576_)))
                                (let ((_hd25462583_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e25472579_)))
                                      (_tl25452586_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e25472579_))))
                                  (if (gx#stx-pair/null? _tl25452586_)
                                      (let ((_g42606_
                                             (gx#syntax-split-splice
                                              _tl25452586_
                                              '0)))
                                        (begin
                                          (let ((_g42607_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42606_)
                                                       (##vector-length
                                                        _g42606_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42607_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42607_)))
                                          (let ((_target25482589_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42606_ 0)))
                                                (_tl25502592_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42606_ 1))))
                                            (if (gx#stx-null? _tl25502592_)
                                                (letrec ((_loop25512595_
                                                          (lambda (_hd25492599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body25552602_)
                    (if (gx#stx-pair? _hd25492599_)
                        (let ((_e25522605_ (gx#syntax-e _hd25492599_)))
                          (let ((_lp-hd25532609_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e25522605_)))
                                (_lp-tl25542612_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e25522605_))))
                            (_loop25512595_
                             _lp-tl25542612_
                             (cons _lp-hd25532609_ _body25552602_))))
                        (let ((_body25562615_ (reverse _body25552602_)))
                          ((lambda (_L2619_ _L2621_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'let*-values)
                                         (cons _L2621_
                                               (foldr (lambda (_g26382641_
                                                               _g26392644_)
                                                        (cons _g26382641_
                                                              _g26392644_))
                                                      '()
                                                      _L2619_)))))
                           _body25562615_
                           _hd25462583_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop25512595_
                                                   _target25482589_
                                                   '()))
                                                (_g25382562_ _g25392566_)))))
                                      (_g25382562_ _g25392566_))))
                              (_g25382562_ _g25392566_))))
                      (_g25382562_ _g25392566_)))))
          (_g25372647_ _$stx2534_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#letrec|
      (lambda (_$stx2652_)
        (let* ((_g26562680_
                (lambda (_g26572676_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g26572676_)))
               (_g26552765_
                (lambda (_g26572684_)
                  (if (gx#stx-pair? _g26572684_)
                      (let ((_e26622687_ (gx#syntax-e _g26572684_)))
                        (let ((_hd26612691_
                               (let ()
                                 (declare (not safe))
                                 (##car _e26622687_)))
                              (_tl26602694_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e26622687_))))
                          (if (gx#stx-pair? _tl26602694_)
                              (let ((_e26652697_ (gx#syntax-e _tl26602694_)))
                                (let ((_hd26642701_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e26652697_)))
                                      (_tl26632704_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e26652697_))))
                                  (if (gx#stx-pair/null? _tl26632704_)
                                      (let ((_g42608_
                                             (gx#syntax-split-splice
                                              _tl26632704_
                                              '0)))
                                        (begin
                                          (let ((_g42609_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42608_)
                                                       (##vector-length
                                                        _g42608_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42609_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42609_)))
                                          (let ((_target26662707_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42608_ 0)))
                                                (_tl26682710_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42608_ 1))))
                                            (if (gx#stx-null? _tl26682710_)
                                                (letrec ((_loop26692713_
                                                          (lambda (_hd26672717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body26732720_)
                    (if (gx#stx-pair? _hd26672717_)
                        (let ((_e26702723_ (gx#syntax-e _hd26672717_)))
                          (let ((_lp-hd26712727_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e26702723_)))
                                (_lp-tl26722730_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e26702723_))))
                            (_loop26692713_
                             _lp-tl26722730_
                             (cons _lp-hd26712727_ _body26732720_))))
                        (let ((_body26742733_ (reverse _body26732720_)))
                          ((lambda (_L2737_ _L2739_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec-values)
                                         (cons _L2739_
                                               (foldr (lambda (_g27562759_
                                                               _g27572762_)
                                                        (cons _g27562759_
                                                              _g27572762_))
                                                      '()
                                                      _L2737_)))))
                           _body26742733_
                           _hd26642701_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop26692713_
                                                   _target26662707_
                                                   '()))
                                                (_g26562680_ _g26572684_)))))
                                      (_g26562680_ _g26572684_))))
                              (_g26562680_ _g26572684_))))
                      (_g26562680_ _g26572684_)))))
          (_g26552765_ _$stx2652_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#letrec*|
      (lambda (_$stx2770_)
        (let* ((_g27742798_
                (lambda (_g27752794_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g27752794_)))
               (_g27732883_
                (lambda (_g27752802_)
                  (if (gx#stx-pair? _g27752802_)
                      (let ((_e27802805_ (gx#syntax-e _g27752802_)))
                        (let ((_hd27792809_
                               (let ()
                                 (declare (not safe))
                                 (##car _e27802805_)))
                              (_tl27782812_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e27802805_))))
                          (if (gx#stx-pair? _tl27782812_)
                              (let ((_e27832815_ (gx#syntax-e _tl27782812_)))
                                (let ((_hd27822819_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e27832815_)))
                                      (_tl27812822_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e27832815_))))
                                  (if (gx#stx-pair/null? _tl27812822_)
                                      (let ((_g42610_
                                             (gx#syntax-split-splice
                                              _tl27812822_
                                              '0)))
                                        (begin
                                          (let ((_g42611_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42610_)
                                                       (##vector-length
                                                        _g42610_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42611_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42611_)))
                                          (let ((_target27842825_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42610_ 0)))
                                                (_tl27862828_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42610_ 1))))
                                            (if (gx#stx-null? _tl27862828_)
                                                (letrec ((_loop27872831_
                                                          (lambda (_hd27852835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body27912838_)
                    (if (gx#stx-pair? _hd27852835_)
                        (let ((_e27882841_ (gx#syntax-e _hd27852835_)))
                          (let ((_lp-hd27892845_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e27882841_)))
                                (_lp-tl27902848_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e27882841_))))
                            (_loop27872831_
                             _lp-tl27902848_
                             (cons _lp-hd27892845_ _body27912838_))))
                        (let ((_body27922851_ (reverse _body27912838_)))
                          ((lambda (_L2855_ _L2857_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec*-values)
                                         (cons _L2857_
                                               (foldr (lambda (_g28742877_
                                                               _g28752880_)
                                                        (cons _g28742877_
                                                              _g28752880_))
                                                      '()
                                                      _L2855_)))))
                           _body27922851_
                           _hd27822819_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop27872831_
                                                   _target27842825_
                                                   '()))
                                                (_g27742798_ _g27752802_)))))
                                      (_g27742798_ _g27752802_))))
                              (_g27742798_ _g27752802_))))
                      (_g27742798_ _g27752802_)))))
          (_g27732883_ _$stx2770_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#~let|
      (lambda (_stx2888_)
        (letrec ((_let-head?2891_
                  (lambda (_x3371_)
                    (let* ((___stx3744237443_ _x3371_)
                           (_g33753386_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3744237443_))))
                      (let ((___kont3744537446_
                             (lambda (_L3414_)
                               (gx#stx-andmap gx#identifier? _L3414_)))
                            (___kont3744737448_
                             (lambda () (gx#identifier? _x3371_))))
                        (if (gx#stx-pair? ___stx3744237443_)
                            (let ((_e33803404_
                                   (gx#syntax-e ___stx3744237443_)))
                              (let ((_tl33783411_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e33803404_)))
                                    (_hd33793408_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e33803404_))))
                                (if (gx#identifier? _hd33793408_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:1>[1]#_g42612_|
                                         _hd33793408_)
                                        (___kont3744537446_ _tl33783411_)
                                        (___kont3744737448_))
                                    (___kont3744737448_))))
                            (___kont3744737448_))))))
                 (_let-head2893_
                  (lambda (_x3311_)
                    (let* ((___stx3746237463_ _x3311_)
                           (_g33153326_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3746237463_))))
                      (let ((___kont3746537466_ (lambda (_L3354_) _L3354_))
                            (___kont3746737468_ (lambda () (list _x3311_))))
                        (if (gx#stx-pair? ___stx3746237463_)
                            (let ((_e33203344_
                                   (gx#syntax-e ___stx3746237463_)))
                              (let ((_tl33183351_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e33203344_)))
                                    (_hd33193348_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e33203344_))))
                                (if (gx#identifier? _hd33193348_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:1>[1]#_g42613_|
                                         _hd33193348_)
                                        (___kont3746537466_ _tl33183351_)
                                        (___kont3746737468_))
                                    (___kont3746737468_))))
                            (___kont3746737468_)))))))
          (let* ((___stx3748237483_ _stx2888_)
                 (_g28962962_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx3748237483_))))
            (let ((___kont3748537486_
                   (lambda (_L3280_ _L3282_ _L3283_ _L3284_ _L3285_)
                     (cons _L3285_
                           (cons _L3284_
                                 (cons (cons (cons _L3283_ (cons _L3282_ '()))
                                             '())
                                       _L3280_)))))
                  (___kont3748737488_
                   (lambda (_L3083_ _L3085_ _L3086_ _L3087_)
                     (let* ((_g31223139_
                             (lambda (_g31233135_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g31233135_)))
                            (_g31213211_
                             (lambda (_g31233143_)
                               (if (gx#stx-pair/null? _g31233143_)
                                   (let ((_g42614_
                                          (gx#syntax-split-splice
                                           _g31233143_
                                           '0)))
                                     (begin
                                       (let ((_g42615_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g42614_)
                                                    (##vector-length _g42614_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g42615_ 2)))
                                             (error "Context expects 2 values"
                                                    _g42615_)))
                                       (let ((_target31253146_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g42614_ 0)))
                                             (_tl31273149_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g42614_ 1))))
                                         (if (gx#stx-null? _tl31273149_)
                                             (letrec ((_loop31283152_
                                                       (lambda (_hd31263156_
                                                                _hd-bind31323159_)
                                                         (if (gx#stx-pair?
                                                              _hd31263156_)
                                                             (let ((_e31293162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd31263156_)))
                       (let ((_lp-hd31303166_
                              (let ()
                                (declare (not safe))
                                (##car _e31293162_)))
                             (_lp-tl31313169_
                              (let ()
                                (declare (not safe))
                                (##cdr _e31293162_))))
                         (_loop31283152_
                          _lp-tl31313169_
                          (cons _lp-hd31303166_ _hd-bind31323159_))))
                     (let ((_hd-bind31333172_ (reverse _hd-bind31323159_)))
                       ((lambda (_L3176_)
                          (let ()
                            (cons _L3087_
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _L3085_
                                           _L3176_)
                                          (foldr (lambda (_g31933197_
                                                          _g31943200_
                                                          _g31953202_)
                                                   (cons (cons _g31943200_
                                                               (cons _g31933197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g31953202_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L3085_
                                                 _L3176_))
                                        (foldr (lambda (_g31913205_
                                                        _g31923208_)
                                                 (cons _g31913205_
                                                       _g31923208_))
                                               '()
                                               _L3083_)))))
                        _hd-bind31333172_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop31283152_
                                                _target31253146_
                                                '()))
                                             (_g31223139_ _g31233143_)))))
                                   (_g31223139_ _g31233143_)))))
                       (_g31213211_
                        (gx#stx-map
                         _let-head2893_
                         (foldr (lambda (_g32143217_ _g32153220_)
                                  (cons _g32143217_ _g32153220_))
                                '()
                                _L3086_)))))))
              (let* ((___match3755137552_
                      (lambda (_e29242969_
                               _hd29232973_
                               _tl29222976_
                               _e29272979_
                               _hd29262983_
                               _tl29252986_
                               _e29302989_
                               _hd29292993_
                               _tl29282996_
                               ___splice3748937490_
                               _target29312999_
                               _tl29333002_)
                        (letrec ((_loop29343005_
                                  (lambda (_hd29323009_
                                           _e29383012_
                                           _hd29393014_)
                                    (if (gx#stx-pair? _hd29323009_)
                                        (let ((_e29353017_
                                               (gx#syntax-e _hd29323009_)))
                                          (let ((_lp-tl29373024_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e29353017_)))
                                                (_lp-hd29363021_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e29353017_))))
                                            (if (gx#stx-pair? _lp-hd29363021_)
                                                (let ((_e29443027_
                                                       (gx#syntax-e
                                                        _lp-hd29363021_)))
                                                  (let ((_tl29423034_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e29443027_)))
                                                        (_hd29433031_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e29443027_))))
                                                    (if (gx#stx-pair?
                                                         _tl29423034_)
                                                        (let ((_e29473037_
                                                               (gx#syntax-e
                                                                _tl29423034_)))
                                                          (let ((_tl29453044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e29473037_)))
                        (_hd29463041_
                         (let () (declare (not safe)) (##car _e29473037_))))
                    (if (gx#stx-null? _tl29453044_)
                        (_loop29343005_
                         _lp-tl29373024_
                         (cons _hd29463041_ _e29383012_)
                         (cons _hd29433031_ _hd29393014_))
                        (let () (declare (not safe)) (_g28962962_)))))
                (let () (declare (not safe)) (_g28962962_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g28962962_)))))
                                        (let ((_hd29413050_
                                               (reverse _hd29393014_))
                                              (_e29403047_
                                               (reverse _e29383012_)))
                                          (if (gx#stx-pair/null? _tl29282996_)
                                              (let ((___splice3749137492_
                                                     (gx#syntax-split-splice
                                                      _tl29282996_
                                                      '0)))
                                                (let ((_tl29503056_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3749137492_
                                                          '1)))
                                                      (_target29483053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3749137492_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl29503056_)
                                                      (letrec ((_loop29513059_
                                                                (lambda (_hd29493063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body29553066_)
                          (if (gx#stx-pair? _hd29493063_)
                              (let ((_e29523069_ (gx#syntax-e _hd29493063_)))
                                (let ((_lp-tl29543076_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e29523069_)))
                                      (_lp-hd29533073_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e29523069_))))
                                  (_loop29513059_
                                   _lp-tl29543076_
                                   (cons _lp-hd29533073_ _body29553066_))))
                              (let ((_body29563079_ (reverse _body29553066_)))
                                (let ((_L3083_ _body29563079_)
                                      (_L3085_ _e29403047_)
                                      (_L3086_ _hd29413050_)
                                      (_L3087_ _hd29262983_))
                                  (if (gx#stx-andmap
                                       _let-head?2891_
                                       (foldr (lambda (_g31133116_ _g31143119_)
                                                (cons _g31133116_ _g31143119_))
                                              '()
                                              _L3086_))
                                      (___kont3748737488_
                                       _L3083_
                                       _L3085_
                                       _L3086_
                                       _L3087_)
                                      (let ()
                                        (declare (not safe))
                                        (_g28962962_)))))))))
                (_loop29513059_ _target29483053_ '()))
              (let () (declare (not safe)) (_g28962962_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g28962962_))))))))
                          (_loop29343005_ _target29312999_ '() '()))))
                     (___match3752537526_
                      (lambda (_e29053230_
                               _hd29043234_
                               _tl29033237_
                               _e29083240_
                               _hd29073244_
                               _tl29063247_
                               _e29113250_
                               _hd29103254_
                               _tl29093257_
                               _e29143260_
                               _hd29133264_
                               _tl29123267_
                               _e29173270_
                               _hd29163274_
                               _tl29153277_)
                        (let ((_L3280_ _tl29093257_)
                              (_L3282_ _hd29163274_)
                              (_L3283_ _hd29133264_)
                              (_L3284_ _hd29073244_)
                              (_L3285_ _hd29043234_))
                          (if (_let-head?2891_ _L3283_)
                              (___kont3748537486_
                               _L3280_
                               _L3282_
                               _L3283_
                               _L3284_
                               _L3285_)
                              (if (gx#stx-pair/null? _hd29103254_)
                                  (let ((___splice3748937490_
                                         (gx#syntax-split-splice
                                          _hd29103254_
                                          '0)))
                                    (let ((_tl29333002_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3748937490_
                                              '1)))
                                          (_target29312999_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3748937490_
                                              '0))))
                                      (if (gx#stx-null? _tl29333002_)
                                          (___match3755137552_
                                           _e29053230_
                                           _hd29043234_
                                           _tl29033237_
                                           _e29083240_
                                           _hd29073244_
                                           _tl29063247_
                                           _e29113250_
                                           _hd29103254_
                                           _tl29093257_
                                           ___splice3748937490_
                                           _target29312999_
                                           _tl29333002_)
                                          (let ()
                                            (declare (not safe))
                                            (_g28962962_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g28962962_))))))))
                (if (gx#stx-pair? ___stx3748237483_)
                    (let ((_e29053230_ (gx#syntax-e ___stx3748237483_)))
                      (let ((_tl29033237_
                             (let () (declare (not safe)) (##cdr _e29053230_)))
                            (_hd29043234_
                             (let ()
                               (declare (not safe))
                               (##car _e29053230_))))
                        (if (gx#stx-pair? _tl29033237_)
                            (let ((_e29083240_ (gx#syntax-e _tl29033237_)))
                              (let ((_tl29063247_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e29083240_)))
                                    (_hd29073244_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e29083240_))))
                                (if (gx#stx-pair? _tl29063247_)
                                    (let ((_e29113250_
                                           (gx#syntax-e _tl29063247_)))
                                      (let ((_tl29093257_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e29113250_)))
                                            (_hd29103254_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e29113250_))))
                                        (if (gx#stx-pair? _hd29103254_)
                                            (let ((_e29143260_
                                                   (gx#syntax-e _hd29103254_)))
                                              (let ((_tl29123267_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e29143260_)))
                                                    (_hd29133264_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e29143260_))))
                                                (if (gx#stx-pair? _tl29123267_)
                                                    (let ((_e29173270_
                                                           (gx#syntax-e
                                                            _tl29123267_)))
                                                      (let ((_tl29153277_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e29173270_)))
                    (_hd29163274_
                     (let () (declare (not safe)) (##car _e29173270_))))
                (if (gx#stx-null? _tl29153277_)
                    (___match3752537526_
                     _e29053230_
                     _hd29043234_
                     _tl29033237_
                     _e29083240_
                     _hd29073244_
                     _tl29063247_
                     _e29113250_
                     _hd29103254_
                     _tl29093257_
                     _e29143260_
                     _hd29133264_
                     _tl29123267_
                     _e29173270_
                     _hd29163274_
                     _tl29153277_)
                    (if (gx#stx-pair/null? _hd29103254_)
                        (let ((___splice3748937490_
                               (gx#syntax-split-splice _hd29103254_ '0)))
                          (let ((_tl29333002_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3748937490_ '1)))
                                (_target29312999_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3748937490_ '0))))
                            (if (gx#stx-null? _tl29333002_)
                                (___match3755137552_
                                 _e29053230_
                                 _hd29043234_
                                 _tl29033237_
                                 _e29083240_
                                 _hd29073244_
                                 _tl29063247_
                                 _e29113250_
                                 _hd29103254_
                                 _tl29093257_
                                 ___splice3748937490_
                                 _target29312999_
                                 _tl29333002_)
                                (let () (declare (not safe)) (_g28962962_)))))
                        (let () (declare (not safe)) (_g28962962_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd29103254_)
                                                        (let ((___splice3748937490_
                                                               (gx#syntax-split-splice
                                                                _hd29103254_
                                                                '0)))
                                                          (let ((_tl29333002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3748937490_ '1)))
                        (_target29312999_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3748937490_ '0))))
                    (if (gx#stx-null? _tl29333002_)
                        (___match3755137552_
                         _e29053230_
                         _hd29043234_
                         _tl29033237_
                         _e29083240_
                         _hd29073244_
                         _tl29063247_
                         _e29113250_
                         _hd29103254_
                         _tl29093257_
                         ___splice3748937490_
                         _target29312999_
                         _tl29333002_)
                        (let () (declare (not safe)) (_g28962962_)))))
                (let () (declare (not safe)) (_g28962962_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd29103254_)
                                                (let ((___splice3748937490_
                                                       (gx#syntax-split-splice
                                                        _hd29103254_
                                                        '0)))
                                                  (let ((_tl29333002_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3748937490_
                                                            '1)))
                                                        (_target29312999_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3748937490_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl29333002_)
                                                        (___match3755137552_
                                                         _e29053230_
                                                         _hd29043234_
                                                         _tl29033237_
                                                         _e29083240_
                                                         _hd29073244_
                                                         _tl29063247_
                                                         _e29113250_
                                                         _hd29103254_
                                                         _tl29093257_
                                                         ___splice3748937490_
                                                         _target29312999_
                                                         _tl29333002_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g28962962_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g28962962_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g28962962_)))))
                            (let () (declare (not safe)) (_g28962962_)))))
                    (let () (declare (not safe)) (_g28962962_)))))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#and|
      (lambda (_$stx3434_)
        (let* ((___stx3755437555_ _$stx3434_)
               (_g34403466_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3755437555_))))
          (let ((___kont3755737558_ (lambda () '#t))
                (___kont3755937560_ (lambda (_L3538_) _L3538_))
                (___kont3756137562_
                 (lambda (_L3493_ _L3495_ _L3496_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _L3495_
                               (cons (cons _L3496_ _L3493_)
                                     (cons '#f '())))))))
            (if (gx#stx-pair? ___stx3755437555_)
                (let ((_e34443558_ (gx#syntax-e ___stx3755437555_)))
                  (let ((_tl34423565_
                         (let () (declare (not safe)) (##cdr _e34443558_)))
                        (_hd34433562_
                         (let () (declare (not safe)) (##car _e34443558_))))
                    (if (gx#stx-null? _tl34423565_)
                        (___kont3755737558_)
                        (if (gx#stx-pair? _tl34423565_)
                            (let ((_e34513528_ (gx#syntax-e _tl34423565_)))
                              (let ((_tl34493535_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e34513528_)))
                                    (_hd34503532_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e34513528_))))
                                (if (gx#stx-null? _tl34493535_)
                                    (___kont3755937560_ _hd34503532_)
                                    (___kont3756137562_
                                     _tl34493535_
                                     _hd34503532_
                                     _hd34433562_))))
                            (let () (declare (not safe)) (_g34403466_))))))
                (let () (declare (not safe)) (_g34403466_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#or|
      (lambda (_$stx3576_)
        (let* ((___stx3760037601_ _$stx3576_)
               (_g35823608_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3760037601_))))
          (let ((___kont3760337604_ (lambda () '#f))
                (___kont3760537606_ (lambda (_L3680_) _L3680_))
                (___kont3760737608_
                 (lambda (_L3635_ _L3637_ _L3638_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _L3637_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _L3638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3635_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (gx#stx-pair? ___stx3760037601_)
                (let ((_e35863700_ (gx#syntax-e ___stx3760037601_)))
                  (let ((_tl35843707_
                         (let () (declare (not safe)) (##cdr _e35863700_)))
                        (_hd35853704_
                         (let () (declare (not safe)) (##car _e35863700_))))
                    (if (gx#stx-null? _tl35843707_)
                        (___kont3760337604_)
                        (if (gx#stx-pair? _tl35843707_)
                            (let ((_e35933670_ (gx#syntax-e _tl35843707_)))
                              (let ((_tl35913677_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e35933670_)))
                                    (_hd35923674_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e35933670_))))
                                (if (gx#stx-null? _tl35913677_)
                                    (___kont3760537606_ _hd35923674_)
                                    (___kont3760737608_
                                     _tl35913677_
                                     _hd35923674_
                                     _hd35853704_))))
                            (let () (declare (not safe)) (_g35823608_))))))
                (let () (declare (not safe)) (_g35823608_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#cond|
      (lambda (_$stx3718_)
        (let* ((___stx3764637647_ _$stx3718_)
               (_g37273818_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3764637647_))))
          (let ((___kont3764937650_ (lambda () '#!void))
                (___kont3765137652_
                 (lambda (_L4165_)
                   (cons (gx#datum->syntax '#f '%#expression)
                         (cons (cons (gx#datum->syntax '#f 'begin)
                                     (foldr (lambda (_g41844187_ _g41854190_)
                                              (cons _g41844187_ _g41854190_))
                                            '()
                                            _L4165_))
                               '()))))
                (___kont3765537656_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'syntax-error)
                         (cons '"Bad syntax; misplaced else" '()))))
                (___kont3765737658_
                 (lambda (_L4038_ _L4040_ _L4041_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _L4040_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _L4041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4038_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3765937660_
                 (lambda (_L3976_ _L3978_ _L3979_ _L3980_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _L3979_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (cons _L3978_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           '()))
               (cons (cons _L3980_ _L3976_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3766137662_
                 (lambda (_L3885_ _L3887_ _L3888_ _L3889_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _L3888_
                               (cons (cons (gx#datum->syntax '#f 'begin)
                                           (foldr (lambda (_g39103913_
                                                           _g39113916_)
                                                    (cons _g39103913_
                                                          _g39113916_))
                                                  '()
                                                  _L3887_))
                                     (cons (cons _L3889_ _L3885_) '())))))))
            (let* ((___match3780737808_
                    (lambda (_e37973825_
                             _hd37963829_
                             _tl37953832_
                             _e38003835_
                             _hd37993839_
                             _tl37983842_
                             _e38033845_
                             _hd38023849_
                             _tl38013852_
                             ___splice3766337664_
                             _target38043855_
                             _tl38063858_)
                      (letrec ((_loop38073861_
                                (lambda (_hd38053865_ _body38113868_)
                                  (if (gx#stx-pair? _hd38053865_)
                                      (let ((_e38083871_
                                             (gx#syntax-e _hd38053865_)))
                                        (let ((_lp-tl38103878_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e38083871_)))
                                              (_lp-hd38093875_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e38083871_))))
                                          (_loop38073861_
                                           _lp-tl38103878_
                                           (cons _lp-hd38093875_
                                                 _body38113868_))))
                                      (let ((_body38123881_
                                             (reverse _body38113868_)))
                                        (___kont3766137662_
                                         _tl37983842_
                                         _body38123881_
                                         _hd38023849_
                                         _hd37963829_))))))
                        (_loop38073861_ _target38043855_ '()))))
                   (___match3770337704_
                    (lambda (_e37354105_
                             _hd37344109_
                             _tl37334112_
                             _e37384115_
                             _hd37374119_
                             _tl37364122_
                             _e37414125_
                             _hd37404129_
                             _tl37394132_
                             ___splice3765337654_
                             _target37424135_
                             _tl37444138_)
                      (letrec ((_loop37454141_
                                (lambda (_hd37434145_ _body37494148_)
                                  (if (gx#stx-pair? _hd37434145_)
                                      (let ((_e37464151_
                                             (gx#syntax-e _hd37434145_)))
                                        (let ((_lp-tl37484158_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e37464151_)))
                                              (_lp-hd37474155_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e37464151_))))
                                          (_loop37454141_
                                           _lp-tl37484158_
                                           (cons _lp-hd37474155_
                                                 _body37494148_))))
                                      (let ((_body37504161_
                                             (reverse _body37494148_)))
                                        (if (gx#stx-null? _tl37364122_)
                                            (___kont3765137652_ _body37504161_)
                                            (___kont3765537656_)))))))
                        (_loop37454141_ _target37424135_ '())))))
              (if (gx#stx-pair? ___stx3764637647_)
                  (let ((_e37314200_ (gx#syntax-e ___stx3764637647_)))
                    (let ((_tl37294207_
                           (let () (declare (not safe)) (##cdr _e37314200_)))
                          (_hd37304204_
                           (let () (declare (not safe)) (##car _e37314200_))))
                      (if (gx#stx-null? _tl37294207_)
                          (___kont3764937650_)
                          (if (gx#stx-pair? _tl37294207_)
                              (let ((_e37384115_ (gx#syntax-e _tl37294207_)))
                                (let ((_tl37364122_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e37384115_)))
                                      (_hd37374119_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e37384115_))))
                                  (if (gx#stx-pair? _hd37374119_)
                                      (let ((_e37414125_
                                             (gx#syntax-e _hd37374119_)))
                                        (let ((_tl37394132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e37414125_)))
                                              (_hd37404129_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e37414125_))))
                                          (if (gx#identifier? _hd37404129_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:1>[1]#_g42617_|
                                                   _hd37404129_)
                                                  (if (gx#stx-pair/null?
                                                       _tl37394132_)
                                                      (let ((___splice3765337654_
                                                             (gx#syntax-split-splice
                                                              _tl37394132_
                                                              '0)))
                                                        (let ((_tl37444138_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice3765337654_ '1)))
                      (_target37424135_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice3765337654_ '0))))
                  (if (gx#stx-null? _tl37444138_)
                      (___match3770337704_
                       _e37314200_
                       _hd37304204_
                       _tl37294207_
                       _e37384115_
                       _hd37374119_
                       _tl37364122_
                       _e37414125_
                       _hd37404129_
                       _tl37394132_
                       ___splice3765337654_
                       _target37424135_
                       _tl37444138_)
                      (___kont3765537656_))))
              (___kont3765537656_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl37394132_)
                                                      (___kont3765737658_
                                                       _tl37364122_
                                                       _hd37404129_
                                                       _hd37304204_)
                                                      (if (gx#stx-pair?
                                                           _tl37394132_)
                                                          (let ((_e37873956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl37394132_)))
                    (let ((_tl37853963_
                           (let () (declare (not safe)) (##cdr _e37873956_)))
                          (_hd37863960_
                           (let () (declare (not safe)) (##car _e37873956_))))
                      (if (gx#identifier? _hd37863960_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<sugar>$<sugar:1>[1]#_g42616_|
                               _hd37863960_)
                              (if (gx#stx-pair? _tl37853963_)
                                  (let ((_e37903966_
                                         (gx#syntax-e _tl37853963_)))
                                    (let ((_tl37883973_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e37903966_)))
                                          (_hd37893970_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e37903966_))))
                                      (if (gx#stx-null? _tl37883973_)
                                          (___kont3765937660_
                                           _tl37364122_
                                           _hd37893970_
                                           _hd37404129_
                                           _hd37304204_)
                                          (if (gx#stx-pair/null? _tl37394132_)
                                              (let ((___splice3766337664_
                                                     (gx#syntax-split-splice
                                                      _tl37394132_
                                                      '0)))
                                                (let ((_tl38063858_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3766337664_
                                                          '1)))
                                                      (_target38043855_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3766337664_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl38063858_)
                                                      (___match3780737808_
                                                       _e37314200_
                                                       _hd37304204_
                                                       _tl37294207_
                                                       _e37384115_
                                                       _hd37374119_
                                                       _tl37364122_
                                                       _e37414125_
                                                       _hd37404129_
                                                       _tl37394132_
                                                       ___splice3766337664_
                                                       _target38043855_
                                                       _tl38063858_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g37273818_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g37273818_))))))
                                  (if (gx#stx-pair/null? _tl37394132_)
                                      (let ((___splice3766337664_
                                             (gx#syntax-split-splice
                                              _tl37394132_
                                              '0)))
                                        (let ((_tl38063858_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3766337664_
                                                  '1)))
                                              (_target38043855_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3766337664_
                                                  '0))))
                                          (if (gx#stx-null? _tl38063858_)
                                              (___match3780737808_
                                               _e37314200_
                                               _hd37304204_
                                               _tl37294207_
                                               _e37384115_
                                               _hd37374119_
                                               _tl37364122_
                                               _e37414125_
                                               _hd37404129_
                                               _tl37394132_
                                               ___splice3766337664_
                                               _target38043855_
                                               _tl38063858_)
                                              (let ()
                                                (declare (not safe))
                                                (_g37273818_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g37273818_))))
                              (if (gx#stx-pair/null? _tl37394132_)
                                  (let ((___splice3766337664_
                                         (gx#syntax-split-splice
                                          _tl37394132_
                                          '0)))
                                    (let ((_tl38063858_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3766337664_
                                              '1)))
                                          (_target38043855_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3766337664_
                                              '0))))
                                      (if (gx#stx-null? _tl38063858_)
                                          (___match3780737808_
                                           _e37314200_
                                           _hd37304204_
                                           _tl37294207_
                                           _e37384115_
                                           _hd37374119_
                                           _tl37364122_
                                           _e37414125_
                                           _hd37404129_
                                           _tl37394132_
                                           ___splice3766337664_
                                           _target38043855_
                                           _tl38063858_)
                                          (let ()
                                            (declare (not safe))
                                            (_g37273818_)))))
                                  (let () (declare (not safe)) (_g37273818_))))
                          (if (gx#stx-pair/null? _tl37394132_)
                              (let ((___splice3766337664_
                                     (gx#syntax-split-splice _tl37394132_ '0)))
                                (let ((_tl38063858_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3766337664_
                                          '1)))
                                      (_target38043855_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3766337664_
                                          '0))))
                                  (if (gx#stx-null? _tl38063858_)
                                      (___match3780737808_
                                       _e37314200_
                                       _hd37304204_
                                       _tl37294207_
                                       _e37384115_
                                       _hd37374119_
                                       _tl37364122_
                                       _e37414125_
                                       _hd37404129_
                                       _tl37394132_
                                       ___splice3766337664_
                                       _target38043855_
                                       _tl38063858_)
                                      (let ()
                                        (declare (not safe))
                                        (_g37273818_)))))
                              (let () (declare (not safe)) (_g37273818_))))))
                  (if (gx#stx-pair/null? _tl37394132_)
                      (let ((___splice3766337664_
                             (gx#syntax-split-splice _tl37394132_ '0)))
                        (let ((_tl38063858_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3766337664_ '1)))
                              (_target38043855_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3766337664_ '0))))
                          (if (gx#stx-null? _tl38063858_)
                              (___match3780737808_
                               _e37314200_
                               _hd37304204_
                               _tl37294207_
                               _e37384115_
                               _hd37374119_
                               _tl37364122_
                               _e37414125_
                               _hd37404129_
                               _tl37394132_
                               ___splice3766337664_
                               _target38043855_
                               _tl38063858_)
                              (let () (declare (not safe)) (_g37273818_)))))
                      (let () (declare (not safe)) (_g37273818_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl37394132_)
                                                  (___kont3765737658_
                                                   _tl37364122_
                                                   _hd37404129_
                                                   _hd37304204_)
                                                  (if (gx#stx-pair?
                                                       _tl37394132_)
                                                      (let ((_e37873956_
                                                             (gx#syntax-e
                                                              _tl37394132_)))
                                                        (let ((_tl37853963_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e37873956_)))
                      (_hd37863960_
                       (let () (declare (not safe)) (##car _e37873956_))))
                  (if (gx#identifier? _hd37863960_)
                      (if (gx#free-identifier=?
                           |gerbil/core$<sugar>$<sugar:1>[1]#_g42616_|
                           _hd37863960_)
                          (if (gx#stx-pair? _tl37853963_)
                              (let ((_e37903966_ (gx#syntax-e _tl37853963_)))
                                (let ((_tl37883973_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e37903966_)))
                                      (_hd37893970_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e37903966_))))
                                  (if (gx#stx-null? _tl37883973_)
                                      (___kont3765937660_
                                       _tl37364122_
                                       _hd37893970_
                                       _hd37404129_
                                       _hd37304204_)
                                      (if (gx#stx-pair/null? _tl37394132_)
                                          (let ((___splice3766337664_
                                                 (gx#syntax-split-splice
                                                  _tl37394132_
                                                  '0)))
                                            (let ((_tl38063858_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3766337664_
                                                      '1)))
                                                  (_target38043855_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3766337664_
                                                      '0))))
                                              (if (gx#stx-null? _tl38063858_)
                                                  (___match3780737808_
                                                   _e37314200_
                                                   _hd37304204_
                                                   _tl37294207_
                                                   _e37384115_
                                                   _hd37374119_
                                                   _tl37364122_
                                                   _e37414125_
                                                   _hd37404129_
                                                   _tl37394132_
                                                   ___splice3766337664_
                                                   _target38043855_
                                                   _tl38063858_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g37273818_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g37273818_))))))
                              (if (gx#stx-pair/null? _tl37394132_)
                                  (let ((___splice3766337664_
                                         (gx#syntax-split-splice
                                          _tl37394132_
                                          '0)))
                                    (let ((_tl38063858_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3766337664_
                                              '1)))
                                          (_target38043855_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3766337664_
                                              '0))))
                                      (if (gx#stx-null? _tl38063858_)
                                          (___match3780737808_
                                           _e37314200_
                                           _hd37304204_
                                           _tl37294207_
                                           _e37384115_
                                           _hd37374119_
                                           _tl37364122_
                                           _e37414125_
                                           _hd37404129_
                                           _tl37394132_
                                           ___splice3766337664_
                                           _target38043855_
                                           _tl38063858_)
                                          (let ()
                                            (declare (not safe))
                                            (_g37273818_)))))
                                  (let () (declare (not safe)) (_g37273818_))))
                          (if (gx#stx-pair/null? _tl37394132_)
                              (let ((___splice3766337664_
                                     (gx#syntax-split-splice _tl37394132_ '0)))
                                (let ((_tl38063858_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3766337664_
                                          '1)))
                                      (_target38043855_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3766337664_
                                          '0))))
                                  (if (gx#stx-null? _tl38063858_)
                                      (___match3780737808_
                                       _e37314200_
                                       _hd37304204_
                                       _tl37294207_
                                       _e37384115_
                                       _hd37374119_
                                       _tl37364122_
                                       _e37414125_
                                       _hd37404129_
                                       _tl37394132_
                                       ___splice3766337664_
                                       _target38043855_
                                       _tl38063858_)
                                      (let ()
                                        (declare (not safe))
                                        (_g37273818_)))))
                              (let () (declare (not safe)) (_g37273818_))))
                      (if (gx#stx-pair/null? _tl37394132_)
                          (let ((___splice3766337664_
                                 (gx#syntax-split-splice _tl37394132_ '0)))
                            (let ((_tl38063858_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3766337664_ '1)))
                                  (_target38043855_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3766337664_ '0))))
                              (if (gx#stx-null? _tl38063858_)
                                  (___match3780737808_
                                   _e37314200_
                                   _hd37304204_
                                   _tl37294207_
                                   _e37384115_
                                   _hd37374119_
                                   _tl37364122_
                                   _e37414125_
                                   _hd37404129_
                                   _tl37394132_
                                   ___splice3766337664_
                                   _target38043855_
                                   _tl38063858_)
                                  (let ()
                                    (declare (not safe))
                                    (_g37273818_)))))
                          (let () (declare (not safe)) (_g37273818_))))))
              (if (gx#stx-pair/null? _tl37394132_)
                  (let ((___splice3766337664_
                         (gx#syntax-split-splice _tl37394132_ '0)))
                    (let ((_tl38063858_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3766337664_ '1)))
                          (_target38043855_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3766337664_ '0))))
                      (if (gx#stx-null? _tl38063858_)
                          (___match3780737808_
                           _e37314200_
                           _hd37304204_
                           _tl37294207_
                           _e37384115_
                           _hd37374119_
                           _tl37364122_
                           _e37414125_
                           _hd37404129_
                           _tl37394132_
                           ___splice3766337664_
                           _target38043855_
                           _tl38063858_)
                          (let () (declare (not safe)) (_g37273818_)))))
                  (let () (declare (not safe)) (_g37273818_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_g37273818_)))))
                              (let () (declare (not safe)) (_g37273818_))))))
                  (let () (declare (not safe)) (_g37273818_))))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#when|
      (lambda (_$stx4220_)
        (let* ((_g42244248_
                (lambda (_g42254244_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g42254244_)))
               (_g42234333_
                (lambda (_g42254252_)
                  (if (gx#stx-pair? _g42254252_)
                      (let ((_e42304255_ (gx#syntax-e _g42254252_)))
                        (let ((_hd42294259_
                               (let ()
                                 (declare (not safe))
                                 (##car _e42304255_)))
                              (_tl42284262_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e42304255_))))
                          (if (gx#stx-pair? _tl42284262_)
                              (let ((_e42334265_ (gx#syntax-e _tl42284262_)))
                                (let ((_hd42324269_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e42334265_)))
                                      (_tl42314272_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e42334265_))))
                                  (if (gx#stx-pair/null? _tl42314272_)
                                      (let ((_g42618_
                                             (gx#syntax-split-splice
                                              _tl42314272_
                                              '0)))
                                        (begin
                                          (let ((_g42619_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42618_)
                                                       (##vector-length
                                                        _g42618_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42619_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42619_)))
                                          (let ((_target42344275_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42618_ 0)))
                                                (_tl42364278_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42618_ 1))))
                                            (if (gx#stx-null? _tl42364278_)
                                                (letrec ((_loop42374281_
                                                          (lambda (_hd42354285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr42414288_)
                    (if (gx#stx-pair? _hd42354285_)
                        (let ((_e42384291_ (gx#syntax-e _hd42354285_)))
                          (let ((_lp-hd42394295_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e42384291_)))
                                (_lp-tl42404298_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e42384291_))))
                            (_loop42374281_
                             _lp-tl42404298_
                             (cons _lp-hd42394295_ _expr42414288_))))
                        (let ((_expr42424301_ (reverse _expr42414288_)))
                          ((lambda (_L4305_ _L4307_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _L4307_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin)
                                                     (foldr (lambda (_g43244327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g43254330_)
                      (cons _g43244327_ _g43254330_))
                    '()
                    _L4305_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '#!void '())))))
                           _expr42424301_
                           _hd42324269_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop42374281_
                                                   _target42344275_
                                                   '()))
                                                (_g42244248_ _g42254252_)))))
                                      (_g42244248_ _g42254252_))))
                              (_g42244248_ _g42254252_))))
                      (_g42244248_ _g42254252_)))))
          (_g42234333_ _$stx4220_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#unless|
      (lambda (_$stx4338_)
        (let* ((_g43424366_
                (lambda (_g43434362_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g43434362_)))
               (_g43414451_
                (lambda (_g43434370_)
                  (if (gx#stx-pair? _g43434370_)
                      (let ((_e43484373_ (gx#syntax-e _g43434370_)))
                        (let ((_hd43474377_
                               (let ()
                                 (declare (not safe))
                                 (##car _e43484373_)))
                              (_tl43464380_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e43484373_))))
                          (if (gx#stx-pair? _tl43464380_)
                              (let ((_e43514383_ (gx#syntax-e _tl43464380_)))
                                (let ((_hd43504387_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e43514383_)))
                                      (_tl43494390_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e43514383_))))
                                  (if (gx#stx-pair/null? _tl43494390_)
                                      (let ((_g42620_
                                             (gx#syntax-split-splice
                                              _tl43494390_
                                              '0)))
                                        (begin
                                          (let ((_g42621_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42620_)
                                                       (##vector-length
                                                        _g42620_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42621_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42621_)))
                                          (let ((_target43524393_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42620_ 0)))
                                                (_tl43544396_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42620_ 1))))
                                            (if (gx#stx-null? _tl43544396_)
                                                (letrec ((_loop43554399_
                                                          (lambda (_hd43534403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr43594406_)
                    (if (gx#stx-pair? _hd43534403_)
                        (let ((_e43564409_ (gx#syntax-e _hd43534403_)))
                          (let ((_lp-hd43574413_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e43564409_)))
                                (_lp-tl43584416_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e43564409_))))
                            (_loop43554399_
                             _lp-tl43584416_
                             (cons _lp-hd43574413_ _expr43594406_))))
                        (let ((_expr43604419_ (reverse _expr43594406_)))
                          ((lambda (_L4423_ _L4425_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _L4425_
                                         (cons '#!void
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'begin)
                                                           (foldr (lambda (_g44424445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g44434448_)
                            (cons _g44424445_ _g44434448_))
                          '()
                          _L4423_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _expr43604419_
                           _hd43504387_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop43554399_
                                                   _target43524393_
                                                   '()))
                                                (_g43424366_ _g43434370_)))))
                                      (_g43424366_ _g43434370_))))
                              (_g43424366_ _g43434370_))))
                      (_g43424366_ _g43434370_)))))
          (_g43414451_ _$stx4338_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#syntax-error|
      (lambda (_stx4456_)
        (let* ((_g44594483_
                (lambda (_g44604479_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g44604479_)))
               (_g44584568_
                (lambda (_g44604487_)
                  (if (gx#stx-pair? _g44604487_)
                      (let ((_e44654490_ (gx#syntax-e _g44604487_)))
                        (let ((_hd44644494_
                               (let ()
                                 (declare (not safe))
                                 (##car _e44654490_)))
                              (_tl44634497_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e44654490_))))
                          (if (gx#stx-pair? _tl44634497_)
                              (let ((_e44684500_ (gx#syntax-e _tl44634497_)))
                                (let ((_hd44674504_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e44684500_)))
                                      (_tl44664507_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e44684500_))))
                                  (if (gx#stx-pair/null? _tl44664507_)
                                      (let ((_g42622_
                                             (gx#syntax-split-splice
                                              _tl44664507_
                                              '0)))
                                        (begin
                                          (let ((_g42623_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42622_)
                                                       (##vector-length
                                                        _g42622_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42623_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42623_)))
                                          (let ((_target44694510_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42622_ 0)))
                                                (_tl44714513_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42622_ 1))))
                                            (if (gx#stx-null? _tl44714513_)
                                                (letrec ((_loop44724516_
                                                          (lambda (_hd44704520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _detail44764523_)
                    (if (gx#stx-pair? _hd44704520_)
                        (let ((_e44734526_ (gx#syntax-e _hd44704520_)))
                          (let ((_lp-hd44744530_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e44734526_)))
                                (_lp-tl44754533_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e44734526_))))
                            (_loop44724516_
                             _lp-tl44754533_
                             (cons _lp-hd44744530_ _detail44764523_))))
                        (let ((_detail44774536_ (reverse _detail44764523_)))
                          ((lambda (_L4540_ _L4542_)
                             (if (gx#stx-string? _L4542_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _L4542_)
                                        _stx4456_
                                        (gx#syntax->list
                                         (foldr (lambda (_g45594562_
                                                         _g45604565_)
                                                  (cons _g45594562_
                                                        _g45604565_))
                                                '()
                                                _L4540_)))
                                 (_g44594483_ _g44604487_)))
                           _detail44774536_
                           _hd44674504_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop44724516_
                                                   _target44694510_
                                                   '()))
                                                (_g44594483_ _g44604487_)))))
                                      (_g44594483_ _g44604487_))))
                              (_g44594483_ _g44604487_))))
                      (_g44594483_ _g44604487_)))))
          (_g44584568_ _stx4456_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defmutable|
      (lambda (_$stx4573_)
        (let* ((_g45774595_
                (lambda (_g45784591_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g45784591_)))
               (_g45764650_
                (lambda (_g45784599_)
                  (if (gx#stx-pair? _g45784599_)
                      (let ((_e45834602_ (gx#syntax-e _g45784599_)))
                        (let ((_hd45824606_
                               (let ()
                                 (declare (not safe))
                                 (##car _e45834602_)))
                              (_tl45814609_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e45834602_))))
                          (if (gx#stx-pair? _tl45814609_)
                              (let ((_e45864612_ (gx#syntax-e _tl45814609_)))
                                (let ((_hd45854616_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e45864612_)))
                                      (_tl45844619_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e45864612_))))
                                  (if (gx#stx-pair? _tl45844619_)
                                      (let ((_e45894622_
                                             (gx#syntax-e _tl45844619_)))
                                        (let ((_hd45884626_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e45894622_)))
                                              (_tl45874629_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e45894622_))))
                                          (if (gx#stx-null? _tl45874629_)
                                              ((lambda (_L4632_ _L4634_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'def)
                           (cons _L4634_ (cons _L4632_ '())))
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _L4634_ (cons _L4634_ '())))
                           (cons (cons (gx#datum->syntax '#f 'void) '())
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd45884626_
                                               _hd45854616_)
                                              (_g45774595_ _g45784599_))))
                                      (_g45774595_ _g45784599_))))
                              (_g45774595_ _g45784599_))))
                      (_g45774595_ _g45784599_)))))
          (_g45764650_ _$stx4573_))))))
