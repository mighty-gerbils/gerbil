(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g41989_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g41990_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g41993_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g41994_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defrules|
      (lambda (_$stx1684_)
        (let* ((_g16881716_
                (lambda (_g16891712_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g16891712_)))
               (_g16871817_
                (lambda (_g16891720_)
                  (if (gx#stx-pair? _g16891720_)
                      (let ((_e16931723_ (gx#syntax-e _g16891720_)))
                        (let ((_hd16941727_ (##car _e16931723_))
                              (_tl16951730_ (##cdr _e16931723_)))
                          (if (gx#stx-pair? _tl16951730_)
                              (let ((_e16961733_ (gx#syntax-e _tl16951730_)))
                                (let ((_hd16971737_ (##car _e16961733_))
                                      (_tl16981740_ (##cdr _e16961733_)))
                                  (if (gx#stx-pair? _tl16981740_)
                                      (let ((_e16991743_
                                             (gx#syntax-e _tl16981740_)))
                                        (let ((_hd17001747_
                                               (##car _e16991743_))
                                              (_tl17011750_
                                               (##cdr _e16991743_)))
                                          (if (gx#stx-pair/null? _tl17011750_)
                                              (let ((_g41981_
                                                     (gx#syntax-split-splice
                                                      _tl17011750_
                                                      '0)))
                                                (begin
                                                  (let ((_g41982_
                                                         (if (##values?
                                                              _g41981_)
                                                             (##vector-length
                                                              _g41981_)
                                                             1)))
                                                    (if (not (##fx= _g41982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g41982_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target17021753_
                                                         (##vector-ref
                                                          _g41981_
                                                          0))
                                                        (_tl17041756_
                                                         (##vector-ref
                                                          _g41981_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl17041756_)
                                                        (letrec ((_loop17051759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd17031763_ _clauses17091766_)
                            (if (gx#stx-pair? _hd17031763_)
                                (let ((_e17061769_ (gx#syntax-e _hd17031763_)))
                                  (let ((_lp-hd17071773_ (##car _e17061769_))
                                        (_lp-tl17081776_ (##cdr _e17061769_)))
                                    (_loop17051759_
                                     _lp-tl17081776_
                                     (cons _lp-hd17071773_
                                           _clauses17091766_))))
                                (let ((_clauses17101779_
                                       (reverse _clauses17091766_)))
                                  ((lambda (_L1783_ _L1785_ _L1786_)
                                     (if (gx#identifier? _L1786_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'define-syntax)
                                               (cons _L1786_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'syntax-rules)
                         (cons _L1785_
                               (foldr (lambda (_g18081811_ _g18091814_)
                                        (cons _g18081811_ _g18091814_))
                                      '()
                                      _L1783_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_g16881716_ _g16891720_)))
                                   _clauses17101779_
                                   _hd17001747_
                                   _hd16971737_))))))
                  (_loop17051759_ _target17021753_ '()))
                (_g16881716_ _g16891720_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g16881716_ _g16891720_))))
                                      (_g16881716_ _g16891720_))))
                              (_g16881716_ _g16891720_))))
                      (_g16881716_ _g16891720_)))))
          (_g16871817_ _$stx1684_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defsyntax%|
      (lambda (_$stx1822_)
        (let* ((___stx3664336644_ _$stx1822_)
               (_g18271866_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3664336644_))))
          (let ((___kont3664636647_
                 (lambda (_L1988_ _L1990_ _L1991_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _L1991_
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L1990_
                                                 (foldr (lambda (_g20102013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g20112016_)
                  (cons _g20102013_ _g20112016_))
                '()
                _L1988_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3665036651_
                 (lambda (_L1903_ _L1905_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _L1905_ (cons _L1903_ '()))))))
            (let* ((___match3669836699_
                    (lambda (_e18521873_
                             _hd18531877_
                             _tl18541880_
                             _e18551883_
                             _hd18561887_
                             _tl18571890_
                             _e18581893_
                             _hd18591897_
                             _tl18601900_)
                      (let ((_L1903_ _hd18591897_) (_L1905_ _hd18561887_))
                        (if (gx#identifier? _L1905_)
                            (___kont3665036651_ _L1903_ _L1905_)
                            (_g18271866_)))))
                   (___match3669036691_
                    (lambda (_e18521873_
                             _hd18531877_
                             _tl18541880_
                             _e18551883_
                             _hd18561887_
                             _tl18571890_)
                      (if (gx#stx-pair? _tl18571890_)
                          (let ((_e18581893_ (gx#syntax-e _tl18571890_)))
                            (let ((_tl18601900_ (##cdr _e18581893_))
                                  (_hd18591897_ (##car _e18581893_)))
                              (if (gx#stx-null? _tl18601900_)
                                  (___match3669836699_
                                   _e18521873_
                                   _hd18531877_
                                   _tl18541880_
                                   _e18551883_
                                   _hd18561887_
                                   _tl18571890_
                                   _e18581893_
                                   _hd18591897_
                                   _tl18601900_)
                                  (_g18271866_))))
                          (_g18271866_))))
                   (___match3667836679_
                    (lambda (_e18321928_
                             _hd18331932_
                             _tl18341935_
                             _e18351938_
                             _hd18361942_
                             _tl18371945_
                             _e18381948_
                             _hd18391952_
                             _tl18401955_
                             ___splice3664836649_
                             _target18411958_
                             _tl18431961_)
                      (letrec ((_loop18441964_
                                (lambda (_hd18421968_ _body18481971_)
                                  (if (gx#stx-pair? _hd18421968_)
                                      (let ((_e18451974_
                                             (gx#syntax-e _hd18421968_)))
                                        (let ((_lp-tl18471981_
                                               (##cdr _e18451974_))
                                              (_lp-hd18461978_
                                               (##car _e18451974_)))
                                          (_loop18441964_
                                           _lp-tl18471981_
                                           (cons _lp-hd18461978_
                                                 _body18481971_))))
                                      (let ((_body18491984_
                                             (reverse _body18481971_)))
                                        (let ((_L1988_ _body18491984_)
                                              (_L1990_ _tl18401955_)
                                              (_L1991_ _hd18391952_))
                                          (if (gx#identifier? _L1991_)
                                              (___kont3664636647_
                                               _L1988_
                                               _L1990_
                                               _L1991_)
                                              (___match3669036691_
                                               _e18321928_
                                               _hd18331932_
                                               _tl18341935_
                                               _e18351938_
                                               _hd18361942_
                                               _tl18371945_))))))))
                        (_loop18441964_ _target18411958_ '())))))
              (if (gx#stx-pair? ___stx3664336644_)
                  (let ((_e18321928_ (gx#syntax-e ___stx3664336644_)))
                    (let ((_tl18341935_ (##cdr _e18321928_))
                          (_hd18331932_ (##car _e18321928_)))
                      (if (gx#stx-pair? _tl18341935_)
                          (let ((_e18351938_ (gx#syntax-e _tl18341935_)))
                            (let ((_tl18371945_ (##cdr _e18351938_))
                                  (_hd18361942_ (##car _e18351938_)))
                              (if (gx#stx-pair? _hd18361942_)
                                  (let ((_e18381948_
                                         (gx#syntax-e _hd18361942_)))
                                    (let ((_tl18401955_ (##cdr _e18381948_))
                                          (_hd18391952_ (##car _e18381948_)))
                                      (if (gx#stx-pair/null? _tl18371945_)
                                          (let ((___splice3664836649_
                                                 (gx#syntax-split-splice
                                                  _tl18371945_
                                                  '0)))
                                            (let ((_tl18431961_
                                                   (##vector-ref
                                                    ___splice3664836649_
                                                    '1))
                                                  (_target18411958_
                                                   (##vector-ref
                                                    ___splice3664836649_
                                                    '0)))
                                              (if (gx#stx-null? _tl18431961_)
                                                  (___match3667836679_
                                                   _e18321928_
                                                   _hd18331932_
                                                   _tl18341935_
                                                   _e18351938_
                                                   _hd18361942_
                                                   _tl18371945_
                                                   _e18381948_
                                                   _hd18391952_
                                                   _tl18401955_
                                                   ___splice3664836649_
                                                   _target18411958_
                                                   _tl18431961_)
                                                  (if (gx#stx-pair?
                                                       _tl18371945_)
                                                      (let ((_e18581893_
                                                             (gx#syntax-e
                                                              _tl18371945_)))
                                                        (let ((_tl18601900_
                                                               (##cdr _e18581893_))
                                                              (_hd18591897_
                                                               (##car _e18581893_)))
                                                          (if (gx#stx-null?
                                                               _tl18601900_)
                                                              (___match3669836699_
                                                               _e18321928_
                                                               _hd18331932_
                                                               _tl18341935_
                                                               _e18351938_
                                                               _hd18361942_
                                                               _tl18371945_
                                                               _e18581893_
                                                               _hd18591897_
                                                               _tl18601900_)
                                                              (_g18271866_))))
                                                      (_g18271866_)))))
                                          (if (gx#stx-pair? _tl18371945_)
                                              (let ((_e18581893_
                                                     (gx#syntax-e
                                                      _tl18371945_)))
                                                (let ((_tl18601900_
                                                       (##cdr _e18581893_))
                                                      (_hd18591897_
                                                       (##car _e18581893_)))
                                                  (if (gx#stx-null?
                                                       _tl18601900_)
                                                      (___match3669836699_
                                                       _e18321928_
                                                       _hd18331932_
                                                       _tl18341935_
                                                       _e18351938_
                                                       _hd18361942_
                                                       _tl18371945_
                                                       _e18581893_
                                                       _hd18591897_
                                                       _tl18601900_)
                                                      (_g18271866_))))
                                              (_g18271866_)))))
                                  (if (gx#stx-pair? _tl18371945_)
                                      (let ((_e18581893_
                                             (gx#syntax-e _tl18371945_)))
                                        (let ((_tl18601900_
                                               (##cdr _e18581893_))
                                              (_hd18591897_
                                               (##car _e18581893_)))
                                          (if (gx#stx-null? _tl18601900_)
                                              (___match3669836699_
                                               _e18321928_
                                               _hd18331932_
                                               _tl18341935_
                                               _e18351938_
                                               _hd18361942_
                                               _tl18371945_
                                               _e18581893_
                                               _hd18591897_
                                               _tl18601900_)
                                              (_g18271866_))))
                                      (_g18271866_)))))
                          (_g18271866_))))
                  (_g18271866_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defalias|
      (lambda (_$stx2024_)
        (let* ((_g20282046_
                (lambda (_g20292042_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g20292042_)))
               (_g20272101_
                (lambda (_g20292050_)
                  (if (gx#stx-pair? _g20292050_)
                      (let ((_e20322053_ (gx#syntax-e _g20292050_)))
                        (let ((_hd20332057_ (##car _e20322053_))
                              (_tl20342060_ (##cdr _e20322053_)))
                          (if (gx#stx-pair? _tl20342060_)
                              (let ((_e20352063_ (gx#syntax-e _tl20342060_)))
                                (let ((_hd20362067_ (##car _e20352063_))
                                      (_tl20372070_ (##cdr _e20352063_)))
                                  (if (gx#stx-pair? _tl20372070_)
                                      (let ((_e20382073_
                                             (gx#syntax-e _tl20372070_)))
                                        (let ((_hd20392077_
                                               (##car _e20382073_))
                                              (_tl20402080_
                                               (##cdr _e20382073_)))
                                          (if (gx#stx-null? _tl20402080_)
                                              ((lambda (_L2083_ _L2085_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'define-alias)
                                                       (cons _L2085_
                                                             (cons _L2083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd20392077_
                                               _hd20362067_)
                                              (_g20282046_ _g20292050_))))
                                      (_g20282046_ _g20292050_))))
                              (_g20282046_ _g20292050_))))
                      (_g20282046_ _g20292050_)))))
          (_g20272101_ _$stx2024_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#define|
      (lambda (_$stx2105_)
        (let* ((___stx3670136702_ _$stx2105_)
               (_g21102149_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3670136702_))))
          (let ((___kont3670436705_
                 (lambda (_L2271_ _L2273_ _L2274_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L2274_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L2273_
                                                 (foldr (lambda (_g22932296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g22942299_)
                  (cons _g22932296_ _g22942299_))
                '()
                _L2271_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3670836709_
                 (lambda (_L2186_ _L2188_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L2188_ '()) (cons _L2186_ '()))))))
            (let* ((___match3675636757_
                    (lambda (_e21352156_
                             _hd21362160_
                             _tl21372163_
                             _e21382166_
                             _hd21392170_
                             _tl21402173_
                             _e21412176_
                             _hd21422180_
                             _tl21432183_)
                      (let ((_L2186_ _hd21422180_) (_L2188_ _hd21392170_))
                        (if (gx#identifier? _L2188_)
                            (___kont3670836709_ _L2186_ _L2188_)
                            (_g21102149_)))))
                   (___match3674836749_
                    (lambda (_e21352156_
                             _hd21362160_
                             _tl21372163_
                             _e21382166_
                             _hd21392170_
                             _tl21402173_)
                      (if (gx#stx-pair? _tl21402173_)
                          (let ((_e21412176_ (gx#syntax-e _tl21402173_)))
                            (let ((_tl21432183_ (##cdr _e21412176_))
                                  (_hd21422180_ (##car _e21412176_)))
                              (if (gx#stx-null? _tl21432183_)
                                  (___match3675636757_
                                   _e21352156_
                                   _hd21362160_
                                   _tl21372163_
                                   _e21382166_
                                   _hd21392170_
                                   _tl21402173_
                                   _e21412176_
                                   _hd21422180_
                                   _tl21432183_)
                                  (_g21102149_))))
                          (_g21102149_))))
                   (___match3673636737_
                    (lambda (_e21152211_
                             _hd21162215_
                             _tl21172218_
                             _e21182221_
                             _hd21192225_
                             _tl21202228_
                             _e21212231_
                             _hd21222235_
                             _tl21232238_
                             ___splice3670636707_
                             _target21242241_
                             _tl21262244_)
                      (letrec ((_loop21272247_
                                (lambda (_hd21252251_ _body21312254_)
                                  (if (gx#stx-pair? _hd21252251_)
                                      (let ((_e21282257_
                                             (gx#syntax-e _hd21252251_)))
                                        (let ((_lp-tl21302264_
                                               (##cdr _e21282257_))
                                              (_lp-hd21292261_
                                               (##car _e21282257_)))
                                          (_loop21272247_
                                           _lp-tl21302264_
                                           (cons _lp-hd21292261_
                                                 _body21312254_))))
                                      (let ((_body21322267_
                                             (reverse _body21312254_)))
                                        (let ((_L2271_ _body21322267_)
                                              (_L2273_ _tl21232238_)
                                              (_L2274_ _hd21222235_))
                                          (if (gx#identifier? _L2274_)
                                              (___kont3670436705_
                                               _L2271_
                                               _L2273_
                                               _L2274_)
                                              (___match3674836749_
                                               _e21152211_
                                               _hd21162215_
                                               _tl21172218_
                                               _e21182221_
                                               _hd21192225_
                                               _tl21202228_))))))))
                        (_loop21272247_ _target21242241_ '())))))
              (if (gx#stx-pair? ___stx3670136702_)
                  (let ((_e21152211_ (gx#syntax-e ___stx3670136702_)))
                    (let ((_tl21172218_ (##cdr _e21152211_))
                          (_hd21162215_ (##car _e21152211_)))
                      (if (gx#stx-pair? _tl21172218_)
                          (let ((_e21182221_ (gx#syntax-e _tl21172218_)))
                            (let ((_tl21202228_ (##cdr _e21182221_))
                                  (_hd21192225_ (##car _e21182221_)))
                              (if (gx#stx-pair? _hd21192225_)
                                  (let ((_e21212231_
                                         (gx#syntax-e _hd21192225_)))
                                    (let ((_tl21232238_ (##cdr _e21212231_))
                                          (_hd21222235_ (##car _e21212231_)))
                                      (if (gx#stx-pair/null? _tl21202228_)
                                          (let ((___splice3670636707_
                                                 (gx#syntax-split-splice
                                                  _tl21202228_
                                                  '0)))
                                            (let ((_tl21262244_
                                                   (##vector-ref
                                                    ___splice3670636707_
                                                    '1))
                                                  (_target21242241_
                                                   (##vector-ref
                                                    ___splice3670636707_
                                                    '0)))
                                              (if (gx#stx-null? _tl21262244_)
                                                  (___match3673636737_
                                                   _e21152211_
                                                   _hd21162215_
                                                   _tl21172218_
                                                   _e21182221_
                                                   _hd21192225_
                                                   _tl21202228_
                                                   _e21212231_
                                                   _hd21222235_
                                                   _tl21232238_
                                                   ___splice3670636707_
                                                   _target21242241_
                                                   _tl21262244_)
                                                  (if (gx#stx-pair?
                                                       _tl21202228_)
                                                      (let ((_e21412176_
                                                             (gx#syntax-e
                                                              _tl21202228_)))
                                                        (let ((_tl21432183_
                                                               (##cdr _e21412176_))
                                                              (_hd21422180_
                                                               (##car _e21412176_)))
                                                          (if (gx#stx-null?
                                                               _tl21432183_)
                                                              (___match3675636757_
                                                               _e21152211_
                                                               _hd21162215_
                                                               _tl21172218_
                                                               _e21182221_
                                                               _hd21192225_
                                                               _tl21202228_
                                                               _e21412176_
                                                               _hd21422180_
                                                               _tl21432183_)
                                                              (_g21102149_))))
                                                      (_g21102149_)))))
                                          (if (gx#stx-pair? _tl21202228_)
                                              (let ((_e21412176_
                                                     (gx#syntax-e
                                                      _tl21202228_)))
                                                (let ((_tl21432183_
                                                       (##cdr _e21412176_))
                                                      (_hd21422180_
                                                       (##car _e21412176_)))
                                                  (if (gx#stx-null?
                                                       _tl21432183_)
                                                      (___match3675636757_
                                                       _e21152211_
                                                       _hd21162215_
                                                       _tl21172218_
                                                       _e21182221_
                                                       _hd21192225_
                                                       _tl21202228_
                                                       _e21412176_
                                                       _hd21422180_
                                                       _tl21432183_)
                                                      (_g21102149_))))
                                              (_g21102149_)))))
                                  (if (gx#stx-pair? _tl21202228_)
                                      (let ((_e21412176_
                                             (gx#syntax-e _tl21202228_)))
                                        (let ((_tl21432183_
                                               (##cdr _e21412176_))
                                              (_hd21422180_
                                               (##car _e21412176_)))
                                          (if (gx#stx-null? _tl21432183_)
                                              (___match3675636757_
                                               _e21152211_
                                               _hd21162215_
                                               _tl21172218_
                                               _e21182221_
                                               _hd21192225_
                                               _tl21202228_
                                               _e21412176_
                                               _hd21422180_
                                               _tl21432183_)
                                              (_g21102149_))))
                                      (_g21102149_)))))
                          (_g21102149_))))
                  (_g21102149_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let*-values|
      (lambda (_$stx2307_)
        (let* ((___stx3675936760_ _$stx2307_)
               (_g23122357_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3675936760_))))
          (let ((___kont3676236763_
                 (lambda (_L2515_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_g25312534_ _g25322537_)
                                        (cons _g25312534_ _g25322537_))
                                      '()
                                      _L2515_)))))
                (___kont3676636767_
                 (lambda (_L2424_ _L2426_ _L2427_ _L2428_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons _L2427_ '())
                               (cons (cons _L2428_
                                           (cons _L2426_
                                                 (foldr (lambda (_g24492452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g24502455_)
                  (cons _g24492452_ _g24502455_))
                '()
                _L2424_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match3681836819_
                    (lambda (_e23342364_
                             _hd23352368_
                             _tl23362371_
                             _e23372374_
                             _hd23382378_
                             _tl23392381_
                             _e23402384_
                             _hd23412388_
                             _tl23422391_
                             ___splice3676836769_
                             _target23432394_
                             _tl23452397_)
                      (letrec ((_loop23462400_
                                (lambda (_hd23442404_ _body23502407_)
                                  (if (gx#stx-pair? _hd23442404_)
                                      (let ((_e23472410_
                                             (gx#syntax-e _hd23442404_)))
                                        (let ((_lp-tl23492417_
                                               (##cdr _e23472410_))
                                              (_lp-hd23482414_
                                               (##car _e23472410_)))
                                          (_loop23462400_
                                           _lp-tl23492417_
                                           (cons _lp-hd23482414_
                                                 _body23502407_))))
                                      (let ((_body23512420_
                                             (reverse _body23502407_)))
                                        (___kont3676636767_
                                         _body23512420_
                                         _tl23422391_
                                         _hd23412388_
                                         _hd23352368_))))))
                        (_loop23462400_ _target23432394_ '()))))
                   (___match3679236793_
                    (lambda (_e23152465_
                             _hd23162469_
                             _tl23172472_
                             _e23182475_
                             _hd23192479_
                             _tl23202482_
                             ___splice3676436765_
                             _target23212485_
                             _tl23232488_)
                      (letrec ((_loop23242491_
                                (lambda (_hd23222495_ _body23282498_)
                                  (if (gx#stx-pair? _hd23222495_)
                                      (let ((_e23252501_
                                             (gx#syntax-e _hd23222495_)))
                                        (let ((_lp-tl23272508_
                                               (##cdr _e23252501_))
                                              (_lp-hd23262505_
                                               (##car _e23252501_)))
                                          (_loop23242491_
                                           _lp-tl23272508_
                                           (cons _lp-hd23262505_
                                                 _body23282498_))))
                                      (let ((_body23292511_
                                             (reverse _body23282498_)))
                                        (___kont3676236763_
                                         _body23292511_))))))
                        (_loop23242491_ _target23212485_ '())))))
              (if (gx#stx-pair? ___stx3675936760_)
                  (let ((_e23152465_ (gx#syntax-e ___stx3675936760_)))
                    (let ((_tl23172472_ (##cdr _e23152465_))
                          (_hd23162469_ (##car _e23152465_)))
                      (if (gx#stx-pair? _tl23172472_)
                          (let ((_e23182475_ (gx#syntax-e _tl23172472_)))
                            (let ((_tl23202482_ (##cdr _e23182475_))
                                  (_hd23192479_ (##car _e23182475_)))
                              (if (gx#stx-null? _hd23192479_)
                                  (if (gx#stx-pair/null? _tl23202482_)
                                      (let ((___splice3676436765_
                                             (gx#syntax-split-splice
                                              _tl23202482_
                                              '0)))
                                        (let ((_tl23232488_
                                               (##vector-ref
                                                ___splice3676436765_
                                                '1))
                                              (_target23212485_
                                               (##vector-ref
                                                ___splice3676436765_
                                                '0)))
                                          (if (gx#stx-null? _tl23232488_)
                                              (___match3679236793_
                                               _e23152465_
                                               _hd23162469_
                                               _tl23172472_
                                               _e23182475_
                                               _hd23192479_
                                               _tl23202482_
                                               ___splice3676436765_
                                               _target23212485_
                                               _tl23232488_)
                                              (_g23122357_))))
                                      (_g23122357_))
                                  (if (gx#stx-pair? _hd23192479_)
                                      (let ((_e23402384_
                                             (gx#syntax-e _hd23192479_)))
                                        (let ((_tl23422391_
                                               (##cdr _e23402384_))
                                              (_hd23412388_
                                               (##car _e23402384_)))
                                          (if (gx#stx-pair/null? _tl23202482_)
                                              (let ((___splice3676836769_
                                                     (gx#syntax-split-splice
                                                      _tl23202482_
                                                      '0)))
                                                (let ((_tl23452397_
                                                       (##vector-ref
                                                        ___splice3676836769_
                                                        '1))
                                                      (_target23432394_
                                                       (##vector-ref
                                                        ___splice3676836769_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl23452397_)
                                                      (___match3681836819_
                                                       _e23152465_
                                                       _hd23162469_
                                                       _tl23172472_
                                                       _e23182475_
                                                       _hd23192479_
                                                       _tl23202482_
                                                       _e23402384_
                                                       _hd23412388_
                                                       _tl23422391_
                                                       ___splice3676836769_
                                                       _target23432394_
                                                       _tl23452397_)
                                                      (_g23122357_))))
                                              (_g23122357_))))
                                      (_g23122357_)))))
                          (_g23122357_))))
                  (_g23122357_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let|
      (lambda (_$stx2546_)
        (let* ((___stx3682136822_ _$stx2546_)
               (_g25512615_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3682136822_))))
          (let ((___kont3682436825_
                 (lambda (_L2821_ _L2823_ _L2824_ _L2825_ _L2826_)
                   (cons (cons (gx#datum->syntax '#f 'letrec-values)
                               (cons (cons (cons (cons _L2826_ '())
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda%)
                                                             (cons (foldr (lambda (_g28512858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _g28522861_)
                                    (cons _g28512858_ _g28522861_))
                                  _L2823_
                                  _L2825_)
                           (foldr (lambda (_g28532864_ _g28542867_)
                                    (cons _g28532864_ _g28542867_))
                                  '()
                                  _L2821_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _L2826_ '())))
                         (foldr (lambda (_g28552870_ _g28562873_)
                                  (cons _g28552870_ _g28562873_))
                                '()
                                _L2824_))))
                (___kont3683036831_
                 (lambda (_L2672_ _L2674_)
                   (cons (gx#datum->syntax '#f '~let)
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons _L2674_
                                     (foldr (lambda (_g26912694_ _g26922697_)
                                              (cons _g26912694_ _g26922697_))
                                            '()
                                            _L2672_)))))))
            (let* ((___match3687836879_
                    (lambda (_e25952622_
                             _hd25962626_
                             _tl25972629_
                             _e25982632_
                             _hd25992636_
                             _tl26002639_
                             ___splice3683236833_
                             _target26012642_
                             _tl26032645_)
                      (letrec ((_loop26042648_
                                (lambda (_hd26022652_ _body26082655_)
                                  (if (gx#stx-pair? _hd26022652_)
                                      (let ((_e26052658_
                                             (gx#syntax-e _hd26022652_)))
                                        (let ((_lp-tl26072665_
                                               (##cdr _e26052658_))
                                              (_lp-hd26062662_
                                               (##car _e26052658_)))
                                          (_loop26042648_
                                           _lp-tl26072665_
                                           (cons _lp-hd26062662_
                                                 _body26082655_))))
                                      (let ((_body26092668_
                                             (reverse _body26082655_)))
                                        (___kont3683036831_
                                         _body26092668_
                                         _hd25992636_))))))
                        (_loop26042648_ _target26012642_ '()))))
                   (___match3687036871_
                    (lambda (_e25952622_
                             _hd25962626_
                             _tl25972629_
                             _e25982632_
                             _hd25992636_
                             _tl26002639_)
                      (if (gx#stx-pair/null? _tl26002639_)
                          (let ((___splice3683236833_
                                 (gx#syntax-split-splice _tl26002639_ '0)))
                            (let ((_tl26032645_
                                   (##vector-ref ___splice3683236833_ '1))
                                  (_target26012642_
                                   (##vector-ref ___splice3683236833_ '0)))
                              (if (gx#stx-null? _tl26032645_)
                                  (___match3687836879_
                                   _e25952622_
                                   _hd25962626_
                                   _tl25972629_
                                   _e25982632_
                                   _hd25992636_
                                   _tl26002639_
                                   ___splice3683236833_
                                   _target26012642_
                                   _tl26032645_)
                                  (_g25512615_))))
                          (_g25512615_))))
                   (___match3685836859_
                    (lambda (_e25582707_
                             _hd25592711_
                             _tl25602714_
                             _e25612717_
                             _hd25622721_
                             _tl25632724_
                             _e25642727_
                             _hd25652731_
                             _tl25662734_
                             ___splice3682636827_
                             _target25672737_
                             _tl25692740_)
                      (letrec ((_loop25702743_
                                (lambda (_hd25682747_
                                         _arg25742750_
                                         _var25752752_)
                                  (if (gx#stx-pair? _hd25682747_)
                                      (let ((_e25712755_
                                             (gx#syntax-e _hd25682747_)))
                                        (let ((_lp-tl25732762_
                                               (##cdr _e25712755_))
                                              (_lp-hd25722759_
                                               (##car _e25712755_)))
                                          (if (gx#stx-pair? _lp-hd25722759_)
                                              (let ((_e25782765_
                                                     (gx#syntax-e
                                                      _lp-hd25722759_)))
                                                (let ((_tl25802772_
                                                       (##cdr _e25782765_))
                                                      (_hd25792769_
                                                       (##car _e25782765_)))
                                                  (if (gx#stx-pair?
                                                       _tl25802772_)
                                                      (let ((_e25812775_
                                                             (gx#syntax-e
                                                              _tl25802772_)))
                                                        (let ((_tl25832782_
                                                               (##cdr _e25812775_))
                                                              (_hd25822779_
                                                               (##car _e25812775_)))
                                                          (if (gx#stx-null?
                                                               _tl25832782_)
                                                              (_loop25702743_
                                                               _lp-tl25732762_
                                                               (cons _hd25822779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg25742750_)
                       (cons _hd25792769_ _var25752752_))
                      (___match3687036871_
                       _e25582707_
                       _hd25592711_
                       _tl25602714_
                       _e25612717_
                       _hd25622721_
                       _tl25632724_))))
              (___match3687036871_
               _e25582707_
               _hd25592711_
               _tl25602714_
               _e25612717_
               _hd25622721_
               _tl25632724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match3687036871_
                                               _e25582707_
                                               _hd25592711_
                                               _tl25602714_
                                               _e25612717_
                                               _hd25622721_
                                               _tl25632724_))))
                                      (let ((_var25772788_
                                             (reverse _var25752752_))
                                            (_arg25762785_
                                             (reverse _arg25742750_)))
                                        (if (gx#stx-pair/null? _tl25662734_)
                                            (let ((___splice3682836829_
                                                   (gx#syntax-split-splice
                                                    _tl25662734_
                                                    '0)))
                                              (let ((_tl25862794_
                                                     (##vector-ref
                                                      ___splice3682836829_
                                                      '1))
                                                    (_target25842791_
                                                     (##vector-ref
                                                      ___splice3682836829_
                                                      '0)))
                                                (if (gx#stx-null? _tl25862794_)
                                                    (letrec ((_loop25872797_
                                                              (lambda (_hd25852801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body25912804_)
                        (if (gx#stx-pair? _hd25852801_)
                            (let ((_e25882807_ (gx#syntax-e _hd25852801_)))
                              (let ((_lp-tl25902814_ (##cdr _e25882807_))
                                    (_lp-hd25892811_ (##car _e25882807_)))
                                (_loop25872797_
                                 _lp-tl25902814_
                                 (cons _lp-hd25892811_ _body25912804_))))
                            (let ((_body25922817_ (reverse _body25912804_)))
                              (let ((_L2821_ _body25922817_)
                                    (_L2823_ _tl25692740_)
                                    (_L2824_ _arg25762785_)
                                    (_L2825_ _var25772788_)
                                    (_L2826_ _hd25622721_))
                                (if (gx#identifier? _L2826_)
                                    (___kont3682436825_
                                     _L2821_
                                     _L2823_
                                     _L2824_
                                     _L2825_
                                     _L2826_)
                                    (___match3687036871_
                                     _e25582707_
                                     _hd25592711_
                                     _tl25602714_
                                     _e25612717_
                                     _hd25622721_
                                     _tl25632724_))))))))
              (_loop25872797_ _target25842791_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3687036871_
                                                     _e25582707_
                                                     _hd25592711_
                                                     _tl25602714_
                                                     _e25612717_
                                                     _hd25622721_
                                                     _tl25632724_))))
                                            (___match3687036871_
                                             _e25582707_
                                             _hd25592711_
                                             _tl25602714_
                                             _e25612717_
                                             _hd25622721_
                                             _tl25632724_)))))))
                        (_loop25702743_ _target25672737_ '() '())))))
              (if (gx#stx-pair? ___stx3682136822_)
                  (let ((_e25582707_ (gx#syntax-e ___stx3682136822_)))
                    (let ((_tl25602714_ (##cdr _e25582707_))
                          (_hd25592711_ (##car _e25582707_)))
                      (if (gx#stx-pair? _tl25602714_)
                          (let ((_e25612717_ (gx#syntax-e _tl25602714_)))
                            (let ((_tl25632724_ (##cdr _e25612717_))
                                  (_hd25622721_ (##car _e25612717_)))
                              (if (gx#stx-pair? _tl25632724_)
                                  (let ((_e25642727_
                                         (gx#syntax-e _tl25632724_)))
                                    (let ((_tl25662734_ (##cdr _e25642727_))
                                          (_hd25652731_ (##car _e25642727_)))
                                      (if (gx#stx-pair/null? _hd25652731_)
                                          (let ((___splice3682636827_
                                                 (gx#syntax-split-splice
                                                  _hd25652731_
                                                  '0)))
                                            (let ((_tl25692740_
                                                   (##vector-ref
                                                    ___splice3682636827_
                                                    '1))
                                                  (_target25672737_
                                                   (##vector-ref
                                                    ___splice3682636827_
                                                    '0)))
                                              (___match3685836859_
                                               _e25582707_
                                               _hd25592711_
                                               _tl25602714_
                                               _e25612717_
                                               _hd25622721_
                                               _tl25632724_
                                               _e25642727_
                                               _hd25652731_
                                               _tl25662734_
                                               ___splice3682636827_
                                               _target25672737_
                                               _tl25692740_)))
                                          (if (gx#stx-pair/null? _tl25632724_)
                                              (let ((___splice3683236833_
                                                     (gx#syntax-split-splice
                                                      _tl25632724_
                                                      '0)))
                                                (let ((_tl26032645_
                                                       (##vector-ref
                                                        ___splice3683236833_
                                                        '1))
                                                      (_target26012642_
                                                       (##vector-ref
                                                        ___splice3683236833_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl26032645_)
                                                      (___match3687836879_
                                                       _e25582707_
                                                       _hd25592711_
                                                       _tl25602714_
                                                       _e25612717_
                                                       _hd25622721_
                                                       _tl25632724_
                                                       ___splice3683236833_
                                                       _target26012642_
                                                       _tl26032645_)
                                                      (_g25512615_))))
                                              (_g25512615_)))))
                                  (if (gx#stx-pair/null? _tl25632724_)
                                      (let ((___splice3683236833_
                                             (gx#syntax-split-splice
                                              _tl25632724_
                                              '0)))
                                        (let ((_tl26032645_
                                               (##vector-ref
                                                ___splice3683236833_
                                                '1))
                                              (_target26012642_
                                               (##vector-ref
                                                ___splice3683236833_
                                                '0)))
                                          (if (gx#stx-null? _tl26032645_)
                                              (___match3687836879_
                                               _e25582707_
                                               _hd25592711_
                                               _tl25602714_
                                               _e25612717_
                                               _hd25622721_
                                               _tl25632724_
                                               ___splice3683236833_
                                               _target26012642_
                                               _tl26032645_)
                                              (_g25512615_))))
                                      (_g25512615_)))))
                          (_g25512615_))))
                  (_g25512615_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let*|
      (lambda (_$stx2883_)
        (let* ((_g28872911_
                (lambda (_g28882907_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g28882907_)))
               (_g28862996_
                (lambda (_g28882915_)
                  (if (gx#stx-pair? _g28882915_)
                      (let ((_e28912918_ (gx#syntax-e _g28882915_)))
                        (let ((_hd28922922_ (##car _e28912918_))
                              (_tl28932925_ (##cdr _e28912918_)))
                          (if (gx#stx-pair? _tl28932925_)
                              (let ((_e28942928_ (gx#syntax-e _tl28932925_)))
                                (let ((_hd28952932_ (##car _e28942928_))
                                      (_tl28962935_ (##cdr _e28942928_)))
                                  (if (gx#stx-pair/null? _tl28962935_)
                                      (let ((_g41983_
                                             (gx#syntax-split-splice
                                              _tl28962935_
                                              '0)))
                                        (begin
                                          (let ((_g41984_
                                                 (if (##values? _g41983_)
                                                     (##vector-length _g41983_)
                                                     1)))
                                            (if (not (##fx= _g41984_ 2))
                                                (error "Context expects 2 values"
                                                       _g41984_)))
                                          (let ((_target28972938_
                                                 (##vector-ref _g41983_ 0))
                                                (_tl28992941_
                                                 (##vector-ref _g41983_ 1)))
                                            (if (gx#stx-null? _tl28992941_)
                                                (letrec ((_loop29002944_
                                                          (lambda (_hd28982948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body29042951_)
                    (if (gx#stx-pair? _hd28982948_)
                        (let ((_e29012954_ (gx#syntax-e _hd28982948_)))
                          (let ((_lp-hd29022958_ (##car _e29012954_))
                                (_lp-tl29032961_ (##cdr _e29012954_)))
                            (_loop29002944_
                             _lp-tl29032961_
                             (cons _lp-hd29022958_ _body29042951_))))
                        (let ((_body29052964_ (reverse _body29042951_)))
                          ((lambda (_L2968_ _L2970_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'let*-values)
                                         (cons _L2970_
                                               (foldr (lambda (_g29872990_
                                                               _g29882993_)
                                                        (cons _g29872990_
                                                              _g29882993_))
                                                      '()
                                                      _L2968_)))))
                           _body29052964_
                           _hd28952932_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop29002944_
                                                   _target28972938_
                                                   '()))
                                                (_g28872911_ _g28882915_)))))
                                      (_g28872911_ _g28882915_))))
                              (_g28872911_ _g28882915_))))
                      (_g28872911_ _g28882915_)))))
          (_g28862996_ _$stx2883_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#letrec|
      (lambda (_$stx3001_)
        (let* ((_g30053029_
                (lambda (_g30063025_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g30063025_)))
               (_g30043114_
                (lambda (_g30063033_)
                  (if (gx#stx-pair? _g30063033_)
                      (let ((_e30093036_ (gx#syntax-e _g30063033_)))
                        (let ((_hd30103040_ (##car _e30093036_))
                              (_tl30113043_ (##cdr _e30093036_)))
                          (if (gx#stx-pair? _tl30113043_)
                              (let ((_e30123046_ (gx#syntax-e _tl30113043_)))
                                (let ((_hd30133050_ (##car _e30123046_))
                                      (_tl30143053_ (##cdr _e30123046_)))
                                  (if (gx#stx-pair/null? _tl30143053_)
                                      (let ((_g41985_
                                             (gx#syntax-split-splice
                                              _tl30143053_
                                              '0)))
                                        (begin
                                          (let ((_g41986_
                                                 (if (##values? _g41985_)
                                                     (##vector-length _g41985_)
                                                     1)))
                                            (if (not (##fx= _g41986_ 2))
                                                (error "Context expects 2 values"
                                                       _g41986_)))
                                          (let ((_target30153056_
                                                 (##vector-ref _g41985_ 0))
                                                (_tl30173059_
                                                 (##vector-ref _g41985_ 1)))
                                            (if (gx#stx-null? _tl30173059_)
                                                (letrec ((_loop30183062_
                                                          (lambda (_hd30163066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body30223069_)
                    (if (gx#stx-pair? _hd30163066_)
                        (let ((_e30193072_ (gx#syntax-e _hd30163066_)))
                          (let ((_lp-hd30203076_ (##car _e30193072_))
                                (_lp-tl30213079_ (##cdr _e30193072_)))
                            (_loop30183062_
                             _lp-tl30213079_
                             (cons _lp-hd30203076_ _body30223069_))))
                        (let ((_body30233082_ (reverse _body30223069_)))
                          ((lambda (_L3086_ _L3088_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec-values)
                                         (cons _L3088_
                                               (foldr (lambda (_g31053108_
                                                               _g31063111_)
                                                        (cons _g31053108_
                                                              _g31063111_))
                                                      '()
                                                      _L3086_)))))
                           _body30233082_
                           _hd30133050_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop30183062_
                                                   _target30153056_
                                                   '()))
                                                (_g30053029_ _g30063033_)))))
                                      (_g30053029_ _g30063033_))))
                              (_g30053029_ _g30063033_))))
                      (_g30053029_ _g30063033_)))))
          (_g30043114_ _$stx3001_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#letrec*|
      (lambda (_$stx3119_)
        (let* ((_g31233147_
                (lambda (_g31243143_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g31243143_)))
               (_g31223232_
                (lambda (_g31243151_)
                  (if (gx#stx-pair? _g31243151_)
                      (let ((_e31273154_ (gx#syntax-e _g31243151_)))
                        (let ((_hd31283158_ (##car _e31273154_))
                              (_tl31293161_ (##cdr _e31273154_)))
                          (if (gx#stx-pair? _tl31293161_)
                              (let ((_e31303164_ (gx#syntax-e _tl31293161_)))
                                (let ((_hd31313168_ (##car _e31303164_))
                                      (_tl31323171_ (##cdr _e31303164_)))
                                  (if (gx#stx-pair/null? _tl31323171_)
                                      (let ((_g41987_
                                             (gx#syntax-split-splice
                                              _tl31323171_
                                              '0)))
                                        (begin
                                          (let ((_g41988_
                                                 (if (##values? _g41987_)
                                                     (##vector-length _g41987_)
                                                     1)))
                                            (if (not (##fx= _g41988_ 2))
                                                (error "Context expects 2 values"
                                                       _g41988_)))
                                          (let ((_target31333174_
                                                 (##vector-ref _g41987_ 0))
                                                (_tl31353177_
                                                 (##vector-ref _g41987_ 1)))
                                            (if (gx#stx-null? _tl31353177_)
                                                (letrec ((_loop31363180_
                                                          (lambda (_hd31343184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body31403187_)
                    (if (gx#stx-pair? _hd31343184_)
                        (let ((_e31373190_ (gx#syntax-e _hd31343184_)))
                          (let ((_lp-hd31383194_ (##car _e31373190_))
                                (_lp-tl31393197_ (##cdr _e31373190_)))
                            (_loop31363180_
                             _lp-tl31393197_
                             (cons _lp-hd31383194_ _body31403187_))))
                        (let ((_body31413200_ (reverse _body31403187_)))
                          ((lambda (_L3204_ _L3206_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec*-values)
                                         (cons _L3206_
                                               (foldr (lambda (_g32233226_
                                                               _g32243229_)
                                                        (cons _g32233226_
                                                              _g32243229_))
                                                      '()
                                                      _L3204_)))))
                           _body31413200_
                           _hd31313168_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop31363180_
                                                   _target31333174_
                                                   '()))
                                                (_g31233147_ _g31243151_)))))
                                      (_g31233147_ _g31243151_))))
                              (_g31233147_ _g31243151_))))
                      (_g31233147_ _g31243151_)))))
          (_g31223232_ _$stx3119_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#~let|
      (lambda (_stx3237_)
        (letrec ((_let-head?3240_
                  (lambda (_x3720_)
                    (let* ((___stx3688136882_ _x3720_)
                           (_g37243735_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3688136882_))))
                      (let ((___kont3688436885_
                             (lambda (_L3763_)
                               (gx#stx-andmap gx#identifier? _L3763_)))
                            (___kont3688636887_
                             (lambda () (gx#identifier? _x3720_))))
                        (if (gx#stx-pair? ___stx3688136882_)
                            (let ((_e37273753_
                                   (gx#syntax-e ___stx3688136882_)))
                              (let ((_tl37293760_ (##cdr _e37273753_))
                                    (_hd37283757_ (##car _e37273753_)))
                                (if (gx#identifier? _hd37283757_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:1>[1]#_g41989_|
                                         _hd37283757_)
                                        (___kont3688436885_ _tl37293760_)
                                        (___kont3688636887_))
                                    (___kont3688636887_))))
                            (___kont3688636887_))))))
                 (_let-head3242_
                  (lambda (_x3660_)
                    (let* ((___stx3690136902_ _x3660_)
                           (_g36643675_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3690136902_))))
                      (let ((___kont3690436905_ (lambda (_L3703_) _L3703_))
                            (___kont3690636907_ (lambda () (list _x3660_))))
                        (if (gx#stx-pair? ___stx3690136902_)
                            (let ((_e36673693_
                                   (gx#syntax-e ___stx3690136902_)))
                              (let ((_tl36693700_ (##cdr _e36673693_))
                                    (_hd36683697_ (##car _e36673693_)))
                                (if (gx#identifier? _hd36683697_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:1>[1]#_g41990_|
                                         _hd36683697_)
                                        (___kont3690436905_ _tl36693700_)
                                        (___kont3690636907_))
                                    (___kont3690636907_))))
                            (___kont3690636907_)))))))
          (let* ((___stx3692136922_ _stx3237_)
                 (_g32453311_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3692136922_))))
            (let ((___kont3692436925_
                   (lambda (_L3629_ _L3631_ _L3632_ _L3633_ _L3634_)
                     (cons _L3634_
                           (cons _L3633_
                                 (cons (cons (cons _L3632_ (cons _L3631_ '()))
                                             '())
                                       _L3629_)))))
                  (___kont3692636927_
                   (lambda (_L3432_ _L3434_ _L3435_ _L3436_)
                     (let* ((_g34713488_
                             (lambda (_g34723484_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g34723484_)))
                            (_g34703560_
                             (lambda (_g34723492_)
                               (if (gx#stx-pair/null? _g34723492_)
                                   (let ((_g41991_
                                          (gx#syntax-split-splice
                                           _g34723492_
                                           '0)))
                                     (begin
                                       (let ((_g41992_
                                              (if (##values? _g41991_)
                                                  (##vector-length _g41991_)
                                                  1)))
                                         (if (not (##fx= _g41992_ 2))
                                             (error "Context expects 2 values"
                                                    _g41992_)))
                                       (let ((_target34743495_
                                              (##vector-ref _g41991_ 0))
                                             (_tl34763498_
                                              (##vector-ref _g41991_ 1)))
                                         (if (gx#stx-null? _tl34763498_)
                                             (letrec ((_loop34773501_
                                                       (lambda (_hd34753505_
                                                                _hd-bind34813508_)
                                                         (if (gx#stx-pair?
                                                              _hd34753505_)
                                                             (let ((_e34783511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd34753505_)))
                       (let ((_lp-hd34793515_ (##car _e34783511_))
                             (_lp-tl34803518_ (##cdr _e34783511_)))
                         (_loop34773501_
                          _lp-tl34803518_
                          (cons _lp-hd34793515_ _hd-bind34813508_))))
                     (let ((_hd-bind34823521_ (reverse _hd-bind34813508_)))
                       ((lambda (_L3525_)
                          (let ()
                            (cons _L3436_
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _L3434_
                                           _L3525_)
                                          (foldr (lambda (_g35403546_
                                                          _g35413549_
                                                          _g35423551_)
                                                   (cons (cons _g35413549_
                                                               (cons _g35403546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g35423551_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L3434_
                                                 _L3525_))
                                        (foldr (lambda (_g35433554_
                                                        _g35443557_)
                                                 (cons _g35433554_
                                                       _g35443557_))
                                               '()
                                               _L3432_)))))
                        _hd-bind34823521_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop34773501_
                                                _target34743495_
                                                '()))
                                             (_g34713488_ _g34723492_)))))
                                   (_g34713488_ _g34723492_)))))
                       (_g34703560_
                        (gx#stx-map
                         _let-head3242_
                         (foldr (lambda (_g35633566_ _g35643569_)
                                  (cons _g35633566_ _g35643569_))
                                '()
                                _L3435_)))))))
              (let* ((___match3699036991_
                      (lambda (_e32713318_
                               _hd32723322_
                               _tl32733325_
                               _e32743328_
                               _hd32753332_
                               _tl32763335_
                               _e32773338_
                               _hd32783342_
                               _tl32793345_
                               ___splice3692836929_
                               _target32803348_
                               _tl32823351_)
                        (letrec ((_loop32833354_
                                  (lambda (_hd32813358_
                                           _e32873361_
                                           _hd32883363_)
                                    (if (gx#stx-pair? _hd32813358_)
                                        (let ((_e32843366_
                                               (gx#syntax-e _hd32813358_)))
                                          (let ((_lp-tl32863373_
                                                 (##cdr _e32843366_))
                                                (_lp-hd32853370_
                                                 (##car _e32843366_)))
                                            (if (gx#stx-pair? _lp-hd32853370_)
                                                (let ((_e32913376_
                                                       (gx#syntax-e
                                                        _lp-hd32853370_)))
                                                  (let ((_tl32933383_
                                                         (##cdr _e32913376_))
                                                        (_hd32923380_
                                                         (##car _e32913376_)))
                                                    (if (gx#stx-pair?
                                                         _tl32933383_)
                                                        (let ((_e32943386_
                                                               (gx#syntax-e
                                                                _tl32933383_)))
                                                          (let ((_tl32963393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e32943386_))
                        (_hd32953390_ (##car _e32943386_)))
                    (if (gx#stx-null? _tl32963393_)
                        (_loop32833354_
                         _lp-tl32863373_
                         (cons _hd32953390_ _e32873361_)
                         (cons _hd32923380_ _hd32883363_))
                        (_g32453311_))))
                (_g32453311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g32453311_))))
                                        (let ((_hd32903399_
                                               (reverse _hd32883363_))
                                              (_e32893396_
                                               (reverse _e32873361_)))
                                          (if (gx#stx-pair/null? _tl32793345_)
                                              (let ((___splice3693036931_
                                                     (gx#syntax-split-splice
                                                      _tl32793345_
                                                      '0)))
                                                (let ((_tl32993405_
                                                       (##vector-ref
                                                        ___splice3693036931_
                                                        '1))
                                                      (_target32973402_
                                                       (##vector-ref
                                                        ___splice3693036931_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl32993405_)
                                                      (letrec ((_loop33003408_
                                                                (lambda (_hd32983412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body33043415_)
                          (if (gx#stx-pair? _hd32983412_)
                              (let ((_e33013418_ (gx#syntax-e _hd32983412_)))
                                (let ((_lp-tl33033425_ (##cdr _e33013418_))
                                      (_lp-hd33023422_ (##car _e33013418_)))
                                  (_loop33003408_
                                   _lp-tl33033425_
                                   (cons _lp-hd33023422_ _body33043415_))))
                              (let ((_body33053428_ (reverse _body33043415_)))
                                (let ((_L3432_ _body33053428_)
                                      (_L3434_ _e32893396_)
                                      (_L3435_ _hd32903399_)
                                      (_L3436_ _hd32753332_))
                                  (if (gx#stx-andmap
                                       _let-head?3240_
                                       (foldr (lambda (_g34623465_ _g34633468_)
                                                (cons _g34623465_ _g34633468_))
                                              '()
                                              _L3435_))
                                      (___kont3692636927_
                                       _L3432_
                                       _L3434_
                                       _L3435_
                                       _L3436_)
                                      (_g32453311_))))))))
                (_loop33003408_ _target32973402_ '()))
              (_g32453311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g32453311_)))))))
                          (_loop32833354_ _target32803348_ '() '()))))
                     (___match3696436965_
                      (lambda (_e32523579_
                               _hd32533583_
                               _tl32543586_
                               _e32553589_
                               _hd32563593_
                               _tl32573596_
                               _e32583599_
                               _hd32593603_
                               _tl32603606_
                               _e32613609_
                               _hd32623613_
                               _tl32633616_
                               _e32643619_
                               _hd32653623_
                               _tl32663626_)
                        (let ((_L3629_ _tl32603606_)
                              (_L3631_ _hd32653623_)
                              (_L3632_ _hd32623613_)
                              (_L3633_ _hd32563593_)
                              (_L3634_ _hd32533583_))
                          (if (_let-head?3240_ _L3632_)
                              (___kont3692436925_
                               _L3629_
                               _L3631_
                               _L3632_
                               _L3633_
                               _L3634_)
                              (if (gx#stx-pair/null? _hd32593603_)
                                  (let ((___splice3692836929_
                                         (gx#syntax-split-splice
                                          _hd32593603_
                                          '0)))
                                    (let ((_tl32823351_
                                           (##vector-ref
                                            ___splice3692836929_
                                            '1))
                                          (_target32803348_
                                           (##vector-ref
                                            ___splice3692836929_
                                            '0)))
                                      (if (gx#stx-null? _tl32823351_)
                                          (___match3699036991_
                                           _e32523579_
                                           _hd32533583_
                                           _tl32543586_
                                           _e32553589_
                                           _hd32563593_
                                           _tl32573596_
                                           _e32583599_
                                           _hd32593603_
                                           _tl32603606_
                                           ___splice3692836929_
                                           _target32803348_
                                           _tl32823351_)
                                          (_g32453311_))))
                                  (_g32453311_)))))))
                (if (gx#stx-pair? ___stx3692136922_)
                    (let ((_e32523579_ (gx#syntax-e ___stx3692136922_)))
                      (let ((_tl32543586_ (##cdr _e32523579_))
                            (_hd32533583_ (##car _e32523579_)))
                        (if (gx#stx-pair? _tl32543586_)
                            (let ((_e32553589_ (gx#syntax-e _tl32543586_)))
                              (let ((_tl32573596_ (##cdr _e32553589_))
                                    (_hd32563593_ (##car _e32553589_)))
                                (if (gx#stx-pair? _tl32573596_)
                                    (let ((_e32583599_
                                           (gx#syntax-e _tl32573596_)))
                                      (let ((_tl32603606_ (##cdr _e32583599_))
                                            (_hd32593603_ (##car _e32583599_)))
                                        (if (gx#stx-pair? _hd32593603_)
                                            (let ((_e32613609_
                                                   (gx#syntax-e _hd32593603_)))
                                              (let ((_tl32633616_
                                                     (##cdr _e32613609_))
                                                    (_hd32623613_
                                                     (##car _e32613609_)))
                                                (if (gx#stx-pair? _tl32633616_)
                                                    (let ((_e32643619_
                                                           (gx#syntax-e
                                                            _tl32633616_)))
                                                      (let ((_tl32663626_
                                                             (##cdr _e32643619_))
                                                            (_hd32653623_
                                                             (##car _e32643619_)))
                                                        (if (gx#stx-null?
                                                             _tl32663626_)
                                                            (___match3696436965_
                                                             _e32523579_
                                                             _hd32533583_
                                                             _tl32543586_
                                                             _e32553589_
                                                             _hd32563593_
                                                             _tl32573596_
                                                             _e32583599_
                                                             _hd32593603_
                                                             _tl32603606_
                                                             _e32613609_
                                                             _hd32623613_
                                                             _tl32633616_
                                                             _e32643619_
                                                             _hd32653623_
                                                             _tl32663626_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd32593603_)
                        (let ((___splice3692836929_
                               (gx#syntax-split-splice _hd32593603_ '0)))
                          (let ((_tl32823351_
                                 (##vector-ref ___splice3692836929_ '1))
                                (_target32803348_
                                 (##vector-ref ___splice3692836929_ '0)))
                            (if (gx#stx-null? _tl32823351_)
                                (___match3699036991_
                                 _e32523579_
                                 _hd32533583_
                                 _tl32543586_
                                 _e32553589_
                                 _hd32563593_
                                 _tl32573596_
                                 _e32583599_
                                 _hd32593603_
                                 _tl32603606_
                                 ___splice3692836929_
                                 _target32803348_
                                 _tl32823351_)
                                (_g32453311_))))
                        (_g32453311_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd32593603_)
                                                        (let ((___splice3692836929_
                                                               (gx#syntax-split-splice
                                                                _hd32593603_
                                                                '0)))
                                                          (let ((_tl32823351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice3692836929_ '1))
                        (_target32803348_
                         (##vector-ref ___splice3692836929_ '0)))
                    (if (gx#stx-null? _tl32823351_)
                        (___match3699036991_
                         _e32523579_
                         _hd32533583_
                         _tl32543586_
                         _e32553589_
                         _hd32563593_
                         _tl32573596_
                         _e32583599_
                         _hd32593603_
                         _tl32603606_
                         ___splice3692836929_
                         _target32803348_
                         _tl32823351_)
                        (_g32453311_))))
                (_g32453311_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd32593603_)
                                                (let ((___splice3692836929_
                                                       (gx#syntax-split-splice
                                                        _hd32593603_
                                                        '0)))
                                                  (let ((_tl32823351_
                                                         (##vector-ref
                                                          ___splice3692836929_
                                                          '1))
                                                        (_target32803348_
                                                         (##vector-ref
                                                          ___splice3692836929_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl32823351_)
                                                        (___match3699036991_
                                                         _e32523579_
                                                         _hd32533583_
                                                         _tl32543586_
                                                         _e32553589_
                                                         _hd32563593_
                                                         _tl32573596_
                                                         _e32583599_
                                                         _hd32593603_
                                                         _tl32603606_
                                                         ___splice3692836929_
                                                         _target32803348_
                                                         _tl32823351_)
                                                        (_g32453311_))))
                                                (_g32453311_)))))
                                    (_g32453311_))))
                            (_g32453311_))))
                    (_g32453311_))))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#and|
      (lambda (_$stx3783_)
        (let* ((___stx3699336994_ _$stx3783_)
               (_g37893815_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3699336994_))))
          (let ((___kont3699636997_ (lambda () '#t))
                (___kont3699836999_ (lambda (_L3887_) _L3887_))
                (___kont3700037001_
                 (lambda (_L3842_ _L3844_ _L3845_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _L3844_
                               (cons (cons _L3845_ _L3842_)
                                     (cons '#f '())))))))
            (if (gx#stx-pair? ___stx3699336994_)
                (let ((_e37913907_ (gx#syntax-e ___stx3699336994_)))
                  (let ((_tl37933914_ (##cdr _e37913907_))
                        (_hd37923911_ (##car _e37913907_)))
                    (if (gx#stx-null? _tl37933914_)
                        (___kont3699636997_)
                        (if (gx#stx-pair? _tl37933914_)
                            (let ((_e37983877_ (gx#syntax-e _tl37933914_)))
                              (let ((_tl38003884_ (##cdr _e37983877_))
                                    (_hd37993881_ (##car _e37983877_)))
                                (if (gx#stx-null? _tl38003884_)
                                    (___kont3699836999_ _hd37993881_)
                                    (___kont3700037001_
                                     _tl38003884_
                                     _hd37993881_
                                     _hd37923911_))))
                            (_g37893815_)))))
                (_g37893815_))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#or|
      (lambda (_$stx3925_)
        (let* ((___stx3703937040_ _$stx3925_)
               (_g39313957_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3703937040_))))
          (let ((___kont3704237043_ (lambda () '#f))
                (___kont3704437045_ (lambda (_L4029_) _L4029_))
                (___kont3704637047_
                 (lambda (_L3984_ _L3986_ _L3987_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _L3986_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _L3987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3984_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (gx#stx-pair? ___stx3703937040_)
                (let ((_e39334049_ (gx#syntax-e ___stx3703937040_)))
                  (let ((_tl39354056_ (##cdr _e39334049_))
                        (_hd39344053_ (##car _e39334049_)))
                    (if (gx#stx-null? _tl39354056_)
                        (___kont3704237043_)
                        (if (gx#stx-pair? _tl39354056_)
                            (let ((_e39404019_ (gx#syntax-e _tl39354056_)))
                              (let ((_tl39424026_ (##cdr _e39404019_))
                                    (_hd39414023_ (##car _e39404019_)))
                                (if (gx#stx-null? _tl39424026_)
                                    (___kont3704437045_ _hd39414023_)
                                    (___kont3704637047_
                                     _tl39424026_
                                     _hd39414023_
                                     _hd39344053_))))
                            (_g39313957_)))))
                (_g39313957_))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#cond|
      (lambda (_$stx4067_)
        (let* ((___stx3708537086_ _$stx4067_)
               (_g40764167_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3708537086_))))
          (let ((___kont3708837089_ (lambda () '#!void))
                (___kont3709037091_
                 (lambda (_L4514_)
                   (cons (gx#datum->syntax '#f '%#expression)
                         (cons (cons (gx#datum->syntax '#f 'begin)
                                     (foldr (lambda (_g45334536_ _g45344539_)
                                              (cons _g45334536_ _g45344539_))
                                            '()
                                            _L4514_))
                               '()))))
                (___kont3709437095_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'syntax-error)
                         (cons '"Bad syntax; misplaced else" '()))))
                (___kont3709637097_
                 (lambda (_L4387_ _L4389_ _L4390_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _L4389_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _L4390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4387_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3709837099_
                 (lambda (_L4325_ _L4327_ _L4328_ _L4329_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _L4328_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (cons _L4327_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           '()))
               (cons (cons _L4329_ _L4325_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3710037101_
                 (lambda (_L4234_ _L4236_ _L4237_ _L4238_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _L4237_
                               (cons (cons (gx#datum->syntax '#f 'begin)
                                           (foldr (lambda (_g42594262_
                                                           _g42604265_)
                                                    (cons _g42594262_
                                                          _g42604265_))
                                                  '()
                                                  _L4236_))
                                     (cons (cons _L4238_ _L4234_) '())))))))
            (let* ((___match3724637247_
                    (lambda (_e41444174_
                             _hd41454178_
                             _tl41464181_
                             _e41474184_
                             _hd41484188_
                             _tl41494191_
                             _e41504194_
                             _hd41514198_
                             _tl41524201_
                             ___splice3710237103_
                             _target41534204_
                             _tl41554207_)
                      (letrec ((_loop41564210_
                                (lambda (_hd41544214_ _body41604217_)
                                  (if (gx#stx-pair? _hd41544214_)
                                      (let ((_e41574220_
                                             (gx#syntax-e _hd41544214_)))
                                        (let ((_lp-tl41594227_
                                               (##cdr _e41574220_))
                                              (_lp-hd41584224_
                                               (##car _e41574220_)))
                                          (_loop41564210_
                                           _lp-tl41594227_
                                           (cons _lp-hd41584224_
                                                 _body41604217_))))
                                      (let ((_body41614230_
                                             (reverse _body41604217_)))
                                        (___kont3710037101_
                                         _tl41494191_
                                         _body41614230_
                                         _hd41514198_
                                         _hd41454178_))))))
                        (_loop41564210_ _target41534204_ '()))))
                   (___match3714237143_
                    (lambda (_e40824454_
                             _hd40834458_
                             _tl40844461_
                             _e40854464_
                             _hd40864468_
                             _tl40874471_
                             _e40884474_
                             _hd40894478_
                             _tl40904481_
                             ___splice3709237093_
                             _target40914484_
                             _tl40934487_)
                      (letrec ((_loop40944490_
                                (lambda (_hd40924494_ _body40984497_)
                                  (if (gx#stx-pair? _hd40924494_)
                                      (let ((_e40954500_
                                             (gx#syntax-e _hd40924494_)))
                                        (let ((_lp-tl40974507_
                                               (##cdr _e40954500_))
                                              (_lp-hd40964504_
                                               (##car _e40954500_)))
                                          (_loop40944490_
                                           _lp-tl40974507_
                                           (cons _lp-hd40964504_
                                                 _body40984497_))))
                                      (let ((_body40994510_
                                             (reverse _body40984497_)))
                                        (if (gx#stx-null? _tl40874471_)
                                            (___kont3709037091_ _body40994510_)
                                            (___kont3709437095_)))))))
                        (_loop40944490_ _target40914484_ '())))))
              (if (gx#stx-pair? ___stx3708537086_)
                  (let ((_e40784549_ (gx#syntax-e ___stx3708537086_)))
                    (let ((_tl40804556_ (##cdr _e40784549_))
                          (_hd40794553_ (##car _e40784549_)))
                      (if (gx#stx-null? _tl40804556_)
                          (___kont3708837089_)
                          (if (gx#stx-pair? _tl40804556_)
                              (let ((_e40854464_ (gx#syntax-e _tl40804556_)))
                                (let ((_tl40874471_ (##cdr _e40854464_))
                                      (_hd40864468_ (##car _e40854464_)))
                                  (if (gx#stx-pair? _hd40864468_)
                                      (let ((_e40884474_
                                             (gx#syntax-e _hd40864468_)))
                                        (let ((_tl40904481_
                                               (##cdr _e40884474_))
                                              (_hd40894478_
                                               (##car _e40884474_)))
                                          (if (gx#identifier? _hd40894478_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:1>[1]#_g41993_|
                                                   _hd40894478_)
                                                  (if (gx#stx-pair/null?
                                                       _tl40904481_)
                                                      (let ((___splice3709237093_
                                                             (gx#syntax-split-splice
                                                              _tl40904481_
                                                              '0)))
                                                        (let ((_tl40934487_
                                                               (##vector-ref
                                                                ___splice3709237093_
                                                                '1))
                                                              (_target40914484_
                                                               (##vector-ref
                                                                ___splice3709237093_
                                                                '0)))
                                                          (if (gx#stx-null?
                                                               _tl40934487_)
                                                              (___match3714237143_
                                                               _e40784549_
                                                               _hd40794553_
                                                               _tl40804556_
                                                               _e40854464_
                                                               _hd40864468_
                                                               _tl40874471_
                                                               _e40884474_
                                                               _hd40894478_
                                                               _tl40904481_
                                                               ___splice3709237093_
                                                               _target40914484_
                                                               _tl40934487_)
                                                              (___kont3709437095_))))
                                                      (___kont3709437095_))
                                                  (if (gx#stx-null?
                                                       _tl40904481_)
                                                      (___kont3709637097_
                                                       _tl40874471_
                                                       _hd40894478_
                                                       _hd40794553_)
                                                      (if (gx#stx-pair?
                                                           _tl40904481_)
                                                          (let ((_e41344305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl40904481_)))
                    (let ((_tl41364312_ (##cdr _e41344305_))
                          (_hd41354309_ (##car _e41344305_)))
                      (if (gx#identifier? _hd41354309_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<sugar>$<sugar:1>[1]#_g41994_|
                               _hd41354309_)
                              (if (gx#stx-pair? _tl41364312_)
                                  (let ((_e41374315_
                                         (gx#syntax-e _tl41364312_)))
                                    (let ((_tl41394322_ (##cdr _e41374315_))
                                          (_hd41384319_ (##car _e41374315_)))
                                      (if (gx#stx-null? _tl41394322_)
                                          (___kont3709837099_
                                           _tl40874471_
                                           _hd41384319_
                                           _hd40894478_
                                           _hd40794553_)
                                          (if (gx#stx-pair/null? _tl40904481_)
                                              (let ((___splice3710237103_
                                                     (gx#syntax-split-splice
                                                      _tl40904481_
                                                      '0)))
                                                (let ((_tl41554207_
                                                       (##vector-ref
                                                        ___splice3710237103_
                                                        '1))
                                                      (_target41534204_
                                                       (##vector-ref
                                                        ___splice3710237103_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl41554207_)
                                                      (___match3724637247_
                                                       _e40784549_
                                                       _hd40794553_
                                                       _tl40804556_
                                                       _e40854464_
                                                       _hd40864468_
                                                       _tl40874471_
                                                       _e40884474_
                                                       _hd40894478_
                                                       _tl40904481_
                                                       ___splice3710237103_
                                                       _target41534204_
                                                       _tl41554207_)
                                                      (_g40764167_))))
                                              (_g40764167_)))))
                                  (if (gx#stx-pair/null? _tl40904481_)
                                      (let ((___splice3710237103_
                                             (gx#syntax-split-splice
                                              _tl40904481_
                                              '0)))
                                        (let ((_tl41554207_
                                               (##vector-ref
                                                ___splice3710237103_
                                                '1))
                                              (_target41534204_
                                               (##vector-ref
                                                ___splice3710237103_
                                                '0)))
                                          (if (gx#stx-null? _tl41554207_)
                                              (___match3724637247_
                                               _e40784549_
                                               _hd40794553_
                                               _tl40804556_
                                               _e40854464_
                                               _hd40864468_
                                               _tl40874471_
                                               _e40884474_
                                               _hd40894478_
                                               _tl40904481_
                                               ___splice3710237103_
                                               _target41534204_
                                               _tl41554207_)
                                              (_g40764167_))))
                                      (_g40764167_)))
                              (if (gx#stx-pair/null? _tl40904481_)
                                  (let ((___splice3710237103_
                                         (gx#syntax-split-splice
                                          _tl40904481_
                                          '0)))
                                    (let ((_tl41554207_
                                           (##vector-ref
                                            ___splice3710237103_
                                            '1))
                                          (_target41534204_
                                           (##vector-ref
                                            ___splice3710237103_
                                            '0)))
                                      (if (gx#stx-null? _tl41554207_)
                                          (___match3724637247_
                                           _e40784549_
                                           _hd40794553_
                                           _tl40804556_
                                           _e40854464_
                                           _hd40864468_
                                           _tl40874471_
                                           _e40884474_
                                           _hd40894478_
                                           _tl40904481_
                                           ___splice3710237103_
                                           _target41534204_
                                           _tl41554207_)
                                          (_g40764167_))))
                                  (_g40764167_)))
                          (if (gx#stx-pair/null? _tl40904481_)
                              (let ((___splice3710237103_
                                     (gx#syntax-split-splice _tl40904481_ '0)))
                                (let ((_tl41554207_
                                       (##vector-ref ___splice3710237103_ '1))
                                      (_target41534204_
                                       (##vector-ref ___splice3710237103_ '0)))
                                  (if (gx#stx-null? _tl41554207_)
                                      (___match3724637247_
                                       _e40784549_
                                       _hd40794553_
                                       _tl40804556_
                                       _e40854464_
                                       _hd40864468_
                                       _tl40874471_
                                       _e40884474_
                                       _hd40894478_
                                       _tl40904481_
                                       ___splice3710237103_
                                       _target41534204_
                                       _tl41554207_)
                                      (_g40764167_))))
                              (_g40764167_)))))
                  (if (gx#stx-pair/null? _tl40904481_)
                      (let ((___splice3710237103_
                             (gx#syntax-split-splice _tl40904481_ '0)))
                        (let ((_tl41554207_
                               (##vector-ref ___splice3710237103_ '1))
                              (_target41534204_
                               (##vector-ref ___splice3710237103_ '0)))
                          (if (gx#stx-null? _tl41554207_)
                              (___match3724637247_
                               _e40784549_
                               _hd40794553_
                               _tl40804556_
                               _e40854464_
                               _hd40864468_
                               _tl40874471_
                               _e40884474_
                               _hd40894478_
                               _tl40904481_
                               ___splice3710237103_
                               _target41534204_
                               _tl41554207_)
                              (_g40764167_))))
                      (_g40764167_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl40904481_)
                                                  (___kont3709637097_
                                                   _tl40874471_
                                                   _hd40894478_
                                                   _hd40794553_)
                                                  (if (gx#stx-pair?
                                                       _tl40904481_)
                                                      (let ((_e41344305_
                                                             (gx#syntax-e
                                                              _tl40904481_)))
                                                        (let ((_tl41364312_
                                                               (##cdr _e41344305_))
                                                              (_hd41354309_
                                                               (##car _e41344305_)))
                                                          (if (gx#identifier?
                                                               _hd41354309_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core$<sugar>$<sugar:1>[1]#_g41994_|
                           _hd41354309_)
                          (if (gx#stx-pair? _tl41364312_)
                              (let ((_e41374315_ (gx#syntax-e _tl41364312_)))
                                (let ((_tl41394322_ (##cdr _e41374315_))
                                      (_hd41384319_ (##car _e41374315_)))
                                  (if (gx#stx-null? _tl41394322_)
                                      (___kont3709837099_
                                       _tl40874471_
                                       _hd41384319_
                                       _hd40894478_
                                       _hd40794553_)
                                      (if (gx#stx-pair/null? _tl40904481_)
                                          (let ((___splice3710237103_
                                                 (gx#syntax-split-splice
                                                  _tl40904481_
                                                  '0)))
                                            (let ((_tl41554207_
                                                   (##vector-ref
                                                    ___splice3710237103_
                                                    '1))
                                                  (_target41534204_
                                                   (##vector-ref
                                                    ___splice3710237103_
                                                    '0)))
                                              (if (gx#stx-null? _tl41554207_)
                                                  (___match3724637247_
                                                   _e40784549_
                                                   _hd40794553_
                                                   _tl40804556_
                                                   _e40854464_
                                                   _hd40864468_
                                                   _tl40874471_
                                                   _e40884474_
                                                   _hd40894478_
                                                   _tl40904481_
                                                   ___splice3710237103_
                                                   _target41534204_
                                                   _tl41554207_)
                                                  (_g40764167_))))
                                          (_g40764167_)))))
                              (if (gx#stx-pair/null? _tl40904481_)
                                  (let ((___splice3710237103_
                                         (gx#syntax-split-splice
                                          _tl40904481_
                                          '0)))
                                    (let ((_tl41554207_
                                           (##vector-ref
                                            ___splice3710237103_
                                            '1))
                                          (_target41534204_
                                           (##vector-ref
                                            ___splice3710237103_
                                            '0)))
                                      (if (gx#stx-null? _tl41554207_)
                                          (___match3724637247_
                                           _e40784549_
                                           _hd40794553_
                                           _tl40804556_
                                           _e40854464_
                                           _hd40864468_
                                           _tl40874471_
                                           _e40884474_
                                           _hd40894478_
                                           _tl40904481_
                                           ___splice3710237103_
                                           _target41534204_
                                           _tl41554207_)
                                          (_g40764167_))))
                                  (_g40764167_)))
                          (if (gx#stx-pair/null? _tl40904481_)
                              (let ((___splice3710237103_
                                     (gx#syntax-split-splice _tl40904481_ '0)))
                                (let ((_tl41554207_
                                       (##vector-ref ___splice3710237103_ '1))
                                      (_target41534204_
                                       (##vector-ref ___splice3710237103_ '0)))
                                  (if (gx#stx-null? _tl41554207_)
                                      (___match3724637247_
                                       _e40784549_
                                       _hd40794553_
                                       _tl40804556_
                                       _e40854464_
                                       _hd40864468_
                                       _tl40874471_
                                       _e40884474_
                                       _hd40894478_
                                       _tl40904481_
                                       ___splice3710237103_
                                       _target41534204_
                                       _tl41554207_)
                                      (_g40764167_))))
                              (_g40764167_)))
                      (if (gx#stx-pair/null? _tl40904481_)
                          (let ((___splice3710237103_
                                 (gx#syntax-split-splice _tl40904481_ '0)))
                            (let ((_tl41554207_
                                   (##vector-ref ___splice3710237103_ '1))
                                  (_target41534204_
                                   (##vector-ref ___splice3710237103_ '0)))
                              (if (gx#stx-null? _tl41554207_)
                                  (___match3724637247_
                                   _e40784549_
                                   _hd40794553_
                                   _tl40804556_
                                   _e40854464_
                                   _hd40864468_
                                   _tl40874471_
                                   _e40884474_
                                   _hd40894478_
                                   _tl40904481_
                                   ___splice3710237103_
                                   _target41534204_
                                   _tl41554207_)
                                  (_g40764167_))))
                          (_g40764167_)))))
              (if (gx#stx-pair/null? _tl40904481_)
                  (let ((___splice3710237103_
                         (gx#syntax-split-splice _tl40904481_ '0)))
                    (let ((_tl41554207_ (##vector-ref ___splice3710237103_ '1))
                          (_target41534204_
                           (##vector-ref ___splice3710237103_ '0)))
                      (if (gx#stx-null? _tl41554207_)
                          (___match3724637247_
                           _e40784549_
                           _hd40794553_
                           _tl40804556_
                           _e40854464_
                           _hd40864468_
                           _tl40874471_
                           _e40884474_
                           _hd40894478_
                           _tl40904481_
                           ___splice3710237103_
                           _target41534204_
                           _tl41554207_)
                          (_g40764167_))))
                  (_g40764167_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g40764167_))))
                              (_g40764167_)))))
                  (_g40764167_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#when|
      (lambda (_$stx4569_)
        (let* ((_g45734597_
                (lambda (_g45744593_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g45744593_)))
               (_g45724682_
                (lambda (_g45744601_)
                  (if (gx#stx-pair? _g45744601_)
                      (let ((_e45774604_ (gx#syntax-e _g45744601_)))
                        (let ((_hd45784608_ (##car _e45774604_))
                              (_tl45794611_ (##cdr _e45774604_)))
                          (if (gx#stx-pair? _tl45794611_)
                              (let ((_e45804614_ (gx#syntax-e _tl45794611_)))
                                (let ((_hd45814618_ (##car _e45804614_))
                                      (_tl45824621_ (##cdr _e45804614_)))
                                  (if (gx#stx-pair/null? _tl45824621_)
                                      (let ((_g41995_
                                             (gx#syntax-split-splice
                                              _tl45824621_
                                              '0)))
                                        (begin
                                          (let ((_g41996_
                                                 (if (##values? _g41995_)
                                                     (##vector-length _g41995_)
                                                     1)))
                                            (if (not (##fx= _g41996_ 2))
                                                (error "Context expects 2 values"
                                                       _g41996_)))
                                          (let ((_target45834624_
                                                 (##vector-ref _g41995_ 0))
                                                (_tl45854627_
                                                 (##vector-ref _g41995_ 1)))
                                            (if (gx#stx-null? _tl45854627_)
                                                (letrec ((_loop45864630_
                                                          (lambda (_hd45844634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr45904637_)
                    (if (gx#stx-pair? _hd45844634_)
                        (let ((_e45874640_ (gx#syntax-e _hd45844634_)))
                          (let ((_lp-hd45884644_ (##car _e45874640_))
                                (_lp-tl45894647_ (##cdr _e45874640_)))
                            (_loop45864630_
                             _lp-tl45894647_
                             (cons _lp-hd45884644_ _expr45904637_))))
                        (let ((_expr45914650_ (reverse _expr45904637_)))
                          ((lambda (_L4654_ _L4656_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _L4656_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin)
                                                     (foldr (lambda (_g46734676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g46744679_)
                      (cons _g46734676_ _g46744679_))
                    '()
                    _L4654_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '#!void '())))))
                           _expr45914650_
                           _hd45814618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop45864630_
                                                   _target45834624_
                                                   '()))
                                                (_g45734597_ _g45744601_)))))
                                      (_g45734597_ _g45744601_))))
                              (_g45734597_ _g45744601_))))
                      (_g45734597_ _g45744601_)))))
          (_g45724682_ _$stx4569_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#unless|
      (lambda (_$stx4687_)
        (let* ((_g46914715_
                (lambda (_g46924711_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g46924711_)))
               (_g46904800_
                (lambda (_g46924719_)
                  (if (gx#stx-pair? _g46924719_)
                      (let ((_e46954722_ (gx#syntax-e _g46924719_)))
                        (let ((_hd46964726_ (##car _e46954722_))
                              (_tl46974729_ (##cdr _e46954722_)))
                          (if (gx#stx-pair? _tl46974729_)
                              (let ((_e46984732_ (gx#syntax-e _tl46974729_)))
                                (let ((_hd46994736_ (##car _e46984732_))
                                      (_tl47004739_ (##cdr _e46984732_)))
                                  (if (gx#stx-pair/null? _tl47004739_)
                                      (let ((_g41997_
                                             (gx#syntax-split-splice
                                              _tl47004739_
                                              '0)))
                                        (begin
                                          (let ((_g41998_
                                                 (if (##values? _g41997_)
                                                     (##vector-length _g41997_)
                                                     1)))
                                            (if (not (##fx= _g41998_ 2))
                                                (error "Context expects 2 values"
                                                       _g41998_)))
                                          (let ((_target47014742_
                                                 (##vector-ref _g41997_ 0))
                                                (_tl47034745_
                                                 (##vector-ref _g41997_ 1)))
                                            (if (gx#stx-null? _tl47034745_)
                                                (letrec ((_loop47044748_
                                                          (lambda (_hd47024752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr47084755_)
                    (if (gx#stx-pair? _hd47024752_)
                        (let ((_e47054758_ (gx#syntax-e _hd47024752_)))
                          (let ((_lp-hd47064762_ (##car _e47054758_))
                                (_lp-tl47074765_ (##cdr _e47054758_)))
                            (_loop47044748_
                             _lp-tl47074765_
                             (cons _lp-hd47064762_ _expr47084755_))))
                        (let ((_expr47094768_ (reverse _expr47084755_)))
                          ((lambda (_L4772_ _L4774_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _L4774_
                                         (cons '#!void
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'begin)
                                                           (foldr (lambda (_g47914794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g47924797_)
                            (cons _g47914794_ _g47924797_))
                          '()
                          _L4772_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _expr47094768_
                           _hd46994736_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop47044748_
                                                   _target47014742_
                                                   '()))
                                                (_g46914715_ _g46924719_)))))
                                      (_g46914715_ _g46924719_))))
                              (_g46914715_ _g46924719_))))
                      (_g46914715_ _g46924719_)))))
          (_g46904800_ _$stx4687_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#syntax-error|
      (lambda (_stx4805_)
        (let* ((_g48084832_
                (lambda (_g48094828_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g48094828_)))
               (_g48074917_
                (lambda (_g48094836_)
                  (if (gx#stx-pair? _g48094836_)
                      (let ((_e48124839_ (gx#syntax-e _g48094836_)))
                        (let ((_hd48134843_ (##car _e48124839_))
                              (_tl48144846_ (##cdr _e48124839_)))
                          (if (gx#stx-pair? _tl48144846_)
                              (let ((_e48154849_ (gx#syntax-e _tl48144846_)))
                                (let ((_hd48164853_ (##car _e48154849_))
                                      (_tl48174856_ (##cdr _e48154849_)))
                                  (if (gx#stx-pair/null? _tl48174856_)
                                      (let ((_g41999_
                                             (gx#syntax-split-splice
                                              _tl48174856_
                                              '0)))
                                        (begin
                                          (let ((_g42000_
                                                 (if (##values? _g41999_)
                                                     (##vector-length _g41999_)
                                                     1)))
                                            (if (not (##fx= _g42000_ 2))
                                                (error "Context expects 2 values"
                                                       _g42000_)))
                                          (let ((_target48184859_
                                                 (##vector-ref _g41999_ 0))
                                                (_tl48204862_
                                                 (##vector-ref _g41999_ 1)))
                                            (if (gx#stx-null? _tl48204862_)
                                                (letrec ((_loop48214865_
                                                          (lambda (_hd48194869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _detail48254872_)
                    (if (gx#stx-pair? _hd48194869_)
                        (let ((_e48224875_ (gx#syntax-e _hd48194869_)))
                          (let ((_lp-hd48234879_ (##car _e48224875_))
                                (_lp-tl48244882_ (##cdr _e48224875_)))
                            (_loop48214865_
                             _lp-tl48244882_
                             (cons _lp-hd48234879_ _detail48254872_))))
                        (let ((_detail48264885_ (reverse _detail48254872_)))
                          ((lambda (_L4889_ _L4891_)
                             (if (gx#stx-string? _L4891_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _L4891_)
                                        _stx4805_
                                        (gx#syntax->list
                                         (foldr (lambda (_g49084911_
                                                         _g49094914_)
                                                  (cons _g49084911_
                                                        _g49094914_))
                                                '()
                                                _L4889_)))
                                 (_g48084832_ _g48094836_)))
                           _detail48264885_
                           _hd48164853_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop48214865_
                                                   _target48184859_
                                                   '()))
                                                (_g48084832_ _g48094836_)))))
                                      (_g48084832_ _g48094836_))))
                              (_g48084832_ _g48094836_))))
                      (_g48084832_ _g48094836_)))))
          (_g48074917_ _stx4805_))))))
