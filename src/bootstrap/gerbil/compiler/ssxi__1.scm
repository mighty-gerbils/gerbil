(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx48867_)
      (let* ((_g4887148889_
              (lambda (_g4887248885_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4887248885_)))
             (_g4887048944_
              (lambda (_g4887248893_)
                (if (gx#stx-pair? _g4887248893_)
                    (let ((_e4887548896_ (gx#syntax-e _g4887248893_)))
                      (let ((_hd4887648900_ (##car _e4887548896_))
                            (_tl4887748903_ (##cdr _e4887548896_)))
                        (if (gx#stx-pair? _tl4887748903_)
                            (let ((_e4887848906_ (gx#syntax-e _tl4887748903_)))
                              (let ((_hd4887948910_ (##car _e4887848906_))
                                    (_tl4888048913_ (##cdr _e4887848906_)))
                                (if (gx#stx-pair? _tl4888048913_)
                                    (let ((_e4888148916_
                                           (gx#syntax-e _tl4888048913_)))
                                      (let ((_hd4888248920_
                                             (##car _e4888148916_))
                                            (_tl4888348923_
                                             (##cdr _e4888148916_)))
                                        (if (gx#stx-null? _tl4888348923_)
                                            ((lambda (_L48926_ _L48928_)
                                               (if (gx#identifier? _L48928_)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'optimizer-declare-type!)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L48928_ '()))
                       (cons _L48926_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4887148889_
                                                    _g4887248893_)))
                                             _hd4888248920_
                                             _hd4887948910_)
                                            (_g4887148889_ _g4887248893_))))
                                    (_g4887148889_ _g4887248893_))))
                            (_g4887148889_ _g4887248893_))))
                    (_g4887148889_ _g4887248893_)))))
        (_g4887048944_ _$stx48867_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx48948_)
      (let* ((_g4895248981_
              (lambda (_g4895348977_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4895348977_)))
             (_g4895149081_
              (lambda (_g4895348985_)
                (if (gx#stx-pair? _g4895348985_)
                    (let ((_e4895648988_ (gx#syntax-e _g4895348985_)))
                      (let ((_hd4895748992_ (##car _e4895648988_))
                            (_tl4895848995_ (##cdr _e4895648988_)))
                        (if (gx#stx-pair/null? _tl4895848995_)
                            (let ((_g51689_
                                   (gx#syntax-split-splice _tl4895848995_ '0)))
                              (begin
                                (let ((_g51690_
                                       (if (##values? _g51689_)
                                           (##vector-length _g51689_)
                                           1)))
                                  (if (not (##fx= _g51690_ 2))
                                      (error "Context expects 2 values"
                                             _g51690_)))
                                (let ((_target4895948998_
                                       (##vector-ref _g51689_ 0))
                                      (_tl4896149001_
                                       (##vector-ref _g51689_ 1)))
                                  (if (gx#stx-null? _tl4896149001_)
                                      (letrec ((_loop4896249004_
                                                (lambda (_hd4896049008_
                                                         _type4896649011_
                                                         _symbol4896749013_)
                                                  (if (gx#stx-pair?
                                                       _hd4896049008_)
                                                      (let ((_e4896349016_
                                                             (gx#syntax-e
                                                              _hd4896049008_)))
                                                        (let ((_lp-hd4896449020_
                                                               (##car _e4896349016_))
                                                              (_lp-tl4896549023_
                                                               (##cdr _e4896349016_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4896449020_)
                                                              (let ((_e4897049026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4896449020_)))
                        (let ((_hd4897149030_ (##car _e4897049026_))
                              (_tl4897249033_ (##cdr _e4897049026_)))
                          (if (gx#stx-pair? _tl4897249033_)
                              (let ((_e4897349036_
                                     (gx#syntax-e _tl4897249033_)))
                                (let ((_hd4897449040_ (##car _e4897349036_))
                                      (_tl4897549043_ (##cdr _e4897349036_)))
                                  (if (gx#stx-null? _tl4897549043_)
                                      (_loop4896249004_
                                       _lp-tl4896549023_
                                       (cons _hd4897449040_ _type4896649011_)
                                       (cons _hd4897149030_
                                             _symbol4896749013_))
                                      (_g4895248981_ _g4895348985_))))
                              (_g4895248981_ _g4895348985_))))
                      (_g4895248981_ _g4895348985_))))
              (let ((_type4896849046_ (reverse _type4896649011_))
                    (_symbol4896949049_ (reverse _symbol4896749013_)))
                ((lambda (_L49052_ _L49054_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L49052_ _L49054_)
                           (foldr2 (lambda (_g4906949073_
                                            _g4907049076_
                                            _g4907149078_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type)
                                                 (cons _g4907049076_
                                                       (cons _g4906949073_
                                                             '())))
                                           _g4907149078_))
                                   '()
                                   _L49052_
                                   _L49054_))))
                 _type4896849046_
                 _symbol4896949049_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4896249004_
                                         _target4895948998_
                                         '()
                                         '()))
                                      (_g4895248981_ _g4895348985_)))))
                            (_g4895248981_ _g4895348985_))))
                    (_g4895248981_ _g4895348985_)))))
        (_g4895149081_ _$stx48948_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx49086_)
      (let* ((___stx5123251233_ _$stx49086_)
             (_g4909149133_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5123251233_))))
        (let ((___kont5123551236_
               (lambda (_L49261_ _L49263_ _L49264_ _L49265_)
                 (cons (gx#datum->syntax__0 '#f 'optimizer-declare-method!)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L49265_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L49264_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L49263_ '()))
                                         (cons _L49261_ '())))))))
              (___kont5123751238_
               (lambda (_L49180_ _L49182_ _L49183_ _L49184_)
                 (cons _L49184_
                       (cons _L49183_
                             (cons _L49182_
                                   (cons _L49180_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                'rebind?)
                                               '()))))))))
          (let ((___match5127151272_
                 (lambda (_e4909749211_
                          _hd4909849215_
                          _tl4909949218_
                          _e4910049221_
                          _hd4910149225_
                          _tl4910249228_
                          _e4910349231_
                          _hd4910449235_
                          _tl4910549238_
                          _e4910649241_
                          _hd4910749245_
                          _tl4910849248_
                          _e4910949251_
                          _hd4911049255_
                          _tl4911149258_)
                   (let ((_L49261_ _hd4911049255_)
                         (_L49263_ _hd4910749245_)
                         (_L49264_ _hd4910449235_)
                         (_L49265_ _hd4910149225_))
                     (if (if (gx#identifier? _L49265_)
                             (if (gx#identifier? _L49264_)
                                 (gx#identifier? _L49263_)
                                 '#f)
                             '#f)
                         (___kont5123551236_
                          _L49261_
                          _L49263_
                          _L49264_
                          _L49265_)
                         (_g4909149133_))))))
            (if (gx#stx-pair? ___stx5123251233_)
                (let ((_e4909749211_ (gx#syntax-e ___stx5123251233_)))
                  (let ((_tl4909949218_ (##cdr _e4909749211_))
                        (_hd4909849215_ (##car _e4909749211_)))
                    (if (gx#stx-pair? _tl4909949218_)
                        (let ((_e4910049221_ (gx#syntax-e _tl4909949218_)))
                          (let ((_tl4910249228_ (##cdr _e4910049221_))
                                (_hd4910149225_ (##car _e4910049221_)))
                            (if (gx#stx-pair? _tl4910249228_)
                                (let ((_e4910349231_
                                       (gx#syntax-e _tl4910249228_)))
                                  (let ((_tl4910549238_ (##cdr _e4910349231_))
                                        (_hd4910449235_ (##car _e4910349231_)))
                                    (if (gx#stx-pair? _tl4910549238_)
                                        (let ((_e4910649241_
                                               (gx#syntax-e _tl4910549238_)))
                                          (let ((_tl4910849248_
                                                 (##cdr _e4910649241_))
                                                (_hd4910749245_
                                                 (##car _e4910649241_)))
                                            (if (gx#stx-pair? _tl4910849248_)
                                                (let ((_e4910949251_
                                                       (gx#syntax-e
                                                        _tl4910849248_)))
                                                  (let ((_tl4911149258_
                                                         (##cdr _e4910949251_))
                                                        (_hd4911049255_
                                                         (##car _e4910949251_)))
                                                    (if (gx#stx-null?
                                                         _tl4911149258_)
                                                        (___match5127151272_
                                                         _e4909749211_
                                                         _hd4909849215_
                                                         _tl4909949218_
                                                         _e4910049221_
                                                         _hd4910149225_
                                                         _tl4910249228_
                                                         _e4910349231_
                                                         _hd4910449235_
                                                         _tl4910549238_
                                                         _e4910649241_
                                                         _hd4910749245_
                                                         _tl4910849248_
                                                         _e4910949251_
                                                         _hd4911049255_
                                                         _tl4911149258_)
                                                        (_g4909149133_))))
                                                (if (gx#stx-null?
                                                     _tl4910849248_)
                                                    (___kont5123751238_
                                                     _hd4910749245_
                                                     _hd4910449235_
                                                     _hd4910149225_
                                                     _hd4909849215_)
                                                    (_g4909149133_)))))
                                        (_g4909149133_))))
                                (_g4909149133_))))
                        (_g4909149133_))))
                (_g4909149133_)))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx49290_)
      (let* ((_g4929449329_
              (lambda (_g4929549325_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4929549325_)))
             (_g4929349448_
              (lambda (_g4929549333_)
                (if (gx#stx-pair? _g4929549333_)
                    (let ((_e4929949336_ (gx#syntax-e _g4929549333_)))
                      (let ((_hd4930049340_ (##car _e4929949336_))
                            (_tl4930149343_ (##cdr _e4929949336_)))
                        (if (gx#stx-pair/null? _tl4930149343_)
                            (let ((_g51691_
                                   (gx#syntax-split-splice _tl4930149343_ '0)))
                              (begin
                                (let ((_g51692_
                                       (if (##values? _g51691_)
                                           (##vector-length _g51691_)
                                           1)))
                                  (if (not (##fx= _g51692_ 2))
                                      (error "Context expects 2 values"
                                             _g51692_)))
                                (let ((_target4930249346_
                                       (##vector-ref _g51691_ 0))
                                      (_tl4930449349_
                                       (##vector-ref _g51691_ 1)))
                                  (if (gx#stx-null? _tl4930449349_)
                                      (letrec ((_loop4930549352_
                                                (lambda (_hd4930349356_
                                                         _symbol4930949359_
                                                         _method4931049361_
                                                         _type-t4931149363_)
                                                  (if (gx#stx-pair?
                                                       _hd4930349356_)
                                                      (let ((_e4930649366_
                                                             (gx#syntax-e
                                                              _hd4930349356_)))
                                                        (let ((_lp-hd4930749370_
                                                               (##car _e4930649366_))
                                                              (_lp-tl4930849373_
                                                               (##cdr _e4930649366_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4930749370_)
                                                              (let ((_e4931549376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4930749370_)))
                        (let ((_hd4931649380_ (##car _e4931549376_))
                              (_tl4931749383_ (##cdr _e4931549376_)))
                          (if (gx#stx-pair? _tl4931749383_)
                              (let ((_e4931849386_
                                     (gx#syntax-e _tl4931749383_)))
                                (let ((_hd4931949390_ (##car _e4931849386_))
                                      (_tl4932049393_ (##cdr _e4931849386_)))
                                  (if (gx#stx-pair? _tl4932049393_)
                                      (let ((_e4932149396_
                                             (gx#syntax-e _tl4932049393_)))
                                        (let ((_hd4932249400_
                                               (##car _e4932149396_))
                                              (_tl4932349403_
                                               (##cdr _e4932149396_)))
                                          (if (gx#stx-null? _tl4932349403_)
                                              (_loop4930549352_
                                               _lp-tl4930849373_
                                               (cons _hd4932249400_
                                                     _symbol4930949359_)
                                               (cons _hd4931949390_
                                                     _method4931049361_)
                                               (cons _hd4931649380_
                                                     _type-t4931149363_))
                                              (_g4929449329_ _g4929549333_))))
                                      (_g4929449329_ _g4929549333_))))
                              (_g4929449329_ _g4929549333_))))
                      (_g4929449329_ _g4929549333_))))
              (let ((_symbol4931249406_ (reverse _symbol4930949359_))
                    (_method4931349409_ (reverse _method4931049361_))
                    (_type-t4931449411_ (reverse _type-t4931149363_)))
                ((lambda (_L49414_ _L49416_ _L49417_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _L49414_
                            _L49416_
                            _L49417_)
                           (foldr (lambda (_g4943349438_
                                           _g4943449441_
                                           _g4943549443_
                                           _g4943649445_)
                                    (cons (cons (gx#datum->syntax__0
                                                 '#f
                                                 'declare-method)
                                                (cons _g4943549443_
                                                      (cons _g4943449441_
                                                            (cons _g4943349438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g4943649445_))
                                  '()
                                  _L49414_
                                  _L49416_
                                  _L49417_))))
                 _symbol4931249406_
                 _method4931349409_
                 _type-t4931449411_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4930549352_
                                         _target4930249346_
                                         '()
                                         '()
                                         '()))
                                      (_g4929449329_ _g4929549333_)))))
                            (_g4929449329_ _g4929549333_))))
                    (_g4929449329_ _g4929549333_)))))
        (_g4929349448_ _$stx49290_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx49453_)
      (let* ((_g4945749490_
              (lambda (_g4945849486_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4945849486_)))
             (_g4945649604_
              (lambda (_g4945849494_)
                (if (gx#stx-pair? _g4945849494_)
                    (let ((_e4946249497_ (gx#syntax-e _g4945849494_)))
                      (let ((_hd4946349501_ (##car _e4946249497_))
                            (_tl4946449504_ (##cdr _e4946249497_)))
                        (if (gx#stx-pair? _tl4946449504_)
                            (let ((_e4946549507_ (gx#syntax-e _tl4946449504_)))
                              (let ((_hd4946649511_ (##car _e4946549507_))
                                    (_tl4946749514_ (##cdr _e4946549507_)))
                                (if (gx#stx-pair/null? _tl4946749514_)
                                    (let ((_g51693_
                                           (gx#syntax-split-splice
                                            _tl4946749514_
                                            '0)))
                                      (begin
                                        (let ((_g51694_
                                               (if (##values? _g51693_)
                                                   (##vector-length _g51693_)
                                                   1)))
                                          (if (not (##fx= _g51694_ 2))
                                              (error "Context expects 2 values"
                                                     _g51694_)))
                                        (let ((_target4946849517_
                                               (##vector-ref _g51693_ 0))
                                              (_tl4947049520_
                                               (##vector-ref _g51693_ 1)))
                                          (if (gx#stx-null? _tl4947049520_)
                                              (letrec ((_loop4947149523_
                                                        (lambda (_hd4946949527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol4947549530_
                         _method4947649532_)
                  (if (gx#stx-pair? _hd4946949527_)
                      (let ((_e4947249535_ (gx#syntax-e _hd4946949527_)))
                        (let ((_lp-hd4947349539_ (##car _e4947249535_))
                              (_lp-tl4947449542_ (##cdr _e4947249535_)))
                          (if (gx#stx-pair? _lp-hd4947349539_)
                              (let ((_e4947949545_
                                     (gx#syntax-e _lp-hd4947349539_)))
                                (let ((_hd4948049549_ (##car _e4947949545_))
                                      (_tl4948149552_ (##cdr _e4947949545_)))
                                  (if (gx#stx-pair? _tl4948149552_)
                                      (let ((_e4948249555_
                                             (gx#syntax-e _tl4948149552_)))
                                        (let ((_hd4948349559_
                                               (##car _e4948249555_))
                                              (_tl4948449562_
                                               (##cdr _e4948249555_)))
                                          (if (gx#stx-null? _tl4948449562_)
                                              (_loop4947149523_
                                               _lp-tl4947449542_
                                               (cons _hd4948349559_
                                                     _symbol4947549530_)
                                               (cons _hd4948049549_
                                                     _method4947649532_))
                                              (_g4945749490_ _g4945849494_))))
                                      (_g4945749490_ _g4945849494_))))
                              (_g4945749490_ _g4945849494_))))
                      (let ((_symbol4947749565_ (reverse _symbol4947549530_))
                            (_method4947849568_ (reverse _method4947649532_)))
                        ((lambda (_L49571_ _L49573_ _L49574_)
                           (cons (gx#datum->syntax__0 '#f 'begin)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _L49571_
                                    _L49573_)
                                   (foldr2 (lambda (_g4959249596_
                                                    _g4959349599_
                                                    _g4959449601_)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method)
                                                         (cons _L49574_
                                                               (cons _g4959349599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _g4959249596_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g4959449601_))
                                           '()
                                           _L49571_
                                           _L49573_))))
                         _symbol4947749565_
                         _method4947849568_
                         _hd4946649511_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop4947149523_
                                                 _target4946849517_
                                                 '()
                                                 '()))
                                              (_g4945749490_ _g4945849494_)))))
                                    (_g4945749490_ _g4945849494_))))
                            (_g4945749490_ _g4945849494_))))
                    (_g4945749490_ _g4945849494_)))))
        (_g4945649604_ _$stx49453_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx49609_)
      (let* ((_g4961349627_
              (lambda (_g4961449623_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4961449623_)))
             (_g4961249668_
              (lambda (_g4961449631_)
                (if (gx#stx-pair? _g4961449631_)
                    (let ((_e4961649634_ (gx#syntax-e _g4961449631_)))
                      (let ((_hd4961749638_ (##car _e4961649634_))
                            (_tl4961849641_ (##cdr _e4961649634_)))
                        (if (gx#stx-pair? _tl4961849641_)
                            (let ((_e4961949644_ (gx#syntax-e _tl4961849641_)))
                              (let ((_hd4962049648_ (##car _e4961949644_))
                                    (_tl4962149651_ (##cdr _e4961949644_)))
                                (if (gx#stx-null? _tl4962149651_)
                                    ((lambda (_L49654_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!alias)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L49654_ '()))
                                                   '())))
                                     _hd4962049648_)
                                    (_g4961349627_ _g4961449631_))))
                            (_g4961349627_ _g4961449631_))))
                    (_g4961349627_ _g4961449631_)))))
        (_g4961249668_ _$stx49609_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx49672_)
      (let* ((___stx5130051301_ _$stx49672_)
             (_g4967849744_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5130051301_))))
        (let ((___kont5130351304_
               (lambda (_L49966_ _L49968_ _L49969_ _L49970_ _L49971_)
                 (cons (gx#datum->syntax__0 '#f '@make-struct-type)
                       (cons _L49971_
                             (cons _L49970_
                                   (cons _L49969_
                                         (cons _L49968_
                                               (cons _L49966_ '()))))))))
              (___kont5130551306_
               (lambda (_L49876_ _L49878_ _L49879_ _L49880_)
                 (cons _L49880_
                       (cons _L49879_
                             (cons _L49878_
                                   (cons _L49876_
                                         (cons '#f (cons '#f '()))))))))
              (___kont5130751308_
               (lambda (_L49801_ _L49803_ _L49804_ _L49805_ _L49806_)
                 (cons _L49806_
                       (cons (gx#datum->syntax__0 '#f 'type)
                             (cons _L49804_
                                   (cons _L49803_
                                         (cons _L49801_ (cons '#f '())))))))))
          (if (gx#stx-pair? ___stx5130051301_)
              (let ((_e4968549906_ (gx#syntax-e ___stx5130051301_)))
                (let ((_tl4968749913_ (##cdr _e4968549906_))
                      (_hd4968649910_ (##car _e4968549906_)))
                  (if (gx#stx-pair? _tl4968749913_)
                      (let ((_e4968849916_ (gx#syntax-e _tl4968749913_)))
                        (let ((_tl4969049923_ (##cdr _e4968849916_))
                              (_hd4968949920_ (##car _e4968849916_)))
                          (if (gx#stx-pair? _tl4969049923_)
                              (let ((_e4969149926_
                                     (gx#syntax-e _tl4969049923_)))
                                (let ((_tl4969349933_ (##cdr _e4969149926_))
                                      (_hd4969249930_ (##car _e4969149926_)))
                                  (if (gx#stx-pair? _tl4969349933_)
                                      (let ((_e4969449936_
                                             (gx#syntax-e _tl4969349933_)))
                                        (let ((_tl4969649943_
                                               (##cdr _e4969449936_))
                                              (_hd4969549940_
                                               (##car _e4969449936_)))
                                          (if (gx#stx-pair? _tl4969649943_)
                                              (let ((_e4969749946_
                                                     (gx#syntax-e
                                                      _tl4969649943_)))
                                                (let ((_tl4969949953_
                                                       (##cdr _e4969749946_))
                                                      (_hd4969849950_
                                                       (##car _e4969749946_)))
                                                  (if (gx#stx-pair?
                                                       _tl4969949953_)
                                                      (let ((_e4970049956_
                                                             (gx#syntax-e
                                                              _tl4969949953_)))
                                                        (let ((_tl4970249963_
                                                               (##cdr _e4970049956_))
                                                              (_hd4970149960_
                                                               (##car _e4970049956_)))
                                                          (if (gx#stx-null?
                                                               _tl4970249963_)
                                                              (___kont5130351304_
                                                               _hd4970149960_
                                                               _hd4969849950_
                                                               _hd4969549940_
                                                               _hd4969249930_
                                                               _hd4968949920_)
                                                              (_g4967849744_))))
                                                      (if (gx#stx-null?
                                                           _tl4969949953_)
                                                          (___kont5130751308_
                                                           _hd4969849950_
                                                           _hd4969549940_
                                                           _hd4969249930_
                                                           _hd4968949920_
                                                           _hd4968649910_)
                                                          (_g4967849744_)))))
                                              (if (gx#stx-null? _tl4969649943_)
                                                  (___kont5130551306_
                                                   _hd4969549940_
                                                   _hd4969249930_
                                                   _hd4968949920_
                                                   _hd4968649910_)
                                                  (_g4967849744_)))))
                                      (_g4967849744_))))
                              (_g4967849744_))))
                      (_g4967849744_))))
              (_g4967849744_))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx49999_)
      (let* ((___stx5140851409_ _$stx49999_)
             (_g5000450057_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5140851409_))))
        (let ((___kont5141151412_
               (lambda (_L50225_ _L50227_ _L50228_ _L50229_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-type)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50229_ '()))
                             (cons '#f
                                   (cons _L50228_
                                         (cons '0
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50227_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50225_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (___kont5141351414_
               (lambda (_L50124_ _L50126_ _L50127_ _L50128_ _L50129_)
                 (cons (gx#datum->syntax__0 '#f 'let*)
                       (cons (cons (cons (gx#datum->syntax__0 '#f 'super-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'optimizer-resolve-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50128_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (gx#datum->syntax__0
                                                '#f
                                                'xfields)
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'and)
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'super-type)
                         (cons (cons (gx#datum->syntax__0 '#f 'alet)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'xfields)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '!struct-type-xfields)
                                                             (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'super-type)
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        'fx+)
                                                       (cons (gx#datum->syntax__0
                                                              '#f
                                                              'xfields)
                                                             (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '!struct-type-fields)
                                 (cons (gx#datum->syntax__0 '#f 'super-type)
                                       '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'xtor)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'or)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L50126_ '()))
                               (cons (cons (gx#datum->syntax__0 '#f 'if)
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  'super-type)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '!struct-type-ctor)
                                                             (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'super-type)
                           '()))
               (cons '#!void '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons (cons (gx#datum->syntax__0
                                          '#f
                                          'make-!struct-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'quote)
                                                     (cons _L50129_ '()))
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50128_ '()))
                                                     (cons _L50127_
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'xfields)
                         (cons (gx#datum->syntax__0 '#f 'xtor)
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L50124_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))))))
          (if (gx#stx-pair? ___stx5140851409_)
              (let ((_e5001050161_ (gx#syntax-e ___stx5140851409_)))
                (let ((_tl5001250168_ (##cdr _e5001050161_))
                      (_hd5001150165_ (##car _e5001050161_)))
                  (if (gx#stx-pair? _tl5001250168_)
                      (let ((_e5001350171_ (gx#syntax-e _tl5001250168_)))
                        (let ((_tl5001550178_ (##cdr _e5001350171_))
                              (_hd5001450175_ (##car _e5001350171_)))
                          (if (gx#stx-pair? _tl5001550178_)
                              (let ((_e5001650181_
                                     (gx#syntax-e _tl5001550178_)))
                                (let ((_tl5001850188_ (##cdr _e5001650181_))
                                      (_hd5001750185_ (##car _e5001650181_)))
                                  (if (gx#stx-datum? _hd5001750185_)
                                      (let ((_e5001950191_
                                             (gx#stx-e _hd5001750185_)))
                                        (if (equal? _e5001950191_ '#f)
                                            (if (gx#stx-pair? _tl5001850188_)
                                                (let ((_e5002050195_
                                                       (gx#syntax-e
                                                        _tl5001850188_)))
                                                  (let ((_tl5002250202_
                                                         (##cdr _e5002050195_))
                                                        (_hd5002150199_
                                                         (##car _e5002050195_)))
                                                    (if (gx#stx-pair?
                                                         _tl5002250202_)
                                                        (let ((_e5002350205_
                                                               (gx#syntax-e
                                                                _tl5002250202_)))
                                                          (let ((_tl5002550212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5002350205_))
                        (_hd5002450209_ (##car _e5002350205_)))
                    (if (gx#stx-pair? _tl5002550212_)
                        (let ((_e5002650215_ (gx#syntax-e _tl5002550212_)))
                          (let ((_tl5002850222_ (##cdr _e5002650215_))
                                (_hd5002750219_ (##car _e5002650215_)))
                            (if (gx#stx-null? _tl5002850222_)
                                (___kont5141151412_
                                 _hd5002750219_
                                 _hd5002450209_
                                 _hd5002150199_
                                 _hd5001450175_)
                                (_g5000450057_))))
                        (_g5000450057_))))
                (_g5000450057_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5000450057_))
                                            (if (gx#stx-pair? _tl5001850188_)
                                                (let ((_e5004350094_
                                                       (gx#syntax-e
                                                        _tl5001850188_)))
                                                  (let ((_tl5004550101_
                                                         (##cdr _e5004350094_))
                                                        (_hd5004450098_
                                                         (##car _e5004350094_)))
                                                    (if (gx#stx-pair?
                                                         _tl5004550101_)
                                                        (let ((_e5004650104_
                                                               (gx#syntax-e
                                                                _tl5004550101_)))
                                                          (let ((_tl5004850111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5004650104_))
                        (_hd5004750108_ (##car _e5004650104_)))
                    (if (gx#stx-pair? _tl5004850111_)
                        (let ((_e5004950114_ (gx#syntax-e _tl5004850111_)))
                          (let ((_tl5005150121_ (##cdr _e5004950114_))
                                (_hd5005050118_ (##car _e5004950114_)))
                            (if (gx#stx-null? _tl5005150121_)
                                (___kont5141351414_
                                 _hd5005050118_
                                 _hd5004750108_
                                 _hd5004450098_
                                 _hd5001750185_
                                 _hd5001450175_)
                                (_g5000450057_))))
                        (_g5000450057_))))
                (_g5000450057_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5000450057_))))
                                      (if (gx#stx-pair? _tl5001850188_)
                                          (let ((_e5004350094_
                                                 (gx#syntax-e _tl5001850188_)))
                                            (let ((_tl5004550101_
                                                   (##cdr _e5004350094_))
                                                  (_hd5004450098_
                                                   (##car _e5004350094_)))
                                              (if (gx#stx-pair? _tl5004550101_)
                                                  (let ((_e5004650104_
                                                         (gx#syntax-e
                                                          _tl5004550101_)))
                                                    (let ((_tl5004850111_
                                                           (##cdr _e5004650104_))
                                                          (_hd5004750108_
                                                           (##car _e5004650104_)))
                                                      (if (gx#stx-pair?
                                                           _tl5004850111_)
                                                          (let ((_e5004950114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl5004850111_)))
                    (let ((_tl5005150121_ (##cdr _e5004950114_))
                          (_hd5005050118_ (##car _e5004950114_)))
                      (if (gx#stx-null? _tl5005150121_)
                          (___kont5141351414_
                           _hd5005050118_
                           _hd5004750108_
                           _hd5004450098_
                           _hd5001750185_
                           _hd5001450175_)
                          (_g5000450057_))))
                  (_g5000450057_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5000450057_))))
                                          (_g5000450057_)))))
                              (_g5000450057_))))
                      (_g5000450057_))))
              (_g5000450057_))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx50257_)
      (let* ((_g5026150275_
              (lambda (_g5026250271_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5026250271_)))
             (_g5026050316_
              (lambda (_g5026250279_)
                (if (gx#stx-pair? _g5026250279_)
                    (let ((_e5026450282_ (gx#syntax-e _g5026250279_)))
                      (let ((_hd5026550286_ (##car _e5026450282_))
                            (_tl5026650289_ (##cdr _e5026450282_)))
                        (if (gx#stx-pair? _tl5026650289_)
                            (let ((_e5026750292_ (gx#syntax-e _tl5026650289_)))
                              (let ((_hd5026850296_ (##car _e5026750292_))
                                    (_tl5026950299_ (##cdr _e5026750292_)))
                                (if (gx#stx-null? _tl5026950299_)
                                    ((lambda (_L50302_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50302_ '()))
                                                   '())))
                                     _hd5026850296_)
                                    (_g5026150275_ _g5026250279_))))
                            (_g5026150275_ _g5026250279_))))
                    (_g5026150275_ _g5026250279_)))))
        (_g5026050316_ _$stx50257_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx50320_)
      (let* ((_g5032450338_
              (lambda (_g5032550334_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5032550334_)))
             (_g5032350379_
              (lambda (_g5032550342_)
                (if (gx#stx-pair? _g5032550342_)
                    (let ((_e5032750345_ (gx#syntax-e _g5032550342_)))
                      (let ((_hd5032850349_ (##car _e5032750345_))
                            (_tl5032950352_ (##cdr _e5032750345_)))
                        (if (gx#stx-pair? _tl5032950352_)
                            (let ((_e5033050355_ (gx#syntax-e _tl5032950352_)))
                              (let ((_hd5033150359_ (##car _e5033050355_))
                                    (_tl5033250362_ (##cdr _e5033050355_)))
                                (if (gx#stx-null? _tl5033250362_)
                                    ((lambda (_L50365_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50365_ '()))
                                                   '())))
                                     _hd5033150359_)
                                    (_g5032450338_ _g5032550342_))))
                            (_g5032450338_ _g5032550342_))))
                    (_g5032450338_ _g5032550342_)))))
        (_g5032350379_ _$stx50320_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx50383_)
      (let* ((___stx5150051501_ _$stx50383_)
             (_g5038850421_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5150051501_))))
        (let ((___kont5150351504_
               (lambda (_L50523_ _L50525_ _L50526_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50526_ '()))
                             (cons _L50525_ (cons _L50523_ '()))))))
              (___kont5150551506_
               (lambda (_L50458_ _L50460_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50460_ '()))
                             (cons _L50458_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5150051501_)
              (let ((_e5039350483_ (gx#syntax-e ___stx5150051501_)))
                (let ((_tl5039550490_ (##cdr _e5039350483_))
                      (_hd5039450487_ (##car _e5039350483_)))
                  (if (gx#stx-pair? _tl5039550490_)
                      (let ((_e5039650493_ (gx#syntax-e _tl5039550490_)))
                        (let ((_tl5039850500_ (##cdr _e5039650493_))
                              (_hd5039750497_ (##car _e5039650493_)))
                          (if (gx#stx-pair? _tl5039850500_)
                              (let ((_e5039950503_
                                     (gx#syntax-e _tl5039850500_)))
                                (let ((_tl5040150510_ (##cdr _e5039950503_))
                                      (_hd5040050507_ (##car _e5039950503_)))
                                  (if (gx#stx-pair? _tl5040150510_)
                                      (let ((_e5040250513_
                                             (gx#syntax-e _tl5040150510_)))
                                        (let ((_tl5040450520_
                                               (##cdr _e5040250513_))
                                              (_hd5040350517_
                                               (##car _e5040250513_)))
                                          (if (gx#stx-null? _tl5040450520_)
                                              (___kont5150351504_
                                               _hd5040350517_
                                               _hd5040050507_
                                               _hd5039750497_)
                                              (_g5038850421_))))
                                      (if (gx#stx-null? _tl5040150510_)
                                          (___kont5150551506_
                                           _hd5040050507_
                                           _hd5039750497_)
                                          (_g5038850421_)))))
                              (_g5038850421_))))
                      (_g5038850421_))))
              (_g5038850421_))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx50548_)
      (let* ((___stx5155651557_ _$stx50548_)
             (_g5055350586_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5155651557_))))
        (let ((___kont5155951560_
               (lambda (_L50688_ _L50690_ _L50691_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50691_ '()))
                             (cons _L50690_ (cons _L50688_ '()))))))
              (___kont5156151562_
               (lambda (_L50623_ _L50625_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50625_ '()))
                             (cons _L50623_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5155651557_)
              (let ((_e5055850648_ (gx#syntax-e ___stx5155651557_)))
                (let ((_tl5056050655_ (##cdr _e5055850648_))
                      (_hd5055950652_ (##car _e5055850648_)))
                  (if (gx#stx-pair? _tl5056050655_)
                      (let ((_e5056150658_ (gx#syntax-e _tl5056050655_)))
                        (let ((_tl5056350665_ (##cdr _e5056150658_))
                              (_hd5056250662_ (##car _e5056150658_)))
                          (if (gx#stx-pair? _tl5056350665_)
                              (let ((_e5056450668_
                                     (gx#syntax-e _tl5056350665_)))
                                (let ((_tl5056650675_ (##cdr _e5056450668_))
                                      (_hd5056550672_ (##car _e5056450668_)))
                                  (if (gx#stx-pair? _tl5056650675_)
                                      (let ((_e5056750678_
                                             (gx#syntax-e _tl5056650675_)))
                                        (let ((_tl5056950685_
                                               (##cdr _e5056750678_))
                                              (_hd5056850682_
                                               (##car _e5056750678_)))
                                          (if (gx#stx-null? _tl5056950685_)
                                              (___kont5155951560_
                                               _hd5056850682_
                                               _hd5056550672_
                                               _hd5056250662_)
                                              (_g5055350586_))))
                                      (if (gx#stx-null? _tl5056650675_)
                                          (___kont5156151562_
                                           _hd5056550672_
                                           _hd5056250662_)
                                          (_g5055350586_)))))
                              (_g5055350586_))))
                      (_g5055350586_))))
              (_g5055350586_))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx50713_)
      (let* ((___stx5161251613_ _$stx50713_)
             (_g5071950760_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5161251613_))))
        (let ((___kont5161551616_
               (lambda (_L50908_ _L50910_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L50910_ '()))
                                   (cons '#f
                                         (cons _L50908_
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50908_ '()))
                                                     '()))))))))
              (___kont5161751618_
               (lambda (_L50840_ _L50842_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L50842_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L50840_ '()))
                                         '()))))))
              (___kont5161951620_
               (lambda (_L50787_ _L50789_)
                 (cons _L50789_ (cons _L50787_ (cons '#f '()))))))
          (if (gx#stx-pair? ___stx5161251613_)
              (let ((_e5072350864_ (gx#syntax-e ___stx5161251613_)))
                (let ((_tl5072550871_ (##cdr _e5072350864_))
                      (_hd5072450868_ (##car _e5072350864_)))
                  (if (gx#stx-pair? _tl5072550871_)
                      (let ((_e5072650874_ (gx#syntax-e _tl5072550871_)))
                        (let ((_tl5072850881_ (##cdr _e5072650874_))
                              (_hd5072750878_ (##car _e5072650874_)))
                          (if (gx#stx-pair? _tl5072850881_)
                              (let ((_e5072950884_
                                     (gx#syntax-e _tl5072850881_)))
                                (let ((_tl5073150891_ (##cdr _e5072950884_))
                                      (_hd5073050888_ (##car _e5072950884_)))
                                  (if (gx#stx-datum? _hd5073050888_)
                                      (let ((_e5073250894_
                                             (gx#stx-e _hd5073050888_)))
                                        (if (equal? _e5073250894_ 'inline:)
                                            (if (gx#stx-pair? _tl5073150891_)
                                                (let ((_e5073350898_
                                                       (gx#syntax-e
                                                        _tl5073150891_)))
                                                  (let ((_tl5073550905_
                                                         (##cdr _e5073350898_))
                                                        (_hd5073450902_
                                                         (##car _e5073350898_)))
                                                    (if (gx#stx-null?
                                                         _tl5073550905_)
                                                        (___kont5161551616_
                                                         _hd5073450902_
                                                         _hd5072750878_)
                                                        (_g5071950760_))))
                                                (if (gx#stx-null?
                                                     _tl5073150891_)
                                                    (___kont5161751618_
                                                     _hd5073050888_
                                                     _hd5072750878_)
                                                    (_g5071950760_)))
                                            (if (gx#stx-null? _tl5073150891_)
                                                (___kont5161751618_
                                                 _hd5073050888_
                                                 _hd5072750878_)
                                                (_g5071950760_))))
                                      (if (gx#stx-null? _tl5073150891_)
                                          (___kont5161751618_
                                           _hd5073050888_
                                           _hd5072750878_)
                                          (_g5071950760_)))))
                              (if (gx#stx-null? _tl5072850881_)
                                  (___kont5161951620_
                                   _hd5072750878_
                                   _hd5072450868_)
                                  (_g5071950760_)))))
                      (_g5071950760_))))
              (_g5071950760_))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx50932_)
      (let* ((_g5093650965_
              (lambda (_g5093750961_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5093750961_)))
             (_g5093551065_
              (lambda (_g5093750969_)
                (if (gx#stx-pair? _g5093750969_)
                    (let ((_e5094050972_ (gx#syntax-e _g5093750969_)))
                      (let ((_hd5094150976_ (##car _e5094050972_))
                            (_tl5094250979_ (##cdr _e5094050972_)))
                        (if (gx#stx-pair/null? _tl5094250979_)
                            (let ((_g51695_
                                   (gx#syntax-split-splice _tl5094250979_ '0)))
                              (begin
                                (let ((_g51696_
                                       (if (##values? _g51695_)
                                           (##vector-length _g51695_)
                                           1)))
                                  (if (not (##fx= _g51696_ 2))
                                      (error "Context expects 2 values"
                                             _g51696_)))
                                (let ((_target5094350982_
                                       (##vector-ref _g51695_ 0))
                                      (_tl5094550985_
                                       (##vector-ref _g51695_ 1)))
                                  (if (gx#stx-null? _tl5094550985_)
                                      (letrec ((_loop5094650988_
                                                (lambda (_hd5094450992_
                                                         _dispatch5095050995_
                                                         _arity5095150997_)
                                                  (if (gx#stx-pair?
                                                       _hd5094450992_)
                                                      (let ((_e5094751000_
                                                             (gx#syntax-e
                                                              _hd5094450992_)))
                                                        (let ((_lp-hd5094851004_
                                                               (##car _e5094751000_))
                                                              (_lp-tl5094951007_
                                                               (##cdr _e5094751000_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5094851004_)
                                                              (let ((_e5095451010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5094851004_)))
                        (let ((_hd5095551014_ (##car _e5095451010_))
                              (_tl5095651017_ (##cdr _e5095451010_)))
                          (if (gx#stx-pair? _tl5095651017_)
                              (let ((_e5095751020_
                                     (gx#syntax-e _tl5095651017_)))
                                (let ((_hd5095851024_ (##car _e5095751020_))
                                      (_tl5095951027_ (##cdr _e5095751020_)))
                                  (if (gx#stx-null? _tl5095951027_)
                                      (_loop5094650988_
                                       _lp-tl5094951007_
                                       (cons _hd5095851024_
                                             _dispatch5095050995_)
                                       (cons _hd5095551014_ _arity5095150997_))
                                      (_g5093650965_ _g5093750969_))))
                              (_g5093650965_ _g5093750969_))))
                      (_g5093650965_ _g5093750969_))))
              (let ((_dispatch5095251030_ (reverse _dispatch5095050995_))
                    (_arity5095351033_ (reverse _arity5095150997_)))
                ((lambda (_L51036_ _L51038_)
                   (cons (gx#datum->syntax__0 '#f 'make-!case-lambda)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons (gx#datum->syntax__0
                                            '#f
                                            'case-lambda)
                                           '()))
                               (cons (cons (gx#datum->syntax__0 '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _L51036_
                                              _L51038_)
                                             (foldr2 (lambda (_g5105351057_
                                                              _g5105451060_
                                                              _g5105551062_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@lambda)
                           (cons _g5105451060_ (cons _g5105351057_ '())))
                     _g5105551062_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L51036_
                                                     _L51038_)))
                                     '()))))
                 _dispatch5095251030_
                 _arity5095351033_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5094650988_
                                         _target5094350982_
                                         '()
                                         '()))
                                      (_g5093650965_ _g5093750969_)))))
                            (_g5093650965_ _g5093750969_))))
                    (_g5093650965_ _g5093750969_)))))
        (_g5093551065_ _$stx50932_))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx51070_)
      (let* ((_g5107451092_
              (lambda (_g5107551088_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5107551088_)))
             (_g5107351147_
              (lambda (_g5107551096_)
                (if (gx#stx-pair? _g5107551096_)
                    (let ((_e5107851099_ (gx#syntax-e _g5107551096_)))
                      (let ((_hd5107951103_ (##car _e5107851099_))
                            (_tl5108051106_ (##cdr _e5107851099_)))
                        (if (gx#stx-pair? _tl5108051106_)
                            (let ((_e5108151109_ (gx#syntax-e _tl5108051106_)))
                              (let ((_hd5108251113_ (##car _e5108151109_))
                                    (_tl5108351116_ (##cdr _e5108151109_)))
                                (if (gx#stx-pair? _tl5108351116_)
                                    (let ((_e5108451119_
                                           (gx#syntax-e _tl5108351116_)))
                                      (let ((_hd5108551123_
                                             (##car _e5108451119_))
                                            (_tl5108651126_
                                             (##cdr _e5108451119_)))
                                        (if (gx#stx-null? _tl5108651126_)
                                            ((lambda (_L51129_ _L51131_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda) '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L51131_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51129_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5108551123_
                                             _hd5108251113_)
                                            (_g5107451092_ _g5107551096_))))
                                    (_g5107451092_ _g5107551096_))))
                            (_g5107451092_ _g5107551096_))))
                    (_g5107451092_ _g5107551096_)))))
        (_g5107351147_ _$stx51070_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx51151_)
      (let* ((_g5115551173_
              (lambda (_g5115651169_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5115651169_)))
             (_g5115451228_
              (lambda (_g5115651177_)
                (if (gx#stx-pair? _g5115651177_)
                    (let ((_e5115951180_ (gx#syntax-e _g5115651177_)))
                      (let ((_hd5116051184_ (##car _e5115951180_))
                            (_tl5116151187_ (##cdr _e5115951180_)))
                        (if (gx#stx-pair? _tl5116151187_)
                            (let ((_e5116251190_ (gx#syntax-e _tl5116151187_)))
                              (let ((_hd5116351194_ (##car _e5116251190_))
                                    (_tl5116451197_ (##cdr _e5116251190_)))
                                (if (gx#stx-pair? _tl5116451197_)
                                    (let ((_e5116551200_
                                           (gx#syntax-e _tl5116451197_)))
                                      (let ((_hd5116651204_
                                             (##car _e5116551200_))
                                            (_tl5116751207_
                                             (##cdr _e5116551200_)))
                                        (if (gx#stx-null? _tl5116751207_)
                                            ((lambda (_L51210_ _L51212_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda-primary)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda-dispatch)
                               '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L51212_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51210_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5116651204_
                                             _hd5116351194_)
                                            (_g5115551173_ _g5115651177_))))
                                    (_g5115551173_ _g5115651177_))))
                            (_g5115551173_ _g5115651177_))))
                    (_g5115551173_ _g5115651177_)))))
        (_g5115451228_ _$stx51151_)))))
