(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g41221_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g41222_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g41225_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g41226_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g41227_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defrules|
      (lambda (_$stx1687_)
        (let* ((_g16911719_
                (lambda (_g16921715_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g16921715_)))
               (_g16901820_
                (lambda (_g16921723_)
                  (if (gx#stx-pair? _g16921723_)
                      (let ((_e16961726_ (gx#syntax-e _g16921723_)))
                        (let ((_hd16971730_ (##car _e16961726_))
                              (_tl16981733_ (##cdr _e16961726_)))
                          (if (gx#stx-pair? _tl16981733_)
                              (let ((_e16991736_ (gx#syntax-e _tl16981733_)))
                                (let ((_hd17001740_ (##car _e16991736_))
                                      (_tl17011743_ (##cdr _e16991736_)))
                                  (if (gx#stx-pair? _tl17011743_)
                                      (let ((_e17021746_
                                             (gx#syntax-e _tl17011743_)))
                                        (let ((_hd17031750_
                                               (##car _e17021746_))
                                              (_tl17041753_
                                               (##cdr _e17021746_)))
                                          (if (gx#stx-pair/null? _tl17041753_)
                                              (let ((_g41213_
                                                     (gx#syntax-split-splice
                                                      _tl17041753_
                                                      '0)))
                                                (begin
                                                  (let ((_g41214_
                                                         (if (##values?
                                                              _g41213_)
                                                             (##vector-length
                                                              _g41213_)
                                                             1)))
                                                    (if (not (##fx= _g41214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g41214_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target17051756_
                                                         (##vector-ref
                                                          _g41213_
                                                          0))
                                                        (_tl17071759_
                                                         (##vector-ref
                                                          _g41213_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl17071759_)
                                                        (letrec ((_loop17081762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd17061766_ _clauses17121769_)
                            (if (gx#stx-pair? _hd17061766_)
                                (let ((_e17091772_ (gx#syntax-e _hd17061766_)))
                                  (let ((_lp-hd17101776_ (##car _e17091772_))
                                        (_lp-tl17111779_ (##cdr _e17091772_)))
                                    (_loop17081762_
                                     _lp-tl17111779_
                                     (cons _lp-hd17101776_
                                           _clauses17121769_))))
                                (let ((_clauses17131782_
                                       (reverse _clauses17121769_)))
                                  ((lambda (_L1786_ _L1788_ _L1789_)
                                     (if (gx#identifier? _L1789_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'define-syntax)
                                               (cons _L1789_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'syntax-rules)
                         (cons _L1788_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g18111814_ _g18121817_)
                                          (cons _g18111814_ _g18121817_))
                                        '()
                                        _L1786_))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_g16911719_ _g16921723_)))
                                   _clauses17131782_
                                   _hd17031750_
                                   _hd17001740_))))))
                  (_loop17081762_ _target17051756_ '()))
                (_g16911719_ _g16921723_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g16911719_ _g16921723_))))
                                      (_g16911719_ _g16921723_))))
                              (_g16911719_ _g16921723_))))
                      (_g16911719_ _g16921723_)))))
          (_g16901820_ _$stx1687_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defsyntax%|
      (lambda (_$stx1825_)
        (let* ((___stx3605136052_ _$stx1825_)
               (_g18301869_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3605136052_))))
          (let ((___kont3605436055_
                 (lambda (_L1991_ _L1993_ _L1994_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _L1994_
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L1993_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g20132016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g20142019_)
                    (cons _g20132016_ _g20142019_))
                  '()
                  _L1991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3605836059_
                 (lambda (_L1906_ _L1908_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _L1908_ (cons _L1906_ '()))))))
            (let* ((___match3610636107_
                    (lambda (_e18551876_
                             _hd18561880_
                             _tl18571883_
                             _e18581886_
                             _hd18591890_
                             _tl18601893_
                             _e18611896_
                             _hd18621900_
                             _tl18631903_)
                      (let ((_L1906_ _hd18621900_) (_L1908_ _hd18591890_))
                        (if (gx#identifier? _L1908_)
                            (___kont3605836059_ _L1906_ _L1908_)
                            (_g18301869_)))))
                   (___match3609836099_
                    (lambda (_e18551876_
                             _hd18561880_
                             _tl18571883_
                             _e18581886_
                             _hd18591890_
                             _tl18601893_)
                      (if (gx#stx-pair? _tl18601893_)
                          (let ((_e18611896_ (gx#syntax-e _tl18601893_)))
                            (let ((_tl18631903_ (##cdr _e18611896_))
                                  (_hd18621900_ (##car _e18611896_)))
                              (if (gx#stx-null? _tl18631903_)
                                  (___match3610636107_
                                   _e18551876_
                                   _hd18561880_
                                   _tl18571883_
                                   _e18581886_
                                   _hd18591890_
                                   _tl18601893_
                                   _e18611896_
                                   _hd18621900_
                                   _tl18631903_)
                                  (_g18301869_))))
                          (_g18301869_))))
                   (___match3608636087_
                    (lambda (_e18351931_
                             _hd18361935_
                             _tl18371938_
                             _e18381941_
                             _hd18391945_
                             _tl18401948_
                             _e18411951_
                             _hd18421955_
                             _tl18431958_
                             ___splice3605636057_
                             _target18441961_
                             _tl18461964_)
                      (letrec ((_loop18471967_
                                (lambda (_hd18451971_ _body18511974_)
                                  (if (gx#stx-pair? _hd18451971_)
                                      (let ((_e18481977_
                                             (gx#syntax-e _hd18451971_)))
                                        (let ((_lp-tl18501984_
                                               (##cdr _e18481977_))
                                              (_lp-hd18491981_
                                               (##car _e18481977_)))
                                          (_loop18471967_
                                           _lp-tl18501984_
                                           (cons _lp-hd18491981_
                                                 _body18511974_))))
                                      (let ((_body18521987_
                                             (reverse _body18511974_)))
                                        (let ((_L1991_ _body18521987_)
                                              (_L1993_ _tl18431958_)
                                              (_L1994_ _hd18421955_))
                                          (if (gx#identifier? _L1994_)
                                              (___kont3605436055_
                                               _L1991_
                                               _L1993_
                                               _L1994_)
                                              (___match3609836099_
                                               _e18351931_
                                               _hd18361935_
                                               _tl18371938_
                                               _e18381941_
                                               _hd18391945_
                                               _tl18401948_))))))))
                        (_loop18471967_ _target18441961_ '())))))
              (if (gx#stx-pair? ___stx3605136052_)
                  (let ((_e18351931_ (gx#syntax-e ___stx3605136052_)))
                    (let ((_tl18371938_ (##cdr _e18351931_))
                          (_hd18361935_ (##car _e18351931_)))
                      (if (gx#stx-pair? _tl18371938_)
                          (let ((_e18381941_ (gx#syntax-e _tl18371938_)))
                            (let ((_tl18401948_ (##cdr _e18381941_))
                                  (_hd18391945_ (##car _e18381941_)))
                              (if (gx#stx-pair? _hd18391945_)
                                  (let ((_e18411951_
                                         (gx#syntax-e _hd18391945_)))
                                    (let ((_tl18431958_ (##cdr _e18411951_))
                                          (_hd18421955_ (##car _e18411951_)))
                                      (if (gx#stx-pair/null? _tl18401948_)
                                          (let ((___splice3605636057_
                                                 (gx#syntax-split-splice
                                                  _tl18401948_
                                                  '0)))
                                            (let ((_tl18461964_
                                                   (##vector-ref
                                                    ___splice3605636057_
                                                    '1))
                                                  (_target18441961_
                                                   (##vector-ref
                                                    ___splice3605636057_
                                                    '0)))
                                              (if (gx#stx-null? _tl18461964_)
                                                  (___match3608636087_
                                                   _e18351931_
                                                   _hd18361935_
                                                   _tl18371938_
                                                   _e18381941_
                                                   _hd18391945_
                                                   _tl18401948_
                                                   _e18411951_
                                                   _hd18421955_
                                                   _tl18431958_
                                                   ___splice3605636057_
                                                   _target18441961_
                                                   _tl18461964_)
                                                  (if (gx#stx-pair?
                                                       _tl18401948_)
                                                      (let ((_e18611896_
                                                             (gx#syntax-e
                                                              _tl18401948_)))
                                                        (let ((_tl18631903_
                                                               (##cdr _e18611896_))
                                                              (_hd18621900_
                                                               (##car _e18611896_)))
                                                          (if (gx#stx-null?
                                                               _tl18631903_)
                                                              (___match3610636107_
                                                               _e18351931_
                                                               _hd18361935_
                                                               _tl18371938_
                                                               _e18381941_
                                                               _hd18391945_
                                                               _tl18401948_
                                                               _e18611896_
                                                               _hd18621900_
                                                               _tl18631903_)
                                                              (_g18301869_))))
                                                      (_g18301869_)))))
                                          (if (gx#stx-pair? _tl18401948_)
                                              (let ((_e18611896_
                                                     (gx#syntax-e
                                                      _tl18401948_)))
                                                (let ((_tl18631903_
                                                       (##cdr _e18611896_))
                                                      (_hd18621900_
                                                       (##car _e18611896_)))
                                                  (if (gx#stx-null?
                                                       _tl18631903_)
                                                      (___match3610636107_
                                                       _e18351931_
                                                       _hd18361935_
                                                       _tl18371938_
                                                       _e18381941_
                                                       _hd18391945_
                                                       _tl18401948_
                                                       _e18611896_
                                                       _hd18621900_
                                                       _tl18631903_)
                                                      (_g18301869_))))
                                              (_g18301869_)))))
                                  (if (gx#stx-pair? _tl18401948_)
                                      (let ((_e18611896_
                                             (gx#syntax-e _tl18401948_)))
                                        (let ((_tl18631903_
                                               (##cdr _e18611896_))
                                              (_hd18621900_
                                               (##car _e18611896_)))
                                          (if (gx#stx-null? _tl18631903_)
                                              (___match3610636107_
                                               _e18351931_
                                               _hd18361935_
                                               _tl18371938_
                                               _e18381941_
                                               _hd18391945_
                                               _tl18401948_
                                               _e18611896_
                                               _hd18621900_
                                               _tl18631903_)
                                              (_g18301869_))))
                                      (_g18301869_)))))
                          (_g18301869_))))
                  (_g18301869_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defalias|
      (lambda (_$stx2027_)
        (let* ((_g20312049_
                (lambda (_g20322045_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g20322045_)))
               (_g20302104_
                (lambda (_g20322053_)
                  (if (gx#stx-pair? _g20322053_)
                      (let ((_e20352056_ (gx#syntax-e _g20322053_)))
                        (let ((_hd20362060_ (##car _e20352056_))
                              (_tl20372063_ (##cdr _e20352056_)))
                          (if (gx#stx-pair? _tl20372063_)
                              (let ((_e20382066_ (gx#syntax-e _tl20372063_)))
                                (let ((_hd20392070_ (##car _e20382066_))
                                      (_tl20402073_ (##cdr _e20382066_)))
                                  (if (gx#stx-pair? _tl20402073_)
                                      (let ((_e20412076_
                                             (gx#syntax-e _tl20402073_)))
                                        (let ((_hd20422080_
                                               (##car _e20412076_))
                                              (_tl20432083_
                                               (##cdr _e20412076_)))
                                          (if (gx#stx-null? _tl20432083_)
                                              ((lambda (_L2086_ _L2088_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'define-alias)
                                                       (cons _L2088_
                                                             (cons _L2086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd20422080_
                                               _hd20392070_)
                                              (_g20312049_ _g20322053_))))
                                      (_g20312049_ _g20322053_))))
                              (_g20312049_ _g20322053_))))
                      (_g20312049_ _g20322053_)))))
          (_g20302104_ _$stx2027_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#define|
      (lambda (_$stx2108_)
        (let* ((___stx3610936110_ _$stx2108_)
               (_g21132152_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3610936110_))))
          (let ((___kont3611236113_
                 (lambda (_L2274_ _L2276_ _L2277_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L2277_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L2276_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g22962299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g22972302_)
                    (cons _g22962299_ _g22972302_))
                  '()
                  _L2274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3611636117_
                 (lambda (_L2189_ _L2191_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L2191_ '()) (cons _L2189_ '()))))))
            (let* ((___match3616436165_
                    (lambda (_e21382159_
                             _hd21392163_
                             _tl21402166_
                             _e21412169_
                             _hd21422173_
                             _tl21432176_
                             _e21442179_
                             _hd21452183_
                             _tl21462186_)
                      (let ((_L2189_ _hd21452183_) (_L2191_ _hd21422173_))
                        (if (gx#identifier? _L2191_)
                            (___kont3611636117_ _L2189_ _L2191_)
                            (_g21132152_)))))
                   (___match3615636157_
                    (lambda (_e21382159_
                             _hd21392163_
                             _tl21402166_
                             _e21412169_
                             _hd21422173_
                             _tl21432176_)
                      (if (gx#stx-pair? _tl21432176_)
                          (let ((_e21442179_ (gx#syntax-e _tl21432176_)))
                            (let ((_tl21462186_ (##cdr _e21442179_))
                                  (_hd21452183_ (##car _e21442179_)))
                              (if (gx#stx-null? _tl21462186_)
                                  (___match3616436165_
                                   _e21382159_
                                   _hd21392163_
                                   _tl21402166_
                                   _e21412169_
                                   _hd21422173_
                                   _tl21432176_
                                   _e21442179_
                                   _hd21452183_
                                   _tl21462186_)
                                  (_g21132152_))))
                          (_g21132152_))))
                   (___match3614436145_
                    (lambda (_e21182214_
                             _hd21192218_
                             _tl21202221_
                             _e21212224_
                             _hd21222228_
                             _tl21232231_
                             _e21242234_
                             _hd21252238_
                             _tl21262241_
                             ___splice3611436115_
                             _target21272244_
                             _tl21292247_)
                      (letrec ((_loop21302250_
                                (lambda (_hd21282254_ _body21342257_)
                                  (if (gx#stx-pair? _hd21282254_)
                                      (let ((_e21312260_
                                             (gx#syntax-e _hd21282254_)))
                                        (let ((_lp-tl21332267_
                                               (##cdr _e21312260_))
                                              (_lp-hd21322264_
                                               (##car _e21312260_)))
                                          (_loop21302250_
                                           _lp-tl21332267_
                                           (cons _lp-hd21322264_
                                                 _body21342257_))))
                                      (let ((_body21352270_
                                             (reverse _body21342257_)))
                                        (let ((_L2274_ _body21352270_)
                                              (_L2276_ _tl21262241_)
                                              (_L2277_ _hd21252238_))
                                          (if (gx#identifier? _L2277_)
                                              (___kont3611236113_
                                               _L2274_
                                               _L2276_
                                               _L2277_)
                                              (___match3615636157_
                                               _e21182214_
                                               _hd21192218_
                                               _tl21202221_
                                               _e21212224_
                                               _hd21222228_
                                               _tl21232231_))))))))
                        (_loop21302250_ _target21272244_ '())))))
              (if (gx#stx-pair? ___stx3610936110_)
                  (let ((_e21182214_ (gx#syntax-e ___stx3610936110_)))
                    (let ((_tl21202221_ (##cdr _e21182214_))
                          (_hd21192218_ (##car _e21182214_)))
                      (if (gx#stx-pair? _tl21202221_)
                          (let ((_e21212224_ (gx#syntax-e _tl21202221_)))
                            (let ((_tl21232231_ (##cdr _e21212224_))
                                  (_hd21222228_ (##car _e21212224_)))
                              (if (gx#stx-pair? _hd21222228_)
                                  (let ((_e21242234_
                                         (gx#syntax-e _hd21222228_)))
                                    (let ((_tl21262241_ (##cdr _e21242234_))
                                          (_hd21252238_ (##car _e21242234_)))
                                      (if (gx#stx-pair/null? _tl21232231_)
                                          (let ((___splice3611436115_
                                                 (gx#syntax-split-splice
                                                  _tl21232231_
                                                  '0)))
                                            (let ((_tl21292247_
                                                   (##vector-ref
                                                    ___splice3611436115_
                                                    '1))
                                                  (_target21272244_
                                                   (##vector-ref
                                                    ___splice3611436115_
                                                    '0)))
                                              (if (gx#stx-null? _tl21292247_)
                                                  (___match3614436145_
                                                   _e21182214_
                                                   _hd21192218_
                                                   _tl21202221_
                                                   _e21212224_
                                                   _hd21222228_
                                                   _tl21232231_
                                                   _e21242234_
                                                   _hd21252238_
                                                   _tl21262241_
                                                   ___splice3611436115_
                                                   _target21272244_
                                                   _tl21292247_)
                                                  (if (gx#stx-pair?
                                                       _tl21232231_)
                                                      (let ((_e21442179_
                                                             (gx#syntax-e
                                                              _tl21232231_)))
                                                        (let ((_tl21462186_
                                                               (##cdr _e21442179_))
                                                              (_hd21452183_
                                                               (##car _e21442179_)))
                                                          (if (gx#stx-null?
                                                               _tl21462186_)
                                                              (___match3616436165_
                                                               _e21182214_
                                                               _hd21192218_
                                                               _tl21202221_
                                                               _e21212224_
                                                               _hd21222228_
                                                               _tl21232231_
                                                               _e21442179_
                                                               _hd21452183_
                                                               _tl21462186_)
                                                              (_g21132152_))))
                                                      (_g21132152_)))))
                                          (if (gx#stx-pair? _tl21232231_)
                                              (let ((_e21442179_
                                                     (gx#syntax-e
                                                      _tl21232231_)))
                                                (let ((_tl21462186_
                                                       (##cdr _e21442179_))
                                                      (_hd21452183_
                                                       (##car _e21442179_)))
                                                  (if (gx#stx-null?
                                                       _tl21462186_)
                                                      (___match3616436165_
                                                       _e21182214_
                                                       _hd21192218_
                                                       _tl21202221_
                                                       _e21212224_
                                                       _hd21222228_
                                                       _tl21232231_
                                                       _e21442179_
                                                       _hd21452183_
                                                       _tl21462186_)
                                                      (_g21132152_))))
                                              (_g21132152_)))))
                                  (if (gx#stx-pair? _tl21232231_)
                                      (let ((_e21442179_
                                             (gx#syntax-e _tl21232231_)))
                                        (let ((_tl21462186_
                                               (##cdr _e21442179_))
                                              (_hd21452183_
                                               (##car _e21442179_)))
                                          (if (gx#stx-null? _tl21462186_)
                                              (___match3616436165_
                                               _e21182214_
                                               _hd21192218_
                                               _tl21202221_
                                               _e21212224_
                                               _hd21222228_
                                               _tl21232231_
                                               _e21442179_
                                               _hd21452183_
                                               _tl21462186_)
                                              (_g21132152_))))
                                      (_g21132152_)))))
                          (_g21132152_))))
                  (_g21132152_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let*-values|
      (lambda (_$stx2310_)
        (let* ((___stx3616736168_ _$stx2310_)
               (_g23152360_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3616736168_))))
          (let ((___kont3617036171_
                 (lambda (_L2518_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (begin
                                 '#!void
                                 (foldr (lambda (_g25342537_ _g25352540_)
                                          (cons _g25342537_ _g25352540_))
                                        '()
                                        _L2518_))))))
                (___kont3617436175_
                 (lambda (_L2427_ _L2429_ _L2430_ _L2431_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons _L2430_ '())
                               (cons (cons _L2431_
                                           (cons _L2429_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g24522455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g24532458_)
                    (cons _g24522455_ _g24532458_))
                  '()
                  _L2427_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match3622636227_
                    (lambda (_e23372367_
                             _hd23382371_
                             _tl23392374_
                             _e23402377_
                             _hd23412381_
                             _tl23422384_
                             _e23432387_
                             _hd23442391_
                             _tl23452394_
                             ___splice3617636177_
                             _target23462397_
                             _tl23482400_)
                      (letrec ((_loop23492403_
                                (lambda (_hd23472407_ _body23532410_)
                                  (if (gx#stx-pair? _hd23472407_)
                                      (let ((_e23502413_
                                             (gx#syntax-e _hd23472407_)))
                                        (let ((_lp-tl23522420_
                                               (##cdr _e23502413_))
                                              (_lp-hd23512417_
                                               (##car _e23502413_)))
                                          (_loop23492403_
                                           _lp-tl23522420_
                                           (cons _lp-hd23512417_
                                                 _body23532410_))))
                                      (let ((_body23542423_
                                             (reverse _body23532410_)))
                                        (___kont3617436175_
                                         _body23542423_
                                         _tl23452394_
                                         _hd23442391_
                                         _hd23382371_))))))
                        (_loop23492403_ _target23462397_ '()))))
                   (___match3620036201_
                    (lambda (_e23182468_
                             _hd23192472_
                             _tl23202475_
                             _e23212478_
                             _hd23222482_
                             _tl23232485_
                             ___splice3617236173_
                             _target23242488_
                             _tl23262491_)
                      (letrec ((_loop23272494_
                                (lambda (_hd23252498_ _body23312501_)
                                  (if (gx#stx-pair? _hd23252498_)
                                      (let ((_e23282504_
                                             (gx#syntax-e _hd23252498_)))
                                        (let ((_lp-tl23302511_
                                               (##cdr _e23282504_))
                                              (_lp-hd23292508_
                                               (##car _e23282504_)))
                                          (_loop23272494_
                                           _lp-tl23302511_
                                           (cons _lp-hd23292508_
                                                 _body23312501_))))
                                      (let ((_body23322514_
                                             (reverse _body23312501_)))
                                        (___kont3617036171_
                                         _body23322514_))))))
                        (_loop23272494_ _target23242488_ '())))))
              (if (gx#stx-pair? ___stx3616736168_)
                  (let ((_e23182468_ (gx#syntax-e ___stx3616736168_)))
                    (let ((_tl23202475_ (##cdr _e23182468_))
                          (_hd23192472_ (##car _e23182468_)))
                      (if (gx#stx-pair? _tl23202475_)
                          (let ((_e23212478_ (gx#syntax-e _tl23202475_)))
                            (let ((_tl23232485_ (##cdr _e23212478_))
                                  (_hd23222482_ (##car _e23212478_)))
                              (if (gx#stx-null? _hd23222482_)
                                  (if (gx#stx-pair/null? _tl23232485_)
                                      (let ((___splice3617236173_
                                             (gx#syntax-split-splice
                                              _tl23232485_
                                              '0)))
                                        (let ((_tl23262491_
                                               (##vector-ref
                                                ___splice3617236173_
                                                '1))
                                              (_target23242488_
                                               (##vector-ref
                                                ___splice3617236173_
                                                '0)))
                                          (if (gx#stx-null? _tl23262491_)
                                              (___match3620036201_
                                               _e23182468_
                                               _hd23192472_
                                               _tl23202475_
                                               _e23212478_
                                               _hd23222482_
                                               _tl23232485_
                                               ___splice3617236173_
                                               _target23242488_
                                               _tl23262491_)
                                              (_g23152360_))))
                                      (_g23152360_))
                                  (if (gx#stx-pair? _hd23222482_)
                                      (let ((_e23432387_
                                             (gx#syntax-e _hd23222482_)))
                                        (let ((_tl23452394_
                                               (##cdr _e23432387_))
                                              (_hd23442391_
                                               (##car _e23432387_)))
                                          (if (gx#stx-pair/null? _tl23232485_)
                                              (let ((___splice3617636177_
                                                     (gx#syntax-split-splice
                                                      _tl23232485_
                                                      '0)))
                                                (let ((_tl23482400_
                                                       (##vector-ref
                                                        ___splice3617636177_
                                                        '1))
                                                      (_target23462397_
                                                       (##vector-ref
                                                        ___splice3617636177_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl23482400_)
                                                      (___match3622636227_
                                                       _e23182468_
                                                       _hd23192472_
                                                       _tl23202475_
                                                       _e23212478_
                                                       _hd23222482_
                                                       _tl23232485_
                                                       _e23432387_
                                                       _hd23442391_
                                                       _tl23452394_
                                                       ___splice3617636177_
                                                       _target23462397_
                                                       _tl23482400_)
                                                      (_g23152360_))))
                                              (_g23152360_))))
                                      (_g23152360_)))))
                          (_g23152360_))))
                  (_g23152360_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let|
      (lambda (_$stx2549_)
        (let* ((___stx3622936230_ _$stx2549_)
               (_g25542618_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3622936230_))))
          (let ((___kont3623236233_
                 (lambda (_L2824_ _L2826_ _L2827_ _L2828_ _L2829_)
                   (cons (cons (gx#datum->syntax '#f 'letrec-values)
                               (cons (cons (cons (cons _L2829_ '())
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda%)
                                                             (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#!void
                             (foldr (lambda (_g28542861_ _g28552864_)
                                      (cons _g28542861_ _g28552864_))
                                    _L2826_
                                    _L2828_))
                           (begin
                             '#!void
                             (foldr (lambda (_g28562867_ _g28572870_)
                                      (cons _g28562867_ _g28572870_))
                                    '()
                                    _L2824_))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _L2829_ '())))
                         (begin
                           '#!void
                           (foldr (lambda (_g28582873_ _g28592876_)
                                    (cons _g28582873_ _g28592876_))
                                  '()
                                  _L2827_)))))
                (___kont3623836239_
                 (lambda (_L2675_ _L2677_)
                   (cons (gx#datum->syntax '#f '~let)
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons _L2677_
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g26942697_ _g26952700_)
                                                (cons _g26942697_ _g26952700_))
                                              '()
                                              _L2675_))))))))
            (let* ((___match3628636287_
                    (lambda (_e25982625_
                             _hd25992629_
                             _tl26002632_
                             _e26012635_
                             _hd26022639_
                             _tl26032642_
                             ___splice3624036241_
                             _target26042645_
                             _tl26062648_)
                      (letrec ((_loop26072651_
                                (lambda (_hd26052655_ _body26112658_)
                                  (if (gx#stx-pair? _hd26052655_)
                                      (let ((_e26082661_
                                             (gx#syntax-e _hd26052655_)))
                                        (let ((_lp-tl26102668_
                                               (##cdr _e26082661_))
                                              (_lp-hd26092665_
                                               (##car _e26082661_)))
                                          (_loop26072651_
                                           _lp-tl26102668_
                                           (cons _lp-hd26092665_
                                                 _body26112658_))))
                                      (let ((_body26122671_
                                             (reverse _body26112658_)))
                                        (___kont3623836239_
                                         _body26122671_
                                         _hd26022639_))))))
                        (_loop26072651_ _target26042645_ '()))))
                   (___match3627836279_
                    (lambda (_e25982625_
                             _hd25992629_
                             _tl26002632_
                             _e26012635_
                             _hd26022639_
                             _tl26032642_)
                      (if (gx#stx-pair/null? _tl26032642_)
                          (let ((___splice3624036241_
                                 (gx#syntax-split-splice _tl26032642_ '0)))
                            (let ((_tl26062648_
                                   (##vector-ref ___splice3624036241_ '1))
                                  (_target26042645_
                                   (##vector-ref ___splice3624036241_ '0)))
                              (if (gx#stx-null? _tl26062648_)
                                  (___match3628636287_
                                   _e25982625_
                                   _hd25992629_
                                   _tl26002632_
                                   _e26012635_
                                   _hd26022639_
                                   _tl26032642_
                                   ___splice3624036241_
                                   _target26042645_
                                   _tl26062648_)
                                  (_g25542618_))))
                          (_g25542618_))))
                   (___match3626636267_
                    (lambda (_e25612710_
                             _hd25622714_
                             _tl25632717_
                             _e25642720_
                             _hd25652724_
                             _tl25662727_
                             _e25672730_
                             _hd25682734_
                             _tl25692737_
                             ___splice3623436235_
                             _target25702740_
                             _tl25722743_)
                      (letrec ((_loop25732746_
                                (lambda (_hd25712750_
                                         _arg25772753_
                                         _var25782755_)
                                  (if (gx#stx-pair? _hd25712750_)
                                      (let ((_e25742758_
                                             (gx#syntax-e _hd25712750_)))
                                        (let ((_lp-tl25762765_
                                               (##cdr _e25742758_))
                                              (_lp-hd25752762_
                                               (##car _e25742758_)))
                                          (if (gx#stx-pair? _lp-hd25752762_)
                                              (let ((_e25812768_
                                                     (gx#syntax-e
                                                      _lp-hd25752762_)))
                                                (let ((_tl25832775_
                                                       (##cdr _e25812768_))
                                                      (_hd25822772_
                                                       (##car _e25812768_)))
                                                  (if (gx#stx-pair?
                                                       _tl25832775_)
                                                      (let ((_e25842778_
                                                             (gx#syntax-e
                                                              _tl25832775_)))
                                                        (let ((_tl25862785_
                                                               (##cdr _e25842778_))
                                                              (_hd25852782_
                                                               (##car _e25842778_)))
                                                          (if (gx#stx-null?
                                                               _tl25862785_)
                                                              (_loop25732746_
                                                               _lp-tl25762765_
                                                               (cons _hd25852782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg25772753_)
                       (cons _hd25822772_ _var25782755_))
                      (___match3627836279_
                       _e25612710_
                       _hd25622714_
                       _tl25632717_
                       _e25642720_
                       _hd25652724_
                       _tl25662727_))))
              (___match3627836279_
               _e25612710_
               _hd25622714_
               _tl25632717_
               _e25642720_
               _hd25652724_
               _tl25662727_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match3627836279_
                                               _e25612710_
                                               _hd25622714_
                                               _tl25632717_
                                               _e25642720_
                                               _hd25652724_
                                               _tl25662727_))))
                                      (let ((_var25802791_
                                             (reverse _var25782755_))
                                            (_arg25792788_
                                             (reverse _arg25772753_)))
                                        (if (gx#stx-pair/null? _tl25692737_)
                                            (let ((___splice3623636237_
                                                   (gx#syntax-split-splice
                                                    _tl25692737_
                                                    '0)))
                                              (let ((_tl25892797_
                                                     (##vector-ref
                                                      ___splice3623636237_
                                                      '1))
                                                    (_target25872794_
                                                     (##vector-ref
                                                      ___splice3623636237_
                                                      '0)))
                                                (if (gx#stx-null? _tl25892797_)
                                                    (letrec ((_loop25902800_
                                                              (lambda (_hd25882804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body25942807_)
                        (if (gx#stx-pair? _hd25882804_)
                            (let ((_e25912810_ (gx#syntax-e _hd25882804_)))
                              (let ((_lp-tl25932817_ (##cdr _e25912810_))
                                    (_lp-hd25922814_ (##car _e25912810_)))
                                (_loop25902800_
                                 _lp-tl25932817_
                                 (cons _lp-hd25922814_ _body25942807_))))
                            (let ((_body25952820_ (reverse _body25942807_)))
                              (let ((_L2824_ _body25952820_)
                                    (_L2826_ _tl25722743_)
                                    (_L2827_ _arg25792788_)
                                    (_L2828_ _var25802791_)
                                    (_L2829_ _hd25652724_))
                                (if (gx#identifier? _L2829_)
                                    (___kont3623236233_
                                     _L2824_
                                     _L2826_
                                     _L2827_
                                     _L2828_
                                     _L2829_)
                                    (___match3627836279_
                                     _e25612710_
                                     _hd25622714_
                                     _tl25632717_
                                     _e25642720_
                                     _hd25652724_
                                     _tl25662727_))))))))
              (_loop25902800_ _target25872794_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match3627836279_
                                                     _e25612710_
                                                     _hd25622714_
                                                     _tl25632717_
                                                     _e25642720_
                                                     _hd25652724_
                                                     _tl25662727_))))
                                            (___match3627836279_
                                             _e25612710_
                                             _hd25622714_
                                             _tl25632717_
                                             _e25642720_
                                             _hd25652724_
                                             _tl25662727_)))))))
                        (_loop25732746_ _target25702740_ '() '())))))
              (if (gx#stx-pair? ___stx3622936230_)
                  (let ((_e25612710_ (gx#syntax-e ___stx3622936230_)))
                    (let ((_tl25632717_ (##cdr _e25612710_))
                          (_hd25622714_ (##car _e25612710_)))
                      (if (gx#stx-pair? _tl25632717_)
                          (let ((_e25642720_ (gx#syntax-e _tl25632717_)))
                            (let ((_tl25662727_ (##cdr _e25642720_))
                                  (_hd25652724_ (##car _e25642720_)))
                              (if (gx#stx-pair? _tl25662727_)
                                  (let ((_e25672730_
                                         (gx#syntax-e _tl25662727_)))
                                    (let ((_tl25692737_ (##cdr _e25672730_))
                                          (_hd25682734_ (##car _e25672730_)))
                                      (if (gx#stx-pair/null? _hd25682734_)
                                          (let ((___splice3623436235_
                                                 (gx#syntax-split-splice
                                                  _hd25682734_
                                                  '0)))
                                            (let ((_tl25722743_
                                                   (##vector-ref
                                                    ___splice3623436235_
                                                    '1))
                                                  (_target25702740_
                                                   (##vector-ref
                                                    ___splice3623436235_
                                                    '0)))
                                              (___match3626636267_
                                               _e25612710_
                                               _hd25622714_
                                               _tl25632717_
                                               _e25642720_
                                               _hd25652724_
                                               _tl25662727_
                                               _e25672730_
                                               _hd25682734_
                                               _tl25692737_
                                               ___splice3623436235_
                                               _target25702740_
                                               _tl25722743_)))
                                          (if (gx#stx-pair/null? _tl25662727_)
                                              (let ((___splice3624036241_
                                                     (gx#syntax-split-splice
                                                      _tl25662727_
                                                      '0)))
                                                (let ((_tl26062648_
                                                       (##vector-ref
                                                        ___splice3624036241_
                                                        '1))
                                                      (_target26042645_
                                                       (##vector-ref
                                                        ___splice3624036241_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl26062648_)
                                                      (___match3628636287_
                                                       _e25612710_
                                                       _hd25622714_
                                                       _tl25632717_
                                                       _e25642720_
                                                       _hd25652724_
                                                       _tl25662727_
                                                       ___splice3624036241_
                                                       _target26042645_
                                                       _tl26062648_)
                                                      (_g25542618_))))
                                              (_g25542618_)))))
                                  (if (gx#stx-pair/null? _tl25662727_)
                                      (let ((___splice3624036241_
                                             (gx#syntax-split-splice
                                              _tl25662727_
                                              '0)))
                                        (let ((_tl26062648_
                                               (##vector-ref
                                                ___splice3624036241_
                                                '1))
                                              (_target26042645_
                                               (##vector-ref
                                                ___splice3624036241_
                                                '0)))
                                          (if (gx#stx-null? _tl26062648_)
                                              (___match3628636287_
                                               _e25612710_
                                               _hd25622714_
                                               _tl25632717_
                                               _e25642720_
                                               _hd25652724_
                                               _tl25662727_
                                               ___splice3624036241_
                                               _target26042645_
                                               _tl26062648_)
                                              (_g25542618_))))
                                      (_g25542618_)))))
                          (_g25542618_))))
                  (_g25542618_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let*|
      (lambda (_$stx2886_)
        (let* ((_g28902914_
                (lambda (_g28912910_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g28912910_)))
               (_g28892999_
                (lambda (_g28912918_)
                  (if (gx#stx-pair? _g28912918_)
                      (let ((_e28942921_ (gx#syntax-e _g28912918_)))
                        (let ((_hd28952925_ (##car _e28942921_))
                              (_tl28962928_ (##cdr _e28942921_)))
                          (if (gx#stx-pair? _tl28962928_)
                              (let ((_e28972931_ (gx#syntax-e _tl28962928_)))
                                (let ((_hd28982935_ (##car _e28972931_))
                                      (_tl28992938_ (##cdr _e28972931_)))
                                  (if (gx#stx-pair/null? _tl28992938_)
                                      (let ((_g41215_
                                             (gx#syntax-split-splice
                                              _tl28992938_
                                              '0)))
                                        (begin
                                          (let ((_g41216_
                                                 (if (##values? _g41215_)
                                                     (##vector-length _g41215_)
                                                     1)))
                                            (if (not (##fx= _g41216_ 2))
                                                (error "Context expects 2 values"
                                                       _g41216_)))
                                          (let ((_target29002941_
                                                 (##vector-ref _g41215_ 0))
                                                (_tl29022944_
                                                 (##vector-ref _g41215_ 1)))
                                            (if (gx#stx-null? _tl29022944_)
                                                (letrec ((_loop29032947_
                                                          (lambda (_hd29012951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body29072954_)
                    (if (gx#stx-pair? _hd29012951_)
                        (let ((_e29042957_ (gx#syntax-e _hd29012951_)))
                          (let ((_lp-hd29052961_ (##car _e29042957_))
                                (_lp-tl29062964_ (##cdr _e29042957_)))
                            (_loop29032947_
                             _lp-tl29062964_
                             (cons _lp-hd29052961_ _body29072954_))))
                        (let ((_body29082967_ (reverse _body29072954_)))
                          ((lambda (_L2971_ _L2973_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'let*-values)
                                         (cons _L2973_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g29902993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29912996_)
                  (cons _g29902993_ _g29912996_))
                '()
                _L2971_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           _body29082967_
                           _hd28982935_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop29032947_
                                                   _target29002941_
                                                   '()))
                                                (_g28902914_ _g28912918_)))))
                                      (_g28902914_ _g28912918_))))
                              (_g28902914_ _g28912918_))))
                      (_g28902914_ _g28912918_)))))
          (_g28892999_ _$stx2886_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#letrec|
      (lambda (_$stx3004_)
        (let* ((_g30083032_
                (lambda (_g30093028_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g30093028_)))
               (_g30073117_
                (lambda (_g30093036_)
                  (if (gx#stx-pair? _g30093036_)
                      (let ((_e30123039_ (gx#syntax-e _g30093036_)))
                        (let ((_hd30133043_ (##car _e30123039_))
                              (_tl30143046_ (##cdr _e30123039_)))
                          (if (gx#stx-pair? _tl30143046_)
                              (let ((_e30153049_ (gx#syntax-e _tl30143046_)))
                                (let ((_hd30163053_ (##car _e30153049_))
                                      (_tl30173056_ (##cdr _e30153049_)))
                                  (if (gx#stx-pair/null? _tl30173056_)
                                      (let ((_g41217_
                                             (gx#syntax-split-splice
                                              _tl30173056_
                                              '0)))
                                        (begin
                                          (let ((_g41218_
                                                 (if (##values? _g41217_)
                                                     (##vector-length _g41217_)
                                                     1)))
                                            (if (not (##fx= _g41218_ 2))
                                                (error "Context expects 2 values"
                                                       _g41218_)))
                                          (let ((_target30183059_
                                                 (##vector-ref _g41217_ 0))
                                                (_tl30203062_
                                                 (##vector-ref _g41217_ 1)))
                                            (if (gx#stx-null? _tl30203062_)
                                                (letrec ((_loop30213065_
                                                          (lambda (_hd30193069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body30253072_)
                    (if (gx#stx-pair? _hd30193069_)
                        (let ((_e30223075_ (gx#syntax-e _hd30193069_)))
                          (let ((_lp-hd30233079_ (##car _e30223075_))
                                (_lp-tl30243082_ (##cdr _e30223075_)))
                            (_loop30213065_
                             _lp-tl30243082_
                             (cons _lp-hd30233079_ _body30253072_))))
                        (let ((_body30263085_ (reverse _body30253072_)))
                          ((lambda (_L3089_ _L3091_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec-values)
                                         (cons _L3091_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g31083111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g31093114_)
                  (cons _g31083111_ _g31093114_))
                '()
                _L3089_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           _body30263085_
                           _hd30163053_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop30213065_
                                                   _target30183059_
                                                   '()))
                                                (_g30083032_ _g30093036_)))))
                                      (_g30083032_ _g30093036_))))
                              (_g30083032_ _g30093036_))))
                      (_g30083032_ _g30093036_)))))
          (_g30073117_ _$stx3004_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#letrec*|
      (lambda (_$stx3122_)
        (let* ((_g31263150_
                (lambda (_g31273146_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g31273146_)))
               (_g31253235_
                (lambda (_g31273154_)
                  (if (gx#stx-pair? _g31273154_)
                      (let ((_e31303157_ (gx#syntax-e _g31273154_)))
                        (let ((_hd31313161_ (##car _e31303157_))
                              (_tl31323164_ (##cdr _e31303157_)))
                          (if (gx#stx-pair? _tl31323164_)
                              (let ((_e31333167_ (gx#syntax-e _tl31323164_)))
                                (let ((_hd31343171_ (##car _e31333167_))
                                      (_tl31353174_ (##cdr _e31333167_)))
                                  (if (gx#stx-pair/null? _tl31353174_)
                                      (let ((_g41219_
                                             (gx#syntax-split-splice
                                              _tl31353174_
                                              '0)))
                                        (begin
                                          (let ((_g41220_
                                                 (if (##values? _g41219_)
                                                     (##vector-length _g41219_)
                                                     1)))
                                            (if (not (##fx= _g41220_ 2))
                                                (error "Context expects 2 values"
                                                       _g41220_)))
                                          (let ((_target31363177_
                                                 (##vector-ref _g41219_ 0))
                                                (_tl31383180_
                                                 (##vector-ref _g41219_ 1)))
                                            (if (gx#stx-null? _tl31383180_)
                                                (letrec ((_loop31393183_
                                                          (lambda (_hd31373187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body31433190_)
                    (if (gx#stx-pair? _hd31373187_)
                        (let ((_e31403193_ (gx#syntax-e _hd31373187_)))
                          (let ((_lp-hd31413197_ (##car _e31403193_))
                                (_lp-tl31423200_ (##cdr _e31403193_)))
                            (_loop31393183_
                             _lp-tl31423200_
                             (cons _lp-hd31413197_ _body31433190_))))
                        (let ((_body31443203_ (reverse _body31433190_)))
                          ((lambda (_L3207_ _L3209_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec*-values)
                                         (cons _L3209_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g32263229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g32273232_)
                  (cons _g32263229_ _g32273232_))
                '()
                _L3207_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           _body31443203_
                           _hd31343171_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop31393183_
                                                   _target31363177_
                                                   '()))
                                                (_g31263150_ _g31273154_)))))
                                      (_g31263150_ _g31273154_))))
                              (_g31263150_ _g31273154_))))
                      (_g31263150_ _g31273154_)))))
          (_g31253235_ _$stx3122_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#~let|
      (lambda (_stx3240_)
        (letrec ((_let-head?3243_
                  (lambda (_x3723_)
                    (let* ((___stx3628936290_ _x3723_)
                           (_g37273738_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3628936290_))))
                      (let ((___kont3629236293_
                             (lambda (_L3766_)
                               (gx#stx-andmap gx#identifier? _L3766_)))
                            (___kont3629436295_
                             (lambda () (gx#identifier? _x3723_))))
                        (if (gx#stx-pair? ___stx3628936290_)
                            (let ((_e37303756_
                                   (gx#syntax-e ___stx3628936290_)))
                              (let ((_tl37323763_ (##cdr _e37303756_))
                                    (_hd37313760_ (##car _e37303756_)))
                                (if (gx#identifier? _hd37313760_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:1>[1]#_g41221_|
                                         _hd37313760_)
                                        (___kont3629236293_ _tl37323763_)
                                        (___kont3629436295_))
                                    (___kont3629436295_))))
                            (___kont3629436295_))))))
                 (_let-head3245_
                  (lambda (_x3663_)
                    (let* ((___stx3630936310_ _x3663_)
                           (_g36673678_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3630936310_))))
                      (let ((___kont3631236313_ (lambda (_L3706_) _L3706_))
                            (___kont3631436315_ (lambda () (list _x3663_))))
                        (if (gx#stx-pair? ___stx3630936310_)
                            (let ((_e36703696_
                                   (gx#syntax-e ___stx3630936310_)))
                              (let ((_tl36723703_ (##cdr _e36703696_))
                                    (_hd36713700_ (##car _e36703696_)))
                                (if (gx#identifier? _hd36713700_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:1>[1]#_g41222_|
                                         _hd36713700_)
                                        (___kont3631236313_ _tl36723703_)
                                        (___kont3631436315_))
                                    (___kont3631436315_))))
                            (___kont3631436315_)))))))
          (let* ((___stx3632936330_ _stx3240_)
                 (_g32483314_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3632936330_))))
            (let ((___kont3633236333_
                   (lambda (_L3632_ _L3634_ _L3635_ _L3636_ _L3637_)
                     (cons _L3637_
                           (cons _L3636_
                                 (cons (cons (cons _L3635_ (cons _L3634_ '()))
                                             '())
                                       _L3632_)))))
                  (___kont3633436335_
                   (lambda (_L3435_ _L3437_ _L3438_ _L3439_)
                     (let* ((_g34743491_
                             (lambda (_g34753487_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g34753487_)))
                            (_g34733563_
                             (lambda (_g34753495_)
                               (if (gx#stx-pair/null? _g34753495_)
                                   (let ((_g41223_
                                          (gx#syntax-split-splice
                                           _g34753495_
                                           '0)))
                                     (begin
                                       (let ((_g41224_
                                              (if (##values? _g41223_)
                                                  (##vector-length _g41223_)
                                                  1)))
                                         (if (not (##fx= _g41224_ 2))
                                             (error "Context expects 2 values"
                                                    _g41224_)))
                                       (let ((_target34773498_
                                              (##vector-ref _g41223_ 0))
                                             (_tl34793501_
                                              (##vector-ref _g41223_ 1)))
                                         (if (gx#stx-null? _tl34793501_)
                                             (letrec ((_loop34803504_
                                                       (lambda (_hd34783508_
                                                                _hd-bind34843511_)
                                                         (if (gx#stx-pair?
                                                              _hd34783508_)
                                                             (let ((_e34813514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd34783508_)))
                       (let ((_lp-hd34823518_ (##car _e34813514_))
                             (_lp-tl34833521_ (##cdr _e34813514_)))
                         (_loop34803504_
                          _lp-tl34833521_
                          (cons _lp-hd34823518_ _hd-bind34843511_))))
                     (let ((_hd-bind34853524_ (reverse _hd-bind34843511_)))
                       ((lambda (_L3528_)
                          (let ()
                            (cons _L3439_
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _L3437_
                                           _L3528_)
                                          (foldr (lambda (_g35433549_
                                                          _g35443552_
                                                          _g35453554_)
                                                   (cons (cons _g35443552_
                                                               (cons _g35433549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g35453554_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L3437_
                                                 _L3528_))
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g35463557_
                                                          _g35473560_)
                                                   (cons _g35463557_
                                                         _g35473560_))
                                                 '()
                                                 _L3435_))))))
                        _hd-bind34853524_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop34803504_
                                                _target34773498_
                                                '()))
                                             (_g34743491_ _g34753495_)))))
                                   (_g34743491_ _g34753495_)))))
                       (_g34733563_
                        (gx#stx-map
                         _let-head3245_
                         (begin
                           '#!void
                           (foldr (lambda (_g35663569_ _g35673572_)
                                    (cons _g35663569_ _g35673572_))
                                  '()
                                  _L3438_))))))))
              (let* ((___match3639836399_
                      (lambda (_e32743321_
                               _hd32753325_
                               _tl32763328_
                               _e32773331_
                               _hd32783335_
                               _tl32793338_
                               _e32803341_
                               _hd32813345_
                               _tl32823348_
                               ___splice3633636337_
                               _target32833351_
                               _tl32853354_)
                        (letrec ((_loop32863357_
                                  (lambda (_hd32843361_
                                           _e32903364_
                                           _hd32913366_)
                                    (if (gx#stx-pair? _hd32843361_)
                                        (let ((_e32873369_
                                               (gx#syntax-e _hd32843361_)))
                                          (let ((_lp-tl32893376_
                                                 (##cdr _e32873369_))
                                                (_lp-hd32883373_
                                                 (##car _e32873369_)))
                                            (if (gx#stx-pair? _lp-hd32883373_)
                                                (let ((_e32943379_
                                                       (gx#syntax-e
                                                        _lp-hd32883373_)))
                                                  (let ((_tl32963386_
                                                         (##cdr _e32943379_))
                                                        (_hd32953383_
                                                         (##car _e32943379_)))
                                                    (if (gx#stx-pair?
                                                         _tl32963386_)
                                                        (let ((_e32973389_
                                                               (gx#syntax-e
                                                                _tl32963386_)))
                                                          (let ((_tl32993396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e32973389_))
                        (_hd32983393_ (##car _e32973389_)))
                    (if (gx#stx-null? _tl32993396_)
                        (_loop32863357_
                         _lp-tl32893376_
                         (cons _hd32983393_ _e32903364_)
                         (cons _hd32953383_ _hd32913366_))
                        (_g32483314_))))
                (_g32483314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g32483314_))))
                                        (let ((_hd32933402_
                                               (reverse _hd32913366_))
                                              (_e32923399_
                                               (reverse _e32903364_)))
                                          (if (gx#stx-pair/null? _tl32823348_)
                                              (let ((___splice3633836339_
                                                     (gx#syntax-split-splice
                                                      _tl32823348_
                                                      '0)))
                                                (let ((_tl33023408_
                                                       (##vector-ref
                                                        ___splice3633836339_
                                                        '1))
                                                      (_target33003405_
                                                       (##vector-ref
                                                        ___splice3633836339_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl33023408_)
                                                      (letrec ((_loop33033411_
                                                                (lambda (_hd33013415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body33073418_)
                          (if (gx#stx-pair? _hd33013415_)
                              (let ((_e33043421_ (gx#syntax-e _hd33013415_)))
                                (let ((_lp-tl33063428_ (##cdr _e33043421_))
                                      (_lp-hd33053425_ (##car _e33043421_)))
                                  (_loop33033411_
                                   _lp-tl33063428_
                                   (cons _lp-hd33053425_ _body33073418_))))
                              (let ((_body33083431_ (reverse _body33073418_)))
                                (let ((_L3435_ _body33083431_)
                                      (_L3437_ _e32923399_)
                                      (_L3438_ _hd32933402_)
                                      (_L3439_ _hd32783335_))
                                  (if (gx#stx-andmap
                                       _let-head?3243_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g34653468_
                                                         _g34663471_)
                                                  (cons _g34653468_
                                                        _g34663471_))
                                                '()
                                                _L3438_)))
                                      (___kont3633436335_
                                       _L3435_
                                       _L3437_
                                       _L3438_
                                       _L3439_)
                                      (_g32483314_))))))))
                (_loop33033411_ _target33003405_ '()))
              (_g32483314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g32483314_)))))))
                          (_loop32863357_ _target32833351_ '() '()))))
                     (___match3637236373_
                      (lambda (_e32553582_
                               _hd32563586_
                               _tl32573589_
                               _e32583592_
                               _hd32593596_
                               _tl32603599_
                               _e32613602_
                               _hd32623606_
                               _tl32633609_
                               _e32643612_
                               _hd32653616_
                               _tl32663619_
                               _e32673622_
                               _hd32683626_
                               _tl32693629_)
                        (let ((_L3632_ _tl32633609_)
                              (_L3634_ _hd32683626_)
                              (_L3635_ _hd32653616_)
                              (_L3636_ _hd32593596_)
                              (_L3637_ _hd32563586_))
                          (if (_let-head?3243_ _L3635_)
                              (___kont3633236333_
                               _L3632_
                               _L3634_
                               _L3635_
                               _L3636_
                               _L3637_)
                              (if (gx#stx-pair/null? _hd32623606_)
                                  (let ((___splice3633636337_
                                         (gx#syntax-split-splice
                                          _hd32623606_
                                          '0)))
                                    (let ((_tl32853354_
                                           (##vector-ref
                                            ___splice3633636337_
                                            '1))
                                          (_target32833351_
                                           (##vector-ref
                                            ___splice3633636337_
                                            '0)))
                                      (if (gx#stx-null? _tl32853354_)
                                          (___match3639836399_
                                           _e32553582_
                                           _hd32563586_
                                           _tl32573589_
                                           _e32583592_
                                           _hd32593596_
                                           _tl32603599_
                                           _e32613602_
                                           _hd32623606_
                                           _tl32633609_
                                           ___splice3633636337_
                                           _target32833351_
                                           _tl32853354_)
                                          (_g32483314_))))
                                  (_g32483314_)))))))
                (if (gx#stx-pair? ___stx3632936330_)
                    (let ((_e32553582_ (gx#syntax-e ___stx3632936330_)))
                      (let ((_tl32573589_ (##cdr _e32553582_))
                            (_hd32563586_ (##car _e32553582_)))
                        (if (gx#stx-pair? _tl32573589_)
                            (let ((_e32583592_ (gx#syntax-e _tl32573589_)))
                              (let ((_tl32603599_ (##cdr _e32583592_))
                                    (_hd32593596_ (##car _e32583592_)))
                                (if (gx#stx-pair? _tl32603599_)
                                    (let ((_e32613602_
                                           (gx#syntax-e _tl32603599_)))
                                      (let ((_tl32633609_ (##cdr _e32613602_))
                                            (_hd32623606_ (##car _e32613602_)))
                                        (if (gx#stx-pair? _hd32623606_)
                                            (let ((_e32643612_
                                                   (gx#syntax-e _hd32623606_)))
                                              (let ((_tl32663619_
                                                     (##cdr _e32643612_))
                                                    (_hd32653616_
                                                     (##car _e32643612_)))
                                                (if (gx#stx-pair? _tl32663619_)
                                                    (let ((_e32673622_
                                                           (gx#syntax-e
                                                            _tl32663619_)))
                                                      (let ((_tl32693629_
                                                             (##cdr _e32673622_))
                                                            (_hd32683626_
                                                             (##car _e32673622_)))
                                                        (if (gx#stx-null?
                                                             _tl32693629_)
                                                            (___match3637236373_
                                                             _e32553582_
                                                             _hd32563586_
                                                             _tl32573589_
                                                             _e32583592_
                                                             _hd32593596_
                                                             _tl32603599_
                                                             _e32613602_
                                                             _hd32623606_
                                                             _tl32633609_
                                                             _e32643612_
                                                             _hd32653616_
                                                             _tl32663619_
                                                             _e32673622_
                                                             _hd32683626_
                                                             _tl32693629_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd32623606_)
                        (let ((___splice3633636337_
                               (gx#syntax-split-splice _hd32623606_ '0)))
                          (let ((_tl32853354_
                                 (##vector-ref ___splice3633636337_ '1))
                                (_target32833351_
                                 (##vector-ref ___splice3633636337_ '0)))
                            (if (gx#stx-null? _tl32853354_)
                                (___match3639836399_
                                 _e32553582_
                                 _hd32563586_
                                 _tl32573589_
                                 _e32583592_
                                 _hd32593596_
                                 _tl32603599_
                                 _e32613602_
                                 _hd32623606_
                                 _tl32633609_
                                 ___splice3633636337_
                                 _target32833351_
                                 _tl32853354_)
                                (_g32483314_))))
                        (_g32483314_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd32623606_)
                                                        (let ((___splice3633636337_
                                                               (gx#syntax-split-splice
                                                                _hd32623606_
                                                                '0)))
                                                          (let ((_tl32853354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice3633636337_ '1))
                        (_target32833351_
                         (##vector-ref ___splice3633636337_ '0)))
                    (if (gx#stx-null? _tl32853354_)
                        (___match3639836399_
                         _e32553582_
                         _hd32563586_
                         _tl32573589_
                         _e32583592_
                         _hd32593596_
                         _tl32603599_
                         _e32613602_
                         _hd32623606_
                         _tl32633609_
                         ___splice3633636337_
                         _target32833351_
                         _tl32853354_)
                        (_g32483314_))))
                (_g32483314_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd32623606_)
                                                (let ((___splice3633636337_
                                                       (gx#syntax-split-splice
                                                        _hd32623606_
                                                        '0)))
                                                  (let ((_tl32853354_
                                                         (##vector-ref
                                                          ___splice3633636337_
                                                          '1))
                                                        (_target32833351_
                                                         (##vector-ref
                                                          ___splice3633636337_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl32853354_)
                                                        (___match3639836399_
                                                         _e32553582_
                                                         _hd32563586_
                                                         _tl32573589_
                                                         _e32583592_
                                                         _hd32593596_
                                                         _tl32603599_
                                                         _e32613602_
                                                         _hd32623606_
                                                         _tl32633609_
                                                         ___splice3633636337_
                                                         _target32833351_
                                                         _tl32853354_)
                                                        (_g32483314_))))
                                                (_g32483314_)))))
                                    (_g32483314_))))
                            (_g32483314_))))
                    (_g32483314_))))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#and|
      (lambda (_$stx3786_)
        (let* ((___stx3640136402_ _$stx3786_)
               (_g37923818_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3640136402_))))
          (let ((___kont3640436405_ (lambda () '#t))
                (___kont3640636407_ (lambda (_L3890_) _L3890_))
                (___kont3640836409_
                 (lambda (_L3845_ _L3847_ _L3848_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _L3847_
                               (cons (cons _L3848_ _L3845_)
                                     (cons '#f '())))))))
            (if (gx#stx-pair? ___stx3640136402_)
                (let ((_e37943910_ (gx#syntax-e ___stx3640136402_)))
                  (let ((_tl37963917_ (##cdr _e37943910_))
                        (_hd37953914_ (##car _e37943910_)))
                    (if (gx#stx-null? _tl37963917_)
                        (___kont3640436405_)
                        (if (gx#stx-pair? _tl37963917_)
                            (let ((_e38013880_ (gx#syntax-e _tl37963917_)))
                              (let ((_tl38033887_ (##cdr _e38013880_))
                                    (_hd38023884_ (##car _e38013880_)))
                                (if (gx#stx-null? _tl38033887_)
                                    (___kont3640636407_ _hd38023884_)
                                    (___kont3640836409_
                                     _tl38033887_
                                     _hd38023884_
                                     _hd37953914_))))
                            (_g37923818_)))))
                (_g37923818_))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#or|
      (lambda (_$stx3928_)
        (let* ((___stx3644736448_ _$stx3928_)
               (_g39343960_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3644736448_))))
          (let ((___kont3645036451_ (lambda () '#f))
                (___kont3645236453_ (lambda (_L4032_) _L4032_))
                (___kont3645436455_
                 (lambda (_L3987_ _L3989_ _L3990_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _L3989_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _L3990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3987_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (gx#stx-pair? ___stx3644736448_)
                (let ((_e39364052_ (gx#syntax-e ___stx3644736448_)))
                  (let ((_tl39384059_ (##cdr _e39364052_))
                        (_hd39374056_ (##car _e39364052_)))
                    (if (gx#stx-null? _tl39384059_)
                        (___kont3645036451_)
                        (if (gx#stx-pair? _tl39384059_)
                            (let ((_e39434022_ (gx#syntax-e _tl39384059_)))
                              (let ((_tl39454029_ (##cdr _e39434022_))
                                    (_hd39444026_ (##car _e39434022_)))
                                (if (gx#stx-null? _tl39454029_)
                                    (___kont3645236453_ _hd39444026_)
                                    (___kont3645436455_
                                     _tl39454029_
                                     _hd39444026_
                                     _hd39374056_))))
                            (_g39343960_)))))
                (_g39343960_))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#cond|
      (lambda (_$stx4070_)
        (let* ((___stx3649336494_ _$stx4070_)
               (_g40794170_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3649336494_))))
          (let ((___kont3649636497_ (lambda () '#!void))
                (___kont3649836499_
                 (lambda (_L4517_)
                   (cons (gx#datum->syntax '#f '%#expression)
                         (cons (cons (gx#datum->syntax '#f 'begin)
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g45364539_ _g45374542_)
                                                (cons _g45364539_ _g45374542_))
                                              '()
                                              _L4517_)))
                               '()))))
                (___kont3650236503_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'syntax-error)
                         (cons '"Bad syntax; misplaced else" '()))))
                (___kont3650436505_
                 (lambda (_L4390_ _L4392_ _L4393_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _L4392_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _L4393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4390_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3650636507_
                 (lambda (_L4328_ _L4330_ _L4331_ _L4332_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _L4331_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (cons _L4330_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           '()))
               (cons (cons _L4332_ _L4328_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3650836509_
                 (lambda (_L4237_ _L4239_ _L4240_ _L4241_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _L4240_
                               (cons (cons (gx#datum->syntax '#f 'begin)
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g42624265_
                                                             _g42634268_)
                                                      (cons _g42624265_
                                                            _g42634268_))
                                                    '()
                                                    _L4239_)))
                                     (cons (cons _L4241_ _L4237_) '())))))))
            (let* ((___match3665436655_
                    (lambda (_e41474177_
                             _hd41484181_
                             _tl41494184_
                             _e41504187_
                             _hd41514191_
                             _tl41524194_
                             _e41534197_
                             _hd41544201_
                             _tl41554204_
                             ___splice3651036511_
                             _target41564207_
                             _tl41584210_)
                      (letrec ((_loop41594213_
                                (lambda (_hd41574217_ _body41634220_)
                                  (if (gx#stx-pair? _hd41574217_)
                                      (let ((_e41604223_
                                             (gx#syntax-e _hd41574217_)))
                                        (let ((_lp-tl41624230_
                                               (##cdr _e41604223_))
                                              (_lp-hd41614227_
                                               (##car _e41604223_)))
                                          (_loop41594213_
                                           _lp-tl41624230_
                                           (cons _lp-hd41614227_
                                                 _body41634220_))))
                                      (let ((_body41644233_
                                             (reverse _body41634220_)))
                                        (___kont3650836509_
                                         _tl41524194_
                                         _body41644233_
                                         _hd41544201_
                                         _hd41484181_))))))
                        (_loop41594213_ _target41564207_ '()))))
                   (___match3655036551_
                    (lambda (_e40854457_
                             _hd40864461_
                             _tl40874464_
                             _e40884467_
                             _hd40894471_
                             _tl40904474_
                             _e40914477_
                             _hd40924481_
                             _tl40934484_
                             ___splice3650036501_
                             _target40944487_
                             _tl40964490_)
                      (letrec ((_loop40974493_
                                (lambda (_hd40954497_ _body41014500_)
                                  (if (gx#stx-pair? _hd40954497_)
                                      (let ((_e40984503_
                                             (gx#syntax-e _hd40954497_)))
                                        (let ((_lp-tl41004510_
                                               (##cdr _e40984503_))
                                              (_lp-hd40994507_
                                               (##car _e40984503_)))
                                          (_loop40974493_
                                           _lp-tl41004510_
                                           (cons _lp-hd40994507_
                                                 _body41014500_))))
                                      (let ((_body41024513_
                                             (reverse _body41014500_)))
                                        (if (gx#stx-null? _tl40904474_)
                                            (___kont3649836499_ _body41024513_)
                                            (___kont3650236503_)))))))
                        (_loop40974493_ _target40944487_ '())))))
              (if (gx#stx-pair? ___stx3649336494_)
                  (let ((_e40814552_ (gx#syntax-e ___stx3649336494_)))
                    (let ((_tl40834559_ (##cdr _e40814552_))
                          (_hd40824556_ (##car _e40814552_)))
                      (if (gx#stx-null? _tl40834559_)
                          (___kont3649636497_)
                          (if (gx#stx-pair? _tl40834559_)
                              (let ((_e40884467_ (gx#syntax-e _tl40834559_)))
                                (let ((_tl40904474_ (##cdr _e40884467_))
                                      (_hd40894471_ (##car _e40884467_)))
                                  (if (gx#stx-pair? _hd40894471_)
                                      (let ((_e40914477_
                                             (gx#syntax-e _hd40894471_)))
                                        (let ((_tl40934484_
                                               (##cdr _e40914477_))
                                              (_hd40924481_
                                               (##car _e40914477_)))
                                          (if (gx#identifier? _hd40924481_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:1>[1]#_g41227_|
                                                   _hd40924481_)
                                                  (if (gx#stx-pair/null?
                                                       _tl40934484_)
                                                      (let ((___splice3650036501_
                                                             (gx#syntax-split-splice
                                                              _tl40934484_
                                                              '0)))
                                                        (let ((_tl40964490_
                                                               (##vector-ref
                                                                ___splice3650036501_
                                                                '1))
                                                              (_target40944487_
                                                               (##vector-ref
                                                                ___splice3650036501_
                                                                '0)))
                                                          (if (gx#stx-null?
                                                               _tl40964490_)
                                                              (___match3655036551_
                                                               _e40814552_
                                                               _hd40824556_
                                                               _tl40834559_
                                                               _e40884467_
                                                               _hd40894471_
                                                               _tl40904474_
                                                               _e40914477_
                                                               _hd40924481_
                                                               _tl40934484_
                                                               ___splice3650036501_
                                                               _target40944487_
                                                               _tl40964490_)
                                                              (___kont3650236503_))))
                                                      (___kont3650236503_))
                                                  (if (gx#stx-null?
                                                       _tl40934484_)
                                                      (___kont3650436505_
                                                       _tl40904474_
                                                       _hd40924481_
                                                       _hd40824556_)
                                                      (if (gx#stx-pair?
                                                           _tl40934484_)
                                                          (let ((_e41374308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl40934484_)))
                    (let ((_tl41394315_ (##cdr _e41374308_))
                          (_hd41384312_ (##car _e41374308_)))
                      (if (gx#identifier? _hd41384312_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<sugar>$<sugar:1>[1]#_g41226_|
                               _hd41384312_)
                              (if (gx#stx-pair? _tl41394315_)
                                  (let ((_e41404318_
                                         (gx#syntax-e _tl41394315_)))
                                    (let ((_tl41424325_ (##cdr _e41404318_))
                                          (_hd41414322_ (##car _e41404318_)))
                                      (if (gx#stx-null? _tl41424325_)
                                          (___kont3650636507_
                                           _tl40904474_
                                           _hd41414322_
                                           _hd40924481_
                                           _hd40824556_)
                                          (if (gx#stx-pair/null? _tl40934484_)
                                              (let ((___splice3651036511_
                                                     (gx#syntax-split-splice
                                                      _tl40934484_
                                                      '0)))
                                                (let ((_tl41584210_
                                                       (##vector-ref
                                                        ___splice3651036511_
                                                        '1))
                                                      (_target41564207_
                                                       (##vector-ref
                                                        ___splice3651036511_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl41584210_)
                                                      (___match3665436655_
                                                       _e40814552_
                                                       _hd40824556_
                                                       _tl40834559_
                                                       _e40884467_
                                                       _hd40894471_
                                                       _tl40904474_
                                                       _e40914477_
                                                       _hd40924481_
                                                       _tl40934484_
                                                       ___splice3651036511_
                                                       _target41564207_
                                                       _tl41584210_)
                                                      (_g40794170_))))
                                              (_g40794170_)))))
                                  (if (gx#stx-pair/null? _tl40934484_)
                                      (let ((___splice3651036511_
                                             (gx#syntax-split-splice
                                              _tl40934484_
                                              '0)))
                                        (let ((_tl41584210_
                                               (##vector-ref
                                                ___splice3651036511_
                                                '1))
                                              (_target41564207_
                                               (##vector-ref
                                                ___splice3651036511_
                                                '0)))
                                          (if (gx#stx-null? _tl41584210_)
                                              (___match3665436655_
                                               _e40814552_
                                               _hd40824556_
                                               _tl40834559_
                                               _e40884467_
                                               _hd40894471_
                                               _tl40904474_
                                               _e40914477_
                                               _hd40924481_
                                               _tl40934484_
                                               ___splice3651036511_
                                               _target41564207_
                                               _tl41584210_)
                                              (_g40794170_))))
                                      (_g40794170_)))
                              (if (gx#stx-pair/null? _tl40934484_)
                                  (let ((___splice3651036511_
                                         (gx#syntax-split-splice
                                          _tl40934484_
                                          '0)))
                                    (let ((_tl41584210_
                                           (##vector-ref
                                            ___splice3651036511_
                                            '1))
                                          (_target41564207_
                                           (##vector-ref
                                            ___splice3651036511_
                                            '0)))
                                      (if (gx#stx-null? _tl41584210_)
                                          (___match3665436655_
                                           _e40814552_
                                           _hd40824556_
                                           _tl40834559_
                                           _e40884467_
                                           _hd40894471_
                                           _tl40904474_
                                           _e40914477_
                                           _hd40924481_
                                           _tl40934484_
                                           ___splice3651036511_
                                           _target41564207_
                                           _tl41584210_)
                                          (_g40794170_))))
                                  (_g40794170_)))
                          (if (gx#stx-pair/null? _tl40934484_)
                              (let ((___splice3651036511_
                                     (gx#syntax-split-splice _tl40934484_ '0)))
                                (let ((_tl41584210_
                                       (##vector-ref ___splice3651036511_ '1))
                                      (_target41564207_
                                       (##vector-ref ___splice3651036511_ '0)))
                                  (if (gx#stx-null? _tl41584210_)
                                      (___match3665436655_
                                       _e40814552_
                                       _hd40824556_
                                       _tl40834559_
                                       _e40884467_
                                       _hd40894471_
                                       _tl40904474_
                                       _e40914477_
                                       _hd40924481_
                                       _tl40934484_
                                       ___splice3651036511_
                                       _target41564207_
                                       _tl41584210_)
                                      (_g40794170_))))
                              (_g40794170_)))))
                  (if (gx#stx-pair/null? _tl40934484_)
                      (let ((___splice3651036511_
                             (gx#syntax-split-splice _tl40934484_ '0)))
                        (let ((_tl41584210_
                               (##vector-ref ___splice3651036511_ '1))
                              (_target41564207_
                               (##vector-ref ___splice3651036511_ '0)))
                          (if (gx#stx-null? _tl41584210_)
                              (___match3665436655_
                               _e40814552_
                               _hd40824556_
                               _tl40834559_
                               _e40884467_
                               _hd40894471_
                               _tl40904474_
                               _e40914477_
                               _hd40924481_
                               _tl40934484_
                               ___splice3651036511_
                               _target41564207_
                               _tl41584210_)
                              (_g40794170_))))
                      (_g40794170_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl40934484_)
                                                  (___kont3650436505_
                                                   _tl40904474_
                                                   _hd40924481_
                                                   _hd40824556_)
                                                  (if (gx#stx-pair?
                                                       _tl40934484_)
                                                      (let ((_e41374308_
                                                             (gx#syntax-e
                                                              _tl40934484_)))
                                                        (let ((_tl41394315_
                                                               (##cdr _e41374308_))
                                                              (_hd41384312_
                                                               (##car _e41374308_)))
                                                          (if (gx#identifier?
                                                               _hd41384312_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core$<sugar>$<sugar:1>[1]#_g41225_|
                           _hd41384312_)
                          (if (gx#stx-pair? _tl41394315_)
                              (let ((_e41404318_ (gx#syntax-e _tl41394315_)))
                                (let ((_tl41424325_ (##cdr _e41404318_))
                                      (_hd41414322_ (##car _e41404318_)))
                                  (if (gx#stx-null? _tl41424325_)
                                      (___kont3650636507_
                                       _tl40904474_
                                       _hd41414322_
                                       _hd40924481_
                                       _hd40824556_)
                                      (if (gx#stx-pair/null? _tl40934484_)
                                          (let ((___splice3651036511_
                                                 (gx#syntax-split-splice
                                                  _tl40934484_
                                                  '0)))
                                            (let ((_tl41584210_
                                                   (##vector-ref
                                                    ___splice3651036511_
                                                    '1))
                                                  (_target41564207_
                                                   (##vector-ref
                                                    ___splice3651036511_
                                                    '0)))
                                              (if (gx#stx-null? _tl41584210_)
                                                  (___match3665436655_
                                                   _e40814552_
                                                   _hd40824556_
                                                   _tl40834559_
                                                   _e40884467_
                                                   _hd40894471_
                                                   _tl40904474_
                                                   _e40914477_
                                                   _hd40924481_
                                                   _tl40934484_
                                                   ___splice3651036511_
                                                   _target41564207_
                                                   _tl41584210_)
                                                  (_g40794170_))))
                                          (_g40794170_)))))
                              (if (gx#stx-pair/null? _tl40934484_)
                                  (let ((___splice3651036511_
                                         (gx#syntax-split-splice
                                          _tl40934484_
                                          '0)))
                                    (let ((_tl41584210_
                                           (##vector-ref
                                            ___splice3651036511_
                                            '1))
                                          (_target41564207_
                                           (##vector-ref
                                            ___splice3651036511_
                                            '0)))
                                      (if (gx#stx-null? _tl41584210_)
                                          (___match3665436655_
                                           _e40814552_
                                           _hd40824556_
                                           _tl40834559_
                                           _e40884467_
                                           _hd40894471_
                                           _tl40904474_
                                           _e40914477_
                                           _hd40924481_
                                           _tl40934484_
                                           ___splice3651036511_
                                           _target41564207_
                                           _tl41584210_)
                                          (_g40794170_))))
                                  (_g40794170_)))
                          (if (gx#stx-pair/null? _tl40934484_)
                              (let ((___splice3651036511_
                                     (gx#syntax-split-splice _tl40934484_ '0)))
                                (let ((_tl41584210_
                                       (##vector-ref ___splice3651036511_ '1))
                                      (_target41564207_
                                       (##vector-ref ___splice3651036511_ '0)))
                                  (if (gx#stx-null? _tl41584210_)
                                      (___match3665436655_
                                       _e40814552_
                                       _hd40824556_
                                       _tl40834559_
                                       _e40884467_
                                       _hd40894471_
                                       _tl40904474_
                                       _e40914477_
                                       _hd40924481_
                                       _tl40934484_
                                       ___splice3651036511_
                                       _target41564207_
                                       _tl41584210_)
                                      (_g40794170_))))
                              (_g40794170_)))
                      (if (gx#stx-pair/null? _tl40934484_)
                          (let ((___splice3651036511_
                                 (gx#syntax-split-splice _tl40934484_ '0)))
                            (let ((_tl41584210_
                                   (##vector-ref ___splice3651036511_ '1))
                                  (_target41564207_
                                   (##vector-ref ___splice3651036511_ '0)))
                              (if (gx#stx-null? _tl41584210_)
                                  (___match3665436655_
                                   _e40814552_
                                   _hd40824556_
                                   _tl40834559_
                                   _e40884467_
                                   _hd40894471_
                                   _tl40904474_
                                   _e40914477_
                                   _hd40924481_
                                   _tl40934484_
                                   ___splice3651036511_
                                   _target41564207_
                                   _tl41584210_)
                                  (_g40794170_))))
                          (_g40794170_)))))
              (if (gx#stx-pair/null? _tl40934484_)
                  (let ((___splice3651036511_
                         (gx#syntax-split-splice _tl40934484_ '0)))
                    (let ((_tl41584210_ (##vector-ref ___splice3651036511_ '1))
                          (_target41564207_
                           (##vector-ref ___splice3651036511_ '0)))
                      (if (gx#stx-null? _tl41584210_)
                          (___match3665436655_
                           _e40814552_
                           _hd40824556_
                           _tl40834559_
                           _e40884467_
                           _hd40894471_
                           _tl40904474_
                           _e40914477_
                           _hd40924481_
                           _tl40934484_
                           ___splice3651036511_
                           _target41564207_
                           _tl41584210_)
                          (_g40794170_))))
                  (_g40794170_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g40794170_))))
                              (_g40794170_)))))
                  (_g40794170_)))))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#when|
      (lambda (_$stx4572_)
        (let* ((_g45764600_
                (lambda (_g45774596_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g45774596_)))
               (_g45754685_
                (lambda (_g45774604_)
                  (if (gx#stx-pair? _g45774604_)
                      (let ((_e45804607_ (gx#syntax-e _g45774604_)))
                        (let ((_hd45814611_ (##car _e45804607_))
                              (_tl45824614_ (##cdr _e45804607_)))
                          (if (gx#stx-pair? _tl45824614_)
                              (let ((_e45834617_ (gx#syntax-e _tl45824614_)))
                                (let ((_hd45844621_ (##car _e45834617_))
                                      (_tl45854624_ (##cdr _e45834617_)))
                                  (if (gx#stx-pair/null? _tl45854624_)
                                      (let ((_g41228_
                                             (gx#syntax-split-splice
                                              _tl45854624_
                                              '0)))
                                        (begin
                                          (let ((_g41229_
                                                 (if (##values? _g41228_)
                                                     (##vector-length _g41228_)
                                                     1)))
                                            (if (not (##fx= _g41229_ 2))
                                                (error "Context expects 2 values"
                                                       _g41229_)))
                                          (let ((_target45864627_
                                                 (##vector-ref _g41228_ 0))
                                                (_tl45884630_
                                                 (##vector-ref _g41228_ 1)))
                                            (if (gx#stx-null? _tl45884630_)
                                                (letrec ((_loop45894633_
                                                          (lambda (_hd45874637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr45934640_)
                    (if (gx#stx-pair? _hd45874637_)
                        (let ((_e45904643_ (gx#syntax-e _hd45874637_)))
                          (let ((_lp-hd45914647_ (##car _e45904643_))
                                (_lp-tl45924650_ (##cdr _e45904643_)))
                            (_loop45894633_
                             _lp-tl45924650_
                             (cons _lp-hd45914647_ _expr45934640_))))
                        (let ((_expr45944653_ (reverse _expr45934640_)))
                          ((lambda (_L4657_ _L4659_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _L4659_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin)
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g46764679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g46774682_)
                        (cons _g46764679_ _g46774682_))
                      '()
                      _L4657_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '#!void '())))))
                           _expr45944653_
                           _hd45844621_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop45894633_
                                                   _target45864627_
                                                   '()))
                                                (_g45764600_ _g45774604_)))))
                                      (_g45764600_ _g45774604_))))
                              (_g45764600_ _g45774604_))))
                      (_g45764600_ _g45774604_)))))
          (_g45754685_ _$stx4572_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#unless|
      (lambda (_$stx4690_)
        (let* ((_g46944718_
                (lambda (_g46954714_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g46954714_)))
               (_g46934803_
                (lambda (_g46954722_)
                  (if (gx#stx-pair? _g46954722_)
                      (let ((_e46984725_ (gx#syntax-e _g46954722_)))
                        (let ((_hd46994729_ (##car _e46984725_))
                              (_tl47004732_ (##cdr _e46984725_)))
                          (if (gx#stx-pair? _tl47004732_)
                              (let ((_e47014735_ (gx#syntax-e _tl47004732_)))
                                (let ((_hd47024739_ (##car _e47014735_))
                                      (_tl47034742_ (##cdr _e47014735_)))
                                  (if (gx#stx-pair/null? _tl47034742_)
                                      (let ((_g41230_
                                             (gx#syntax-split-splice
                                              _tl47034742_
                                              '0)))
                                        (begin
                                          (let ((_g41231_
                                                 (if (##values? _g41230_)
                                                     (##vector-length _g41230_)
                                                     1)))
                                            (if (not (##fx= _g41231_ 2))
                                                (error "Context expects 2 values"
                                                       _g41231_)))
                                          (let ((_target47044745_
                                                 (##vector-ref _g41230_ 0))
                                                (_tl47064748_
                                                 (##vector-ref _g41230_ 1)))
                                            (if (gx#stx-null? _tl47064748_)
                                                (letrec ((_loop47074751_
                                                          (lambda (_hd47054755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr47114758_)
                    (if (gx#stx-pair? _hd47054755_)
                        (let ((_e47084761_ (gx#syntax-e _hd47054755_)))
                          (let ((_lp-hd47094765_ (##car _e47084761_))
                                (_lp-tl47104768_ (##cdr _e47084761_)))
                            (_loop47074751_
                             _lp-tl47104768_
                             (cons _lp-hd47094765_ _expr47114758_))))
                        (let ((_expr47124771_ (reverse _expr47114758_)))
                          ((lambda (_L4775_ _L4777_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _L4777_
                                         (cons '#!void
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'begin)
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g47944797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g47954800_)
                              (cons _g47944797_ _g47954800_))
                            '()
                            _L4775_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _expr47124771_
                           _hd47024739_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop47074751_
                                                   _target47044745_
                                                   '()))
                                                (_g46944718_ _g46954722_)))))
                                      (_g46944718_ _g46954722_))))
                              (_g46944718_ _g46954722_))))
                      (_g46944718_ _g46954722_)))))
          (_g46934803_ _$stx4690_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#syntax-error|
      (lambda (_stx4808_)
        (let* ((_g48114835_
                (lambda (_g48124831_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g48124831_)))
               (_g48104920_
                (lambda (_g48124839_)
                  (if (gx#stx-pair? _g48124839_)
                      (let ((_e48154842_ (gx#syntax-e _g48124839_)))
                        (let ((_hd48164846_ (##car _e48154842_))
                              (_tl48174849_ (##cdr _e48154842_)))
                          (if (gx#stx-pair? _tl48174849_)
                              (let ((_e48184852_ (gx#syntax-e _tl48174849_)))
                                (let ((_hd48194856_ (##car _e48184852_))
                                      (_tl48204859_ (##cdr _e48184852_)))
                                  (if (gx#stx-pair/null? _tl48204859_)
                                      (let ((_g41232_
                                             (gx#syntax-split-splice
                                              _tl48204859_
                                              '0)))
                                        (begin
                                          (let ((_g41233_
                                                 (if (##values? _g41232_)
                                                     (##vector-length _g41232_)
                                                     1)))
                                            (if (not (##fx= _g41233_ 2))
                                                (error "Context expects 2 values"
                                                       _g41233_)))
                                          (let ((_target48214862_
                                                 (##vector-ref _g41232_ 0))
                                                (_tl48234865_
                                                 (##vector-ref _g41232_ 1)))
                                            (if (gx#stx-null? _tl48234865_)
                                                (letrec ((_loop48244868_
                                                          (lambda (_hd48224872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _detail48284875_)
                    (if (gx#stx-pair? _hd48224872_)
                        (let ((_e48254878_ (gx#syntax-e _hd48224872_)))
                          (let ((_lp-hd48264882_ (##car _e48254878_))
                                (_lp-tl48274885_ (##cdr _e48254878_)))
                            (_loop48244868_
                             _lp-tl48274885_
                             (cons _lp-hd48264882_ _detail48284875_))))
                        (let ((_detail48294888_ (reverse _detail48284875_)))
                          ((lambda (_L4892_ _L4894_)
                             (if (gx#stx-string? _L4894_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _L4894_)
                                        _stx4808_
                                        (gx#syntax->list
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g49114914_
                                                           _g49124917_)
                                                    (cons _g49114914_
                                                          _g49124917_))
                                                  '()
                                                  _L4892_))))
                                 (_g48114835_ _g48124839_)))
                           _detail48294888_
                           _hd48194856_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop48244868_
                                                   _target48214862_
                                                   '()))
                                                (_g48114835_ _g48124839_)))))
                                      (_g48114835_ _g48124839_))))
                              (_g48114835_ _g48124839_))))
                      (_g48114835_ _g48124839_)))))
          (_g48104920_ _stx4808_))))))
