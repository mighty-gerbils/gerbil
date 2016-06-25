(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g28280_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g28281_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g28284_|
    (gx#core-quote-syntax '=>))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g28285_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g28286_|
    (gx#core-quote-syntax 'else))
  (begin
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defrules|
      (lambda (_$stx1385_)
        (let ((_g13891417_
               (lambda (_g13901413_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g13901413_))))
          (let ((_g13881518_
                 (lambda (_g13901421_)
                   (if (gx#stx-pair? _g13901421_)
                       (let ((_e13941424_ (gx#syntax-e _g13901421_)))
                         (let ((_hd13951428_ (##car _e13941424_))
                               (_tl13961431_ (##cdr _e13941424_)))
                           (if (gx#stx-pair? _tl13961431_)
                               (let ((_e13971434_ (gx#syntax-e _tl13961431_)))
                                 (let ((_hd13981438_ (##car _e13971434_))
                                       (_tl13991441_ (##cdr _e13971434_)))
                                   (if (gx#stx-pair? _tl13991441_)
                                       (let ((_e14001444_
                                              (gx#syntax-e _tl13991441_)))
                                         (let ((_hd14011448_
                                                (##car _e14001444_))
                                               (_tl14021451_
                                                (##cdr _e14001444_)))
                                           (if (gx#stx-pair/null? _tl14021451_)
                                               (if (fx>= (gx#stx-length
                                                          _tl14021451_)
                                                         '0)
                                                   (let ((_g28252_
                                                          (gx#syntax-split-splice
                                                           _tl14021451_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28253_
                                                              (values-count
                                                               _g28252_)))
                                                         (if (not (fx= _g28253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28253_)))
               (let ((_target14031454_ (values-ref _g28252_ 0))
                     (_tl14051457_ (values-ref _g28252_ 1)))
                 (if (gx#stx-null? _tl14051457_)
                     (letrec ((_loop14061460_
                               (lambda (_hd14041464_ _clauses14101467_)
                                 (if (gx#stx-pair? _hd14041464_)
                                     (let ((_e14071470_
                                            (gx#syntax-e _hd14041464_)))
                                       (let ((_lp-hd14081474_
                                              (##car _e14071470_))
                                             (_lp-tl14091477_
                                              (##cdr _e14071470_)))
                                         (_loop14061460_
                                          _lp-tl14091477_
                                          (cons _lp-hd14081474_
                                                _clauses14101467_))))
                                     (let ((_clauses14111480_
                                            (reverse _clauses14101467_)))
                                       ((lambda (_L1484_ _L1486_ _L1487_)
                                          (if (gx#identifier? _L1487_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'define-syntax)
                                                    (cons _L1487_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'syntax-rules)
                              (cons _L1486_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g15091512_ _g15101515_)
                                               (cons _g15091512_ _g15101515_))
                                             '()
                                             _L1484_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g13891417_ _g13901421_)))
                                        _clauses14111480_
                                        _hd14011448_
                                        _hd13981438_))))))
                       (_loop14061460_ _target14031454_ '()))
                     (_g13891417_ _g13901421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g13891417_ _g13901421_))
                                               (_g13891417_ _g13901421_))))
                                       (_g13891417_ _g13901421_))))
                               (_g13891417_ _g13901421_))))
                       (_g13891417_ _g13901421_)))))
            (_g13881518_ _$stx1385_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defsyntax%|
      (lambda (_$stx1523_)
        (let ((_g15281567_
               (lambda (_g15291563_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g15291563_))))
          (let ((_g15271622_
                 (lambda (_g15291571_)
                   (if (gx#stx-pair? _g15291571_)
                       (let ((_e15531574_ (gx#syntax-e _g15291571_)))
                         (let ((_hd15541578_ (##car _e15531574_))
                               (_tl15551581_ (##cdr _e15531574_)))
                           (if (gx#stx-pair? _tl15551581_)
                               (let ((_e15561584_ (gx#syntax-e _tl15551581_)))
                                 (let ((_hd15571588_ (##car _e15561584_))
                                       (_tl15581591_ (##cdr _e15561584_)))
                                   (if (gx#stx-pair? _tl15581591_)
                                       (let ((_e15591594_
                                              (gx#syntax-e _tl15581591_)))
                                         (let ((_hd15601598_
                                                (##car _e15591594_))
                                               (_tl15611601_
                                                (##cdr _e15591594_)))
                                           (if (gx#stx-null? _tl15611601_)
                                               ((lambda (_L1604_ _L1606_)
                                                  (if (gx#identifier? _L1606_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-syntax)
                                                            (cons _L1606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L1604_ '())))
              (_g15281567_ _g15291571_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd15601598_
                                                _hd15571588_)
                                               (_g15281567_ _g15291571_))))
                                       (_g15281567_ _g15291571_))))
                               (_g15281567_ _g15291571_))))
                       (_g15281567_ _g15291571_)))))
            (let ((_g15261720_
                   (lambda (_g15291626_)
                     (if (gx#stx-pair? _g15291626_)
                         (let ((_e15331629_ (gx#syntax-e _g15291626_)))
                           (let ((_hd15341633_ (##car _e15331629_))
                                 (_tl15351636_ (##cdr _e15331629_)))
                             (if (gx#stx-pair? _tl15351636_)
                                 (let ((_e15361639_
                                        (gx#syntax-e _tl15351636_)))
                                   (let ((_hd15371643_ (##car _e15361639_))
                                         (_tl15381646_ (##cdr _e15361639_)))
                                     (if (gx#stx-pair? _hd15371643_)
                                         (let ((_e15391649_
                                                (gx#syntax-e _hd15371643_)))
                                           (let ((_hd15401653_
                                                  (##car _e15391649_))
                                                 (_tl15411656_
                                                  (##cdr _e15391649_)))
                                             (if (gx#stx-pair/null?
                                                  _tl15381646_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl15381646_)
                                                           '0)
                                                     (let ((_g28254_
                                                            (gx#syntax-split-splice
                                                             _tl15381646_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28255_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28254_)))
                   (if (not (fx= _g28255_ 2))
                       (error "Context expects 2 values" _g28255_)))
                 (let ((_target15421659_ (values-ref _g28254_ 0))
                       (_tl15441662_ (values-ref _g28254_ 1)))
                   (if (gx#stx-null? _tl15441662_)
                       (letrec ((_loop15451665_
                                 (lambda (_hd15431669_ _body15491672_)
                                   (if (gx#stx-pair? _hd15431669_)
                                       (let ((_e15461675_
                                              (gx#syntax-e _hd15431669_)))
                                         (let ((_lp-hd15471679_
                                                (##car _e15461675_))
                                               (_lp-tl15481682_
                                                (##cdr _e15461675_)))
                                           (_loop15451665_
                                            _lp-tl15481682_
                                            (cons _lp-hd15471679_
                                                  _body15491672_))))
                                       (let ((_body15501685_
                                              (reverse _body15491672_)))
                                         ((lambda (_L1689_ _L1691_ _L1692_)
                                            (if (gx#identifier? _L1692_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-syntax)
                                                      (cons _L1692_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda%)
                                (cons _L1691_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g17111714_
                                                        _g17121717_)
                                                 (cons _g17111714_
                                                       _g17121717_))
                                               '()
                                               _L1689_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g15271622_ _g15291626_)))
                                          _body15501685_
                                          _tl15411656_
                                          _hd15401653_))))))
                         (_loop15451665_ _target15421659_ '()))
                       (_g15271622_ _g15291626_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g15271622_ _g15291626_))
                                                 (_g15271622_ _g15291626_))))
                                         (_g15271622_ _g15291626_))))
                                 (_g15271622_ _g15291626_))))
                         (_g15271622_ _g15291626_)))))
              (_g15261720_ _$stx1523_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defalias|
      (lambda (_$stx1725_)
        (let ((_g17291747_
               (lambda (_g17301743_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g17301743_))))
          (let ((_g17281802_
                 (lambda (_g17301751_)
                   (if (gx#stx-pair? _g17301751_)
                       (let ((_e17331754_ (gx#syntax-e _g17301751_)))
                         (let ((_hd17341758_ (##car _e17331754_))
                               (_tl17351761_ (##cdr _e17331754_)))
                           (if (gx#stx-pair? _tl17351761_)
                               (let ((_e17361764_ (gx#syntax-e _tl17351761_)))
                                 (let ((_hd17371768_ (##car _e17361764_))
                                       (_tl17381771_ (##cdr _e17361764_)))
                                   (if (gx#stx-pair? _tl17381771_)
                                       (let ((_e17391774_
                                              (gx#syntax-e _tl17381771_)))
                                         (let ((_hd17401778_
                                                (##car _e17391774_))
                                               (_tl17411781_
                                                (##cdr _e17391774_)))
                                           (if (gx#stx-null? _tl17411781_)
                                               ((lambda (_L1784_ _L1786_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'define-alias)
                                                        (cons _L1786_
                                                              (cons _L1784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd17401778_
                                                _hd17371768_)
                                               (_g17291747_ _g17301751_))))
                                       (_g17291747_ _g17301751_))))
                               (_g17291747_ _g17301751_))))
                       (_g17291747_ _g17301751_)))))
            (_g17281802_ _$stx1725_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#define|
      (lambda (_$stx1806_)
        (let ((_g18111850_
               (lambda (_g18121846_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g18121846_))))
          (let ((_g18101905_
                 (lambda (_g18121854_)
                   (if (gx#stx-pair? _g18121854_)
                       (let ((_e18361857_ (gx#syntax-e _g18121854_)))
                         (let ((_hd18371861_ (##car _e18361857_))
                               (_tl18381864_ (##cdr _e18361857_)))
                           (if (gx#stx-pair? _tl18381864_)
                               (let ((_e18391867_ (gx#syntax-e _tl18381864_)))
                                 (let ((_hd18401871_ (##car _e18391867_))
                                       (_tl18411874_ (##cdr _e18391867_)))
                                   (if (gx#stx-pair? _tl18411874_)
                                       (let ((_e18421877_
                                              (gx#syntax-e _tl18411874_)))
                                         (let ((_hd18431881_
                                                (##car _e18421877_))
                                               (_tl18441884_
                                                (##cdr _e18421877_)))
                                           (if (gx#stx-null? _tl18441884_)
                                               ((lambda (_L1887_ _L1889_)
                                                  (if (gx#identifier? _L1889_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons (cons _L1889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _L1887_ '())))
              (_g18111850_ _g18121854_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd18431881_
                                                _hd18401871_)
                                               (_g18111850_ _g18121854_))))
                                       (_g18111850_ _g18121854_))))
                               (_g18111850_ _g18121854_))))
                       (_g18111850_ _g18121854_)))))
            (let ((_g18092003_
                   (lambda (_g18121909_)
                     (if (gx#stx-pair? _g18121909_)
                         (let ((_e18161912_ (gx#syntax-e _g18121909_)))
                           (let ((_hd18171916_ (##car _e18161912_))
                                 (_tl18181919_ (##cdr _e18161912_)))
                             (if (gx#stx-pair? _tl18181919_)
                                 (let ((_e18191922_
                                        (gx#syntax-e _tl18181919_)))
                                   (let ((_hd18201926_ (##car _e18191922_))
                                         (_tl18211929_ (##cdr _e18191922_)))
                                     (if (gx#stx-pair? _hd18201926_)
                                         (let ((_e18221932_
                                                (gx#syntax-e _hd18201926_)))
                                           (let ((_hd18231936_
                                                  (##car _e18221932_))
                                                 (_tl18241939_
                                                  (##cdr _e18221932_)))
                                             (if (gx#stx-pair/null?
                                                  _tl18211929_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl18211929_)
                                                           '0)
                                                     (let ((_g28256_
                                                            (gx#syntax-split-splice
                                                             _tl18211929_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28257_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28256_)))
                   (if (not (fx= _g28257_ 2))
                       (error "Context expects 2 values" _g28257_)))
                 (let ((_target18251942_ (values-ref _g28256_ 0))
                       (_tl18271945_ (values-ref _g28256_ 1)))
                   (if (gx#stx-null? _tl18271945_)
                       (letrec ((_loop18281948_
                                 (lambda (_hd18261952_ _body18321955_)
                                   (if (gx#stx-pair? _hd18261952_)
                                       (let ((_e18291958_
                                              (gx#syntax-e _hd18261952_)))
                                         (let ((_lp-hd18301962_
                                                (##car _e18291958_))
                                               (_lp-tl18311965_
                                                (##cdr _e18291958_)))
                                           (_loop18281948_
                                            _lp-tl18311965_
                                            (cons _lp-hd18301962_
                                                  _body18321955_))))
                                       (let ((_body18331968_
                                              (reverse _body18321955_)))
                                         ((lambda (_L1972_ _L1974_ _L1975_)
                                            (if (gx#identifier? _L1975_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-values)
                                                      (cons (cons _L1975_ '())
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda%)
                                (cons _L1974_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g19941997_
                                                        _g19952000_)
                                                 (cons _g19941997_
                                                       _g19952000_))
                                               '()
                                               _L1972_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g18101905_ _g18121909_)))
                                          _body18331968_
                                          _tl18241939_
                                          _hd18231936_))))))
                         (_loop18281948_ _target18251942_ '()))
                       (_g18101905_ _g18121909_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g18101905_ _g18121909_))
                                                 (_g18101905_ _g18121909_))))
                                         (_g18101905_ _g18121909_))))
                                 (_g18101905_ _g18121909_))))
                         (_g18101905_ _g18121909_)))))
              (_g18092003_ _$stx1806_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let*-values|
      (lambda (_$stx2008_)
        (let ((_g20132058_
               (lambda (_g20142054_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g20142054_))))
          (let ((_g20122159_
                 (lambda (_g20142062_)
                   (if (gx#stx-pair? _g20142062_)
                       (let ((_e20352065_ (gx#syntax-e _g20142062_)))
                         (let ((_hd20362069_ (##car _e20352065_))
                               (_tl20372072_ (##cdr _e20352065_)))
                           (if (gx#stx-pair? _tl20372072_)
                               (let ((_e20382075_ (gx#syntax-e _tl20372072_)))
                                 (let ((_hd20392079_ (##car _e20382075_))
                                       (_tl20402082_ (##cdr _e20382075_)))
                                   (if (gx#stx-pair? _hd20392079_)
                                       (let ((_e20412085_
                                              (gx#syntax-e _hd20392079_)))
                                         (let ((_hd20422089_
                                                (##car _e20412085_))
                                               (_tl20432092_
                                                (##cdr _e20412085_)))
                                           (if (gx#stx-pair/null? _tl20402082_)
                                               (if (fx>= (gx#stx-length
                                                          _tl20402082_)
                                                         '0)
                                                   (let ((_g28258_
                                                          (gx#syntax-split-splice
                                                           _tl20402082_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28259_
                                                              (values-count
                                                               _g28258_)))
                                                         (if (not (fx= _g28259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28259_)))
               (let ((_target20442095_ (values-ref _g28258_ 0))
                     (_tl20462098_ (values-ref _g28258_ 1)))
                 (if (gx#stx-null? _tl20462098_)
                     (letrec ((_loop20472101_
                               (lambda (_hd20452105_ _body20512108_)
                                 (if (gx#stx-pair? _hd20452105_)
                                     (let ((_e20482111_
                                            (gx#syntax-e _hd20452105_)))
                                       (let ((_lp-hd20492115_
                                              (##car _e20482111_))
                                             (_lp-tl20502118_
                                              (##cdr _e20482111_)))
                                         (_loop20472101_
                                          _lp-tl20502118_
                                          (cons _lp-hd20492115_
                                                _body20512108_))))
                                     (let ((_body20522121_
                                            (reverse _body20512108_)))
                                       ((lambda (_L2125_
                                                 _L2127_
                                                 _L2128_
                                                 _L2129_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons _L2128_ '())
                                                      (cons (cons _L2129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L2127_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g21502153_ _g21512156_)
                                           (cons _g21502153_ _g21512156_))
                                         '()
                                         _L2125_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body20522121_
                                        _tl20432092_
                                        _hd20422089_
                                        _hd20362069_))))))
                       (_loop20472101_ _target20442095_ '()))
                     (_g20132058_ _g20142062_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g20132058_ _g20142062_))
                                               (_g20132058_ _g20142062_))))
                                       (_g20132058_ _g20142062_))))
                               (_g20132058_ _g20142062_))))
                       (_g20132058_ _g20142062_)))))
            (let ((_g20112241_
                   (lambda (_g20142163_)
                     (if (gx#stx-pair? _g20142163_)
                         (let ((_e20162166_ (gx#syntax-e _g20142163_)))
                           (let ((_hd20172170_ (##car _e20162166_))
                                 (_tl20182173_ (##cdr _e20162166_)))
                             (if (gx#stx-pair? _tl20182173_)
                                 (let ((_e20192176_
                                        (gx#syntax-e _tl20182173_)))
                                   (let ((_hd20202180_ (##car _e20192176_))
                                         (_tl20212183_ (##cdr _e20192176_)))
                                     (if (gx#stx-null? _hd20202180_)
                                         (if (gx#stx-pair/null? _tl20212183_)
                                             (if (fx>= (gx#stx-length
                                                        _tl20212183_)
                                                       '0)
                                                 (let ((_g28260_
                                                        (gx#syntax-split-splice
                                                         _tl20212183_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28261_
                                                            (values-count
                                                             _g28260_)))
                                                       (if (not (fx= _g28261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28261_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target20222186_
                                                            (values-ref
                                                             _g28260_
                                                             0))
                                                           (_tl20242189_
                                                            (values-ref
                                                             _g28260_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl20242189_)
                                                           (letrec ((_loop20252192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd20232196_ _body20292199_)
                               (if (gx#stx-pair? _hd20232196_)
                                   (let ((_e20262202_
                                          (gx#syntax-e _hd20232196_)))
                                     (let ((_lp-hd20272206_
                                            (##car _e20262202_))
                                           (_lp-tl20282209_
                                            (##cdr _e20262202_)))
                                       (_loop20252192_
                                        _lp-tl20282209_
                                        (cons _lp-hd20272206_
                                              _body20292199_))))
                                   (let ((_body20302212_
                                          (reverse _body20292199_)))
                                     ((lambda (_L2216_)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons '()
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g22322235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g22332238_)
                       (cons _g22322235_ _g22332238_))
                     '()
                     _L2216_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body20302212_))))))
                     (_loop20252192_ _target20222186_ '()))
                   (_g20122159_ _g20142163_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g20122159_ _g20142163_))
                                             (_g20122159_ _g20142163_))
                                         (_g20122159_ _g20142163_))))
                                 (_g20122159_ _g20142163_))))
                         (_g20122159_ _g20142163_)))))
              (_g20112241_ _$stx2008_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let|
      (lambda (_$stx2247_)
        (let ((_g22522316_
               (lambda (_g22532312_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g22532312_))))
          (let ((_g22512401_
                 (lambda (_g22532320_)
                   (if (gx#stx-pair? _g22532320_)
                       (let ((_e22962323_ (gx#syntax-e _g22532320_)))
                         (let ((_hd22972327_ (##car _e22962323_))
                               (_tl22982330_ (##cdr _e22962323_)))
                           (if (gx#stx-pair? _tl22982330_)
                               (let ((_e22992333_ (gx#syntax-e _tl22982330_)))
                                 (let ((_hd23002337_ (##car _e22992333_))
                                       (_tl23012340_ (##cdr _e22992333_)))
                                   (if (gx#stx-pair/null? _tl23012340_)
                                       (if (fx>= (gx#stx-length _tl23012340_)
                                                 '0)
                                           (let ((_g28262_
                                                  (gx#syntax-split-splice
                                                   _tl23012340_
                                                   '0)))
                                             (begin
                                               (let ((_g28263_
                                                      (values-count _g28262_)))
                                                 (if (not (fx= _g28263_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28263_)))
                                               (let ((_target23022343_
                                                      (values-ref _g28262_ 0))
                                                     (_tl23042346_
                                                      (values-ref _g28262_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl23042346_)
                                                     (letrec ((_loop23052349_
                                                               (lambda (_hd23032353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body23092356_)
                         (if (gx#stx-pair? _hd23032353_)
                             (let ((_e23062359_ (gx#syntax-e _hd23032353_)))
                               (let ((_lp-hd23072363_ (##car _e23062359_))
                                     (_lp-tl23082366_ (##cdr _e23062359_)))
                                 (_loop23052349_
                                  _lp-tl23082366_
                                  (cons _lp-hd23072363_ _body23092356_))))
                             (let ((_body23102369_ (reverse _body23092356_)))
                               ((lambda (_L2373_ _L2375_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons _L2375_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g23922395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g23932398_)
                       (cons _g23922395_ _g23932398_))
                     '()
                     _L2373_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body23102369_
                                _hd23002337_))))))
               (_loop23052349_ _target23022343_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g22522316_
                                                      _g22532320_)))))
                                           (_g22522316_ _g22532320_))
                                       (_g22522316_ _g22532320_))))
                               (_g22522316_ _g22532320_))))
                       (_g22522316_ _g22532320_)))))
            (let ((_g22502577_
                   (lambda (_g22532405_)
                     (if (gx#stx-pair? _g22532405_)
                         (let ((_e22592408_ (gx#syntax-e _g22532405_)))
                           (let ((_hd22602412_ (##car _e22592408_))
                                 (_tl22612415_ (##cdr _e22592408_)))
                             (if (gx#stx-pair? _tl22612415_)
                                 (let ((_e22622418_
                                        (gx#syntax-e _tl22612415_)))
                                   (let ((_hd22632422_ (##car _e22622418_))
                                         (_tl22642425_ (##cdr _e22622418_)))
                                     (if (gx#stx-pair? _tl22642425_)
                                         (let ((_e22652428_
                                                (gx#syntax-e _tl22642425_)))
                                           (let ((_hd22662432_
                                                  (##car _e22652428_))
                                                 (_tl22672435_
                                                  (##cdr _e22652428_)))
                                             (if (gx#stx-pair/null?
                                                  _hd22662432_)
                                                 (if (fx>= (gx#stx-length
                                                            _hd22662432_)
                                                           '0)
                                                     (let ((_g28264_
                                                            (gx#syntax-split-splice
                                                             _hd22662432_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28265_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28264_)))
                   (if (not (fx= _g28265_ 2))
                       (error "Context expects 2 values" _g28265_)))
                 (let ((_target22682438_ (values-ref _g28264_ 0))
                       (_tl22702441_ (values-ref _g28264_ 1)))
                   (letrec ((_loop22712444_
                             (lambda (_hd22692448_ _arg22752451_ _var22762453_)
                               (if (gx#stx-pair? _hd22692448_)
                                   (let ((_e22722456_
                                          (gx#syntax-e _hd22692448_)))
                                     (let ((_lp-hd22732460_
                                            (##car _e22722456_))
                                           (_lp-tl22742463_
                                            (##cdr _e22722456_)))
                                       (if (gx#stx-pair? _lp-hd22732460_)
                                           (let ((_e22792466_
                                                  (gx#syntax-e
                                                   _lp-hd22732460_)))
                                             (let ((_hd22802470_
                                                    (##car _e22792466_))
                                                   (_tl22812473_
                                                    (##cdr _e22792466_)))
                                               (if (gx#stx-pair? _tl22812473_)
                                                   (let ((_e22822476_
                                                          (gx#syntax-e
                                                           _tl22812473_)))
                                                     (let ((_hd22832480_
                                                            (##car _e22822476_))
                                                           (_tl22842483_
                                                            (##cdr _e22822476_)))
                                                       (if (gx#stx-null?
                                                            _tl22842483_)
                                                           (_loop22712444_
                                                            _lp-tl22742463_
                                                            (cons _hd22832480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg22752451_)
                    (cons _hd22802470_ _var22762453_))
                   (_g22512401_ _g22532405_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g22512401_ _g22532405_))))
                                           (_g22512401_ _g22532405_))))
                                   (let ((_arg22772486_
                                          (reverse _arg22752451_))
                                         (_var22782489_
                                          (reverse _var22762453_)))
                                     (if (gx#stx-pair/null? _tl22672435_)
                                         (if (fx>= (gx#stx-length _tl22672435_)
                                                   '0)
                                             (let ((_g28266_
                                                    (gx#syntax-split-splice
                                                     _tl22672435_
                                                     '0)))
                                               (begin
                                                 (let ((_g28267_
                                                        (values-count
                                                         _g28266_)))
                                                   (if (not (fx= _g28267_ 2))
                                                       (error "Context expects 2 values"
                                                              _g28267_)))
                                                 (let ((_target22852492_
                                                        (values-ref
                                                         _g28266_
                                                         0))
                                                       (_tl22872495_
                                                        (values-ref
                                                         _g28266_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl22872495_)
                                                       (letrec ((_loop22882498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd22862502_ _body22922505_)
                           (if (gx#stx-pair? _hd22862502_)
                               (let ((_e22892508_ (gx#syntax-e _hd22862502_)))
                                 (let ((_lp-hd22902512_ (##car _e22892508_))
                                       (_lp-tl22912515_ (##cdr _e22892508_)))
                                   (_loop22882498_
                                    _lp-tl22912515_
                                    (cons _lp-hd22902512_ _body22922505_))))
                               (let ((_body22932518_ (reverse _body22922505_)))
                                 ((lambda (_L2522_
                                           _L2524_
                                           _L2525_
                                           _L2526_
                                           _L2527_)
                                    (if (gx#identifier? _L2527_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'letrec-values)
                                                    (cons (cons (cons (cons _L2527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons (cons (gx#datum->syntax '#f 'lambda%)
                                          (cons (begin
                                                  '#!void
                                                  (foldr (lambda (_g25522559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g25532562_)
                   (cons _g25522559_ _g25532562_))
                 _L2524_
                 _L2526_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g25542565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g25552568_)
                   (cons _g25542565_ _g25552568_))
                 '()
                 _L2522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())
                  (cons _L2527_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g25562571_
                                                                _g25572574_)
                                                         (cons _g25562571_
                                                               _g25572574_))
                                                       '()
                                                       _L2525_)))
                                        (_g22512401_ _g22532405_)))
                                  _body22932518_
                                  _tl22702441_
                                  _arg22772486_
                                  _var22782489_
                                  _hd22632422_))))))
                 (_loop22882498_ _target22852492_ '()))
               (_g22512401_ _g22532405_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g22512401_ _g22532405_))
                                         (_g22512401_ _g22532405_)))))))
                     (_loop22712444_ _target22682438_ '() '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g22512401_ _g22532405_))
                                                 (_g22512401_ _g22532405_))))
                                         (_g22512401_ _g22532405_))))
                                 (_g22512401_ _g22532405_))))
                         (_g22512401_ _g22532405_)))))
              (_g22502577_ _$stx2247_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let*|
      (lambda (_$stx2584_)
        (let ((_g25882612_
               (lambda (_g25892608_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g25892608_))))
          (let ((_g25872697_
                 (lambda (_g25892616_)
                   (if (gx#stx-pair? _g25892616_)
                       (let ((_e25922619_ (gx#syntax-e _g25892616_)))
                         (let ((_hd25932623_ (##car _e25922619_))
                               (_tl25942626_ (##cdr _e25922619_)))
                           (if (gx#stx-pair? _tl25942626_)
                               (let ((_e25952629_ (gx#syntax-e _tl25942626_)))
                                 (let ((_hd25962633_ (##car _e25952629_))
                                       (_tl25972636_ (##cdr _e25952629_)))
                                   (if (gx#stx-pair/null? _tl25972636_)
                                       (if (fx>= (gx#stx-length _tl25972636_)
                                                 '0)
                                           (let ((_g28268_
                                                  (gx#syntax-split-splice
                                                   _tl25972636_
                                                   '0)))
                                             (begin
                                               (let ((_g28269_
                                                      (values-count _g28268_)))
                                                 (if (not (fx= _g28269_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28269_)))
                                               (let ((_target25982639_
                                                      (values-ref _g28268_ 0))
                                                     (_tl26002642_
                                                      (values-ref _g28268_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl26002642_)
                                                     (letrec ((_loop26012645_
                                                               (lambda (_hd25992649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body26052652_)
                         (if (gx#stx-pair? _hd25992649_)
                             (let ((_e26022655_ (gx#syntax-e _hd25992649_)))
                               (let ((_lp-hd26032659_ (##car _e26022655_))
                                     (_lp-tl26042662_ (##cdr _e26022655_)))
                                 (_loop26012645_
                                  _lp-tl26042662_
                                  (cons _lp-hd26032659_ _body26052652_))))
                             (let ((_body26062665_ (reverse _body26052652_)))
                               ((lambda (_L2669_ _L2671_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let*-values)
                                              (cons _L2671_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g26882691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g26892694_)
                       (cons _g26882691_ _g26892694_))
                     '()
                     _L2669_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body26062665_
                                _hd25962633_))))))
               (_loop26012645_ _target25982639_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g25882612_
                                                      _g25892616_)))))
                                           (_g25882612_ _g25892616_))
                                       (_g25882612_ _g25892616_))))
                               (_g25882612_ _g25892616_))))
                       (_g25882612_ _g25892616_)))))
            (_g25872697_ _$stx2584_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#letrec|
      (lambda (_$stx2702_)
        (let ((_g27062730_
               (lambda (_g27072726_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g27072726_))))
          (let ((_g27052815_
                 (lambda (_g27072734_)
                   (if (gx#stx-pair? _g27072734_)
                       (let ((_e27102737_ (gx#syntax-e _g27072734_)))
                         (let ((_hd27112741_ (##car _e27102737_))
                               (_tl27122744_ (##cdr _e27102737_)))
                           (if (gx#stx-pair? _tl27122744_)
                               (let ((_e27132747_ (gx#syntax-e _tl27122744_)))
                                 (let ((_hd27142751_ (##car _e27132747_))
                                       (_tl27152754_ (##cdr _e27132747_)))
                                   (if (gx#stx-pair/null? _tl27152754_)
                                       (if (fx>= (gx#stx-length _tl27152754_)
                                                 '0)
                                           (let ((_g28270_
                                                  (gx#syntax-split-splice
                                                   _tl27152754_
                                                   '0)))
                                             (begin
                                               (let ((_g28271_
                                                      (values-count _g28270_)))
                                                 (if (not (fx= _g28271_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28271_)))
                                               (let ((_target27162757_
                                                      (values-ref _g28270_ 0))
                                                     (_tl27182760_
                                                      (values-ref _g28270_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl27182760_)
                                                     (letrec ((_loop27192763_
                                                               (lambda (_hd27172767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body27232770_)
                         (if (gx#stx-pair? _hd27172767_)
                             (let ((_e27202773_ (gx#syntax-e _hd27172767_)))
                               (let ((_lp-hd27212777_ (##car _e27202773_))
                                     (_lp-tl27222780_ (##cdr _e27202773_)))
                                 (_loop27192763_
                                  _lp-tl27222780_
                                  (cons _lp-hd27212777_ _body27232770_))))
                             (let ((_body27242783_ (reverse _body27232770_)))
                               ((lambda (_L2787_ _L2789_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'letrec-values)
                                              (cons _L2789_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g28062809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g28072812_)
                       (cons _g28062809_ _g28072812_))
                     '()
                     _L2787_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body27242783_
                                _hd27142751_))))))
               (_loop27192763_ _target27162757_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g27062730_
                                                      _g27072734_)))))
                                           (_g27062730_ _g27072734_))
                                       (_g27062730_ _g27072734_))))
                               (_g27062730_ _g27072734_))))
                       (_g27062730_ _g27072734_)))))
            (_g27052815_ _$stx2702_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#letrec*|
      (lambda (_$stx2820_)
        (let ((_g28242848_
               (lambda (_g28252844_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g28252844_))))
          (let ((_g28232933_
                 (lambda (_g28252852_)
                   (if (gx#stx-pair? _g28252852_)
                       (let ((_e28282855_ (gx#syntax-e _g28252852_)))
                         (let ((_hd28292859_ (##car _e28282855_))
                               (_tl28302862_ (##cdr _e28282855_)))
                           (if (gx#stx-pair? _tl28302862_)
                               (let ((_e28312865_ (gx#syntax-e _tl28302862_)))
                                 (let ((_hd28322869_ (##car _e28312865_))
                                       (_tl28332872_ (##cdr _e28312865_)))
                                   (if (gx#stx-pair/null? _tl28332872_)
                                       (if (fx>= (gx#stx-length _tl28332872_)
                                                 '0)
                                           (let ((_g28272_
                                                  (gx#syntax-split-splice
                                                   _tl28332872_
                                                   '0)))
                                             (begin
                                               (let ((_g28273_
                                                      (values-count _g28272_)))
                                                 (if (not (fx= _g28273_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28273_)))
                                               (let ((_target28342875_
                                                      (values-ref _g28272_ 0))
                                                     (_tl28362878_
                                                      (values-ref _g28272_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl28362878_)
                                                     (letrec ((_loop28372881_
                                                               (lambda (_hd28352885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body28412888_)
                         (if (gx#stx-pair? _hd28352885_)
                             (let ((_e28382891_ (gx#syntax-e _hd28352885_)))
                               (let ((_lp-hd28392895_ (##car _e28382891_))
                                     (_lp-tl28402898_ (##cdr _e28382891_)))
                                 (_loop28372881_
                                  _lp-tl28402898_
                                  (cons _lp-hd28392895_ _body28412888_))))
                             (let ((_body28422901_ (reverse _body28412888_)))
                               ((lambda (_L2905_ _L2907_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'letrec*-values)
                                              (cons _L2907_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g29242927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g29252930_)
                       (cons _g29242927_ _g29252930_))
                     '()
                     _L2905_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body28422901_
                                _hd28322869_))))))
               (_loop28372881_ _target28342875_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g28242848_
                                                      _g28252852_)))))
                                           (_g28242848_ _g28252852_))
                                       (_g28242848_ _g28252852_))))
                               (_g28242848_ _g28252852_))))
                       (_g28242848_ _g28252852_)))))
            (_g28232933_ _$stx2820_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#~let|
      (lambda (_stx2938_)
        (let ((_let-head?2941_
               (lambda (_x3421_)
                 (let ((_g34253436_
                        (lambda (_g34263432_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g34263432_))))
                   (let ((_g34243447_
                          (lambda (_g34263440_)
                            ((lambda () (gx#identifier? _x3421_))))))
                     (let ((_g34233477_
                            (lambda (_g34263451_)
                              (if (gx#stx-pair? _g34263451_)
                                  (let ((_e34283454_
                                         (gx#syntax-e _g34263451_)))
                                    (let ((_hd34293458_ (##car _e34283454_))
                                          (_tl34303461_ (##cdr _e34283454_)))
                                      (if (gx#identifier? _hd34293458_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:1>[1]#_g28281_|
                                               _hd34293458_)
                                              ((lambda (_L3464_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L3464_))
                                               _tl34303461_)
                                              (_g34243447_ _g34263451_))
                                          (_g34243447_ _g34263451_))))
                                  (_g34243447_ _g34263451_)))))
                       (_g34233477_ _x3421_)))))))
          (let ((_let-head2943_
                 (lambda (_x3361_)
                   (let ((_g33653376_
                          (lambda (_g33663372_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g33663372_))))
                     (let ((_g33643387_
                            (lambda (_g33663380_)
                              ((lambda () (list _x3361_))))))
                       (let ((_g33633417_
                              (lambda (_g33663391_)
                                (if (gx#stx-pair? _g33663391_)
                                    (let ((_e33683394_
                                           (gx#syntax-e _g33663391_)))
                                      (let ((_hd33693398_ (##car _e33683394_))
                                            (_tl33703401_ (##cdr _e33683394_)))
                                        (if (gx#identifier? _hd33693398_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<sugar>::<sugar:1>[1]#_g28280_|
                                                 _hd33693398_)
                                                ((lambda (_L3404_) _L3404_)
                                                 _tl33703401_)
                                                (_g33643387_ _g33663391_))
                                            (_g33643387_ _g33663391_))))
                                    (_g33643387_ _g33663391_)))))
                         (_g33633417_ _x3361_)))))))
            (let ((_g29463012_
                   (lambda (_g29473008_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g29473008_))))
              (let ((_g29453273_
                     (lambda (_g29473016_)
                       (if (gx#stx-pair? _g29473016_)
                           (let ((_e29723019_ (gx#syntax-e _g29473016_)))
                             (let ((_hd29733023_ (##car _e29723019_))
                                   (_tl29743026_ (##cdr _e29723019_)))
                               (if (gx#stx-pair? _tl29743026_)
                                   (let ((_e29753029_
                                          (gx#syntax-e _tl29743026_)))
                                     (let ((_hd29763033_ (##car _e29753029_))
                                           (_tl29773036_ (##cdr _e29753029_)))
                                       (if (gx#stx-pair? _tl29773036_)
                                           (let ((_e29783039_
                                                  (gx#syntax-e _tl29773036_)))
                                             (let ((_hd29793043_
                                                    (##car _e29783039_))
                                                   (_tl29803046_
                                                    (##cdr _e29783039_)))
                                               (if (gx#stx-pair/null?
                                                    _hd29793043_)
                                                   (if (fx>= (gx#stx-length
                                                              _hd29793043_)
                                                             '0)
                                                       (let ((_g28274_
                                                              (gx#syntax-split-splice
                                                               _hd29793043_
                                                               '0)))
                                                         (begin
                                                           (let ((_g28275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g28274_)))
                     (if (not (fx= _g28275_ 2))
                         (error "Context expects 2 values" _g28275_)))
                   (let ((_target29813049_ (values-ref _g28274_ 0))
                         (_tl29833052_ (values-ref _g28274_ 1)))
                     (if (gx#stx-null? _tl29833052_)
                         (letrec ((_loop29843055_
                                   (lambda (_hd29823059_
                                            _e29883062_
                                            _hd29893064_)
                                     (if (gx#stx-pair? _hd29823059_)
                                         (let ((_e29853067_
                                                (gx#syntax-e _hd29823059_)))
                                           (let ((_lp-hd29863071_
                                                  (##car _e29853067_))
                                                 (_lp-tl29873074_
                                                  (##cdr _e29853067_)))
                                             (if (gx#stx-pair? _lp-hd29863071_)
                                                 (let ((_e29923077_
                                                        (gx#syntax-e
                                                         _lp-hd29863071_)))
                                                   (let ((_hd29933081_
                                                          (##car _e29923077_))
                                                         (_tl29943084_
                                                          (##cdr _e29923077_)))
                                                     (if (gx#stx-pair?
                                                          _tl29943084_)
                                                         (let ((_e29953087_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl29943084_)))
                   (let ((_hd29963091_ (##car _e29953087_))
                         (_tl29973094_ (##cdr _e29953087_)))
                     (if (gx#stx-null? _tl29973094_)
                         (_loop29843055_
                          _lp-tl29873074_
                          (cons _hd29963091_ _e29883062_)
                          (cons _hd29933081_ _hd29893064_))
                         (_g29463012_ _g29473016_))))
                 (_g29463012_ _g29473016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g29463012_ _g29473016_))))
                                         (let ((_e29903097_
                                                (reverse _e29883062_))
                                               (_hd29913100_
                                                (reverse _hd29893064_)))
                                           (if (gx#stx-pair/null? _tl29803046_)
                                               (if (fx>= (gx#stx-length
                                                          _tl29803046_)
                                                         '0)
                                                   (let ((_g28276_
                                                          (gx#syntax-split-splice
                                                           _tl29803046_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28277_
                                                              (values-count
                                                               _g28276_)))
                                                         (if (not (fx= _g28277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28277_)))
               (let ((_target29983103_ (values-ref _g28276_ 0))
                     (_tl30003106_ (values-ref _g28276_ 1)))
                 (if (gx#stx-null? _tl30003106_)
                     (letrec ((_loop30013109_
                               (lambda (_hd29993113_ _body30053116_)
                                 (if (gx#stx-pair? _hd29993113_)
                                     (let ((_e30023119_
                                            (gx#syntax-e _hd29993113_)))
                                       (let ((_lp-hd30033123_
                                              (##car _e30023119_))
                                             (_lp-tl30043126_
                                              (##cdr _e30023119_)))
                                         (_loop30013109_
                                          _lp-tl30043126_
                                          (cons _lp-hd30033123_
                                                _body30053116_))))
                                     (let ((_body30063129_
                                            (reverse _body30053116_)))
                                       ((lambda (_L3133_
                                                 _L3135_
                                                 _L3136_
                                                 _L3137_)
                                          (if (gx#stx-andmap
                                               _let-head?2941_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g31633166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g31643169_)
                  (cons _g31633166_ _g31643169_))
                '()
                _L3136_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g31723189_
                                                     (lambda (_g31733185_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g31733185_))))
                                                (let ((_g31713261_
                                                       (lambda (_g31733193_)
                                                         (if (gx#stx-pair/null?
                                                              _g31733193_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g31733193_)
                               '0)
                         (let ((_g28278_
                                (gx#syntax-split-splice _g31733193_ '0)))
                           (begin
                             (let ((_g28279_ (values-count _g28278_)))
                               (if (not (fx= _g28279_ 2))
                                   (error "Context expects 2 values"
                                          _g28279_)))
                             (let ((_target31753196_ (values-ref _g28278_ 0))
                                   (_tl31773199_ (values-ref _g28278_ 1)))
                               (if (gx#stx-null? _tl31773199_)
                                   (letrec ((_loop31783202_
                                             (lambda (_hd31763206_
                                                      _hd-bind31823209_)
                                               (if (gx#stx-pair? _hd31763206_)
                                                   (let ((_e31793212_
                                                          (gx#syntax-e
                                                           _hd31763206_)))
                                                     (let ((_lp-hd31803216_
                                                            (##car _e31793212_))
                                                           (_lp-tl31813219_
                                                            (##cdr _e31793212_)))
                                                       (_loop31783202_
                                                        _lp-tl31813219_
                                                        (cons _lp-hd31803216_
                                                              _hd-bind31823209_))))
                                                   (let ((_hd-bind31833222_
                                                          (reverse _hd-bind31823209_)))
                                                     ((lambda (_L3226_)
                                                        (let ()
                                                          (cons _L3137_
                                                                (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#syntax-check-splice-targets
                                 _L3135_
                                 _L3226_)
                                (foldr (lambda (_g32413247_
                                                _g32423250_
                                                _g32433252_)
                                         (cons (cons _g32423250_
                                                     (cons _g32413247_ '()))
                                               _g32433252_))
                                       '()
                                       _L3135_
                                       _L3226_))
                              (begin
                                '#!void
                                (foldr (lambda (_g32443255_ _g32453258_)
                                         (cons _g32443255_ _g32453258_))
                                       '()
                                       _L3133_))))))
              _hd-bind31833222_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop31783202_ _target31753196_ '()))
                                   (_g31723189_ _g31733193_)))))
                         (_g31723189_ _g31733193_))
                     (_g31723189_ _g31733193_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g31713261_
                                                   (gx#stx-map
                                                    _let-head2943_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g32643267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g32653270_)
                       (cons _g32643267_ _g32653270_))
                     '()
                     _L3136_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g29463012_ _g29473016_)))
                                        _body30063129_
                                        _e29903097_
                                        _hd29913100_
                                        _hd29763033_))))))
                       (_loop30013109_ _target29983103_ '()))
                     (_g29463012_ _g29473016_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g29463012_ _g29473016_))
                                               (_g29463012_ _g29473016_)))))))
                           (_loop29843055_ _target29813049_ '() '()))
                         (_g29463012_ _g29473016_)))))
               (_g29463012_ _g29473016_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g29463012_ _g29473016_))))
                                           (_g29463012_ _g29473016_))))
                                   (_g29463012_ _g29473016_))))
                           (_g29463012_ _g29473016_)))))
                (let ((_g29443357_
                       (lambda (_g29473277_)
                         (if (gx#stx-pair? _g29473277_)
                             (let ((_e29533280_ (gx#syntax-e _g29473277_)))
                               (let ((_hd29543284_ (##car _e29533280_))
                                     (_tl29553287_ (##cdr _e29533280_)))
                                 (if (gx#stx-pair? _tl29553287_)
                                     (let ((_e29563290_
                                            (gx#syntax-e _tl29553287_)))
                                       (let ((_hd29573294_ (##car _e29563290_))
                                             (_tl29583297_
                                              (##cdr _e29563290_)))
                                         (if (gx#stx-pair? _tl29583297_)
                                             (let ((_e29593300_
                                                    (gx#syntax-e
                                                     _tl29583297_)))
                                               (let ((_hd29603304_
                                                      (##car _e29593300_))
                                                     (_tl29613307_
                                                      (##cdr _e29593300_)))
                                                 (if (gx#stx-pair?
                                                      _hd29603304_)
                                                     (let ((_e29623310_
                                                            (gx#syntax-e
                                                             _hd29603304_)))
                                                       (let ((_hd29633314_
                                                              (##car _e29623310_))
                                                             (_tl29643317_
                                                              (##cdr _e29623310_)))
                                                         (if (gx#stx-pair?
                                                              _tl29643317_)
                                                             (let ((_e29653320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl29643317_)))
                       (let ((_hd29663324_ (##car _e29653320_))
                             (_tl29673327_ (##cdr _e29653320_)))
                         (if (gx#stx-null? _tl29673327_)
                             ((lambda (_L3330_ _L3332_ _L3333_ _L3334_ _L3335_)
                                (if (_let-head?2941_ _L3333_)
                                    (cons _L3335_
                                          (cons _L3334_
                                                (cons (cons (cons _L3333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L3332_ '()))
                    '())
              _L3330_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_g29453273_ _g29473277_)))
                              _tl29613307_
                              _hd29663324_
                              _hd29633314_
                              _hd29573294_
                              _hd29543284_)
                             (_g29453273_ _g29473277_))))
                     (_g29453273_ _g29473277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g29453273_
                                                      _g29473277_))))
                                             (_g29453273_ _g29473277_))))
                                     (_g29453273_ _g29473277_))))
                             (_g29453273_ _g29473277_)))))
                  (_g29443357_ _stx2938_))))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#and|
      (lambda (_$stx3484_)
        (let ((_g34903516_
               (lambda (_g34913512_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g34913512_))))
          (let ((_g34893561_
                 (lambda (_g34913520_)
                   (if (gx#stx-pair? _g34913520_)
                       (let ((_e35053523_ (gx#syntax-e _g34913520_)))
                         (let ((_hd35063527_ (##car _e35053523_))
                               (_tl35073530_ (##cdr _e35053523_)))
                           (if (gx#stx-pair? _tl35073530_)
                               (let ((_e35083533_ (gx#syntax-e _tl35073530_)))
                                 (let ((_hd35093537_ (##car _e35083533_))
                                       (_tl35103540_ (##cdr _e35083533_)))
                                   ((lambda (_L3543_ _L3545_ _L3546_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons _L3545_
                                                  (cons (cons _L3546_ _L3543_)
                                                        (cons '#f '())))))
                                    _tl35103540_
                                    _hd35093537_
                                    _hd35063527_)))
                               (_g34903516_ _g34913520_))))
                       (_g34903516_ _g34913520_)))))
            (let ((_g34883601_
                   (lambda (_g34913565_)
                     (if (gx#stx-pair? _g34913565_)
                         (let ((_e34963568_ (gx#syntax-e _g34913565_)))
                           (let ((_hd34973572_ (##car _e34963568_))
                                 (_tl34983575_ (##cdr _e34963568_)))
                             (if (gx#stx-pair? _tl34983575_)
                                 (let ((_e34993578_
                                        (gx#syntax-e _tl34983575_)))
                                   (let ((_hd35003582_ (##car _e34993578_))
                                         (_tl35013585_ (##cdr _e34993578_)))
                                     (if (gx#stx-null? _tl35013585_)
                                         ((lambda (_L3588_) _L3588_)
                                          _hd35003582_)
                                         (_g34893561_ _g34913565_))))
                                 (_g34893561_ _g34913565_))))
                         (_g34893561_ _g34913565_)))))
              (let ((_g34873622_
                     (lambda (_g34913605_)
                       (if (gx#stx-pair? _g34913605_)
                           (let ((_e34923608_ (gx#syntax-e _g34913605_)))
                             (let ((_hd34933612_ (##car _e34923608_))
                                   (_tl34943615_ (##cdr _e34923608_)))
                               (if (gx#stx-null? _tl34943615_)
                                   ((lambda () '#t))
                                   (_g34883601_ _g34913605_))))
                           (_g34883601_ _g34913605_)))))
                (_g34873622_ _$stx3484_)))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#or|
      (lambda (_$stx3626_)
        (let ((_g36323658_
               (lambda (_g36333654_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g36333654_))))
          (let ((_g36313703_
                 (lambda (_g36333662_)
                   (if (gx#stx-pair? _g36333662_)
                       (let ((_e36473665_ (gx#syntax-e _g36333662_)))
                         (let ((_hd36483669_ (##car _e36473665_))
                               (_tl36493672_ (##cdr _e36473665_)))
                           (if (gx#stx-pair? _tl36493672_)
                               (let ((_e36503675_ (gx#syntax-e _tl36493672_)))
                                 (let ((_hd36513679_ (##car _e36503675_))
                                       (_tl36523682_ (##cdr _e36503675_)))
                                   ((lambda (_L3685_ _L3687_ _L3688_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$e)
                                                        (cons _L3687_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$e)
                            (cons (gx#datum->syntax '#f '$e)
                                  (cons (cons _L3688_ _L3685_) '()))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl36523682_
                                    _hd36513679_
                                    _hd36483669_)))
                               (_g36323658_ _g36333662_))))
                       (_g36323658_ _g36333662_)))))
            (let ((_g36303743_
                   (lambda (_g36333707_)
                     (if (gx#stx-pair? _g36333707_)
                         (let ((_e36383710_ (gx#syntax-e _g36333707_)))
                           (let ((_hd36393714_ (##car _e36383710_))
                                 (_tl36403717_ (##cdr _e36383710_)))
                             (if (gx#stx-pair? _tl36403717_)
                                 (let ((_e36413720_
                                        (gx#syntax-e _tl36403717_)))
                                   (let ((_hd36423724_ (##car _e36413720_))
                                         (_tl36433727_ (##cdr _e36413720_)))
                                     (if (gx#stx-null? _tl36433727_)
                                         ((lambda (_L3730_) _L3730_)
                                          _hd36423724_)
                                         (_g36313703_ _g36333707_))))
                                 (_g36313703_ _g36333707_))))
                         (_g36313703_ _g36333707_)))))
              (let ((_g36293764_
                     (lambda (_g36333747_)
                       (if (gx#stx-pair? _g36333747_)
                           (let ((_e36343750_ (gx#syntax-e _g36333747_)))
                             (let ((_hd36353754_ (##car _e36343750_))
                                   (_tl36363757_ (##cdr _e36343750_)))
                               (if (gx#stx-null? _tl36363757_)
                                   ((lambda () '#f))
                                   (_g36303743_ _g36333747_))))
                           (_g36303743_ _g36333747_)))))
                (_g36293764_ _$stx3626_)))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#cond|
      (lambda (_$stx3768_)
        (let ((_g37773868_
               (lambda (_g37783864_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g37783864_))))
          (let ((_g37763969_
                 (lambda (_g37783872_)
                   (if (gx#stx-pair? _g37783872_)
                       (let ((_e38453875_ (gx#syntax-e _g37783872_)))
                         (let ((_hd38463879_ (##car _e38453875_))
                               (_tl38473882_ (##cdr _e38453875_)))
                           (if (gx#stx-pair? _tl38473882_)
                               (let ((_e38483885_ (gx#syntax-e _tl38473882_)))
                                 (let ((_hd38493889_ (##car _e38483885_))
                                       (_tl38503892_ (##cdr _e38483885_)))
                                   (if (gx#stx-pair? _hd38493889_)
                                       (let ((_e38513895_
                                              (gx#syntax-e _hd38493889_)))
                                         (let ((_hd38523899_
                                                (##car _e38513895_))
                                               (_tl38533902_
                                                (##cdr _e38513895_)))
                                           (if (gx#stx-pair/null? _tl38533902_)
                                               (if (fx>= (gx#stx-length
                                                          _tl38533902_)
                                                         '0)
                                                   (let ((_g28282_
                                                          (gx#syntax-split-splice
                                                           _tl38533902_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28283_
                                                              (values-count
                                                               _g28282_)))
                                                         (if (not (fx= _g28283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28283_)))
               (let ((_target38543905_ (values-ref _g28282_ 0))
                     (_tl38563908_ (values-ref _g28282_ 1)))
                 (if (gx#stx-null? _tl38563908_)
                     (letrec ((_loop38573911_
                               (lambda (_hd38553915_ _body38613918_)
                                 (if (gx#stx-pair? _hd38553915_)
                                     (let ((_e38583921_
                                            (gx#syntax-e _hd38553915_)))
                                       (let ((_lp-hd38593925_
                                              (##car _e38583921_))
                                             (_lp-tl38603928_
                                              (##cdr _e38583921_)))
                                         (_loop38573911_
                                          _lp-tl38603928_
                                          (cons _lp-hd38593925_
                                                _body38613918_))))
                                     (let ((_body38623931_
                                            (reverse _body38613918_)))
                                       ((lambda (_L3935_
                                                 _L3937_
                                                 _L3938_
                                                 _L3939_)
                                          (cons (gx#datum->syntax '#f 'if)
                                                (cons _L3938_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (begin
                            '#!void
                            (foldr (lambda (_g39603963_ _g39613966_)
                                     (cons _g39603963_ _g39613966_))
                                   '()
                                   _L3937_)))
                    (cons (cons _L3939_ _L3935_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _tl38503892_
                                        _body38623931_
                                        _hd38523899_
                                        _hd38463879_))))))
                       (_loop38573911_ _target38543905_ '()))
                     (_g37773868_ _g37783872_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g37773868_ _g37783872_))
                                               (_g37773868_ _g37783872_))))
                                       (_g37773868_ _g37783872_))))
                               (_g37773868_ _g37783872_))))
                       (_g37773868_ _g37783872_)))))
            (let ((_g37754025_
                   (lambda (_g37783973_)
                     (if (gx#stx-pair? _g37783973_)
                         (let ((_e38323976_ (gx#syntax-e _g37783973_)))
                           (let ((_hd38333980_ (##car _e38323976_))
                                 (_tl38343983_ (##cdr _e38323976_)))
                             (if (gx#stx-pair? _tl38343983_)
                                 (let ((_e38353986_
                                        (gx#syntax-e _tl38343983_)))
                                   (let ((_hd38363990_ (##car _e38353986_))
                                         (_tl38373993_ (##cdr _e38353986_)))
                                     (if (gx#stx-pair? _hd38363990_)
                                         (let ((_e38383996_
                                                (gx#syntax-e _hd38363990_)))
                                           (let ((_hd38394000_
                                                  (##car _e38383996_))
                                                 (_tl38404003_
                                                  (##cdr _e38383996_)))
                                             (if (gx#stx-null? _tl38404003_)
                                                 ((lambda (_L4006_
                                                           _L4008_
                                                           _L4009_)
                                                    (cons _L4009_
                                                          (cons (cons _L4008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '=>)
                                    (cons (gx#datum->syntax '#f 'values) '())))
                        _L4006_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl38373993_
                                                  _hd38394000_
                                                  _hd38333980_)
                                                 (_g37763969_ _g37783973_))))
                                         (_g37763969_ _g37783973_))))
                                 (_g37763969_ _g37783973_))))
                         (_g37763969_ _g37783973_)))))
              (let ((_g37744107_
                     (lambda (_g37784029_)
                       (if (gx#stx-pair? _g37784029_)
                           (let ((_e38144032_ (gx#syntax-e _g37784029_)))
                             (let ((_hd38154036_ (##car _e38144032_))
                                   (_tl38164039_ (##cdr _e38144032_)))
                               (if (gx#stx-pair? _tl38164039_)
                                   (let ((_e38174042_
                                          (gx#syntax-e _tl38164039_)))
                                     (let ((_hd38184046_ (##car _e38174042_))
                                           (_tl38194049_ (##cdr _e38174042_)))
                                       (if (gx#stx-pair? _hd38184046_)
                                           (let ((_e38204052_
                                                  (gx#syntax-e _hd38184046_)))
                                             (let ((_hd38214056_
                                                    (##car _e38204052_))
                                                   (_tl38224059_
                                                    (##cdr _e38204052_)))
                                               (if (gx#stx-pair? _tl38224059_)
                                                   (let ((_e38234062_
                                                          (gx#syntax-e
                                                           _tl38224059_)))
                                                     (let ((_hd38244066_
                                                            (##car _e38234062_))
                                                           (_tl38254069_
                                                            (##cdr _e38234062_)))
                                                       (if (gx#identifier?
                                                            _hd38244066_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:1>[1]#_g28284_|
                                                                _hd38244066_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl38254069_)
                           (let ((_e38264072_ (gx#syntax-e _tl38254069_)))
                             (let ((_hd38274076_ (##car _e38264072_))
                                   (_tl38284079_ (##cdr _e38264072_)))
                               (if (gx#stx-null? _tl38284079_)
                                   ((lambda (_L4082_ _L4084_ _L4085_ _L4086_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$e)
                                                        (cons _L4085_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$e)
                            (cons (cons _L4084_
                                        (cons (gx#datum->syntax '#f '$e) '()))
                                  (cons (cons _L4086_ _L4082_) '()))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl38194049_
                                    _hd38274076_
                                    _hd38214056_
                                    _hd38154036_)
                                   (_g37754025_ _g37784029_))))
                           (_g37754025_ _g37784029_))
                       (_g37754025_ _g37784029_))
                   (_g37754025_ _g37784029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g37754025_ _g37784029_))))
                                           (_g37754025_ _g37784029_))))
                                   (_g37754025_ _g37784029_))))
                           (_g37754025_ _g37784029_)))))
                (let ((_g37734148_
                       (lambda (_g37784111_)
                         (if (gx#stx-pair? _g37784111_)
                             (let ((_e38014114_ (gx#syntax-e _g37784111_)))
                               (let ((_hd38024118_ (##car _e38014114_))
                                     (_tl38034121_ (##cdr _e38014114_)))
                                 (if (gx#stx-pair? _tl38034121_)
                                     (let ((_e38044124_
                                            (gx#syntax-e _tl38034121_)))
                                       (let ((_hd38054128_ (##car _e38044124_))
                                             (_tl38064131_
                                              (##cdr _e38044124_)))
                                         (if (gx#stx-pair? _hd38054128_)
                                             (let ((_e38074134_
                                                    (gx#syntax-e
                                                     _hd38054128_)))
                                               (let ((_hd38084138_
                                                      (##car _e38074134_))
                                                     (_tl38094141_
                                                      (##cdr _e38074134_)))
                                                 (if (gx#identifier?
                                                      _hd38084138_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:1>[1]#_g28285_|
                                                          _hd38084138_)
                                                         ((lambda ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'syntax-error)
                          (cons '"Bad syntax; misplaced else" '()))))
                 (_g37744107_ _g37784111_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g37744107_
                                                      _g37784111_))))
                                             (_g37744107_ _g37784111_))))
                                     (_g37744107_ _g37784111_))))
                             (_g37744107_ _g37784111_)))))
                  (let ((_g37724243_
                         (lambda (_g37784152_)
                           (if (gx#stx-pair? _g37784152_)
                               (let ((_e37834155_ (gx#syntax-e _g37784152_)))
                                 (let ((_hd37844159_ (##car _e37834155_))
                                       (_tl37854162_ (##cdr _e37834155_)))
                                   (if (gx#stx-pair? _tl37854162_)
                                       (let ((_e37864165_
                                              (gx#syntax-e _tl37854162_)))
                                         (let ((_hd37874169_
                                                (##car _e37864165_))
                                               (_tl37884172_
                                                (##cdr _e37864165_)))
                                           (if (gx#stx-pair? _hd37874169_)
                                               (let ((_e37894175_
                                                      (gx#syntax-e
                                                       _hd37874169_)))
                                                 (let ((_hd37904179_
                                                        (##car _e37894175_))
                                                       (_tl37914182_
                                                        (##cdr _e37894175_)))
                                                   (if (gx#identifier?
                                                        _hd37904179_)
                                                       (if (gx#free-identifier=?
                                                            |gerbil/core::<sugar>::<sugar:1>[1]#_g28286_|
                                                            _hd37904179_)
                                                           (if (gx#stx-pair/null?
                                                                _tl37914182_)
                                                               (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _tl37914182_)
                                 '0)
                           (let ((_g28287_
                                  (gx#syntax-split-splice _tl37914182_ '0)))
                             (begin
                               (let ((_g28288_ (values-count _g28287_)))
                                 (if (not (fx= _g28288_ 2))
                                     (error "Context expects 2 values"
                                            _g28288_)))
                               (let ((_target37924185_ (values-ref _g28287_ 0))
                                     (_tl37944188_ (values-ref _g28287_ 1)))
                                 (if (gx#stx-null? _tl37944188_)
                                     (letrec ((_loop37954191_
                                               (lambda (_hd37934195_
                                                        _body37994198_)
                                                 (if (gx#stx-pair?
                                                      _hd37934195_)
                                                     (let ((_e37964201_
                                                            (gx#syntax-e
                                                             _hd37934195_)))
                                                       (let ((_lp-hd37974205_
                                                              (##car _e37964201_))
                                                             (_lp-tl37984208_
                                                              (##cdr _e37964201_)))
                                                         (_loop37954191_
                                                          _lp-tl37984208_
                                                          (cons _lp-hd37974205_
                                                                _body37994198_))))
                                                     (let ((_body38004211_
                                                            (reverse _body37994198_)))
                                                       (if (gx#stx-null?
                                                            _tl37884172_)
                                                           ((lambda (_L4215_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '%#expression)
                            (cons (cons (gx#datum->syntax '#f 'begin)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g42344237_
                                                          _g42354240_)
                                                   (cons _g42344237_
                                                         _g42354240_))
                                                 '()
                                                 _L4215_)))
                                  '())))
                    _body38004211_)
                   (_g37734148_ _g37784152_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop37954191_ _target37924185_ '()))
                                     (_g37734148_ _g37784152_)))))
                           (_g37734148_ _g37784152_))
                       (_g37734148_ _g37784152_))
                   (_g37734148_ _g37784152_))
               (_g37734148_ _g37784152_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g37734148_ _g37784152_))))
                                       (_g37734148_ _g37784152_))))
                               (_g37734148_ _g37784152_)))))
                    (let ((_g37714264_
                           (lambda (_g37784247_)
                             (if (gx#stx-pair? _g37784247_)
                                 (let ((_e37794250_ (gx#syntax-e _g37784247_)))
                                   (let ((_hd37804254_ (##car _e37794250_))
                                         (_tl37814257_ (##cdr _e37794250_)))
                                     (if (gx#stx-null? _tl37814257_)
                                         ((lambda () '#!void))
                                         (_g37724243_ _g37784247_))))
                                 (_g37724243_ _g37784247_)))))
                      (_g37714264_ _$stx3768_))))))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#when|
      (lambda (_$stx4270_)
        (let ((_g42744298_
               (lambda (_g42754294_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g42754294_))))
          (let ((_g42734383_
                 (lambda (_g42754302_)
                   (if (gx#stx-pair? _g42754302_)
                       (let ((_e42784305_ (gx#syntax-e _g42754302_)))
                         (let ((_hd42794309_ (##car _e42784305_))
                               (_tl42804312_ (##cdr _e42784305_)))
                           (if (gx#stx-pair? _tl42804312_)
                               (let ((_e42814315_ (gx#syntax-e _tl42804312_)))
                                 (let ((_hd42824319_ (##car _e42814315_))
                                       (_tl42834322_ (##cdr _e42814315_)))
                                   (if (gx#stx-pair/null? _tl42834322_)
                                       (if (fx>= (gx#stx-length _tl42834322_)
                                                 '0)
                                           (let ((_g28289_
                                                  (gx#syntax-split-splice
                                                   _tl42834322_
                                                   '0)))
                                             (begin
                                               (let ((_g28290_
                                                      (values-count _g28289_)))
                                                 (if (not (fx= _g28290_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28290_)))
                                               (let ((_target42844325_
                                                      (values-ref _g28289_ 0))
                                                     (_tl42864328_
                                                      (values-ref _g28289_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl42864328_)
                                                     (letrec ((_loop42874331_
                                                               (lambda (_hd42854335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr42914338_)
                         (if (gx#stx-pair? _hd42854335_)
                             (let ((_e42884341_ (gx#syntax-e _hd42854335_)))
                               (let ((_lp-hd42894345_ (##car _e42884341_))
                                     (_lp-tl42904348_ (##cdr _e42884341_)))
                                 (_loop42874331_
                                  _lp-tl42904348_
                                  (cons _lp-hd42894345_ _expr42914338_))))
                             (let ((_expr42924351_ (reverse _expr42914338_)))
                               ((lambda (_L4355_ _L4357_)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons _L4357_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g43744377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g43754380_)
                             (cons _g43744377_ _g43754380_))
                           '()
                           _L4355_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '#!void '())))))
                                _expr42924351_
                                _hd42824319_))))))
               (_loop42874331_ _target42844325_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g42744298_
                                                      _g42754302_)))))
                                           (_g42744298_ _g42754302_))
                                       (_g42744298_ _g42754302_))))
                               (_g42744298_ _g42754302_))))
                       (_g42744298_ _g42754302_)))))
            (_g42734383_ _$stx4270_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#unless|
      (lambda (_$stx4388_)
        (let ((_g43924416_
               (lambda (_g43934412_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g43934412_))))
          (let ((_g43914501_
                 (lambda (_g43934420_)
                   (if (gx#stx-pair? _g43934420_)
                       (let ((_e43964423_ (gx#syntax-e _g43934420_)))
                         (let ((_hd43974427_ (##car _e43964423_))
                               (_tl43984430_ (##cdr _e43964423_)))
                           (if (gx#stx-pair? _tl43984430_)
                               (let ((_e43994433_ (gx#syntax-e _tl43984430_)))
                                 (let ((_hd44004437_ (##car _e43994433_))
                                       (_tl44014440_ (##cdr _e43994433_)))
                                   (if (gx#stx-pair/null? _tl44014440_)
                                       (if (fx>= (gx#stx-length _tl44014440_)
                                                 '0)
                                           (let ((_g28291_
                                                  (gx#syntax-split-splice
                                                   _tl44014440_
                                                   '0)))
                                             (begin
                                               (let ((_g28292_
                                                      (values-count _g28291_)))
                                                 (if (not (fx= _g28292_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28292_)))
                                               (let ((_target44024443_
                                                      (values-ref _g28291_ 0))
                                                     (_tl44044446_
                                                      (values-ref _g28291_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl44044446_)
                                                     (letrec ((_loop44054449_
                                                               (lambda (_hd44034453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr44094456_)
                         (if (gx#stx-pair? _hd44034453_)
                             (let ((_e44064459_ (gx#syntax-e _hd44034453_)))
                               (let ((_lp-hd44074463_ (##car _e44064459_))
                                     (_lp-tl44084466_ (##cdr _e44064459_)))
                                 (_loop44054449_
                                  _lp-tl44084466_
                                  (cons _lp-hd44074463_ _expr44094456_))))
                             (let ((_expr44104469_ (reverse _expr44094456_)))
                               ((lambda (_L4473_ _L4475_)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons _L4475_
                                              (cons '#!void
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (begin
                          '#!void
                          (foldr (lambda (_g44924495_ _g44934498_)
                                   (cons _g44924495_ _g44934498_))
                                 '()
                                 _L4473_)))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _expr44104469_
                                _hd44004437_))))))
               (_loop44054449_ _target44024443_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g43924416_
                                                      _g43934420_)))))
                                           (_g43924416_ _g43934420_))
                                       (_g43924416_ _g43934420_))))
                               (_g43924416_ _g43934420_))))
                       (_g43924416_ _g43934420_)))))
            (_g43914501_ _$stx4388_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#syntax-error|
      (lambda (_stx4506_)
        (let ((_g45094533_
               (lambda (_g45104529_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g45104529_))))
          (let ((_g45084618_
                 (lambda (_g45104537_)
                   (if (gx#stx-pair? _g45104537_)
                       (let ((_e45134540_ (gx#syntax-e _g45104537_)))
                         (let ((_hd45144544_ (##car _e45134540_))
                               (_tl45154547_ (##cdr _e45134540_)))
                           (if (gx#stx-pair? _tl45154547_)
                               (let ((_e45164550_ (gx#syntax-e _tl45154547_)))
                                 (let ((_hd45174554_ (##car _e45164550_))
                                       (_tl45184557_ (##cdr _e45164550_)))
                                   (if (gx#stx-pair/null? _tl45184557_)
                                       (if (fx>= (gx#stx-length _tl45184557_)
                                                 '0)
                                           (let ((_g28293_
                                                  (gx#syntax-split-splice
                                                   _tl45184557_
                                                   '0)))
                                             (begin
                                               (let ((_g28294_
                                                      (values-count _g28293_)))
                                                 (if (not (fx= _g28294_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28294_)))
                                               (let ((_target45194560_
                                                      (values-ref _g28293_ 0))
                                                     (_tl45214563_
                                                      (values-ref _g28293_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl45214563_)
                                                     (letrec ((_loop45224566_
                                                               (lambda (_hd45204570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _detail45264573_)
                         (if (gx#stx-pair? _hd45204570_)
                             (let ((_e45234576_ (gx#syntax-e _hd45204570_)))
                               (let ((_lp-hd45244580_ (##car _e45234576_))
                                     (_lp-tl45254583_ (##cdr _e45234576_)))
                                 (_loop45224566_
                                  _lp-tl45254583_
                                  (cons _lp-hd45244580_ _detail45264573_))))
                             (let ((_detail45274586_
                                    (reverse _detail45264573_)))
                               ((lambda (_L4590_ _L4592_)
                                  (if (gx#stx-string? _L4592_)
                                      (apply gx#raise-syntax-error
                                             '#f
                                             (gx#stx-e _L4592_)
                                             _stx4506_
                                             (gx#syntax->list
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g46094612_
                                                                _g46104615_)
                                                         (cons _g46094612_
                                                               _g46104615_))
                                                       '()
                                                       _L4590_))))
                                      (_g45094533_ _g45104537_)))
                                _detail45274586_
                                _hd45174554_))))))
               (_loop45224566_ _target45194560_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g45094533_
                                                      _g45104537_)))))
                                           (_g45094533_ _g45104537_))
                                       (_g45094533_ _g45104537_))))
                               (_g45094533_ _g45104537_))))
                       (_g45094533_ _g45104537_)))))
            (_g45084618_ _stx4506_)))))))
