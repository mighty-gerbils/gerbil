(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx48822_)
      (let* ((_g4882648844_
              (lambda (_g4882748840_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4882748840_)))
             (_g4882548899_
              (lambda (_g4882748848_)
                (if (gx#stx-pair? _g4882748848_)
                    (let ((_e4883048851_ (gx#syntax-e _g4882748848_)))
                      (let ((_hd4883148855_ (##car _e4883048851_))
                            (_tl4883248858_ (##cdr _e4883048851_)))
                        (if (gx#stx-pair? _tl4883248858_)
                            (let ((_e4883348861_ (gx#syntax-e _tl4883248858_)))
                              (let ((_hd4883448865_ (##car _e4883348861_))
                                    (_tl4883548868_ (##cdr _e4883348861_)))
                                (if (gx#stx-pair? _tl4883548868_)
                                    (let ((_e4883648871_
                                           (gx#syntax-e _tl4883548868_)))
                                      (let ((_hd4883748875_
                                             (##car _e4883648871_))
                                            (_tl4883848878_
                                             (##cdr _e4883648871_)))
                                        (if (gx#stx-null? _tl4883848878_)
                                            ((lambda (_L48881_ _L48883_)
                                               (if (gx#identifier? _L48883_)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'optimizer-declare-type!)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L48883_ '()))
                       (cons _L48881_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4882648844_
                                                    _g4882748848_)))
                                             _hd4883748875_
                                             _hd4883448865_)
                                            (_g4882648844_ _g4882748848_))))
                                    (_g4882648844_ _g4882748848_))))
                            (_g4882648844_ _g4882748848_))))
                    (_g4882648844_ _g4882748848_)))))
        (_g4882548899_ _$stx48822_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx48903_)
      (let* ((_g4890748936_
              (lambda (_g4890848932_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4890848932_)))
             (_g4890649036_
              (lambda (_g4890848940_)
                (if (gx#stx-pair? _g4890848940_)
                    (let ((_e4891148943_ (gx#syntax-e _g4890848940_)))
                      (let ((_hd4891248947_ (##car _e4891148943_))
                            (_tl4891348950_ (##cdr _e4891148943_)))
                        (if (gx#stx-pair/null? _tl4891348950_)
                            (let ((_g51644_
                                   (gx#syntax-split-splice _tl4891348950_ '0)))
                              (begin
                                (let ((_g51645_
                                       (if (##values? _g51644_)
                                           (##vector-length _g51644_)
                                           1)))
                                  (if (not (##fx= _g51645_ 2))
                                      (error "Context expects 2 values"
                                             _g51645_)))
                                (let ((_target4891448953_
                                       (##vector-ref _g51644_ 0))
                                      (_tl4891648956_
                                       (##vector-ref _g51644_ 1)))
                                  (if (gx#stx-null? _tl4891648956_)
                                      (letrec ((_loop4891748959_
                                                (lambda (_hd4891548963_
                                                         _type4892148966_
                                                         _symbol4892248968_)
                                                  (if (gx#stx-pair?
                                                       _hd4891548963_)
                                                      (let ((_e4891848971_
                                                             (gx#syntax-e
                                                              _hd4891548963_)))
                                                        (let ((_lp-hd4891948975_
                                                               (##car _e4891848971_))
                                                              (_lp-tl4892048978_
                                                               (##cdr _e4891848971_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4891948975_)
                                                              (let ((_e4892548981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4891948975_)))
                        (let ((_hd4892648985_ (##car _e4892548981_))
                              (_tl4892748988_ (##cdr _e4892548981_)))
                          (if (gx#stx-pair? _tl4892748988_)
                              (let ((_e4892848991_
                                     (gx#syntax-e _tl4892748988_)))
                                (let ((_hd4892948995_ (##car _e4892848991_))
                                      (_tl4893048998_ (##cdr _e4892848991_)))
                                  (if (gx#stx-null? _tl4893048998_)
                                      (_loop4891748959_
                                       _lp-tl4892048978_
                                       (cons _hd4892948995_ _type4892148966_)
                                       (cons _hd4892648985_
                                             _symbol4892248968_))
                                      (_g4890748936_ _g4890848940_))))
                              (_g4890748936_ _g4890848940_))))
                      (_g4890748936_ _g4890848940_))))
              (let ((_type4892349001_ (reverse _type4892148966_))
                    (_symbol4892449004_ (reverse _symbol4892248968_)))
                ((lambda (_L49007_ _L49009_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L49007_ _L49009_)
                           (foldr2 (lambda (_g4902449028_
                                            _g4902549031_
                                            _g4902649033_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type)
                                                 (cons _g4902549031_
                                                       (cons _g4902449028_
                                                             '())))
                                           _g4902649033_))
                                   '()
                                   _L49007_
                                   _L49009_))))
                 _type4892349001_
                 _symbol4892449004_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4891748959_
                                         _target4891448953_
                                         '()
                                         '()))
                                      (_g4890748936_ _g4890848940_)))))
                            (_g4890748936_ _g4890848940_))))
                    (_g4890748936_ _g4890848940_)))))
        (_g4890649036_ _$stx48903_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx49041_)
      (let* ((___stx5118751188_ _$stx49041_)
             (_g4904649088_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5118751188_))))
        (let ((___kont5119051191_
               (lambda (_L49216_ _L49218_ _L49219_ _L49220_)
                 (cons (gx#datum->syntax__0 '#f 'optimizer-declare-method!)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L49220_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L49219_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L49218_ '()))
                                         (cons _L49216_ '())))))))
              (___kont5119251193_
               (lambda (_L49135_ _L49137_ _L49138_ _L49139_)
                 (cons _L49139_
                       (cons _L49138_
                             (cons _L49137_
                                   (cons _L49135_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                'rebind?)
                                               '()))))))))
          (let ((___match5122651227_
                 (lambda (_e4905249166_
                          _hd4905349170_
                          _tl4905449173_
                          _e4905549176_
                          _hd4905649180_
                          _tl4905749183_
                          _e4905849186_
                          _hd4905949190_
                          _tl4906049193_
                          _e4906149196_
                          _hd4906249200_
                          _tl4906349203_
                          _e4906449206_
                          _hd4906549210_
                          _tl4906649213_)
                   (let ((_L49216_ _hd4906549210_)
                         (_L49218_ _hd4906249200_)
                         (_L49219_ _hd4905949190_)
                         (_L49220_ _hd4905649180_))
                     (if (if (gx#identifier? _L49220_)
                             (if (gx#identifier? _L49219_)
                                 (gx#identifier? _L49218_)
                                 '#f)
                             '#f)
                         (___kont5119051191_
                          _L49216_
                          _L49218_
                          _L49219_
                          _L49220_)
                         (_g4904649088_))))))
            (if (gx#stx-pair? ___stx5118751188_)
                (let ((_e4905249166_ (gx#syntax-e ___stx5118751188_)))
                  (let ((_tl4905449173_ (##cdr _e4905249166_))
                        (_hd4905349170_ (##car _e4905249166_)))
                    (if (gx#stx-pair? _tl4905449173_)
                        (let ((_e4905549176_ (gx#syntax-e _tl4905449173_)))
                          (let ((_tl4905749183_ (##cdr _e4905549176_))
                                (_hd4905649180_ (##car _e4905549176_)))
                            (if (gx#stx-pair? _tl4905749183_)
                                (let ((_e4905849186_
                                       (gx#syntax-e _tl4905749183_)))
                                  (let ((_tl4906049193_ (##cdr _e4905849186_))
                                        (_hd4905949190_ (##car _e4905849186_)))
                                    (if (gx#stx-pair? _tl4906049193_)
                                        (let ((_e4906149196_
                                               (gx#syntax-e _tl4906049193_)))
                                          (let ((_tl4906349203_
                                                 (##cdr _e4906149196_))
                                                (_hd4906249200_
                                                 (##car _e4906149196_)))
                                            (if (gx#stx-pair? _tl4906349203_)
                                                (let ((_e4906449206_
                                                       (gx#syntax-e
                                                        _tl4906349203_)))
                                                  (let ((_tl4906649213_
                                                         (##cdr _e4906449206_))
                                                        (_hd4906549210_
                                                         (##car _e4906449206_)))
                                                    (if (gx#stx-null?
                                                         _tl4906649213_)
                                                        (___match5122651227_
                                                         _e4905249166_
                                                         _hd4905349170_
                                                         _tl4905449173_
                                                         _e4905549176_
                                                         _hd4905649180_
                                                         _tl4905749183_
                                                         _e4905849186_
                                                         _hd4905949190_
                                                         _tl4906049193_
                                                         _e4906149196_
                                                         _hd4906249200_
                                                         _tl4906349203_
                                                         _e4906449206_
                                                         _hd4906549210_
                                                         _tl4906649213_)
                                                        (_g4904649088_))))
                                                (if (gx#stx-null?
                                                     _tl4906349203_)
                                                    (___kont5119251193_
                                                     _hd4906249200_
                                                     _hd4905949190_
                                                     _hd4905649180_
                                                     _hd4905349170_)
                                                    (_g4904649088_)))))
                                        (_g4904649088_))))
                                (_g4904649088_))))
                        (_g4904649088_))))
                (_g4904649088_)))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx49245_)
      (let* ((_g4924949284_
              (lambda (_g4925049280_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4925049280_)))
             (_g4924849403_
              (lambda (_g4925049288_)
                (if (gx#stx-pair? _g4925049288_)
                    (let ((_e4925449291_ (gx#syntax-e _g4925049288_)))
                      (let ((_hd4925549295_ (##car _e4925449291_))
                            (_tl4925649298_ (##cdr _e4925449291_)))
                        (if (gx#stx-pair/null? _tl4925649298_)
                            (let ((_g51646_
                                   (gx#syntax-split-splice _tl4925649298_ '0)))
                              (begin
                                (let ((_g51647_
                                       (if (##values? _g51646_)
                                           (##vector-length _g51646_)
                                           1)))
                                  (if (not (##fx= _g51647_ 2))
                                      (error "Context expects 2 values"
                                             _g51647_)))
                                (let ((_target4925749301_
                                       (##vector-ref _g51646_ 0))
                                      (_tl4925949304_
                                       (##vector-ref _g51646_ 1)))
                                  (if (gx#stx-null? _tl4925949304_)
                                      (letrec ((_loop4926049307_
                                                (lambda (_hd4925849311_
                                                         _symbol4926449314_
                                                         _method4926549316_
                                                         _type-t4926649318_)
                                                  (if (gx#stx-pair?
                                                       _hd4925849311_)
                                                      (let ((_e4926149321_
                                                             (gx#syntax-e
                                                              _hd4925849311_)))
                                                        (let ((_lp-hd4926249325_
                                                               (##car _e4926149321_))
                                                              (_lp-tl4926349328_
                                                               (##cdr _e4926149321_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4926249325_)
                                                              (let ((_e4927049331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4926249325_)))
                        (let ((_hd4927149335_ (##car _e4927049331_))
                              (_tl4927249338_ (##cdr _e4927049331_)))
                          (if (gx#stx-pair? _tl4927249338_)
                              (let ((_e4927349341_
                                     (gx#syntax-e _tl4927249338_)))
                                (let ((_hd4927449345_ (##car _e4927349341_))
                                      (_tl4927549348_ (##cdr _e4927349341_)))
                                  (if (gx#stx-pair? _tl4927549348_)
                                      (let ((_e4927649351_
                                             (gx#syntax-e _tl4927549348_)))
                                        (let ((_hd4927749355_
                                               (##car _e4927649351_))
                                              (_tl4927849358_
                                               (##cdr _e4927649351_)))
                                          (if (gx#stx-null? _tl4927849358_)
                                              (_loop4926049307_
                                               _lp-tl4926349328_
                                               (cons _hd4927749355_
                                                     _symbol4926449314_)
                                               (cons _hd4927449345_
                                                     _method4926549316_)
                                               (cons _hd4927149335_
                                                     _type-t4926649318_))
                                              (_g4924949284_ _g4925049288_))))
                                      (_g4924949284_ _g4925049288_))))
                              (_g4924949284_ _g4925049288_))))
                      (_g4924949284_ _g4925049288_))))
              (let ((_symbol4926749361_ (reverse _symbol4926449314_))
                    (_method4926849364_ (reverse _method4926549316_))
                    (_type-t4926949366_ (reverse _type-t4926649318_)))
                ((lambda (_L49369_ _L49371_ _L49372_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _L49369_
                            _L49371_
                            _L49372_)
                           (foldr (lambda (_g4938849393_
                                           _g4938949396_
                                           _g4939049398_
                                           _g4939149400_)
                                    (cons (cons (gx#datum->syntax__0
                                                 '#f
                                                 'declare-method)
                                                (cons _g4939049398_
                                                      (cons _g4938949396_
                                                            (cons _g4938849393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g4939149400_))
                                  '()
                                  _L49369_
                                  _L49371_
                                  _L49372_))))
                 _symbol4926749361_
                 _method4926849364_
                 _type-t4926949366_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4926049307_
                                         _target4925749301_
                                         '()
                                         '()
                                         '()))
                                      (_g4924949284_ _g4925049288_)))))
                            (_g4924949284_ _g4925049288_))))
                    (_g4924949284_ _g4925049288_)))))
        (_g4924849403_ _$stx49245_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx49408_)
      (let* ((_g4941249445_
              (lambda (_g4941349441_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4941349441_)))
             (_g4941149559_
              (lambda (_g4941349449_)
                (if (gx#stx-pair? _g4941349449_)
                    (let ((_e4941749452_ (gx#syntax-e _g4941349449_)))
                      (let ((_hd4941849456_ (##car _e4941749452_))
                            (_tl4941949459_ (##cdr _e4941749452_)))
                        (if (gx#stx-pair? _tl4941949459_)
                            (let ((_e4942049462_ (gx#syntax-e _tl4941949459_)))
                              (let ((_hd4942149466_ (##car _e4942049462_))
                                    (_tl4942249469_ (##cdr _e4942049462_)))
                                (if (gx#stx-pair/null? _tl4942249469_)
                                    (let ((_g51648_
                                           (gx#syntax-split-splice
                                            _tl4942249469_
                                            '0)))
                                      (begin
                                        (let ((_g51649_
                                               (if (##values? _g51648_)
                                                   (##vector-length _g51648_)
                                                   1)))
                                          (if (not (##fx= _g51649_ 2))
                                              (error "Context expects 2 values"
                                                     _g51649_)))
                                        (let ((_target4942349472_
                                               (##vector-ref _g51648_ 0))
                                              (_tl4942549475_
                                               (##vector-ref _g51648_ 1)))
                                          (if (gx#stx-null? _tl4942549475_)
                                              (letrec ((_loop4942649478_
                                                        (lambda (_hd4942449482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol4943049485_
                         _method4943149487_)
                  (if (gx#stx-pair? _hd4942449482_)
                      (let ((_e4942749490_ (gx#syntax-e _hd4942449482_)))
                        (let ((_lp-hd4942849494_ (##car _e4942749490_))
                              (_lp-tl4942949497_ (##cdr _e4942749490_)))
                          (if (gx#stx-pair? _lp-hd4942849494_)
                              (let ((_e4943449500_
                                     (gx#syntax-e _lp-hd4942849494_)))
                                (let ((_hd4943549504_ (##car _e4943449500_))
                                      (_tl4943649507_ (##cdr _e4943449500_)))
                                  (if (gx#stx-pair? _tl4943649507_)
                                      (let ((_e4943749510_
                                             (gx#syntax-e _tl4943649507_)))
                                        (let ((_hd4943849514_
                                               (##car _e4943749510_))
                                              (_tl4943949517_
                                               (##cdr _e4943749510_)))
                                          (if (gx#stx-null? _tl4943949517_)
                                              (_loop4942649478_
                                               _lp-tl4942949497_
                                               (cons _hd4943849514_
                                                     _symbol4943049485_)
                                               (cons _hd4943549504_
                                                     _method4943149487_))
                                              (_g4941249445_ _g4941349449_))))
                                      (_g4941249445_ _g4941349449_))))
                              (_g4941249445_ _g4941349449_))))
                      (let ((_symbol4943249520_ (reverse _symbol4943049485_))
                            (_method4943349523_ (reverse _method4943149487_)))
                        ((lambda (_L49526_ _L49528_ _L49529_)
                           (cons (gx#datum->syntax__0 '#f 'begin)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _L49526_
                                    _L49528_)
                                   (foldr2 (lambda (_g4954749551_
                                                    _g4954849554_
                                                    _g4954949556_)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method)
                                                         (cons _L49529_
                                                               (cons _g4954849554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _g4954749551_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g4954949556_))
                                           '()
                                           _L49526_
                                           _L49528_))))
                         _symbol4943249520_
                         _method4943349523_
                         _hd4942149466_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop4942649478_
                                                 _target4942349472_
                                                 '()
                                                 '()))
                                              (_g4941249445_ _g4941349449_)))))
                                    (_g4941249445_ _g4941349449_))))
                            (_g4941249445_ _g4941349449_))))
                    (_g4941249445_ _g4941349449_)))))
        (_g4941149559_ _$stx49408_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx49564_)
      (let* ((_g4956849582_
              (lambda (_g4956949578_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4956949578_)))
             (_g4956749623_
              (lambda (_g4956949586_)
                (if (gx#stx-pair? _g4956949586_)
                    (let ((_e4957149589_ (gx#syntax-e _g4956949586_)))
                      (let ((_hd4957249593_ (##car _e4957149589_))
                            (_tl4957349596_ (##cdr _e4957149589_)))
                        (if (gx#stx-pair? _tl4957349596_)
                            (let ((_e4957449599_ (gx#syntax-e _tl4957349596_)))
                              (let ((_hd4957549603_ (##car _e4957449599_))
                                    (_tl4957649606_ (##cdr _e4957449599_)))
                                (if (gx#stx-null? _tl4957649606_)
                                    ((lambda (_L49609_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!alias)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L49609_ '()))
                                                   '())))
                                     _hd4957549603_)
                                    (_g4956849582_ _g4956949586_))))
                            (_g4956849582_ _g4956949586_))))
                    (_g4956849582_ _g4956949586_)))))
        (_g4956749623_ _$stx49564_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx49627_)
      (let* ((___stx5125551256_ _$stx49627_)
             (_g4963349699_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5125551256_))))
        (let ((___kont5125851259_
               (lambda (_L49921_ _L49923_ _L49924_ _L49925_ _L49926_)
                 (cons (gx#datum->syntax__0 '#f '@make-struct-type)
                       (cons _L49926_
                             (cons _L49925_
                                   (cons _L49924_
                                         (cons _L49923_
                                               (cons _L49921_ '()))))))))
              (___kont5126051261_
               (lambda (_L49831_ _L49833_ _L49834_ _L49835_)
                 (cons _L49835_
                       (cons _L49834_
                             (cons _L49833_
                                   (cons _L49831_
                                         (cons '#f (cons '#f '()))))))))
              (___kont5126251263_
               (lambda (_L49756_ _L49758_ _L49759_ _L49760_ _L49761_)
                 (cons _L49761_
                       (cons (gx#datum->syntax__0 '#f 'type)
                             (cons _L49759_
                                   (cons _L49758_
                                         (cons _L49756_ (cons '#f '())))))))))
          (if (gx#stx-pair? ___stx5125551256_)
              (let ((_e4964049861_ (gx#syntax-e ___stx5125551256_)))
                (let ((_tl4964249868_ (##cdr _e4964049861_))
                      (_hd4964149865_ (##car _e4964049861_)))
                  (if (gx#stx-pair? _tl4964249868_)
                      (let ((_e4964349871_ (gx#syntax-e _tl4964249868_)))
                        (let ((_tl4964549878_ (##cdr _e4964349871_))
                              (_hd4964449875_ (##car _e4964349871_)))
                          (if (gx#stx-pair? _tl4964549878_)
                              (let ((_e4964649881_
                                     (gx#syntax-e _tl4964549878_)))
                                (let ((_tl4964849888_ (##cdr _e4964649881_))
                                      (_hd4964749885_ (##car _e4964649881_)))
                                  (if (gx#stx-pair? _tl4964849888_)
                                      (let ((_e4964949891_
                                             (gx#syntax-e _tl4964849888_)))
                                        (let ((_tl4965149898_
                                               (##cdr _e4964949891_))
                                              (_hd4965049895_
                                               (##car _e4964949891_)))
                                          (if (gx#stx-pair? _tl4965149898_)
                                              (let ((_e4965249901_
                                                     (gx#syntax-e
                                                      _tl4965149898_)))
                                                (let ((_tl4965449908_
                                                       (##cdr _e4965249901_))
                                                      (_hd4965349905_
                                                       (##car _e4965249901_)))
                                                  (if (gx#stx-pair?
                                                       _tl4965449908_)
                                                      (let ((_e4965549911_
                                                             (gx#syntax-e
                                                              _tl4965449908_)))
                                                        (let ((_tl4965749918_
                                                               (##cdr _e4965549911_))
                                                              (_hd4965649915_
                                                               (##car _e4965549911_)))
                                                          (if (gx#stx-null?
                                                               _tl4965749918_)
                                                              (___kont5125851259_
                                                               _hd4965649915_
                                                               _hd4965349905_
                                                               _hd4965049895_
                                                               _hd4964749885_
                                                               _hd4964449875_)
                                                              (_g4963349699_))))
                                                      (if (gx#stx-null?
                                                           _tl4965449908_)
                                                          (___kont5126251263_
                                                           _hd4965349905_
                                                           _hd4965049895_
                                                           _hd4964749885_
                                                           _hd4964449875_
                                                           _hd4964149865_)
                                                          (_g4963349699_)))))
                                              (if (gx#stx-null? _tl4965149898_)
                                                  (___kont5126051261_
                                                   _hd4965049895_
                                                   _hd4964749885_
                                                   _hd4964449875_
                                                   _hd4964149865_)
                                                  (_g4963349699_)))))
                                      (_g4963349699_))))
                              (_g4963349699_))))
                      (_g4963349699_))))
              (_g4963349699_))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx49954_)
      (let* ((___stx5136351364_ _$stx49954_)
             (_g4995950012_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5136351364_))))
        (let ((___kont5136651367_
               (lambda (_L50180_ _L50182_ _L50183_ _L50184_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-type)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50184_ '()))
                             (cons '#f
                                   (cons _L50183_
                                         (cons '0
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50182_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50180_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (___kont5136851369_
               (lambda (_L50079_ _L50081_ _L50082_ _L50083_ _L50084_)
                 (cons (gx#datum->syntax__0 '#f 'let*)
                       (cons (cons (cons (gx#datum->syntax__0 '#f 'super-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'optimizer-resolve-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50083_ '()))
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
                                     (cons _L50081_ '()))
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
                                                     (cons _L50084_ '()))
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50083_ '()))
                                                     (cons _L50082_
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'xfields)
                         (cons (gx#datum->syntax__0 '#f 'xtor)
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L50079_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))))))
          (if (gx#stx-pair? ___stx5136351364_)
              (let ((_e4996550116_ (gx#syntax-e ___stx5136351364_)))
                (let ((_tl4996750123_ (##cdr _e4996550116_))
                      (_hd4996650120_ (##car _e4996550116_)))
                  (if (gx#stx-pair? _tl4996750123_)
                      (let ((_e4996850126_ (gx#syntax-e _tl4996750123_)))
                        (let ((_tl4997050133_ (##cdr _e4996850126_))
                              (_hd4996950130_ (##car _e4996850126_)))
                          (if (gx#stx-pair? _tl4997050133_)
                              (let ((_e4997150136_
                                     (gx#syntax-e _tl4997050133_)))
                                (let ((_tl4997350143_ (##cdr _e4997150136_))
                                      (_hd4997250140_ (##car _e4997150136_)))
                                  (if (gx#stx-datum? _hd4997250140_)
                                      (let ((_e4997450146_
                                             (gx#stx-e _hd4997250140_)))
                                        (if (equal? _e4997450146_ '#f)
                                            (if (gx#stx-pair? _tl4997350143_)
                                                (let ((_e4997550150_
                                                       (gx#syntax-e
                                                        _tl4997350143_)))
                                                  (let ((_tl4997750157_
                                                         (##cdr _e4997550150_))
                                                        (_hd4997650154_
                                                         (##car _e4997550150_)))
                                                    (if (gx#stx-pair?
                                                         _tl4997750157_)
                                                        (let ((_e4997850160_
                                                               (gx#syntax-e
                                                                _tl4997750157_)))
                                                          (let ((_tl4998050167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4997850160_))
                        (_hd4997950164_ (##car _e4997850160_)))
                    (if (gx#stx-pair? _tl4998050167_)
                        (let ((_e4998150170_ (gx#syntax-e _tl4998050167_)))
                          (let ((_tl4998350177_ (##cdr _e4998150170_))
                                (_hd4998250174_ (##car _e4998150170_)))
                            (if (gx#stx-null? _tl4998350177_)
                                (___kont5136651367_
                                 _hd4998250174_
                                 _hd4997950164_
                                 _hd4997650154_
                                 _hd4996950130_)
                                (_g4995950012_))))
                        (_g4995950012_))))
                (_g4995950012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4995950012_))
                                            (if (gx#stx-pair? _tl4997350143_)
                                                (let ((_e4999850049_
                                                       (gx#syntax-e
                                                        _tl4997350143_)))
                                                  (let ((_tl5000050056_
                                                         (##cdr _e4999850049_))
                                                        (_hd4999950053_
                                                         (##car _e4999850049_)))
                                                    (if (gx#stx-pair?
                                                         _tl5000050056_)
                                                        (let ((_e5000150059_
                                                               (gx#syntax-e
                                                                _tl5000050056_)))
                                                          (let ((_tl5000350066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5000150059_))
                        (_hd5000250063_ (##car _e5000150059_)))
                    (if (gx#stx-pair? _tl5000350066_)
                        (let ((_e5000450069_ (gx#syntax-e _tl5000350066_)))
                          (let ((_tl5000650076_ (##cdr _e5000450069_))
                                (_hd5000550073_ (##car _e5000450069_)))
                            (if (gx#stx-null? _tl5000650076_)
                                (___kont5136851369_
                                 _hd5000550073_
                                 _hd5000250063_
                                 _hd4999950053_
                                 _hd4997250140_
                                 _hd4996950130_)
                                (_g4995950012_))))
                        (_g4995950012_))))
                (_g4995950012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4995950012_))))
                                      (if (gx#stx-pair? _tl4997350143_)
                                          (let ((_e4999850049_
                                                 (gx#syntax-e _tl4997350143_)))
                                            (let ((_tl5000050056_
                                                   (##cdr _e4999850049_))
                                                  (_hd4999950053_
                                                   (##car _e4999850049_)))
                                              (if (gx#stx-pair? _tl5000050056_)
                                                  (let ((_e5000150059_
                                                         (gx#syntax-e
                                                          _tl5000050056_)))
                                                    (let ((_tl5000350066_
                                                           (##cdr _e5000150059_))
                                                          (_hd5000250063_
                                                           (##car _e5000150059_)))
                                                      (if (gx#stx-pair?
                                                           _tl5000350066_)
                                                          (let ((_e5000450069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl5000350066_)))
                    (let ((_tl5000650076_ (##cdr _e5000450069_))
                          (_hd5000550073_ (##car _e5000450069_)))
                      (if (gx#stx-null? _tl5000650076_)
                          (___kont5136851369_
                           _hd5000550073_
                           _hd5000250063_
                           _hd4999950053_
                           _hd4997250140_
                           _hd4996950130_)
                          (_g4995950012_))))
                  (_g4995950012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4995950012_))))
                                          (_g4995950012_)))))
                              (_g4995950012_))))
                      (_g4995950012_))))
              (_g4995950012_))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx50212_)
      (let* ((_g5021650230_
              (lambda (_g5021750226_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5021750226_)))
             (_g5021550271_
              (lambda (_g5021750234_)
                (if (gx#stx-pair? _g5021750234_)
                    (let ((_e5021950237_ (gx#syntax-e _g5021750234_)))
                      (let ((_hd5022050241_ (##car _e5021950237_))
                            (_tl5022150244_ (##cdr _e5021950237_)))
                        (if (gx#stx-pair? _tl5022150244_)
                            (let ((_e5022250247_ (gx#syntax-e _tl5022150244_)))
                              (let ((_hd5022350251_ (##car _e5022250247_))
                                    (_tl5022450254_ (##cdr _e5022250247_)))
                                (if (gx#stx-null? _tl5022450254_)
                                    ((lambda (_L50257_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50257_ '()))
                                                   '())))
                                     _hd5022350251_)
                                    (_g5021650230_ _g5021750234_))))
                            (_g5021650230_ _g5021750234_))))
                    (_g5021650230_ _g5021750234_)))))
        (_g5021550271_ _$stx50212_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx50275_)
      (let* ((_g5027950293_
              (lambda (_g5028050289_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5028050289_)))
             (_g5027850334_
              (lambda (_g5028050297_)
                (if (gx#stx-pair? _g5028050297_)
                    (let ((_e5028250300_ (gx#syntax-e _g5028050297_)))
                      (let ((_hd5028350304_ (##car _e5028250300_))
                            (_tl5028450307_ (##cdr _e5028250300_)))
                        (if (gx#stx-pair? _tl5028450307_)
                            (let ((_e5028550310_ (gx#syntax-e _tl5028450307_)))
                              (let ((_hd5028650314_ (##car _e5028550310_))
                                    (_tl5028750317_ (##cdr _e5028550310_)))
                                (if (gx#stx-null? _tl5028750317_)
                                    ((lambda (_L50320_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50320_ '()))
                                                   '())))
                                     _hd5028650314_)
                                    (_g5027950293_ _g5028050297_))))
                            (_g5027950293_ _g5028050297_))))
                    (_g5027950293_ _g5028050297_)))))
        (_g5027850334_ _$stx50275_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx50338_)
      (let* ((___stx5145551456_ _$stx50338_)
             (_g5034350376_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5145551456_))))
        (let ((___kont5145851459_
               (lambda (_L50478_ _L50480_ _L50481_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50481_ '()))
                             (cons _L50480_ (cons _L50478_ '()))))))
              (___kont5146051461_
               (lambda (_L50413_ _L50415_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50415_ '()))
                             (cons _L50413_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5145551456_)
              (let ((_e5034850438_ (gx#syntax-e ___stx5145551456_)))
                (let ((_tl5035050445_ (##cdr _e5034850438_))
                      (_hd5034950442_ (##car _e5034850438_)))
                  (if (gx#stx-pair? _tl5035050445_)
                      (let ((_e5035150448_ (gx#syntax-e _tl5035050445_)))
                        (let ((_tl5035350455_ (##cdr _e5035150448_))
                              (_hd5035250452_ (##car _e5035150448_)))
                          (if (gx#stx-pair? _tl5035350455_)
                              (let ((_e5035450458_
                                     (gx#syntax-e _tl5035350455_)))
                                (let ((_tl5035650465_ (##cdr _e5035450458_))
                                      (_hd5035550462_ (##car _e5035450458_)))
                                  (if (gx#stx-pair? _tl5035650465_)
                                      (let ((_e5035750468_
                                             (gx#syntax-e _tl5035650465_)))
                                        (let ((_tl5035950475_
                                               (##cdr _e5035750468_))
                                              (_hd5035850472_
                                               (##car _e5035750468_)))
                                          (if (gx#stx-null? _tl5035950475_)
                                              (___kont5145851459_
                                               _hd5035850472_
                                               _hd5035550462_
                                               _hd5035250452_)
                                              (_g5034350376_))))
                                      (if (gx#stx-null? _tl5035650465_)
                                          (___kont5146051461_
                                           _hd5035550462_
                                           _hd5035250452_)
                                          (_g5034350376_)))))
                              (_g5034350376_))))
                      (_g5034350376_))))
              (_g5034350376_))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx50503_)
      (let* ((___stx5151151512_ _$stx50503_)
             (_g5050850541_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5151151512_))))
        (let ((___kont5151451515_
               (lambda (_L50643_ _L50645_ _L50646_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50646_ '()))
                             (cons _L50645_ (cons _L50643_ '()))))))
              (___kont5151651517_
               (lambda (_L50578_ _L50580_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50580_ '()))
                             (cons _L50578_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5151151512_)
              (let ((_e5051350603_ (gx#syntax-e ___stx5151151512_)))
                (let ((_tl5051550610_ (##cdr _e5051350603_))
                      (_hd5051450607_ (##car _e5051350603_)))
                  (if (gx#stx-pair? _tl5051550610_)
                      (let ((_e5051650613_ (gx#syntax-e _tl5051550610_)))
                        (let ((_tl5051850620_ (##cdr _e5051650613_))
                              (_hd5051750617_ (##car _e5051650613_)))
                          (if (gx#stx-pair? _tl5051850620_)
                              (let ((_e5051950623_
                                     (gx#syntax-e _tl5051850620_)))
                                (let ((_tl5052150630_ (##cdr _e5051950623_))
                                      (_hd5052050627_ (##car _e5051950623_)))
                                  (if (gx#stx-pair? _tl5052150630_)
                                      (let ((_e5052250633_
                                             (gx#syntax-e _tl5052150630_)))
                                        (let ((_tl5052450640_
                                               (##cdr _e5052250633_))
                                              (_hd5052350637_
                                               (##car _e5052250633_)))
                                          (if (gx#stx-null? _tl5052450640_)
                                              (___kont5151451515_
                                               _hd5052350637_
                                               _hd5052050627_
                                               _hd5051750617_)
                                              (_g5050850541_))))
                                      (if (gx#stx-null? _tl5052150630_)
                                          (___kont5151651517_
                                           _hd5052050627_
                                           _hd5051750617_)
                                          (_g5050850541_)))))
                              (_g5050850541_))))
                      (_g5050850541_))))
              (_g5050850541_))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx50668_)
      (let* ((___stx5156751568_ _$stx50668_)
             (_g5067450715_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5156751568_))))
        (let ((___kont5157051571_
               (lambda (_L50863_ _L50865_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L50865_ '()))
                                   (cons '#f
                                         (cons _L50863_
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50863_ '()))
                                                     '()))))))))
              (___kont5157251573_
               (lambda (_L50795_ _L50797_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L50797_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L50795_ '()))
                                         '()))))))
              (___kont5157451575_
               (lambda (_L50742_ _L50744_)
                 (cons _L50744_ (cons _L50742_ (cons '#f '()))))))
          (if (gx#stx-pair? ___stx5156751568_)
              (let ((_e5067850819_ (gx#syntax-e ___stx5156751568_)))
                (let ((_tl5068050826_ (##cdr _e5067850819_))
                      (_hd5067950823_ (##car _e5067850819_)))
                  (if (gx#stx-pair? _tl5068050826_)
                      (let ((_e5068150829_ (gx#syntax-e _tl5068050826_)))
                        (let ((_tl5068350836_ (##cdr _e5068150829_))
                              (_hd5068250833_ (##car _e5068150829_)))
                          (if (gx#stx-pair? _tl5068350836_)
                              (let ((_e5068450839_
                                     (gx#syntax-e _tl5068350836_)))
                                (let ((_tl5068650846_ (##cdr _e5068450839_))
                                      (_hd5068550843_ (##car _e5068450839_)))
                                  (if (gx#stx-datum? _hd5068550843_)
                                      (let ((_e5068750849_
                                             (gx#stx-e _hd5068550843_)))
                                        (if (equal? _e5068750849_ 'inline:)
                                            (if (gx#stx-pair? _tl5068650846_)
                                                (let ((_e5068850853_
                                                       (gx#syntax-e
                                                        _tl5068650846_)))
                                                  (let ((_tl5069050860_
                                                         (##cdr _e5068850853_))
                                                        (_hd5068950857_
                                                         (##car _e5068850853_)))
                                                    (if (gx#stx-null?
                                                         _tl5069050860_)
                                                        (___kont5157051571_
                                                         _hd5068950857_
                                                         _hd5068250833_)
                                                        (_g5067450715_))))
                                                (if (gx#stx-null?
                                                     _tl5068650846_)
                                                    (___kont5157251573_
                                                     _hd5068550843_
                                                     _hd5068250833_)
                                                    (_g5067450715_)))
                                            (if (gx#stx-null? _tl5068650846_)
                                                (___kont5157251573_
                                                 _hd5068550843_
                                                 _hd5068250833_)
                                                (_g5067450715_))))
                                      (if (gx#stx-null? _tl5068650846_)
                                          (___kont5157251573_
                                           _hd5068550843_
                                           _hd5068250833_)
                                          (_g5067450715_)))))
                              (if (gx#stx-null? _tl5068350836_)
                                  (___kont5157451575_
                                   _hd5068250833_
                                   _hd5067950823_)
                                  (_g5067450715_)))))
                      (_g5067450715_))))
              (_g5067450715_))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx50887_)
      (let* ((_g5089150920_
              (lambda (_g5089250916_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5089250916_)))
             (_g5089051020_
              (lambda (_g5089250924_)
                (if (gx#stx-pair? _g5089250924_)
                    (let ((_e5089550927_ (gx#syntax-e _g5089250924_)))
                      (let ((_hd5089650931_ (##car _e5089550927_))
                            (_tl5089750934_ (##cdr _e5089550927_)))
                        (if (gx#stx-pair/null? _tl5089750934_)
                            (let ((_g51650_
                                   (gx#syntax-split-splice _tl5089750934_ '0)))
                              (begin
                                (let ((_g51651_
                                       (if (##values? _g51650_)
                                           (##vector-length _g51650_)
                                           1)))
                                  (if (not (##fx= _g51651_ 2))
                                      (error "Context expects 2 values"
                                             _g51651_)))
                                (let ((_target5089850937_
                                       (##vector-ref _g51650_ 0))
                                      (_tl5090050940_
                                       (##vector-ref _g51650_ 1)))
                                  (if (gx#stx-null? _tl5090050940_)
                                      (letrec ((_loop5090150943_
                                                (lambda (_hd5089950947_
                                                         _dispatch5090550950_
                                                         _arity5090650952_)
                                                  (if (gx#stx-pair?
                                                       _hd5089950947_)
                                                      (let ((_e5090250955_
                                                             (gx#syntax-e
                                                              _hd5089950947_)))
                                                        (let ((_lp-hd5090350959_
                                                               (##car _e5090250955_))
                                                              (_lp-tl5090450962_
                                                               (##cdr _e5090250955_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5090350959_)
                                                              (let ((_e5090950965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5090350959_)))
                        (let ((_hd5091050969_ (##car _e5090950965_))
                              (_tl5091150972_ (##cdr _e5090950965_)))
                          (if (gx#stx-pair? _tl5091150972_)
                              (let ((_e5091250975_
                                     (gx#syntax-e _tl5091150972_)))
                                (let ((_hd5091350979_ (##car _e5091250975_))
                                      (_tl5091450982_ (##cdr _e5091250975_)))
                                  (if (gx#stx-null? _tl5091450982_)
                                      (_loop5090150943_
                                       _lp-tl5090450962_
                                       (cons _hd5091350979_
                                             _dispatch5090550950_)
                                       (cons _hd5091050969_ _arity5090650952_))
                                      (_g5089150920_ _g5089250924_))))
                              (_g5089150920_ _g5089250924_))))
                      (_g5089150920_ _g5089250924_))))
              (let ((_dispatch5090750985_ (reverse _dispatch5090550950_))
                    (_arity5090850988_ (reverse _arity5090650952_)))
                ((lambda (_L50991_ _L50993_)
                   (cons (gx#datum->syntax__0 '#f 'make-!case-lambda)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons (gx#datum->syntax__0
                                            '#f
                                            'case-lambda)
                                           '()))
                               (cons (cons (gx#datum->syntax__0 '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _L50991_
                                              _L50993_)
                                             (foldr2 (lambda (_g5100851012_
                                                              _g5100951015_
                                                              _g5101051017_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@lambda)
                           (cons _g5100951015_ (cons _g5100851012_ '())))
                     _g5101051017_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L50991_
                                                     _L50993_)))
                                     '()))))
                 _dispatch5090750985_
                 _arity5090850988_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5090150943_
                                         _target5089850937_
                                         '()
                                         '()))
                                      (_g5089150920_ _g5089250924_)))))
                            (_g5089150920_ _g5089250924_))))
                    (_g5089150920_ _g5089250924_)))))
        (_g5089051020_ _$stx50887_))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx51025_)
      (let* ((_g5102951047_
              (lambda (_g5103051043_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5103051043_)))
             (_g5102851102_
              (lambda (_g5103051051_)
                (if (gx#stx-pair? _g5103051051_)
                    (let ((_e5103351054_ (gx#syntax-e _g5103051051_)))
                      (let ((_hd5103451058_ (##car _e5103351054_))
                            (_tl5103551061_ (##cdr _e5103351054_)))
                        (if (gx#stx-pair? _tl5103551061_)
                            (let ((_e5103651064_ (gx#syntax-e _tl5103551061_)))
                              (let ((_hd5103751068_ (##car _e5103651064_))
                                    (_tl5103851071_ (##cdr _e5103651064_)))
                                (if (gx#stx-pair? _tl5103851071_)
                                    (let ((_e5103951074_
                                           (gx#syntax-e _tl5103851071_)))
                                      (let ((_hd5104051078_
                                             (##car _e5103951074_))
                                            (_tl5104151081_
                                             (##cdr _e5103951074_)))
                                        (if (gx#stx-null? _tl5104151081_)
                                            ((lambda (_L51084_ _L51086_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda) '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L51086_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51084_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5104051078_
                                             _hd5103751068_)
                                            (_g5102951047_ _g5103051051_))))
                                    (_g5102951047_ _g5103051051_))))
                            (_g5102951047_ _g5103051051_))))
                    (_g5102951047_ _g5103051051_)))))
        (_g5102851102_ _$stx51025_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx51106_)
      (let* ((_g5111051128_
              (lambda (_g5111151124_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5111151124_)))
             (_g5110951183_
              (lambda (_g5111151132_)
                (if (gx#stx-pair? _g5111151132_)
                    (let ((_e5111451135_ (gx#syntax-e _g5111151132_)))
                      (let ((_hd5111551139_ (##car _e5111451135_))
                            (_tl5111651142_ (##cdr _e5111451135_)))
                        (if (gx#stx-pair? _tl5111651142_)
                            (let ((_e5111751145_ (gx#syntax-e _tl5111651142_)))
                              (let ((_hd5111851149_ (##car _e5111751145_))
                                    (_tl5111951152_ (##cdr _e5111751145_)))
                                (if (gx#stx-pair? _tl5111951152_)
                                    (let ((_e5112051155_
                                           (gx#syntax-e _tl5111951152_)))
                                      (let ((_hd5112151159_
                                             (##car _e5112051155_))
                                            (_tl5112251162_
                                             (##cdr _e5112051155_)))
                                        (if (gx#stx-null? _tl5112251162_)
                                            ((lambda (_L51165_ _L51167_)
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
                               (cons _L51167_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51165_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5112151159_
                                             _hd5111851149_)
                                            (_g5111051128_ _g5111151132_))))
                                    (_g5111051128_ _g5111151132_))))
                            (_g5111051128_ _g5111151132_))))
                    (_g5111051128_ _g5111151132_)))))
        (_g5110951183_ _$stx51106_)))))
