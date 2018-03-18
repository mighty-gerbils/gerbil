(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<syntax-sugar>[1]#_g35373_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx394_)
        (let* ((_g397421_
                (lambda (_g398417_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g398417_)))
               (_g396726_
                (lambda (_g398425_)
                  (if (gx#stx-pair? _g398425_)
                      (let ((_e401428_ (gx#syntax-e _g398425_)))
                        (let ((_hd402432_ (##car _e401428_))
                              (_tl403435_ (##cdr _e401428_)))
                          (if (gx#stx-pair? _tl403435_)
                              (let ((_e404438_ (gx#syntax-e _tl403435_)))
                                (let ((_hd405442_ (##car _e404438_))
                                      (_tl406445_ (##cdr _e404438_)))
                                  (if (gx#stx-pair/null? _tl406445_)
                                      (if (fx>= (gx#stx-length _tl406445_) '0)
                                          (let ((_g35359_
                                                 (gx#syntax-split-splice
                                                  _tl406445_
                                                  '0)))
                                            (begin
                                              (let ((_g35360_
                                                     (if (##values? _g35359_)
                                                         (##vector-length
                                                          _g35359_)
                                                         1)))
                                                (if (not (##fx= _g35360_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35360_)))
                                              (let ((_target407448_
                                                     (##vector-ref _g35359_ 0))
                                                    (_tl409451_
                                                     (##vector-ref
                                                      _g35359_
                                                      1)))
                                                (if (gx#stx-null? _tl409451_)
                                                    (letrec ((_loop410454_
                                                              (lambda (_hd408458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clauses414461_)
                        (if (gx#stx-pair? _hd408458_)
                            (let ((_e411464_ (gx#syntax-e _hd408458_)))
                              (let ((_lp-hd412468_ (##car _e411464_))
                                    (_lp-tl413471_ (##cdr _e411464_)))
                                (_loop410454_
                                 _lp-tl413471_
                                 (cons _lp-hd412468_ _clauses414461_))))
                            (let ((_clauses415474_ (reverse _clauses414461_)))
                              ((lambda (_L478_ _L480_)
                                 (if (gx#identifier-list? _L480_)
                                     (let* ((_body643_
                                             (gx#stx-map
                                              (lambda (_clause500_)
                                                (let* ((_g504531_
                                                        (lambda (_g505527_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g505527_)))
                                                       (_g503589_
                                                        (lambda (_g505535_)
                                                          (if (gx#stx-pair?
                                                               _g505535_)
                                                              (let ((_e517538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g505535_)))
                        (let ((_hd518542_ (##car _e517538_))
                              (_tl519545_ (##cdr _e517538_)))
                          (if (gx#stx-pair? _tl519545_)
                              (let ((_e520548_ (gx#syntax-e _tl519545_)))
                                (let ((_hd521552_ (##car _e520548_))
                                      (_tl522555_ (##cdr _e520548_)))
                                  (if (gx#stx-pair? _tl522555_)
                                      (let ((_e523558_
                                             (gx#syntax-e _tl522555_)))
                                        (let ((_hd524562_ (##car _e523558_))
                                              (_tl525565_ (##cdr _e523558_)))
                                          (if (gx#stx-null? _tl525565_)
                                              ((lambda (_L568_ _L570_ _L571_)
                                                 (cons _L571_
                                                       (cons _L570_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons _L568_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd524562_
                                               _hd521552_
                                               _hd518542_)
                                              (_g504531_ _g505535_))))
                                      (_g504531_ _g505535_))))
                              (_g504531_ _g505535_))))
                      (_g504531_ _g505535_))))
               (_g502631_
                (lambda (_g505593_)
                  (if (gx#stx-pair? _g505593_)
                      (let ((_e508596_ (gx#syntax-e _g505593_)))
                        (let ((_hd509600_ (##car _e508596_))
                              (_tl510603_ (##cdr _e508596_)))
                          (if (gx#stx-pair? _tl510603_)
                              (let ((_e511606_ (gx#syntax-e _tl510603_)))
                                (let ((_hd512610_ (##car _e511606_))
                                      (_tl513613_ (##cdr _e511606_)))
                                  (if (gx#stx-null? _tl513613_)
                                      ((lambda (_L616_ _L618_)
                                         (cons _L618_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'syntax)
                                                           (cons _L616_ '()))
                                                     '())))
                                       _hd512610_
                                       _hd509600_)
                                      (_g503589_ _g505593_))))
                              (_g503589_ _g505593_))))
                      (_g503589_ _g505593_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g502631_ _clause500_)))
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g634637_
                                                                _g635640_)
                                                         (cons _g634637_
                                                               _g635640_))
                                                       '()
                                                       _L478_))))
                                            (_g646663_
                                             (lambda (_g647659_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g647659_)))
                                            (_g645722_
                                             (lambda (_g647667_)
                                               (if (gx#stx-pair/null?
                                                    _g647667_)
                                                   (if (fx>= (gx#stx-length
                                                              _g647667_)
                                                             '0)
                                                       (let ((_g35361_
                                                              (gx#syntax-split-splice
                                                               _g647667_
                                                               '0)))
                                                         (begin
                                                           (let ((_g35362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##values? _g35361_)
                              (##vector-length _g35361_)
                              1)))
                     (if (not (##fx= _g35362_ 2))
                         (error "Context expects 2 values" _g35362_)))
                   (let ((_target649670_ (##vector-ref _g35361_ 0))
                         (_tl651673_ (##vector-ref _g35361_ 1)))
                     (if (gx#stx-null? _tl651673_)
                         (letrec ((_loop652676_
                                   (lambda (_hd650680_ _clause656683_)
                                     (if (gx#stx-pair? _hd650680_)
                                         (let ((_e653686_
                                                (gx#syntax-e _hd650680_)))
                                           (let ((_lp-hd654690_
                                                  (##car _e653686_))
                                                 (_lp-tl655693_
                                                  (##cdr _e653686_)))
                                             (_loop652676_
                                              _lp-tl655693_
                                              (cons _lp-hd654690_
                                                    _clause656683_))))
                                         (let ((_clause657696_
                                                (reverse _clause656683_)))
                                           ((lambda (_L700_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda%)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$stx)
                        '())
                  (cons (cons (gx#datum->syntax '#f 'syntax-case)
                              (cons (gx#datum->syntax '#f '$stx)
                                    (cons _L480_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g713716_
                                                            _g714719_)
                                                     (cons _g713716_
                                                           _g714719_))
                                                   '()
                                                   _L700_)))))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _clause657696_))))))
                           (_loop652676_ _target649670_ '()))
                         (_g646663_ _g647667_)))))
               (_g646663_ _g647667_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g646663_ _g647667_)))))
                                       (_g645722_ _body643_))
                                     (_g397421_ _g398425_)))
                               _clauses415474_
                               _hd405442_))))))
              (_loop410454_ _target407448_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g397421_ _g398425_)))))
                                          (_g397421_ _g398425_))
                                      (_g397421_ _g398425_))))
                              (_g397421_ _g398425_))))
                      (_g397421_ _g398425_)))))
          (_g396726_ _stx394_))))
    (define |gerbil/core$<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx732_)
        (let* ((_g737822_
                (lambda (_g738818_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g738818_)))
               (_g736983_
                (lambda (_g738826_)
                  (if (gx#stx-pair? _g738826_)
                      (let ((_e785829_ (gx#syntax-e _g738826_)))
                        (let ((_hd786833_ (##car _e785829_))
                              (_tl787836_ (##cdr _e785829_)))
                          (if (gx#stx-pair? _tl787836_)
                              (let ((_e788839_ (gx#syntax-e _tl787836_)))
                                (let ((_hd789843_ (##car _e788839_))
                                      (_tl790846_ (##cdr _e788839_)))
                                  (if (gx#stx-pair/null? _hd789843_)
                                      (if (fx>= (gx#stx-length _hd789843_) '0)
                                          (let ((_g35363_
                                                 (gx#syntax-split-splice
                                                  _hd789843_
                                                  '0)))
                                            (begin
                                              (let ((_g35364_
                                                     (if (##values? _g35363_)
                                                         (##vector-length
                                                          _g35363_)
                                                         1)))
                                                (if (not (##fx= _g35364_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35364_)))
                                              (let ((_target791849_
                                                     (##vector-ref _g35363_ 0))
                                                    (_tl793852_
                                                     (##vector-ref
                                                      _g35363_
                                                      1)))
                                                (if (gx#stx-null? _tl793852_)
                                                    (letrec ((_loop794855_
                                                              (lambda (_hd792859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _e798862_
                               _pat799864_)
                        (if (gx#stx-pair? _hd792859_)
                            (let ((_e795867_ (gx#syntax-e _hd792859_)))
                              (let ((_lp-hd796871_ (##car _e795867_))
                                    (_lp-tl797874_ (##cdr _e795867_)))
                                (if (gx#stx-pair? _lp-hd796871_)
                                    (let ((_e802877_
                                           (gx#syntax-e _lp-hd796871_)))
                                      (let ((_hd803881_ (##car _e802877_))
                                            (_tl804884_ (##cdr _e802877_)))
                                        (if (gx#stx-pair? _tl804884_)
                                            (let ((_e805887_
                                                   (gx#syntax-e _tl804884_)))
                                              (let ((_hd806891_
                                                     (##car _e805887_))
                                                    (_tl807894_
                                                     (##cdr _e805887_)))
                                                (if (gx#stx-null? _tl807894_)
                                                    (_loop794855_
                                                     _lp-tl797874_
                                                     (cons _hd806891_
                                                           _e798862_)
                                                     (cons _hd803881_
                                                           _pat799864_))
                                                    (_g737822_ _g738826_))))
                                            (_g737822_ _g738826_))))
                                    (_g737822_ _g738826_))))
                            (let ((_e800897_ (reverse _e798862_))
                                  (_pat801900_ (reverse _pat799864_)))
                              (if (gx#stx-pair/null? _tl790846_)
                                  (if (fx>= (gx#stx-length _tl790846_) '0)
                                      (let ((_g35365_
                                             (gx#syntax-split-splice
                                              _tl790846_
                                              '0)))
                                        (begin
                                          (let ((_g35366_
                                                 (if (##values? _g35365_)
                                                     (##vector-length _g35365_)
                                                     1)))
                                            (if (not (##fx= _g35366_ 2))
                                                (error "Context expects 2 values"
                                                       _g35366_)))
                                          (let ((_target808903_
                                                 (##vector-ref _g35365_ 0))
                                                (_tl810906_
                                                 (##vector-ref _g35365_ 1)))
                                            (if (gx#stx-null? _tl810906_)
                                                (letrec ((_loop811909_
                                                          (lambda (_hd809913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body815916_)
                    (if (gx#stx-pair? _hd809913_)
                        (let ((_e812919_ (gx#syntax-e _hd809913_)))
                          (let ((_lp-hd813923_ (##car _e812919_))
                                (_lp-tl814926_ (##cdr _e812919_)))
                            (_loop811909_
                             _lp-tl814926_
                             (cons _lp-hd813923_ _body815916_))))
                        (let ((_body816929_ (reverse _body815916_)))
                          ((lambda (_L933_ _L935_ _L936_)
                             (cons (gx#datum->syntax '#f 'syntax-case)
                                   (cons (cons (gx#datum->syntax '#f 'list)
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g958965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g959968_)
                  (cons _g958965_ _g959968_))
                '()
                _L935_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons '()
                                               (cons (cons (begin
                                                             '#!void
                                                             (foldr (lambda (_g960971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g961974_)
                              (cons _g960971_ _g961974_))
                            '()
                            _L936_))
                   (cons (cons (gx#datum->syntax '#f 'let-values)
                               (cons '()
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g962977_ _g963980_)
                                                (cons _g962977_ _g963980_))
                                              '()
                                              _L933_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _body816929_
                           _e800897_
                           _pat801900_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop811909_
                                                   _target808903_
                                                   '()))
                                                (_g737822_ _g738826_)))))
                                      (_g737822_ _g738826_))
                                  (_g737822_ _g738826_)))))))
              (_loop794855_ _target791849_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g737822_ _g738826_)))))
                                          (_g737822_ _g738826_))
                                      (_g737822_ _g738826_))))
                              (_g737822_ _g738826_))))
                      (_g737822_ _g738826_))))
               (_g7351105_
                (lambda (_g738987_)
                  (if (gx#stx-pair? _g738987_)
                      (let ((_e758990_ (gx#syntax-e _g738987_)))
                        (let ((_hd759994_ (##car _e758990_))
                              (_tl760997_ (##cdr _e758990_)))
                          (if (gx#stx-pair? _tl760997_)
                              (let ((_e7611000_ (gx#syntax-e _tl760997_)))
                                (let ((_hd7621004_ (##car _e7611000_))
                                      (_tl7631007_ (##cdr _e7611000_)))
                                  (if (gx#stx-pair? _hd7621004_)
                                      (let ((_e7641010_
                                             (gx#syntax-e _hd7621004_)))
                                        (let ((_hd7651014_ (##car _e7641010_))
                                              (_tl7661017_ (##cdr _e7641010_)))
                                          (if (gx#stx-pair? _hd7651014_)
                                              (let ((_e7671020_
                                                     (gx#syntax-e
                                                      _hd7651014_)))
                                                (let ((_hd7681024_
                                                       (##car _e7671020_))
                                                      (_tl7691027_
                                                       (##cdr _e7671020_)))
                                                  (if (gx#stx-pair?
                                                       _tl7691027_)
                                                      (let ((_e7701030_
                                                             (gx#syntax-e
                                                              _tl7691027_)))
                                                        (let ((_hd7711034_
                                                               (##car _e7701030_))
                                                              (_tl7721037_
                                                               (##cdr _e7701030_)))
                                                          (if (gx#stx-null?
                                                               _tl7721037_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl7661017_)
                          (if (gx#stx-pair/null? _tl7631007_)
                              (if (fx>= (gx#stx-length _tl7631007_) '0)
                                  (let ((_g35367_
                                         (gx#syntax-split-splice
                                          _tl7631007_
                                          '0)))
                                    (begin
                                      (let ((_g35368_
                                             (if (##values? _g35367_)
                                                 (##vector-length _g35367_)
                                                 1)))
                                        (if (not (##fx= _g35368_ 2))
                                            (error "Context expects 2 values"
                                                   _g35368_)))
                                      (let ((_target7731040_
                                             (##vector-ref _g35367_ 0))
                                            (_tl7751043_
                                             (##vector-ref _g35367_ 1)))
                                        (if (gx#stx-null? _tl7751043_)
                                            (letrec ((_loop7761046_
                                                      (lambda (_hd7741050_
                                                               _body7801053_)
                                                        (if (gx#stx-pair?
                                                             _hd7741050_)
                                                            (let ((_e7771056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd7741050_)))
                      (let ((_lp-hd7781060_ (##car _e7771056_))
                            (_lp-tl7791063_ (##cdr _e7771056_)))
                        (_loop7761046_
                         _lp-tl7791063_
                         (cons _lp-hd7781060_ _body7801053_))))
                    (let ((_body7811066_ (reverse _body7801053_)))
                      ((lambda (_L1070_ _L1072_ _L1073_)
                         (cons (gx#datum->syntax '#f 'syntax-case)
                               (cons _L1072_
                                     (cons '()
                                           (cons (cons _L1073_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons '()
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g10961099_ _g10971102_)
                                            (cons _g10961099_ _g10971102_))
                                          '()
                                          _L1070_))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                       _body7811066_
                       _hd7711034_
                       _hd7681024_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop7761046_
                                               _target7731040_
                                               '()))
                                            (_g736983_ _g738987_)))))
                                  (_g736983_ _g738987_))
                              (_g736983_ _g738987_))
                          (_g736983_ _g738987_))
                      (_g736983_ _g738987_))))
              (_g736983_ _g738987_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g736983_ _g738987_))))
                                      (_g736983_ _g738987_))))
                              (_g736983_ _g738987_))))
                      (_g736983_ _g738987_))))
               (_g7341187_
                (lambda (_g7381109_)
                  (if (gx#stx-pair? _g7381109_)
                      (let ((_e7401112_ (gx#syntax-e _g7381109_)))
                        (let ((_hd7411116_ (##car _e7401112_))
                              (_tl7421119_ (##cdr _e7401112_)))
                          (if (gx#stx-pair? _tl7421119_)
                              (let ((_e7431122_ (gx#syntax-e _tl7421119_)))
                                (let ((_hd7441126_ (##car _e7431122_))
                                      (_tl7451129_ (##cdr _e7431122_)))
                                  (if (gx#stx-null? _hd7441126_)
                                      (if (gx#stx-pair/null? _tl7451129_)
                                          (if (fx>= (gx#stx-length _tl7451129_)
                                                    '0)
                                              (let ((_g35369_
                                                     (gx#syntax-split-splice
                                                      _tl7451129_
                                                      '0)))
                                                (begin
                                                  (let ((_g35370_
                                                         (if (##values?
                                                              _g35369_)
                                                             (##vector-length
                                                              _g35369_)
                                                             1)))
                                                    (if (not (##fx= _g35370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g35370_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target7461132_
                                                         (##vector-ref
                                                          _g35369_
                                                          0))
                                                        (_tl7481135_
                                                         (##vector-ref
                                                          _g35369_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl7481135_)
                                                        (letrec ((_loop7491138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd7471142_ _body7531145_)
                            (if (gx#stx-pair? _hd7471142_)
                                (let ((_e7501148_ (gx#syntax-e _hd7471142_)))
                                  (let ((_lp-hd7511152_ (##car _e7501148_))
                                        (_lp-tl7521155_ (##cdr _e7501148_)))
                                    (_loop7491138_
                                     _lp-tl7521155_
                                     (cons _lp-hd7511152_ _body7531145_))))
                                (let ((_body7541158_ (reverse _body7531145_)))
                                  ((lambda (_L1162_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g11781181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g11791184_)
                    (cons _g11781181_ _g11791184_))
                  '()
                  _L1162_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body7541158_))))))
                  (_loop7491138_ _target7461132_ '()))
                (_g7351105_ _g7381109_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g7351105_ _g7381109_))
                                          (_g7351105_ _g7381109_))
                                      (_g7351105_ _g7381109_))))
                              (_g7351105_ _g7381109_))))
                      (_g7351105_ _g7381109_)))))
          (_g7341187_ _stx732_))))
    (define |gerbil/core$<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx1195_)
        (let* ((_g12001277_
                (lambda (_g12011273_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g12011273_)))
               (_g11991378_
                (lambda (_g12011281_)
                  (if (gx#stx-pair? _g12011281_)
                      (let ((_e12541284_ (gx#syntax-e _g12011281_)))
                        (let ((_hd12551288_ (##car _e12541284_))
                              (_tl12561291_ (##cdr _e12541284_)))
                          (if (gx#stx-pair? _tl12561291_)
                              (let ((_e12571294_ (gx#syntax-e _tl12561291_)))
                                (let ((_hd12581298_ (##car _e12571294_))
                                      (_tl12591301_ (##cdr _e12571294_)))
                                  (if (gx#stx-pair? _hd12581298_)
                                      (let ((_e12601304_
                                             (gx#syntax-e _hd12581298_)))
                                        (let ((_hd12611308_
                                               (##car _e12601304_))
                                              (_tl12621311_
                                               (##cdr _e12601304_)))
                                          (if (gx#stx-pair/null? _tl12591301_)
                                              (if (fx>= (gx#stx-length
                                                         _tl12591301_)
                                                        '0)
                                                  (let ((_g35371_
                                                         (gx#syntax-split-splice
                                                          _tl12591301_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35372_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35371_)
                         (##vector-length _g35371_)
                         1)))
                (if (not (##fx= _g35372_ 2))
                    (error "Context expects 2 values" _g35372_)))
              (let ((_target12631314_ (##vector-ref _g35371_ 0))
                    (_tl12651317_ (##vector-ref _g35371_ 1)))
                (if (gx#stx-null? _tl12651317_)
                    (letrec ((_loop12661320_
                              (lambda (_hd12641324_ _body12701327_)
                                (if (gx#stx-pair? _hd12641324_)
                                    (let ((_e12671330_
                                           (gx#syntax-e _hd12641324_)))
                                      (let ((_lp-hd12681334_
                                             (##car _e12671330_))
                                            (_lp-tl12691337_
                                             (##cdr _e12671330_)))
                                        (_loop12661320_
                                         _lp-tl12691337_
                                         (cons _lp-hd12681334_
                                               _body12701327_))))
                                    (let ((_body12711340_
                                           (reverse _body12701327_)))
                                      ((lambda (_L1344_
                                                _L1346_
                                                _L1347_
                                                _L1348_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'with-syntax)
                                               (cons (cons _L1347_ '())
                                                     (cons (cons _L1348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L1346_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g13691372_ _g13701375_)
                                          (cons _g13691372_ _g13701375_))
                                        '()
                                        _L1344_))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _body12711340_
                                       _tl12621311_
                                       _hd12611308_
                                       _hd12551288_))))))
                      (_loop12661320_ _target12631314_ '()))
                    (_g12001277_ _g12011281_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g12001277_ _g12011281_))
                                              (_g12001277_ _g12011281_))))
                                      (_g12001277_ _g12011281_))))
                              (_g12001277_ _g12011281_))))
                      (_g12001277_ _g12011281_))))
               (_g11981516_
                (lambda (_g12011382_)
                  (if (gx#stx-pair? _g12011382_)
                      (let ((_e12231385_ (gx#syntax-e _g12011382_)))
                        (let ((_hd12241389_ (##car _e12231385_))
                              (_tl12251392_ (##cdr _e12231385_)))
                          (if (gx#stx-pair? _tl12251392_)
                              (let ((_e12261395_ (gx#syntax-e _tl12251392_)))
                                (let ((_hd12271399_ (##car _e12261395_))
                                      (_tl12281402_ (##cdr _e12261395_)))
                                  (if (gx#stx-pair? _hd12271399_)
                                      (let ((_e12291405_
                                             (gx#syntax-e _hd12271399_)))
                                        (let ((_hd12301409_
                                               (##car _e12291405_))
                                              (_tl12311412_
                                               (##cdr _e12291405_)))
                                          (if (gx#stx-pair? _hd12301409_)
                                              (let ((_e12321415_
                                                     (gx#syntax-e
                                                      _hd12301409_)))
                                                (let ((_hd12331419_
                                                       (##car _e12321415_))
                                                      (_tl12341422_
                                                       (##cdr _e12321415_)))
                                                  (if (gx#stx-pair?
                                                       _hd12331419_)
                                                      (let ((_e12351425_
                                                             (gx#syntax-e
                                                              _hd12331419_)))
                                                        (let ((_hd12361429_
                                                               (##car _e12351425_))
                                                              (_tl12371432_
                                                               (##cdr _e12351425_)))
                                                          (if (gx#identifier?
                                                               _hd12361429_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core$<syntax-sugar>[1]#_g35373_|
                           _hd12361429_)
                          (if (gx#stx-pair? _tl12341422_)
                              (let ((_e12381435_ (gx#syntax-e _tl12341422_)))
                                (let ((_hd12391439_ (##car _e12381435_))
                                      (_tl12401442_ (##cdr _e12381435_)))
                                  (if (gx#stx-null? _tl12401442_)
                                      (if (gx#stx-pair/null? _tl12281402_)
                                          (if (fx>= (gx#stx-length
                                                     _tl12281402_)
                                                    '0)
                                              (let ((_g35374_
                                                     (gx#syntax-split-splice
                                                      _tl12281402_
                                                      '0)))
                                                (begin
                                                  (let ((_g35375_
                                                         (if (##values?
                                                              _g35374_)
                                                             (##vector-length
                                                              _g35374_)
                                                             1)))
                                                    (if (not (##fx= _g35375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g35375_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target12411445_
                                                         (##vector-ref
                                                          _g35374_
                                                          0))
                                                        (_tl12431448_
                                                         (##vector-ref
                                                          _g35374_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl12431448_)
                                                        (letrec ((_loop12441451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd12421455_ _body12481458_)
                            (if (gx#stx-pair? _hd12421455_)
                                (let ((_e12451461_ (gx#syntax-e _hd12421455_)))
                                  (let ((_lp-hd12461465_ (##car _e12451461_))
                                        (_lp-tl12471468_ (##cdr _e12451461_)))
                                    (_loop12441451_
                                     _lp-tl12471468_
                                     (cons _lp-hd12461465_ _body12481458_))))
                                (let ((_body12491471_
                                       (reverse _body12481458_)))
                                  ((lambda (_L1475_
                                            _L1477_
                                            _L1478_
                                            _L1479_
                                            _L1480_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons (cons (cons _L1479_
                                                             (cons _L1478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L1480_
                                                             (cons _L1477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g15071510_ _g15081513_)
                                      (cons _g15071510_ _g15081513_))
                                    '()
                                    _L1475_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body12491471_
                                   _tl12311412_
                                   _hd12391439_
                                   _tl12371432_
                                   _hd12241389_))))))
                  (_loop12441451_ _target12411445_ '()))
                (_g11991378_ _g12011382_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g11991378_ _g12011382_))
                                          (_g11991378_ _g12011382_))
                                      (_g11991378_ _g12011382_))))
                              (_g11991378_ _g12011382_))
                          (_g11991378_ _g12011382_))
                      (_g11991378_ _g12011382_))))
              (_g11991378_ _g12011382_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g11991378_ _g12011382_))))
                                      (_g11991378_ _g12011382_))))
                              (_g11991378_ _g12011382_))))
                      (_g11991378_ _g12011382_))))
               (_g11971598_
                (lambda (_g12011520_)
                  (if (gx#stx-pair? _g12011520_)
                      (let ((_e12031523_ (gx#syntax-e _g12011520_)))
                        (let ((_hd12041527_ (##car _e12031523_))
                              (_tl12051530_ (##cdr _e12031523_)))
                          (if (gx#stx-pair? _tl12051530_)
                              (let ((_e12061533_ (gx#syntax-e _tl12051530_)))
                                (let ((_hd12071537_ (##car _e12061533_))
                                      (_tl12081540_ (##cdr _e12061533_)))
                                  (if (gx#stx-null? _hd12071537_)
                                      (if (gx#stx-pair/null? _tl12081540_)
                                          (if (fx>= (gx#stx-length
                                                     _tl12081540_)
                                                    '0)
                                              (let ((_g35376_
                                                     (gx#syntax-split-splice
                                                      _tl12081540_
                                                      '0)))
                                                (begin
                                                  (let ((_g35377_
                                                         (if (##values?
                                                              _g35376_)
                                                             (##vector-length
                                                              _g35376_)
                                                             1)))
                                                    (if (not (##fx= _g35377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g35377_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target12091543_
                                                         (##vector-ref
                                                          _g35376_
                                                          0))
                                                        (_tl12111546_
                                                         (##vector-ref
                                                          _g35376_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl12111546_)
                                                        (letrec ((_loop12121549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd12101553_ _body12161556_)
                            (if (gx#stx-pair? _hd12101553_)
                                (let ((_e12131559_ (gx#syntax-e _hd12101553_)))
                                  (let ((_lp-hd12141563_ (##car _e12131559_))
                                        (_lp-tl12151566_ (##cdr _e12131559_)))
                                    (_loop12121549_
                                     _lp-tl12151566_
                                     (cons _lp-hd12141563_ _body12161556_))))
                                (let ((_body12171569_
                                       (reverse _body12161556_)))
                                  ((lambda (_L1573_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g15891592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g15901595_)
                    (cons _g15891592_ _g15901595_))
                  '()
                  _L1573_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body12171569_))))))
                  (_loop12121549_ _target12091543_ '()))
                (_g11981516_ _g12011520_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g11981516_ _g12011520_))
                                          (_g11981516_ _g12011520_))
                                      (_g11981516_ _g12011520_))))
                              (_g11981516_ _g12011520_))))
                      (_g11981516_ _g12011520_)))))
          (_g11971598_ _stx1195_))))
    (define |gerbil/core$<syntax-sugar>[:0:]#syntax/loc|
      (lambda (_stx1605_)
        (let* ((_g16081626_
                (lambda (_g16091622_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g16091622_)))
               (_g16071681_
                (lambda (_g16091630_)
                  (if (gx#stx-pair? _g16091630_)
                      (let ((_e16121633_ (gx#syntax-e _g16091630_)))
                        (let ((_hd16131637_ (##car _e16121633_))
                              (_tl16141640_ (##cdr _e16121633_)))
                          (if (gx#stx-pair? _tl16141640_)
                              (let ((_e16151643_ (gx#syntax-e _tl16141640_)))
                                (let ((_hd16161647_ (##car _e16151643_))
                                      (_tl16171650_ (##cdr _e16151643_)))
                                  (if (gx#stx-pair? _tl16171650_)
                                      (let ((_e16181653_
                                             (gx#syntax-e _tl16171650_)))
                                        (let ((_hd16191657_
                                               (##car _e16181653_))
                                              (_tl16201660_
                                               (##cdr _e16181653_)))
                                          (if (gx#stx-null? _tl16201660_)
                                              ((lambda (_L1663_ _L1665_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-wrap-source)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax)
                           (cons _L1663_ '()))
                     (cons (cons (gx#datum->syntax '#f 'stx-source)
                                 (cons _L1665_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd16191657_
                                               _hd16161647_)
                                              (_g16081626_ _g16091630_))))
                                      (_g16081626_ _g16091630_))))
                              (_g16081626_ _g16091630_))))
                      (_g16081626_ _g16091630_)))))
          (_g16071681_ _stx1605_))))))
