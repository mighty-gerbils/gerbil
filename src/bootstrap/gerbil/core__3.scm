(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g42133_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g42134_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g42137_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g42138_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defrules|
      (lambda (_$stx1335_)
        (let* ((_g13391367_
                (lambda (_g13401363_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g13401363_)))
               (_g13381468_
                (lambda (_g13401371_)
                  (if (gx#stx-pair? _g13401371_)
                      (let ((_e13441374_ (gx#syntax-e _g13401371_)))
                        (let ((_hd13451378_
                               (let ()
                                 (declare (not safe))
                                 (##car _e13441374_)))
                              (_tl13461381_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e13441374_))))
                          (if (gx#stx-pair? _tl13461381_)
                              (let ((_e13471384_ (gx#syntax-e _tl13461381_)))
                                (let ((_hd13481388_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e13471384_)))
                                      (_tl13491391_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e13471384_))))
                                  (if (gx#stx-pair? _tl13491391_)
                                      (let ((_e13501394_
                                             (gx#syntax-e _tl13491391_)))
                                        (let ((_hd13511398_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e13501394_)))
                                              (_tl13521401_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e13501394_))))
                                          (if (gx#stx-pair/null? _tl13521401_)
                                              (let ((_g42125_
                                                     (gx#syntax-split-splice
                                                      _tl13521401_
                                                      '0)))
                                                (begin
                                                  (let ((_g42126_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g42125_)
                                                               (##vector-length
                                                                _g42125_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g42126_ 2)))
                (error "Context expects 2 values" _g42126_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target13531404_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g42125_
                                                            0)))
                                                        (_tl13551407_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g42125_
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
        (let* ((___stx3673736738_ _$stx1473_)
               (_g14781517_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3673736738_))))
          (let ((___kont3674036741_
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
                (___kont3674436745_
                 (lambda (_L1554_ _L1556_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _L1556_ (cons _L1554_ '()))))))
            (let* ((___match3679236793_
                    (lambda (_e15031524_
                             _hd15041528_
                             _tl15051531_
                             _e15061534_
                             _hd15071538_
                             _tl15081541_
                             _e15091544_
                             _hd15101548_
                             _tl15111551_)
                      (let ((_L1554_ _hd15101548_) (_L1556_ _hd15071538_))
                        (if (gx#identifier? _L1556_)
                            (___kont3674436745_ _L1554_ _L1556_)
                            (_g14781517_)))))
                   (___match3678436785_
                    (lambda (_e15031524_
                             _hd15041528_
                             _tl15051531_
                             _e15061534_
                             _hd15071538_
                             _tl15081541_)
                      (if (gx#stx-pair? _tl15081541_)
                          (let ((_e15091544_ (gx#syntax-e _tl15081541_)))
                            (let ((_tl15111551_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e15091544_)))
                                  (_hd15101548_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e15091544_))))
                              (if (gx#stx-null? _tl15111551_)
                                  (___match3679236793_
                                   _e15031524_
                                   _hd15041528_
                                   _tl15051531_
                                   _e15061534_
                                   _hd15071538_
                                   _tl15081541_
                                   _e15091544_
                                   _hd15101548_
                                   _tl15111551_)
                                  (_g14781517_))))
                          (_g14781517_))))
                   (___match3677236773_
                    (lambda (_e14831579_
                             _hd14841583_
                             _tl14851586_
                             _e14861589_
                             _hd14871593_
                             _tl14881596_
                             _e14891599_
                             _hd14901603_
                             _tl14911606_
                             ___splice3674236743_
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
                                              (_L1641_ _tl14911606_)
                                              (_L1642_ _hd14901603_))
                                          (if (gx#identifier? _L1642_)
                                              (___kont3674036741_
                                               _L1639_
                                               _L1641_
                                               _L1642_)
                                              (___match3678436785_
                                               _e14831579_
                                               _hd14841583_
                                               _tl14851586_
                                               _e14861589_
                                               _hd14871593_
                                               _tl14881596_))))))))
                        (_loop14951615_ _target14921609_ '())))))
              (if (gx#stx-pair? ___stx3673736738_)
                  (let ((_e14831579_ (gx#syntax-e ___stx3673736738_)))
                    (let ((_tl14851586_
                           (let () (declare (not safe)) (##cdr _e14831579_)))
                          (_hd14841583_
                           (let () (declare (not safe)) (##car _e14831579_))))
                      (if (gx#stx-pair? _tl14851586_)
                          (let ((_e14861589_ (gx#syntax-e _tl14851586_)))
                            (let ((_tl14881596_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e14861589_)))
                                  (_hd14871593_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e14861589_))))
                              (if (gx#stx-pair? _hd14871593_)
                                  (let ((_e14891599_
                                         (gx#syntax-e _hd14871593_)))
                                    (let ((_tl14911606_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e14891599_)))
                                          (_hd14901603_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e14891599_))))
                                      (if (gx#stx-pair/null? _tl14881596_)
                                          (let ((___splice3674236743_
                                                 (gx#syntax-split-splice
                                                  _tl14881596_
                                                  '0)))
                                            (let ((_tl14941612_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3674236743_
                                                      '1)))
                                                  (_target14921609_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3674236743_
                                                      '0))))
                                              (if (gx#stx-null? _tl14941612_)
                                                  (___match3677236773_
                                                   _e14831579_
                                                   _hd14841583_
                                                   _tl14851586_
                                                   _e14861589_
                                                   _hd14871593_
                                                   _tl14881596_
                                                   _e14891599_
                                                   _hd14901603_
                                                   _tl14911606_
                                                   ___splice3674236743_
                                                   _target14921609_
                                                   _tl14941612_)
                                                  (if (gx#stx-pair?
                                                       _tl14881596_)
                                                      (let ((_e15091544_
                                                             (gx#syntax-e
                                                              _tl14881596_)))
                                                        (let ((_tl15111551_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e15091544_)))
                      (_hd15101548_
                       (let () (declare (not safe)) (##car _e15091544_))))
                  (if (gx#stx-null? _tl15111551_)
                      (___match3679236793_
                       _e14831579_
                       _hd14841583_
                       _tl14851586_
                       _e14861589_
                       _hd14871593_
                       _tl14881596_
                       _e15091544_
                       _hd15101548_
                       _tl15111551_)
                      (_g14781517_))))
              (_g14781517_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl14881596_)
                                              (let ((_e15091544_
                                                     (gx#syntax-e
                                                      _tl14881596_)))
                                                (let ((_tl15111551_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e15091544_)))
                                                      (_hd15101548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e15091544_))))
                                                  (if (gx#stx-null?
                                                       _tl15111551_)
                                                      (___match3679236793_
                                                       _e14831579_
                                                       _hd14841583_
                                                       _tl14851586_
                                                       _e14861589_
                                                       _hd14871593_
                                                       _tl14881596_
                                                       _e15091544_
                                                       _hd15101548_
                                                       _tl15111551_)
                                                      (_g14781517_))))
                                              (_g14781517_)))))
                                  (if (gx#stx-pair? _tl14881596_)
                                      (let ((_e15091544_
                                             (gx#syntax-e _tl14881596_)))
                                        (let ((_tl15111551_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e15091544_)))
                                              (_hd15101548_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e15091544_))))
                                          (if (gx#stx-null? _tl15111551_)
                                              (___match3679236793_
                                               _e14831579_
                                               _hd14841583_
                                               _tl14851586_
                                               _e14861589_
                                               _hd14871593_
                                               _tl14881596_
                                               _e15091544_
                                               _hd15101548_
                                               _tl15111551_)
                                              (_g14781517_))))
                                      (_g14781517_)))))
                          (_g14781517_))))
                  (_g14781517_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defalias|
      (lambda (_$stx1675_)
        (let* ((_g16791697_
                (lambda (_g16801693_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g16801693_)))
               (_g16781752_
                (lambda (_g16801701_)
                  (if (gx#stx-pair? _g16801701_)
                      (let ((_e16831704_ (gx#syntax-e _g16801701_)))
                        (let ((_hd16841708_
                               (let ()
                                 (declare (not safe))
                                 (##car _e16831704_)))
                              (_tl16851711_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e16831704_))))
                          (if (gx#stx-pair? _tl16851711_)
                              (let ((_e16861714_ (gx#syntax-e _tl16851711_)))
                                (let ((_hd16871718_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e16861714_)))
                                      (_tl16881721_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e16861714_))))
                                  (if (gx#stx-pair? _tl16881721_)
                                      (let ((_e16891724_
                                             (gx#syntax-e _tl16881721_)))
                                        (let ((_hd16901728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e16891724_)))
                                              (_tl16911731_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e16891724_))))
                                          (if (gx#stx-null? _tl16911731_)
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
        (let* ((___stx3679536796_ _$stx1756_)
               (_g17611800_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3679536796_))))
          (let ((___kont3679836799_
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
                (___kont3680236803_
                 (lambda (_L1837_ _L1839_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L1839_ '()) (cons _L1837_ '()))))))
            (let* ((___match3685036851_
                    (lambda (_e17861807_
                             _hd17871811_
                             _tl17881814_
                             _e17891817_
                             _hd17901821_
                             _tl17911824_
                             _e17921827_
                             _hd17931831_
                             _tl17941834_)
                      (let ((_L1837_ _hd17931831_) (_L1839_ _hd17901821_))
                        (if (gx#identifier? _L1839_)
                            (___kont3680236803_ _L1837_ _L1839_)
                            (_g17611800_)))))
                   (___match3684236843_
                    (lambda (_e17861807_
                             _hd17871811_
                             _tl17881814_
                             _e17891817_
                             _hd17901821_
                             _tl17911824_)
                      (if (gx#stx-pair? _tl17911824_)
                          (let ((_e17921827_ (gx#syntax-e _tl17911824_)))
                            (let ((_tl17941834_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e17921827_)))
                                  (_hd17931831_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e17921827_))))
                              (if (gx#stx-null? _tl17941834_)
                                  (___match3685036851_
                                   _e17861807_
                                   _hd17871811_
                                   _tl17881814_
                                   _e17891817_
                                   _hd17901821_
                                   _tl17911824_
                                   _e17921827_
                                   _hd17931831_
                                   _tl17941834_)
                                  (_g17611800_))))
                          (_g17611800_))))
                   (___match3683036831_
                    (lambda (_e17661862_
                             _hd17671866_
                             _tl17681869_
                             _e17691872_
                             _hd17701876_
                             _tl17711879_
                             _e17721882_
                             _hd17731886_
                             _tl17741889_
                             ___splice3680036801_
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
                                              (_L1924_ _tl17741889_)
                                              (_L1925_ _hd17731886_))
                                          (if (gx#identifier? _L1925_)
                                              (___kont3679836799_
                                               _L1922_
                                               _L1924_
                                               _L1925_)
                                              (___match3684236843_
                                               _e17661862_
                                               _hd17671866_
                                               _tl17681869_
                                               _e17691872_
                                               _hd17701876_
                                               _tl17711879_))))))))
                        (_loop17781898_ _target17751892_ '())))))
              (if (gx#stx-pair? ___stx3679536796_)
                  (let ((_e17661862_ (gx#syntax-e ___stx3679536796_)))
                    (let ((_tl17681869_
                           (let () (declare (not safe)) (##cdr _e17661862_)))
                          (_hd17671866_
                           (let () (declare (not safe)) (##car _e17661862_))))
                      (if (gx#stx-pair? _tl17681869_)
                          (let ((_e17691872_ (gx#syntax-e _tl17681869_)))
                            (let ((_tl17711879_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e17691872_)))
                                  (_hd17701876_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e17691872_))))
                              (if (gx#stx-pair? _hd17701876_)
                                  (let ((_e17721882_
                                         (gx#syntax-e _hd17701876_)))
                                    (let ((_tl17741889_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e17721882_)))
                                          (_hd17731886_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e17721882_))))
                                      (if (gx#stx-pair/null? _tl17711879_)
                                          (let ((___splice3680036801_
                                                 (gx#syntax-split-splice
                                                  _tl17711879_
                                                  '0)))
                                            (let ((_tl17771895_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3680036801_
                                                      '1)))
                                                  (_target17751892_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3680036801_
                                                      '0))))
                                              (if (gx#stx-null? _tl17771895_)
                                                  (___match3683036831_
                                                   _e17661862_
                                                   _hd17671866_
                                                   _tl17681869_
                                                   _e17691872_
                                                   _hd17701876_
                                                   _tl17711879_
                                                   _e17721882_
                                                   _hd17731886_
                                                   _tl17741889_
                                                   ___splice3680036801_
                                                   _target17751892_
                                                   _tl17771895_)
                                                  (if (gx#stx-pair?
                                                       _tl17711879_)
                                                      (let ((_e17921827_
                                                             (gx#syntax-e
                                                              _tl17711879_)))
                                                        (let ((_tl17941834_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e17921827_)))
                      (_hd17931831_
                       (let () (declare (not safe)) (##car _e17921827_))))
                  (if (gx#stx-null? _tl17941834_)
                      (___match3685036851_
                       _e17661862_
                       _hd17671866_
                       _tl17681869_
                       _e17691872_
                       _hd17701876_
                       _tl17711879_
                       _e17921827_
                       _hd17931831_
                       _tl17941834_)
                      (_g17611800_))))
              (_g17611800_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl17711879_)
                                              (let ((_e17921827_
                                                     (gx#syntax-e
                                                      _tl17711879_)))
                                                (let ((_tl17941834_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e17921827_)))
                                                      (_hd17931831_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e17921827_))))
                                                  (if (gx#stx-null?
                                                       _tl17941834_)
                                                      (___match3685036851_
                                                       _e17661862_
                                                       _hd17671866_
                                                       _tl17681869_
                                                       _e17691872_
                                                       _hd17701876_
                                                       _tl17711879_
                                                       _e17921827_
                                                       _hd17931831_
                                                       _tl17941834_)
                                                      (_g17611800_))))
                                              (_g17611800_)))))
                                  (if (gx#stx-pair? _tl17711879_)
                                      (let ((_e17921827_
                                             (gx#syntax-e _tl17711879_)))
                                        (let ((_tl17941834_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e17921827_)))
                                              (_hd17931831_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e17921827_))))
                                          (if (gx#stx-null? _tl17941834_)
                                              (___match3685036851_
                                               _e17661862_
                                               _hd17671866_
                                               _tl17681869_
                                               _e17691872_
                                               _hd17701876_
                                               _tl17711879_
                                               _e17921827_
                                               _hd17931831_
                                               _tl17941834_)
                                              (_g17611800_))))
                                      (_g17611800_)))))
                          (_g17611800_))))
                  (_g17611800_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let*-values|
      (lambda (_$stx1958_)
        (let* ((___stx3685336854_ _$stx1958_)
               (_g19632008_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3685336854_))))
          (let ((___kont3685636857_
                 (lambda (_L2166_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_g21822185_ _g21832188_)
                                        (cons _g21822185_ _g21832188_))
                                      '()
                                      _L2166_)))))
                (___kont3686036861_
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
            (let* ((___match3691236913_
                    (lambda (_e19852015_
                             _hd19862019_
                             _tl19872022_
                             _e19882025_
                             _hd19892029_
                             _tl19902032_
                             _e19912035_
                             _hd19922039_
                             _tl19932042_
                             ___splice3686236863_
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
                                        (___kont3686036861_
                                         _body20022071_
                                         _tl19932042_
                                         _hd19922039_
                                         _hd19862019_))))))
                        (_loop19972051_ _target19942045_ '()))))
                   (___match3688636887_
                    (lambda (_e19662116_
                             _hd19672120_
                             _tl19682123_
                             _e19692126_
                             _hd19702130_
                             _tl19712133_
                             ___splice3685836859_
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
                                        (___kont3685636857_
                                         _body19802162_))))))
                        (_loop19752142_ _target19722136_ '())))))
              (if (gx#stx-pair? ___stx3685336854_)
                  (let ((_e19662116_ (gx#syntax-e ___stx3685336854_)))
                    (let ((_tl19682123_
                           (let () (declare (not safe)) (##cdr _e19662116_)))
                          (_hd19672120_
                           (let () (declare (not safe)) (##car _e19662116_))))
                      (if (gx#stx-pair? _tl19682123_)
                          (let ((_e19692126_ (gx#syntax-e _tl19682123_)))
                            (let ((_tl19712133_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e19692126_)))
                                  (_hd19702130_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e19692126_))))
                              (if (gx#stx-null? _hd19702130_)
                                  (if (gx#stx-pair/null? _tl19712133_)
                                      (let ((___splice3685836859_
                                             (gx#syntax-split-splice
                                              _tl19712133_
                                              '0)))
                                        (let ((_tl19742139_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3685836859_
                                                  '1)))
                                              (_target19722136_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3685836859_
                                                  '0))))
                                          (if (gx#stx-null? _tl19742139_)
                                              (___match3688636887_
                                               _e19662116_
                                               _hd19672120_
                                               _tl19682123_
                                               _e19692126_
                                               _hd19702130_
                                               _tl19712133_
                                               ___splice3685836859_
                                               _target19722136_
                                               _tl19742139_)
                                              (_g19632008_))))
                                      (_g19632008_))
                                  (if (gx#stx-pair? _hd19702130_)
                                      (let ((_e19912035_
                                             (gx#syntax-e _hd19702130_)))
                                        (let ((_tl19932042_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e19912035_)))
                                              (_hd19922039_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e19912035_))))
                                          (if (gx#stx-pair/null? _tl19712133_)
                                              (let ((___splice3686236863_
                                                     (gx#syntax-split-splice
                                                      _tl19712133_
                                                      '0)))
                                                (let ((_tl19962048_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3686236863_
                                                          '1)))
                                                      (_target19942045_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3686236863_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl19962048_)
                                                      (___match3691236913_
                                                       _e19662116_
                                                       _hd19672120_
                                                       _tl19682123_
                                                       _e19692126_
                                                       _hd19702130_
                                                       _tl19712133_
                                                       _e19912035_
                                                       _hd19922039_
                                                       _tl19932042_
                                                       ___splice3686236863_
                                                       _target19942045_
                                                       _tl19962048_)
                                                      (_g19632008_))))
                                              (_g19632008_))))
                                      (_g19632008_)))))
                          (_g19632008_))))
                  (_g19632008_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let|
      (lambda (_$stx2197_)
        (let* ((___stx3691536916_ _$stx2197_)
               (_g22022266_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3691536916_))))
          (let ((___kont3691836919_
                 (lambda (_L2472_ _L2474_ _L2475_ _L2476_ _L2477_)
                   (cons (cons (gx#datum->syntax '#f 'letrec-values)
                               (cons (cons (cons (cons _L2477_ '())
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda%)
                                                             (cons (foldr (lambda (_g25022509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _g25032512_)
                                    (cons _g25022509_ _g25032512_))
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
                         (foldr (lambda (_g25062521_ _g25072524_)
                                  (cons _g25062521_ _g25072524_))
                                '()
                                _L2475_))))
                (___kont3692436925_
                 (lambda (_L2323_ _L2325_)
                   (cons (gx#datum->syntax '#f '~let)
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons _L2325_
                                     (foldr (lambda (_g23422345_ _g23432348_)
                                              (cons _g23422345_ _g23432348_))
                                            '()
                                            _L2323_)))))))
            (let* ((___match3697236973_
                    (lambda (_e22462273_
                             _hd22472277_
                             _tl22482280_
                             _e22492283_
                             _hd22502287_
                             _tl22512290_
                             ___splice3692636927_
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
                                        (___kont3692436925_
                                         _body22602319_
                                         _hd22502287_))))))
                        (_loop22552299_ _target22522293_ '()))))
                   (___match3696436965_
                    (lambda (_e22462273_
                             _hd22472277_
                             _tl22482280_
                             _e22492283_
                             _hd22502287_
                             _tl22512290_)
                      (if (gx#stx-pair/null? _tl22512290_)
                          (let ((___splice3692636927_
                                 (gx#syntax-split-splice _tl22512290_ '0)))
                            (let ((_tl22542296_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3692636927_ '1)))
                                  (_target22522293_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3692636927_ '0))))
                              (if (gx#stx-null? _tl22542296_)
                                  (___match3697236973_
                                   _e22462273_
                                   _hd22472277_
                                   _tl22482280_
                                   _e22492283_
                                   _hd22502287_
                                   _tl22512290_
                                   ___splice3692636927_
                                   _target22522293_
                                   _tl22542296_)
                                  (_g22022266_))))
                          (_g22022266_))))
                   (___match3695236953_
                    (lambda (_e22092358_
                             _hd22102362_
                             _tl22112365_
                             _e22122368_
                             _hd22132372_
                             _tl22142375_
                             _e22152378_
                             _hd22162382_
                             _tl22172385_
                             ___splice3692036921_
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
                                              (let ((_e22292416_
                                                     (gx#syntax-e
                                                      _lp-hd22232410_)))
                                                (let ((_tl22312423_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e22292416_)))
                                                      (_hd22302420_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e22292416_))))
                                                  (if (gx#stx-pair?
                                                       _tl22312423_)
                                                      (let ((_e22322426_
                                                             (gx#syntax-e
                                                              _tl22312423_)))
                                                        (let ((_tl22342433_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e22322426_)))
                      (_hd22332430_
                       (let () (declare (not safe)) (##car _e22322426_))))
                  (if (gx#stx-null? _tl22342433_)
                      (_loop22212394_
                       _lp-tl22242413_
                       (cons _hd22332430_ _arg22252401_)
                       (cons _hd22302420_ _var22262403_))
                      (___match3696436965_
                       _e22092358_
                       _hd22102362_
                       _tl22112365_
                       _e22122368_
                       _hd22132372_
                       _tl22142375_))))
              (___match3696436965_
               _e22092358_
               _hd22102362_
               _tl22112365_
               _e22122368_
               _hd22132372_
               _tl22142375_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match3696436965_
                                               _e22092358_
                                               _hd22102362_
                                               _tl22112365_
                                               _e22122368_
                                               _hd22132372_
                                               _tl22142375_))))
                                      (let ((_var22282439_
                                             (reverse _var22262403_))
                                            (_arg22272436_
                                             (reverse _arg22252401_)))
                                        (if (gx#stx-pair/null? _tl22172385_)
                                            (let ((___splice3692236923_
                                                   (gx#syntax-split-splice
                                                    _tl22172385_
                                                    '0)))
                                              (let ((_tl22372445_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3692236923_
                                                        '1)))
                                                    (_target22352442_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice3692236923_
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
                                    (___kont3691836919_
                                     _L2472_
                                     _L2474_
                                     _L2475_
                                     _L2476_
                                     _L2477_)
                                    (___match3696436965_
                                     _e22092358_
                                     _hd22102362_
                                     _tl22112365_
                                     _e22122368_
                                     _hd22132372_
                                     _tl22142375_))))))))
              (_loop22382448_ _target22352442_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3696436965_
                                                     _e22092358_
                                                     _hd22102362_
                                                     _tl22112365_
                                                     _e22122368_
                                                     _hd22132372_
                                                     _tl22142375_))))
                                            (___match3696436965_
                                             _e22092358_
                                             _hd22102362_
                                             _tl22112365_
                                             _e22122368_
                                             _hd22132372_
                                             _tl22142375_)))))))
                        (_loop22212394_ _target22182388_ '() '())))))
              (if (gx#stx-pair? ___stx3691536916_)
                  (let ((_e22092358_ (gx#syntax-e ___stx3691536916_)))
                    (let ((_tl22112365_
                           (let () (declare (not safe)) (##cdr _e22092358_)))
                          (_hd22102362_
                           (let () (declare (not safe)) (##car _e22092358_))))
                      (if (gx#stx-pair? _tl22112365_)
                          (let ((_e22122368_ (gx#syntax-e _tl22112365_)))
                            (let ((_tl22142375_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e22122368_)))
                                  (_hd22132372_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e22122368_))))
                              (if (gx#stx-pair? _tl22142375_)
                                  (let ((_e22152378_
                                         (gx#syntax-e _tl22142375_)))
                                    (let ((_tl22172385_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e22152378_)))
                                          (_hd22162382_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e22152378_))))
                                      (if (gx#stx-pair/null? _hd22162382_)
                                          (let ((___splice3692036921_
                                                 (gx#syntax-split-splice
                                                  _hd22162382_
                                                  '0)))
                                            (let ((_tl22202391_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3692036921_
                                                      '1)))
                                                  (_target22182388_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3692036921_
                                                      '0))))
                                              (___match3695236953_
                                               _e22092358_
                                               _hd22102362_
                                               _tl22112365_
                                               _e22122368_
                                               _hd22132372_
                                               _tl22142375_
                                               _e22152378_
                                               _hd22162382_
                                               _tl22172385_
                                               ___splice3692036921_
                                               _target22182388_
                                               _tl22202391_)))
                                          (if (gx#stx-pair/null? _tl22142375_)
                                              (let ((___splice3692636927_
                                                     (gx#syntax-split-splice
                                                      _tl22142375_
                                                      '0)))
                                                (let ((_tl22542296_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3692636927_
                                                          '1)))
                                                      (_target22522293_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3692636927_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl22542296_)
                                                      (___match3697236973_
                                                       _e22092358_
                                                       _hd22102362_
                                                       _tl22112365_
                                                       _e22122368_
                                                       _hd22132372_
                                                       _tl22142375_
                                                       ___splice3692636927_
                                                       _target22522293_
                                                       _tl22542296_)
                                                      (_g22022266_))))
                                              (_g22022266_)))))
                                  (if (gx#stx-pair/null? _tl22142375_)
                                      (let ((___splice3692636927_
                                             (gx#syntax-split-splice
                                              _tl22142375_
                                              '0)))
                                        (let ((_tl22542296_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3692636927_
                                                  '1)))
                                              (_target22522293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3692636927_
                                                  '0))))
                                          (if (gx#stx-null? _tl22542296_)
                                              (___match3697236973_
                                               _e22092358_
                                               _hd22102362_
                                               _tl22112365_
                                               _e22122368_
                                               _hd22132372_
                                               _tl22142375_
                                               ___splice3692636927_
                                               _target22522293_
                                               _tl22542296_)
                                              (_g22022266_))))
                                      (_g22022266_)))))
                          (_g22022266_))))
                  (_g22022266_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let*|
      (lambda (_$stx2534_)
        (let* ((_g25382562_
                (lambda (_g25392558_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g25392558_)))
               (_g25372647_
                (lambda (_g25392566_)
                  (if (gx#stx-pair? _g25392566_)
                      (let ((_e25422569_ (gx#syntax-e _g25392566_)))
                        (let ((_hd25432573_
                               (let ()
                                 (declare (not safe))
                                 (##car _e25422569_)))
                              (_tl25442576_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e25422569_))))
                          (if (gx#stx-pair? _tl25442576_)
                              (let ((_e25452579_ (gx#syntax-e _tl25442576_)))
                                (let ((_hd25462583_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e25452579_)))
                                      (_tl25472586_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e25452579_))))
                                  (if (gx#stx-pair/null? _tl25472586_)
                                      (let ((_g42127_
                                             (gx#syntax-split-splice
                                              _tl25472586_
                                              '0)))
                                        (begin
                                          (let ((_g42128_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42127_)
                                                       (##vector-length
                                                        _g42127_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42128_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42128_)))
                                          (let ((_target25482589_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42127_ 0)))
                                                (_tl25502592_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42127_ 1))))
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
                  (gx#raise-syntax-error '#f '"Bad syntax" _g26572676_)))
               (_g26552765_
                (lambda (_g26572684_)
                  (if (gx#stx-pair? _g26572684_)
                      (let ((_e26602687_ (gx#syntax-e _g26572684_)))
                        (let ((_hd26612691_
                               (let ()
                                 (declare (not safe))
                                 (##car _e26602687_)))
                              (_tl26622694_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e26602687_))))
                          (if (gx#stx-pair? _tl26622694_)
                              (let ((_e26632697_ (gx#syntax-e _tl26622694_)))
                                (let ((_hd26642701_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e26632697_)))
                                      (_tl26652704_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e26632697_))))
                                  (if (gx#stx-pair/null? _tl26652704_)
                                      (let ((_g42129_
                                             (gx#syntax-split-splice
                                              _tl26652704_
                                              '0)))
                                        (begin
                                          (let ((_g42130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42129_)
                                                       (##vector-length
                                                        _g42129_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42130_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42130_)))
                                          (let ((_target26662707_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42129_ 0)))
                                                (_tl26682710_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42129_ 1))))
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
                  (gx#raise-syntax-error '#f '"Bad syntax" _g27752794_)))
               (_g27732883_
                (lambda (_g27752802_)
                  (if (gx#stx-pair? _g27752802_)
                      (let ((_e27782805_ (gx#syntax-e _g27752802_)))
                        (let ((_hd27792809_
                               (let ()
                                 (declare (not safe))
                                 (##car _e27782805_)))
                              (_tl27802812_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e27782805_))))
                          (if (gx#stx-pair? _tl27802812_)
                              (let ((_e27812815_ (gx#syntax-e _tl27802812_)))
                                (let ((_hd27822819_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e27812815_)))
                                      (_tl27832822_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e27812815_))))
                                  (if (gx#stx-pair/null? _tl27832822_)
                                      (let ((_g42131_
                                             (gx#syntax-split-splice
                                              _tl27832822_
                                              '0)))
                                        (begin
                                          (let ((_g42132_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42131_)
                                                       (##vector-length
                                                        _g42131_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42132_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42132_)))
                                          (let ((_target27842825_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42131_ 0)))
                                                (_tl27862828_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42131_ 1))))
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
                    (let* ((___stx3697536976_ _x3371_)
                           (_g33753386_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3697536976_))))
                      (let ((___kont3697836979_
                             (lambda (_L3414_)
                               (gx#stx-andmap gx#identifier? _L3414_)))
                            (___kont3698036981_
                             (lambda () (gx#identifier? _x3371_))))
                        (if (gx#stx-pair? ___stx3697536976_)
                            (let ((_e33783404_
                                   (gx#syntax-e ___stx3697536976_)))
                              (let ((_tl33803411_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e33783404_)))
                                    (_hd33793408_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e33783404_))))
                                (if (gx#identifier? _hd33793408_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:1>[1]#_g42133_|
                                         _hd33793408_)
                                        (___kont3697836979_ _tl33803411_)
                                        (___kont3698036981_))
                                    (___kont3698036981_))))
                            (___kont3698036981_))))))
                 (_let-head2893_
                  (lambda (_x3311_)
                    (let* ((___stx3699536996_ _x3311_)
                           (_g33153326_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3699536996_))))
                      (let ((___kont3699836999_ (lambda (_L3354_) _L3354_))
                            (___kont3700037001_ (lambda () (list _x3311_))))
                        (if (gx#stx-pair? ___stx3699536996_)
                            (let ((_e33183344_
                                   (gx#syntax-e ___stx3699536996_)))
                              (let ((_tl33203351_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e33183344_)))
                                    (_hd33193348_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e33183344_))))
                                (if (gx#identifier? _hd33193348_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:1>[1]#_g42134_|
                                         _hd33193348_)
                                        (___kont3699836999_ _tl33203351_)
                                        (___kont3700037001_))
                                    (___kont3700037001_))))
                            (___kont3700037001_)))))))
          (let* ((___stx3701537016_ _stx2888_)
                 (_g28962962_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3701537016_))))
            (let ((___kont3701837019_
                   (lambda (_L3280_ _L3282_ _L3283_ _L3284_ _L3285_)
                     (cons _L3285_
                           (cons _L3284_
                                 (cons (cons (cons _L3283_ (cons _L3282_ '()))
                                             '())
                                       _L3280_)))))
                  (___kont3702037021_
                   (lambda (_L3083_ _L3085_ _L3086_ _L3087_)
                     (let* ((_g31223139_
                             (lambda (_g31233135_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g31233135_)))
                            (_g31213211_
                             (lambda (_g31233143_)
                               (if (gx#stx-pair/null? _g31233143_)
                                   (let ((_g42135_
                                          (gx#syntax-split-splice
                                           _g31233143_
                                           '0)))
                                     (begin
                                       (let ((_g42136_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g42135_)
                                                    (##vector-length _g42135_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g42136_ 2)))
                                             (error "Context expects 2 values"
                                                    _g42136_)))
                                       (let ((_target31253146_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g42135_ 0)))
                                             (_tl31273149_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g42135_ 1))))
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
                                          (foldr (lambda (_g31913197_
                                                          _g31923200_
                                                          _g31933202_)
                                                   (cons (cons _g31923200_
                                                               (cons _g31913197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g31933202_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L3085_
                                                 _L3176_))
                                        (foldr (lambda (_g31943205_
                                                        _g31953208_)
                                                 (cons _g31943205_
                                                       _g31953208_))
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
              (let* ((___match3708437085_
                      (lambda (_e29222969_
                               _hd29232973_
                               _tl29242976_
                               _e29252979_
                               _hd29262983_
                               _tl29272986_
                               _e29282989_
                               _hd29292993_
                               _tl29302996_
                               ___splice3702237023_
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
                                                (let ((_e29423027_
                                                       (gx#syntax-e
                                                        _lp-hd29363021_)))
                                                  (let ((_tl29443034_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e29423027_)))
                                                        (_hd29433031_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e29423027_))))
                                                    (if (gx#stx-pair?
                                                         _tl29443034_)
                                                        (let ((_e29453037_
                                                               (gx#syntax-e
                                                                _tl29443034_)))
                                                          (let ((_tl29473044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e29453037_)))
                        (_hd29463041_
                         (let () (declare (not safe)) (##car _e29453037_))))
                    (if (gx#stx-null? _tl29473044_)
                        (_loop29343005_
                         _lp-tl29373024_
                         (cons _hd29463041_ _e29383012_)
                         (cons _hd29433031_ _hd29393014_))
                        (_g28962962_))))
                (_g28962962_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g28962962_))))
                                        (let ((_hd29413050_
                                               (reverse _hd29393014_))
                                              (_e29403047_
                                               (reverse _e29383012_)))
                                          (if (gx#stx-pair/null? _tl29302996_)
                                              (let ((___splice3702437025_
                                                     (gx#syntax-split-splice
                                                      _tl29302996_
                                                      '0)))
                                                (let ((_tl29503056_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3702437025_
                                                          '1)))
                                                      (_target29483053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3702437025_
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
                                      (___kont3702037021_
                                       _L3083_
                                       _L3085_
                                       _L3086_
                                       _L3087_)
                                      (_g28962962_))))))))
                (_loop29513059_ _target29483053_ '()))
              (_g28962962_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g28962962_)))))))
                          (_loop29343005_ _target29312999_ '() '()))))
                     (___match3705837059_
                      (lambda (_e29033230_
                               _hd29043234_
                               _tl29053237_
                               _e29063240_
                               _hd29073244_
                               _tl29083247_
                               _e29093250_
                               _hd29103254_
                               _tl29113257_
                               _e29123260_
                               _hd29133264_
                               _tl29143267_
                               _e29153270_
                               _hd29163274_
                               _tl29173277_)
                        (let ((_L3280_ _tl29113257_)
                              (_L3282_ _hd29163274_)
                              (_L3283_ _hd29133264_)
                              (_L3284_ _hd29073244_)
                              (_L3285_ _hd29043234_))
                          (if (_let-head?2891_ _L3283_)
                              (___kont3701837019_
                               _L3280_
                               _L3282_
                               _L3283_
                               _L3284_
                               _L3285_)
                              (if (gx#stx-pair/null? _hd29103254_)
                                  (let ((___splice3702237023_
                                         (gx#syntax-split-splice
                                          _hd29103254_
                                          '0)))
                                    (let ((_tl29333002_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3702237023_
                                              '1)))
                                          (_target29312999_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3702237023_
                                              '0))))
                                      (if (gx#stx-null? _tl29333002_)
                                          (___match3708437085_
                                           _e29033230_
                                           _hd29043234_
                                           _tl29053237_
                                           _e29063240_
                                           _hd29073244_
                                           _tl29083247_
                                           _e29093250_
                                           _hd29103254_
                                           _tl29113257_
                                           ___splice3702237023_
                                           _target29312999_
                                           _tl29333002_)
                                          (_g28962962_))))
                                  (_g28962962_)))))))
                (if (gx#stx-pair? ___stx3701537016_)
                    (let ((_e29033230_ (gx#syntax-e ___stx3701537016_)))
                      (let ((_tl29053237_
                             (let () (declare (not safe)) (##cdr _e29033230_)))
                            (_hd29043234_
                             (let ()
                               (declare (not safe))
                               (##car _e29033230_))))
                        (if (gx#stx-pair? _tl29053237_)
                            (let ((_e29063240_ (gx#syntax-e _tl29053237_)))
                              (let ((_tl29083247_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e29063240_)))
                                    (_hd29073244_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e29063240_))))
                                (if (gx#stx-pair? _tl29083247_)
                                    (let ((_e29093250_
                                           (gx#syntax-e _tl29083247_)))
                                      (let ((_tl29113257_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e29093250_)))
                                            (_hd29103254_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e29093250_))))
                                        (if (gx#stx-pair? _hd29103254_)
                                            (let ((_e29123260_
                                                   (gx#syntax-e _hd29103254_)))
                                              (let ((_tl29143267_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e29123260_)))
                                                    (_hd29133264_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e29123260_))))
                                                (if (gx#stx-pair? _tl29143267_)
                                                    (let ((_e29153270_
                                                           (gx#syntax-e
                                                            _tl29143267_)))
                                                      (let ((_tl29173277_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e29153270_)))
                    (_hd29163274_
                     (let () (declare (not safe)) (##car _e29153270_))))
                (if (gx#stx-null? _tl29173277_)
                    (___match3705837059_
                     _e29033230_
                     _hd29043234_
                     _tl29053237_
                     _e29063240_
                     _hd29073244_
                     _tl29083247_
                     _e29093250_
                     _hd29103254_
                     _tl29113257_
                     _e29123260_
                     _hd29133264_
                     _tl29143267_
                     _e29153270_
                     _hd29163274_
                     _tl29173277_)
                    (if (gx#stx-pair/null? _hd29103254_)
                        (let ((___splice3702237023_
                               (gx#syntax-split-splice _hd29103254_ '0)))
                          (let ((_tl29333002_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3702237023_ '1)))
                                (_target29312999_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice3702237023_ '0))))
                            (if (gx#stx-null? _tl29333002_)
                                (___match3708437085_
                                 _e29033230_
                                 _hd29043234_
                                 _tl29053237_
                                 _e29063240_
                                 _hd29073244_
                                 _tl29083247_
                                 _e29093250_
                                 _hd29103254_
                                 _tl29113257_
                                 ___splice3702237023_
                                 _target29312999_
                                 _tl29333002_)
                                (_g28962962_))))
                        (_g28962962_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd29103254_)
                                                        (let ((___splice3702237023_
                                                               (gx#syntax-split-splice
                                                                _hd29103254_
                                                                '0)))
                                                          (let ((_tl29333002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3702237023_ '1)))
                        (_target29312999_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3702237023_ '0))))
                    (if (gx#stx-null? _tl29333002_)
                        (___match3708437085_
                         _e29033230_
                         _hd29043234_
                         _tl29053237_
                         _e29063240_
                         _hd29073244_
                         _tl29083247_
                         _e29093250_
                         _hd29103254_
                         _tl29113257_
                         ___splice3702237023_
                         _target29312999_
                         _tl29333002_)
                        (_g28962962_))))
                (_g28962962_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd29103254_)
                                                (let ((___splice3702237023_
                                                       (gx#syntax-split-splice
                                                        _hd29103254_
                                                        '0)))
                                                  (let ((_tl29333002_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3702237023_
                                                            '1)))
                                                        (_target29312999_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3702237023_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl29333002_)
                                                        (___match3708437085_
                                                         _e29033230_
                                                         _hd29043234_
                                                         _tl29053237_
                                                         _e29063240_
                                                         _hd29073244_
                                                         _tl29083247_
                                                         _e29093250_
                                                         _hd29103254_
                                                         _tl29113257_
                                                         ___splice3702237023_
                                                         _target29312999_
                                                         _tl29333002_)
                                                        (_g28962962_))))
                                                (_g28962962_)))))
                                    (_g28962962_))))
                            (_g28962962_))))
                    (_g28962962_))))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#and|
      (lambda (_$stx3434_)
        (let* ((___stx3708737088_ _$stx3434_)
               (_g34403466_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3708737088_))))
          (let ((___kont3709037091_ (lambda () '#t))
                (___kont3709237093_ (lambda (_L3538_) _L3538_))
                (___kont3709437095_
                 (lambda (_L3493_ _L3495_ _L3496_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _L3495_
                               (cons (cons _L3496_ _L3493_)
                                     (cons '#f '())))))))
            (if (gx#stx-pair? ___stx3708737088_)
                (let ((_e34423558_ (gx#syntax-e ___stx3708737088_)))
                  (let ((_tl34443565_
                         (let () (declare (not safe)) (##cdr _e34423558_)))
                        (_hd34433562_
                         (let () (declare (not safe)) (##car _e34423558_))))
                    (if (gx#stx-null? _tl34443565_)
                        (___kont3709037091_)
                        (if (gx#stx-pair? _tl34443565_)
                            (let ((_e34493528_ (gx#syntax-e _tl34443565_)))
                              (let ((_tl34513535_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e34493528_)))
                                    (_hd34503532_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e34493528_))))
                                (if (gx#stx-null? _tl34513535_)
                                    (___kont3709237093_ _hd34503532_)
                                    (___kont3709437095_
                                     _tl34513535_
                                     _hd34503532_
                                     _hd34433562_))))
                            (_g34403466_)))))
                (_g34403466_))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#or|
      (lambda (_$stx3576_)
        (let* ((___stx3713337134_ _$stx3576_)
               (_g35823608_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3713337134_))))
          (let ((___kont3713637137_ (lambda () '#f))
                (___kont3713837139_ (lambda (_L3680_) _L3680_))
                (___kont3714037141_
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
            (if (gx#stx-pair? ___stx3713337134_)
                (let ((_e35843700_ (gx#syntax-e ___stx3713337134_)))
                  (let ((_tl35863707_
                         (let () (declare (not safe)) (##cdr _e35843700_)))
                        (_hd35853704_
                         (let () (declare (not safe)) (##car _e35843700_))))
                    (if (gx#stx-null? _tl35863707_)
                        (___kont3713637137_)
                        (if (gx#stx-pair? _tl35863707_)
                            (let ((_e35913670_ (gx#syntax-e _tl35863707_)))
                              (let ((_tl35933677_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e35913670_)))
                                    (_hd35923674_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e35913670_))))
                                (if (gx#stx-null? _tl35933677_)
                                    (___kont3713837139_ _hd35923674_)
                                    (___kont3714037141_
                                     _tl35933677_
                                     _hd35923674_
                                     _hd35853704_))))
                            (_g35823608_)))))
                (_g35823608_))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#cond|
      (lambda (_$stx3718_)
        (let* ((___stx3717937180_ _$stx3718_)
               (_g37273818_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3717937180_))))
          (let ((___kont3718237183_ (lambda () '#!void))
                (___kont3718437185_
                 (lambda (_L4165_)
                   (cons (gx#datum->syntax '#f '%#expression)
                         (cons (cons (gx#datum->syntax '#f 'begin)
                                     (foldr (lambda (_g41844187_ _g41854190_)
                                              (cons _g41844187_ _g41854190_))
                                            '()
                                            _L4165_))
                               '()))))
                (___kont3718837189_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'syntax-error)
                         (cons '"Bad syntax; misplaced else" '()))))
                (___kont3719037191_
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
                (___kont3719237193_
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
                (___kont3719437195_
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
            (let* ((___match3734037341_
                    (lambda (_e37953825_
                             _hd37963829_
                             _tl37973832_
                             _e37983835_
                             _hd37993839_
                             _tl38003842_
                             _e38013845_
                             _hd38023849_
                             _tl38033852_
                             ___splice3719637197_
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
                                        (___kont3719437195_
                                         _tl38003842_
                                         _body38123881_
                                         _hd38023849_
                                         _hd37963829_))))))
                        (_loop38073861_ _target38043855_ '()))))
                   (___match3723637237_
                    (lambda (_e37334105_
                             _hd37344109_
                             _tl37354112_
                             _e37364115_
                             _hd37374119_
                             _tl37384122_
                             _e37394125_
                             _hd37404129_
                             _tl37414132_
                             ___splice3718637187_
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
                                        (if (gx#stx-null? _tl37384122_)
                                            (___kont3718437185_ _body37504161_)
                                            (___kont3718837189_)))))))
                        (_loop37454141_ _target37424135_ '())))))
              (if (gx#stx-pair? ___stx3717937180_)
                  (let ((_e37294200_ (gx#syntax-e ___stx3717937180_)))
                    (let ((_tl37314207_
                           (let () (declare (not safe)) (##cdr _e37294200_)))
                          (_hd37304204_
                           (let () (declare (not safe)) (##car _e37294200_))))
                      (if (gx#stx-null? _tl37314207_)
                          (___kont3718237183_)
                          (if (gx#stx-pair? _tl37314207_)
                              (let ((_e37364115_ (gx#syntax-e _tl37314207_)))
                                (let ((_tl37384122_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e37364115_)))
                                      (_hd37374119_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e37364115_))))
                                  (if (gx#stx-pair? _hd37374119_)
                                      (let ((_e37394125_
                                             (gx#syntax-e _hd37374119_)))
                                        (let ((_tl37414132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e37394125_)))
                                              (_hd37404129_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e37394125_))))
                                          (if (gx#identifier? _hd37404129_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:1>[1]#_g42137_|
                                                   _hd37404129_)
                                                  (if (gx#stx-pair/null?
                                                       _tl37414132_)
                                                      (let ((___splice3718637187_
                                                             (gx#syntax-split-splice
                                                              _tl37414132_
                                                              '0)))
                                                        (let ((_tl37444138_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice3718637187_ '1)))
                      (_target37424135_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice3718637187_ '0))))
                  (if (gx#stx-null? _tl37444138_)
                      (___match3723637237_
                       _e37294200_
                       _hd37304204_
                       _tl37314207_
                       _e37364115_
                       _hd37374119_
                       _tl37384122_
                       _e37394125_
                       _hd37404129_
                       _tl37414132_
                       ___splice3718637187_
                       _target37424135_
                       _tl37444138_)
                      (___kont3718837189_))))
              (___kont3718837189_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl37414132_)
                                                      (___kont3719037191_
                                                       _tl37384122_
                                                       _hd37404129_
                                                       _hd37304204_)
                                                      (if (gx#stx-pair?
                                                           _tl37414132_)
                                                          (let ((_e37853956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl37414132_)))
                    (let ((_tl37873963_
                           (let () (declare (not safe)) (##cdr _e37853956_)))
                          (_hd37863960_
                           (let () (declare (not safe)) (##car _e37853956_))))
                      (if (gx#identifier? _hd37863960_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<sugar>$<sugar:1>[1]#_g42138_|
                               _hd37863960_)
                              (if (gx#stx-pair? _tl37873963_)
                                  (let ((_e37883966_
                                         (gx#syntax-e _tl37873963_)))
                                    (let ((_tl37903973_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e37883966_)))
                                          (_hd37893970_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e37883966_))))
                                      (if (gx#stx-null? _tl37903973_)
                                          (___kont3719237193_
                                           _tl37384122_
                                           _hd37893970_
                                           _hd37404129_
                                           _hd37304204_)
                                          (if (gx#stx-pair/null? _tl37414132_)
                                              (let ((___splice3719637197_
                                                     (gx#syntax-split-splice
                                                      _tl37414132_
                                                      '0)))
                                                (let ((_tl38063858_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3719637197_
                                                          '1)))
                                                      (_target38043855_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3719637197_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl38063858_)
                                                      (___match3734037341_
                                                       _e37294200_
                                                       _hd37304204_
                                                       _tl37314207_
                                                       _e37364115_
                                                       _hd37374119_
                                                       _tl37384122_
                                                       _e37394125_
                                                       _hd37404129_
                                                       _tl37414132_
                                                       ___splice3719637197_
                                                       _target38043855_
                                                       _tl38063858_)
                                                      (_g37273818_))))
                                              (_g37273818_)))))
                                  (if (gx#stx-pair/null? _tl37414132_)
                                      (let ((___splice3719637197_
                                             (gx#syntax-split-splice
                                              _tl37414132_
                                              '0)))
                                        (let ((_tl38063858_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3719637197_
                                                  '1)))
                                              (_target38043855_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice3719637197_
                                                  '0))))
                                          (if (gx#stx-null? _tl38063858_)
                                              (___match3734037341_
                                               _e37294200_
                                               _hd37304204_
                                               _tl37314207_
                                               _e37364115_
                                               _hd37374119_
                                               _tl37384122_
                                               _e37394125_
                                               _hd37404129_
                                               _tl37414132_
                                               ___splice3719637197_
                                               _target38043855_
                                               _tl38063858_)
                                              (_g37273818_))))
                                      (_g37273818_)))
                              (if (gx#stx-pair/null? _tl37414132_)
                                  (let ((___splice3719637197_
                                         (gx#syntax-split-splice
                                          _tl37414132_
                                          '0)))
                                    (let ((_tl38063858_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3719637197_
                                              '1)))
                                          (_target38043855_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3719637197_
                                              '0))))
                                      (if (gx#stx-null? _tl38063858_)
                                          (___match3734037341_
                                           _e37294200_
                                           _hd37304204_
                                           _tl37314207_
                                           _e37364115_
                                           _hd37374119_
                                           _tl37384122_
                                           _e37394125_
                                           _hd37404129_
                                           _tl37414132_
                                           ___splice3719637197_
                                           _target38043855_
                                           _tl38063858_)
                                          (_g37273818_))))
                                  (_g37273818_)))
                          (if (gx#stx-pair/null? _tl37414132_)
                              (let ((___splice3719637197_
                                     (gx#syntax-split-splice _tl37414132_ '0)))
                                (let ((_tl38063858_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3719637197_
                                          '1)))
                                      (_target38043855_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3719637197_
                                          '0))))
                                  (if (gx#stx-null? _tl38063858_)
                                      (___match3734037341_
                                       _e37294200_
                                       _hd37304204_
                                       _tl37314207_
                                       _e37364115_
                                       _hd37374119_
                                       _tl37384122_
                                       _e37394125_
                                       _hd37404129_
                                       _tl37414132_
                                       ___splice3719637197_
                                       _target38043855_
                                       _tl38063858_)
                                      (_g37273818_))))
                              (_g37273818_)))))
                  (if (gx#stx-pair/null? _tl37414132_)
                      (let ((___splice3719637197_
                             (gx#syntax-split-splice _tl37414132_ '0)))
                        (let ((_tl38063858_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3719637197_ '1)))
                              (_target38043855_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice3719637197_ '0))))
                          (if (gx#stx-null? _tl38063858_)
                              (___match3734037341_
                               _e37294200_
                               _hd37304204_
                               _tl37314207_
                               _e37364115_
                               _hd37374119_
                               _tl37384122_
                               _e37394125_
                               _hd37404129_
                               _tl37414132_
                               ___splice3719637197_
                               _target38043855_
                               _tl38063858_)
                              (_g37273818_))))
                      (_g37273818_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl37414132_)
                                                  (___kont3719037191_
                                                   _tl37384122_
                                                   _hd37404129_
                                                   _hd37304204_)
                                                  (if (gx#stx-pair?
                                                       _tl37414132_)
                                                      (let ((_e37853956_
                                                             (gx#syntax-e
                                                              _tl37414132_)))
                                                        (let ((_tl37873963_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e37853956_)))
                      (_hd37863960_
                       (let () (declare (not safe)) (##car _e37853956_))))
                  (if (gx#identifier? _hd37863960_)
                      (if (gx#free-identifier=?
                           |gerbil/core$<sugar>$<sugar:1>[1]#_g42138_|
                           _hd37863960_)
                          (if (gx#stx-pair? _tl37873963_)
                              (let ((_e37883966_ (gx#syntax-e _tl37873963_)))
                                (let ((_tl37903973_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e37883966_)))
                                      (_hd37893970_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e37883966_))))
                                  (if (gx#stx-null? _tl37903973_)
                                      (___kont3719237193_
                                       _tl37384122_
                                       _hd37893970_
                                       _hd37404129_
                                       _hd37304204_)
                                      (if (gx#stx-pair/null? _tl37414132_)
                                          (let ((___splice3719637197_
                                                 (gx#syntax-split-splice
                                                  _tl37414132_
                                                  '0)))
                                            (let ((_tl38063858_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3719637197_
                                                      '1)))
                                                  (_target38043855_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3719637197_
                                                      '0))))
                                              (if (gx#stx-null? _tl38063858_)
                                                  (___match3734037341_
                                                   _e37294200_
                                                   _hd37304204_
                                                   _tl37314207_
                                                   _e37364115_
                                                   _hd37374119_
                                                   _tl37384122_
                                                   _e37394125_
                                                   _hd37404129_
                                                   _tl37414132_
                                                   ___splice3719637197_
                                                   _target38043855_
                                                   _tl38063858_)
                                                  (_g37273818_))))
                                          (_g37273818_)))))
                              (if (gx#stx-pair/null? _tl37414132_)
                                  (let ((___splice3719637197_
                                         (gx#syntax-split-splice
                                          _tl37414132_
                                          '0)))
                                    (let ((_tl38063858_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3719637197_
                                              '1)))
                                          (_target38043855_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice3719637197_
                                              '0))))
                                      (if (gx#stx-null? _tl38063858_)
                                          (___match3734037341_
                                           _e37294200_
                                           _hd37304204_
                                           _tl37314207_
                                           _e37364115_
                                           _hd37374119_
                                           _tl37384122_
                                           _e37394125_
                                           _hd37404129_
                                           _tl37414132_
                                           ___splice3719637197_
                                           _target38043855_
                                           _tl38063858_)
                                          (_g37273818_))))
                                  (_g37273818_)))
                          (if (gx#stx-pair/null? _tl37414132_)
                              (let ((___splice3719637197_
                                     (gx#syntax-split-splice _tl37414132_ '0)))
                                (let ((_tl38063858_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3719637197_
                                          '1)))
                                      (_target38043855_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice3719637197_
                                          '0))))
                                  (if (gx#stx-null? _tl38063858_)
                                      (___match3734037341_
                                       _e37294200_
                                       _hd37304204_
                                       _tl37314207_
                                       _e37364115_
                                       _hd37374119_
                                       _tl37384122_
                                       _e37394125_
                                       _hd37404129_
                                       _tl37414132_
                                       ___splice3719637197_
                                       _target38043855_
                                       _tl38063858_)
                                      (_g37273818_))))
                              (_g37273818_)))
                      (if (gx#stx-pair/null? _tl37414132_)
                          (let ((___splice3719637197_
                                 (gx#syntax-split-splice _tl37414132_ '0)))
                            (let ((_tl38063858_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3719637197_ '1)))
                                  (_target38043855_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice3719637197_ '0))))
                              (if (gx#stx-null? _tl38063858_)
                                  (___match3734037341_
                                   _e37294200_
                                   _hd37304204_
                                   _tl37314207_
                                   _e37364115_
                                   _hd37374119_
                                   _tl37384122_
                                   _e37394125_
                                   _hd37404129_
                                   _tl37414132_
                                   ___splice3719637197_
                                   _target38043855_
                                   _tl38063858_)
                                  (_g37273818_))))
                          (_g37273818_)))))
              (if (gx#stx-pair/null? _tl37414132_)
                  (let ((___splice3719637197_
                         (gx#syntax-split-splice _tl37414132_ '0)))
                    (let ((_tl38063858_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3719637197_ '1)))
                          (_target38043855_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3719637197_ '0))))
                      (if (gx#stx-null? _tl38063858_)
                          (___match3734037341_
                           _e37294200_
                           _hd37304204_
                           _tl37314207_
                           _e37364115_
                           _hd37374119_
                           _tl37384122_
                           _e37394125_
                           _hd37404129_
                           _tl37414132_
                           ___splice3719637197_
                           _target38043855_
                           _tl38063858_)
                          (_g37273818_))))
                  (_g37273818_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g37273818_))))
                              (_g37273818_)))))
                  (_g37273818_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#when|
      (lambda (_$stx4220_)
        (let* ((_g42244248_
                (lambda (_g42254244_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g42254244_)))
               (_g42234333_
                (lambda (_g42254252_)
                  (if (gx#stx-pair? _g42254252_)
                      (let ((_e42284255_ (gx#syntax-e _g42254252_)))
                        (let ((_hd42294259_
                               (let ()
                                 (declare (not safe))
                                 (##car _e42284255_)))
                              (_tl42304262_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e42284255_))))
                          (if (gx#stx-pair? _tl42304262_)
                              (let ((_e42314265_ (gx#syntax-e _tl42304262_)))
                                (let ((_hd42324269_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e42314265_)))
                                      (_tl42334272_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e42314265_))))
                                  (if (gx#stx-pair/null? _tl42334272_)
                                      (let ((_g42139_
                                             (gx#syntax-split-splice
                                              _tl42334272_
                                              '0)))
                                        (begin
                                          (let ((_g42140_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42139_)
                                                       (##vector-length
                                                        _g42139_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42140_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42140_)))
                                          (let ((_target42344275_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42139_ 0)))
                                                (_tl42364278_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42139_ 1))))
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
                  (gx#raise-syntax-error '#f '"Bad syntax" _g43434362_)))
               (_g43414451_
                (lambda (_g43434370_)
                  (if (gx#stx-pair? _g43434370_)
                      (let ((_e43464373_ (gx#syntax-e _g43434370_)))
                        (let ((_hd43474377_
                               (let ()
                                 (declare (not safe))
                                 (##car _e43464373_)))
                              (_tl43484380_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e43464373_))))
                          (if (gx#stx-pair? _tl43484380_)
                              (let ((_e43494383_ (gx#syntax-e _tl43484380_)))
                                (let ((_hd43504387_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e43494383_)))
                                      (_tl43514390_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e43494383_))))
                                  (if (gx#stx-pair/null? _tl43514390_)
                                      (let ((_g42141_
                                             (gx#syntax-split-splice
                                              _tl43514390_
                                              '0)))
                                        (begin
                                          (let ((_g42142_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42141_)
                                                       (##vector-length
                                                        _g42141_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42142_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42142_)))
                                          (let ((_target43524393_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42141_ 0)))
                                                (_tl43544396_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42141_ 1))))
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
                  (gx#raise-syntax-error '#f '"Bad syntax" _g44604479_)))
               (_g44584568_
                (lambda (_g44604487_)
                  (if (gx#stx-pair? _g44604487_)
                      (let ((_e44634490_ (gx#syntax-e _g44604487_)))
                        (let ((_hd44644494_
                               (let ()
                                 (declare (not safe))
                                 (##car _e44634490_)))
                              (_tl44654497_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e44634490_))))
                          (if (gx#stx-pair? _tl44654497_)
                              (let ((_e44664500_ (gx#syntax-e _tl44654497_)))
                                (let ((_hd44674504_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e44664500_)))
                                      (_tl44684507_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e44664500_))))
                                  (if (gx#stx-pair/null? _tl44684507_)
                                      (let ((_g42143_
                                             (gx#syntax-split-splice
                                              _tl44684507_
                                              '0)))
                                        (begin
                                          (let ((_g42144_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42143_)
                                                       (##vector-length
                                                        _g42143_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42144_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42144_)))
                                          (let ((_target44694510_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42143_ 0)))
                                                (_tl44714513_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42143_ 1))))
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
          (_g44584568_ _stx4456_))))))
