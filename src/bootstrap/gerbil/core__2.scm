(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<syntax-sugar>[1]#_g41029_|
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
                                      (let ((_g41025_
                                             (gx#syntax-split-splice
                                              _tl406445_
                                              '0)))
                                        (begin
                                          (let ((_g41026_
                                                 (if (##values? _g41025_)
                                                     (##vector-length _g41025_)
                                                     1)))
                                            (if (not (##fx= _g41026_ 2))
                                                (error "Context expects 2 values"
                                                       _g41026_)))
                                          (let ((_target407448_
                                                 (##vector-ref _g41025_ 0))
                                                (_tl409451_
                                                 (##vector-ref _g41025_ 1)))
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
                                            (let* ((___stx3563435635_
                                                    _clause500_)
                                                   (_g504531_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx3563435635_))))
                                              (let ((___kont3563735638_
                                                     (lambda (_L616_ _L618_)
                                                       (cons _L618_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons _L616_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3563935640_
                                                     (lambda (_L568_
                                                              _L570_
                                                              _L571_)
                                                       (cons _L571_
                                                             (cons _L570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax)
                                       (cons _L568_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx3563435635_)
                                                    (let ((_e508596_
                                                           (gx#syntax-e
                                                            ___stx3563435635_)))
                                                      (let ((_tl510603_
                                                             (##cdr _e508596_))
                                                            (_hd509600_
                                                             (##car _e508596_)))
                                                        (if (gx#stx-pair?
                                                             _tl510603_)
                                                            (let ((_e511606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl510603_)))
                      (let ((_tl513613_ (##cdr _e511606_))
                            (_hd512610_ (##car _e511606_)))
                        (if (gx#stx-null? _tl513613_)
                            (___kont3563735638_ _hd512610_ _hd509600_)
                            (if (gx#stx-pair? _tl513613_)
                                (let ((_e523558_ (gx#syntax-e _tl513613_)))
                                  (let ((_tl525565_ (##cdr _e523558_))
                                        (_hd524562_ (##car _e523558_)))
                                    (if (gx#stx-null? _tl525565_)
                                        (___kont3563935640_
                                         _hd524562_
                                         _hd512610_
                                         _hd509600_)
                                        (_g504531_))))
                                (_g504531_)))))
                    (_g504531_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g504531_)))))
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
                                           (if (gx#stx-pair/null? _g647667_)
                                               (let ((_g41027_
                                                      (gx#syntax-split-splice
                                                       _g647667_
                                                       '0)))
                                                 (begin
                                                   (let ((_g41028_
                                                          (if (##values?
                                                               _g41027_)
                                                              (##vector-length
                                                               _g41027_)
                                                              1)))
                                                     (if (not (##fx= _g41028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                 (error "Context expects 2 values" _g41028_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target649670_
                                                          (##vector-ref
                                                           _g41027_
                                                           0))
                                                         (_tl651673_
                                                          (##vector-ref
                                                           _g41027_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl651673_)
                                                         (letrec ((_loop652676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd650680_ _clause656683_)
                             (if (gx#stx-pair? _hd650680_)
                                 (let ((_e653686_ (gx#syntax-e _hd650680_)))
                                   (let ((_lp-hd654690_ (##car _e653686_))
                                         (_lp-tl655693_ (##cdr _e653686_)))
                                     (_loop652676_
                                      _lp-tl655693_
                                      (cons _lp-hd654690_ _clause656683_))))
                                 (let ((_clause657696_
                                        (reverse _clause656683_)))
                                   ((lambda (_L700_)
                                      (cons (gx#datum->syntax '#f 'lambda%)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$stx)
                                                        '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-case)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$stx)
                            (cons _L480_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g713716_ _g714719_)
                                             (cons _g713716_ _g714719_))
                                           '()
                                           _L700_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _clause657696_))))))
                   (_loop652676_ _target649670_ '()))
                 (_g646663_ _g647667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g646663_ _g647667_)))))
                                   (_g645722_ _body643_))
                                 (_g397421_ _g398425_)))
                           _clauses415474_
                           _hd405442_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop410454_
                                                   _target407448_
                                                   '()))
                                                (_g397421_ _g398425_)))))
                                      (_g397421_ _g398425_))))
                              (_g397421_ _g398425_))))
                      (_g397421_ _g398425_)))))
          (_g396726_ _stx394_))))
    (define |gerbil/core$<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx732_)
        (let* ((___stx3567835679_ _stx732_)
               (_g737822_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3567835679_))))
          (let ((___kont3568135682_
                 (lambda (_L1162_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (begin
                                 '#!void
                                 (foldr (lambda (_g11781181_ _g11791184_)
                                          (cons _g11781181_ _g11791184_))
                                        '()
                                        _L1162_))))))
                (___kont3568535686_
                 (lambda (_L1070_ _L1072_ _L1073_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons _L1072_
                               (cons '()
                                     (cons (cons _L1073_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g10961099_ _g10971102_)
                                      (cons _g10961099_ _g10971102_))
                                    '()
                                    _L1070_))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (___kont3568935690_
                 (lambda (_L933_ _L935_ _L936_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons (cons (gx#datum->syntax '#f 'list)
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g958965_ _g959968_)
                                                (cons _g958965_ _g959968_))
                                              '()
                                              _L935_)))
                               (cons '()
                                     (cons (cons (begin
                                                   '#!void
                                                   (foldr (lambda (_g960971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g961974_)
                    (cons _g960971_ _g961974_))
                  '()
                  _L936_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g962977_ _g963980_)
                                      (cons _g962977_ _g963980_))
                                    '()
                                    _L933_))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let* ((___match3577935780_
                    (lambda (_e785829_
                             _hd786833_
                             _tl787836_
                             _e788839_
                             _hd789843_
                             _tl790846_
                             ___splice3569135692_
                             _target791849_
                             _tl793852_)
                      (letrec ((_loop794855_
                                (lambda (_hd792859_ _e798862_ _pat799864_)
                                  (if (gx#stx-pair? _hd792859_)
                                      (let ((_e795867_
                                             (gx#syntax-e _hd792859_)))
                                        (let ((_lp-tl797874_ (##cdr _e795867_))
                                              (_lp-hd796871_
                                               (##car _e795867_)))
                                          (if (gx#stx-pair? _lp-hd796871_)
                                              (let ((_e802877_
                                                     (gx#syntax-e
                                                      _lp-hd796871_)))
                                                (let ((_tl804884_
                                                       (##cdr _e802877_))
                                                      (_hd803881_
                                                       (##car _e802877_)))
                                                  (if (gx#stx-pair? _tl804884_)
                                                      (let ((_e805887_
                                                             (gx#syntax-e
                                                              _tl804884_)))
                                                        (let ((_tl807894_
                                                               (##cdr _e805887_))
                                                              (_hd806891_
                                                               (##car _e805887_)))
                                                          (if (gx#stx-null?
                                                               _tl807894_)
                                                              (_loop794855_
                                                               _lp-tl797874_
                                                               (cons _hd806891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e798862_)
                       (cons _hd803881_ _pat799864_))
                      (_g737822_))))
              (_g737822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g737822_))))
                                      (let ((_pat801900_ (reverse _pat799864_))
                                            (_e800897_ (reverse _e798862_)))
                                        (if (gx#stx-pair/null? _tl790846_)
                                            (let ((___splice3569335694_
                                                   (gx#syntax-split-splice
                                                    _tl790846_
                                                    '0)))
                                              (let ((_tl810906_
                                                     (##vector-ref
                                                      ___splice3569335694_
                                                      '1))
                                                    (_target808903_
                                                     (##vector-ref
                                                      ___splice3569335694_
                                                      '0)))
                                                (if (gx#stx-null? _tl810906_)
                                                    (letrec ((_loop811909_
                                                              (lambda (_hd809913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body815916_)
                        (if (gx#stx-pair? _hd809913_)
                            (let ((_e812919_ (gx#syntax-e _hd809913_)))
                              (let ((_lp-tl814926_ (##cdr _e812919_))
                                    (_lp-hd813923_ (##car _e812919_)))
                                (_loop811909_
                                 _lp-tl814926_
                                 (cons _lp-hd813923_ _body815916_))))
                            (let ((_body816929_ (reverse _body815916_)))
                              (___kont3568935690_
                               _body816929_
                               _e800897_
                               _pat801900_))))))
              (_loop811909_ _target808903_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g737822_))))
                                            (_g737822_)))))))
                        (_loop794855_ _target791849_ '() '()))))
                   (___match3575935760_
                    (lambda (_e758990_
                             _hd759994_
                             _tl760997_
                             _e7611000_
                             _hd7621004_
                             _tl7631007_
                             _e7641010_
                             _hd7651014_
                             _tl7661017_
                             _e7671020_
                             _hd7681024_
                             _tl7691027_
                             _e7701030_
                             _hd7711034_
                             _tl7721037_
                             ___splice3568735688_
                             _target7731040_
                             _tl7751043_)
                      (letrec ((_loop7761046_
                                (lambda (_hd7741050_ _body7801053_)
                                  (if (gx#stx-pair? _hd7741050_)
                                      (let ((_e7771056_
                                             (gx#syntax-e _hd7741050_)))
                                        (let ((_lp-tl7791063_
                                               (##cdr _e7771056_))
                                              (_lp-hd7781060_
                                               (##car _e7771056_)))
                                          (_loop7761046_
                                           _lp-tl7791063_
                                           (cons _lp-hd7781060_
                                                 _body7801053_))))
                                      (let ((_body7811066_
                                             (reverse _body7801053_)))
                                        (___kont3568535686_
                                         _body7811066_
                                         _hd7711034_
                                         _hd7681024_))))))
                        (_loop7761046_ _target7731040_ '()))))
                   (___match3571735718_
                    (lambda (_e7401112_
                             _hd7411116_
                             _tl7421119_
                             _e7431122_
                             _hd7441126_
                             _tl7451129_
                             ___splice3568335684_
                             _target7461132_
                             _tl7481135_)
                      (letrec ((_loop7491138_
                                (lambda (_hd7471142_ _body7531145_)
                                  (if (gx#stx-pair? _hd7471142_)
                                      (let ((_e7501148_
                                             (gx#syntax-e _hd7471142_)))
                                        (let ((_lp-tl7521155_
                                               (##cdr _e7501148_))
                                              (_lp-hd7511152_
                                               (##car _e7501148_)))
                                          (_loop7491138_
                                           _lp-tl7521155_
                                           (cons _lp-hd7511152_
                                                 _body7531145_))))
                                      (let ((_body7541158_
                                             (reverse _body7531145_)))
                                        (___kont3568135682_ _body7541158_))))))
                        (_loop7491138_ _target7461132_ '())))))
              (if (gx#stx-pair? ___stx3567835679_)
                  (let ((_e7401112_ (gx#syntax-e ___stx3567835679_)))
                    (let ((_tl7421119_ (##cdr _e7401112_))
                          (_hd7411116_ (##car _e7401112_)))
                      (if (gx#stx-pair? _tl7421119_)
                          (let ((_e7431122_ (gx#syntax-e _tl7421119_)))
                            (let ((_tl7451129_ (##cdr _e7431122_))
                                  (_hd7441126_ (##car _e7431122_)))
                              (if (gx#stx-null? _hd7441126_)
                                  (if (gx#stx-pair/null? _tl7451129_)
                                      (let ((___splice3568335684_
                                             (gx#syntax-split-splice
                                              _tl7451129_
                                              '0)))
                                        (let ((_tl7481135_
                                               (##vector-ref
                                                ___splice3568335684_
                                                '1))
                                              (_target7461132_
                                               (##vector-ref
                                                ___splice3568335684_
                                                '0)))
                                          (if (gx#stx-null? _tl7481135_)
                                              (___match3571735718_
                                               _e7401112_
                                               _hd7411116_
                                               _tl7421119_
                                               _e7431122_
                                               _hd7441126_
                                               _tl7451129_
                                               ___splice3568335684_
                                               _target7461132_
                                               _tl7481135_)
                                              (if (gx#stx-pair/null?
                                                   _hd7441126_)
                                                  (let ((___splice3569135692_
                                                         (gx#syntax-split-splice
                                                          _hd7441126_
                                                          '0)))
                                                    (let ((_tl793852_
                                                           (##vector-ref
                                                            ___splice3569135692_
                                                            '1))
                                                          (_target791849_
                                                           (##vector-ref
                                                            ___splice3569135692_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl793852_)
                                                          (___match3577935780_
                                                           _e7401112_
                                                           _hd7411116_
                                                           _tl7421119_
                                                           _e7431122_
                                                           _hd7441126_
                                                           _tl7451129_
                                                           ___splice3569135692_
                                                           _target791849_
                                                           _tl793852_)
                                                          (_g737822_))))
                                                  (_g737822_)))))
                                      (if (gx#stx-pair/null? _hd7441126_)
                                          (let ((___splice3569135692_
                                                 (gx#syntax-split-splice
                                                  _hd7441126_
                                                  '0)))
                                            (let ((_tl793852_
                                                   (##vector-ref
                                                    ___splice3569135692_
                                                    '1))
                                                  (_target791849_
                                                   (##vector-ref
                                                    ___splice3569135692_
                                                    '0)))
                                              (if (gx#stx-null? _tl793852_)
                                                  (___match3577935780_
                                                   _e7401112_
                                                   _hd7411116_
                                                   _tl7421119_
                                                   _e7431122_
                                                   _hd7441126_
                                                   _tl7451129_
                                                   ___splice3569135692_
                                                   _target791849_
                                                   _tl793852_)
                                                  (_g737822_))))
                                          (_g737822_)))
                                  (if (gx#stx-pair? _hd7441126_)
                                      (let ((_e7641010_
                                             (gx#syntax-e _hd7441126_)))
                                        (let ((_tl7661017_ (##cdr _e7641010_))
                                              (_hd7651014_ (##car _e7641010_)))
                                          (if (gx#stx-pair? _hd7651014_)
                                              (let ((_e7671020_
                                                     (gx#syntax-e
                                                      _hd7651014_)))
                                                (let ((_tl7691027_
                                                       (##cdr _e7671020_))
                                                      (_hd7681024_
                                                       (##car _e7671020_)))
                                                  (if (gx#stx-pair?
                                                       _tl7691027_)
                                                      (let ((_e7701030_
                                                             (gx#syntax-e
                                                              _tl7691027_)))
                                                        (let ((_tl7721037_
                                                               (##cdr _e7701030_))
                                                              (_hd7711034_
                                                               (##car _e7701030_)))
                                                          (if (gx#stx-null?
                                                               _tl7721037_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl7661017_)
                          (if (gx#stx-pair/null? _tl7451129_)
                              (let ((___splice3568735688_
                                     (gx#syntax-split-splice _tl7451129_ '0)))
                                (let ((_tl7751043_
                                       (##vector-ref ___splice3568735688_ '1))
                                      (_target7731040_
                                       (##vector-ref ___splice3568735688_ '0)))
                                  (if (gx#stx-null? _tl7751043_)
                                      (___match3575935760_
                                       _e7401112_
                                       _hd7411116_
                                       _tl7421119_
                                       _e7431122_
                                       _hd7441126_
                                       _tl7451129_
                                       _e7641010_
                                       _hd7651014_
                                       _tl7661017_
                                       _e7671020_
                                       _hd7681024_
                                       _tl7691027_
                                       _e7701030_
                                       _hd7711034_
                                       _tl7721037_
                                       ___splice3568735688_
                                       _target7731040_
                                       _tl7751043_)
                                      (if (gx#stx-pair/null? _hd7441126_)
                                          (let ((___splice3569135692_
                                                 (gx#syntax-split-splice
                                                  _hd7441126_
                                                  '0)))
                                            (let ((_tl793852_
                                                   (##vector-ref
                                                    ___splice3569135692_
                                                    '1))
                                                  (_target791849_
                                                   (##vector-ref
                                                    ___splice3569135692_
                                                    '0)))
                                              (if (gx#stx-null? _tl793852_)
                                                  (___match3577935780_
                                                   _e7401112_
                                                   _hd7411116_
                                                   _tl7421119_
                                                   _e7431122_
                                                   _hd7441126_
                                                   _tl7451129_
                                                   ___splice3569135692_
                                                   _target791849_
                                                   _tl793852_)
                                                  (_g737822_))))
                                          (_g737822_)))))
                              (if (gx#stx-pair/null? _hd7441126_)
                                  (let ((___splice3569135692_
                                         (gx#syntax-split-splice
                                          _hd7441126_
                                          '0)))
                                    (let ((_tl793852_
                                           (##vector-ref
                                            ___splice3569135692_
                                            '1))
                                          (_target791849_
                                           (##vector-ref
                                            ___splice3569135692_
                                            '0)))
                                      (if (gx#stx-null? _tl793852_)
                                          (___match3577935780_
                                           _e7401112_
                                           _hd7411116_
                                           _tl7421119_
                                           _e7431122_
                                           _hd7441126_
                                           _tl7451129_
                                           ___splice3569135692_
                                           _target791849_
                                           _tl793852_)
                                          (_g737822_))))
                                  (_g737822_)))
                          (if (gx#stx-pair/null? _hd7441126_)
                              (let ((___splice3569135692_
                                     (gx#syntax-split-splice _hd7441126_ '0)))
                                (let ((_tl793852_
                                       (##vector-ref ___splice3569135692_ '1))
                                      (_target791849_
                                       (##vector-ref ___splice3569135692_ '0)))
                                  (if (gx#stx-null? _tl793852_)
                                      (___match3577935780_
                                       _e7401112_
                                       _hd7411116_
                                       _tl7421119_
                                       _e7431122_
                                       _hd7441126_
                                       _tl7451129_
                                       ___splice3569135692_
                                       _target791849_
                                       _tl793852_)
                                      (_g737822_))))
                              (_g737822_)))
                      (if (gx#stx-pair/null? _hd7441126_)
                          (let ((___splice3569135692_
                                 (gx#syntax-split-splice _hd7441126_ '0)))
                            (let ((_tl793852_
                                   (##vector-ref ___splice3569135692_ '1))
                                  (_target791849_
                                   (##vector-ref ___splice3569135692_ '0)))
                              (if (gx#stx-null? _tl793852_)
                                  (___match3577935780_
                                   _e7401112_
                                   _hd7411116_
                                   _tl7421119_
                                   _e7431122_
                                   _hd7441126_
                                   _tl7451129_
                                   ___splice3569135692_
                                   _target791849_
                                   _tl793852_)
                                  (_g737822_))))
                          (_g737822_)))))
              (if (gx#stx-pair/null? _hd7441126_)
                  (let ((___splice3569135692_
                         (gx#syntax-split-splice _hd7441126_ '0)))
                    (let ((_tl793852_ (##vector-ref ___splice3569135692_ '1))
                          (_target791849_
                           (##vector-ref ___splice3569135692_ '0)))
                      (if (gx#stx-null? _tl793852_)
                          (___match3577935780_
                           _e7401112_
                           _hd7411116_
                           _tl7421119_
                           _e7431122_
                           _hd7441126_
                           _tl7451129_
                           ___splice3569135692_
                           _target791849_
                           _tl793852_)
                          (_g737822_))))
                  (_g737822_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd7441126_)
                                                  (let ((___splice3569135692_
                                                         (gx#syntax-split-splice
                                                          _hd7441126_
                                                          '0)))
                                                    (let ((_tl793852_
                                                           (##vector-ref
                                                            ___splice3569135692_
                                                            '1))
                                                          (_target791849_
                                                           (##vector-ref
                                                            ___splice3569135692_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl793852_)
                                                          (___match3577935780_
                                                           _e7401112_
                                                           _hd7411116_
                                                           _tl7421119_
                                                           _e7431122_
                                                           _hd7441126_
                                                           _tl7451129_
                                                           ___splice3569135692_
                                                           _target791849_
                                                           _tl793852_)
                                                          (_g737822_))))
                                                  (_g737822_)))))
                                      (if (gx#stx-pair/null? _hd7441126_)
                                          (let ((___splice3569135692_
                                                 (gx#syntax-split-splice
                                                  _hd7441126_
                                                  '0)))
                                            (let ((_tl793852_
                                                   (##vector-ref
                                                    ___splice3569135692_
                                                    '1))
                                                  (_target791849_
                                                   (##vector-ref
                                                    ___splice3569135692_
                                                    '0)))
                                              (if (gx#stx-null? _tl793852_)
                                                  (___match3577935780_
                                                   _e7401112_
                                                   _hd7411116_
                                                   _tl7421119_
                                                   _e7431122_
                                                   _hd7441126_
                                                   _tl7451129_
                                                   ___splice3569135692_
                                                   _target791849_
                                                   _tl793852_)
                                                  (_g737822_))))
                                          (_g737822_))))))
                          (_g737822_))))
                  (_g737822_)))))))
    (define |gerbil/core$<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx1195_)
        (let* ((___stx3578235783_ _stx1195_)
               (_g12001277_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3578235783_))))
          (let ((___kont3578535786_
                 (lambda (_L1573_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (begin
                                 '#!void
                                 (foldr (lambda (_g15891592_ _g15901595_)
                                          (cons _g15891592_ _g15901595_))
                                        '()
                                        _L1573_))))))
                (___kont3578935790_
                 (lambda (_L1475_ _L1477_ _L1478_ _L1479_ _L1480_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons (cons _L1479_ (cons _L1478_ '())) '())
                               (cons (cons _L1480_
                                           (cons _L1477_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g15071510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g15081513_)
                    (cons _g15071510_ _g15081513_))
                  '()
                  _L1475_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3579335794_
                 (lambda (_L1344_ _L1346_ _L1347_ _L1348_)
                   (cons (gx#datum->syntax '#f 'with-syntax)
                         (cons (cons _L1347_ '())
                               (cons (cons _L1348_
                                           (cons _L1346_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g13691372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g13701375_)
                    (cons _g13691372_ _g13701375_))
                  '()
                  _L1344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match3589535896_
                    (lambda (_e12541284_
                             _hd12551288_
                             _tl12561291_
                             _e12571294_
                             _hd12581298_
                             _tl12591301_
                             _e12601304_
                             _hd12611308_
                             _tl12621311_
                             ___splice3579535796_
                             _target12631314_
                             _tl12651317_)
                      (letrec ((_loop12661320_
                                (lambda (_hd12641324_ _body12701327_)
                                  (if (gx#stx-pair? _hd12641324_)
                                      (let ((_e12671330_
                                             (gx#syntax-e _hd12641324_)))
                                        (let ((_lp-tl12691337_
                                               (##cdr _e12671330_))
                                              (_lp-hd12681334_
                                               (##car _e12671330_)))
                                          (_loop12661320_
                                           _lp-tl12691337_
                                           (cons _lp-hd12681334_
                                                 _body12701327_))))
                                      (let ((_body12711340_
                                             (reverse _body12701327_)))
                                        (___kont3579335794_
                                         _body12711340_
                                         _tl12621311_
                                         _hd12611308_
                                         _hd12551288_))))))
                        (_loop12661320_ _target12631314_ '()))))
                   (___match3586935870_
                    (lambda (_e12231385_
                             _hd12241389_
                             _tl12251392_
                             _e12261395_
                             _hd12271399_
                             _tl12281402_
                             _e12291405_
                             _hd12301409_
                             _tl12311412_
                             _e12321415_
                             _hd12331419_
                             _tl12341422_
                             _e12351425_
                             _hd12361429_
                             _tl12371432_
                             _e12381435_
                             _hd12391439_
                             _tl12401442_
                             ___splice3579135792_
                             _target12411445_
                             _tl12431448_)
                      (letrec ((_loop12441451_
                                (lambda (_hd12421455_ _body12481458_)
                                  (if (gx#stx-pair? _hd12421455_)
                                      (let ((_e12451461_
                                             (gx#syntax-e _hd12421455_)))
                                        (let ((_lp-tl12471468_
                                               (##cdr _e12451461_))
                                              (_lp-hd12461465_
                                               (##car _e12451461_)))
                                          (_loop12441451_
                                           _lp-tl12471468_
                                           (cons _lp-hd12461465_
                                                 _body12481458_))))
                                      (let ((_body12491471_
                                             (reverse _body12481458_)))
                                        (___kont3578935790_
                                         _body12491471_
                                         _tl12311412_
                                         _hd12391439_
                                         _tl12371432_
                                         _hd12241389_))))))
                        (_loop12441451_ _target12411445_ '()))))
                   (___match3581935820_
                    (lambda (_e12031523_
                             _hd12041527_
                             _tl12051530_
                             _e12061533_
                             _hd12071537_
                             _tl12081540_
                             ___splice3578735788_
                             _target12091543_
                             _tl12111546_)
                      (letrec ((_loop12121549_
                                (lambda (_hd12101553_ _body12161556_)
                                  (if (gx#stx-pair? _hd12101553_)
                                      (let ((_e12131559_
                                             (gx#syntax-e _hd12101553_)))
                                        (let ((_lp-tl12151566_
                                               (##cdr _e12131559_))
                                              (_lp-hd12141563_
                                               (##car _e12131559_)))
                                          (_loop12121549_
                                           _lp-tl12151566_
                                           (cons _lp-hd12141563_
                                                 _body12161556_))))
                                      (let ((_body12171569_
                                             (reverse _body12161556_)))
                                        (___kont3578535786_
                                         _body12171569_))))))
                        (_loop12121549_ _target12091543_ '())))))
              (if (gx#stx-pair? ___stx3578235783_)
                  (let ((_e12031523_ (gx#syntax-e ___stx3578235783_)))
                    (let ((_tl12051530_ (##cdr _e12031523_))
                          (_hd12041527_ (##car _e12031523_)))
                      (if (gx#stx-pair? _tl12051530_)
                          (let ((_e12061533_ (gx#syntax-e _tl12051530_)))
                            (let ((_tl12081540_ (##cdr _e12061533_))
                                  (_hd12071537_ (##car _e12061533_)))
                              (if (gx#stx-null? _hd12071537_)
                                  (if (gx#stx-pair/null? _tl12081540_)
                                      (let ((___splice3578735788_
                                             (gx#syntax-split-splice
                                              _tl12081540_
                                              '0)))
                                        (let ((_tl12111546_
                                               (##vector-ref
                                                ___splice3578735788_
                                                '1))
                                              (_target12091543_
                                               (##vector-ref
                                                ___splice3578735788_
                                                '0)))
                                          (if (gx#stx-null? _tl12111546_)
                                              (___match3581935820_
                                               _e12031523_
                                               _hd12041527_
                                               _tl12051530_
                                               _e12061533_
                                               _hd12071537_
                                               _tl12081540_
                                               ___splice3578735788_
                                               _target12091543_
                                               _tl12111546_)
                                              (_g12001277_))))
                                      (_g12001277_))
                                  (if (gx#stx-pair? _hd12071537_)
                                      (let ((_e12291405_
                                             (gx#syntax-e _hd12071537_)))
                                        (let ((_tl12311412_
                                               (##cdr _e12291405_))
                                              (_hd12301409_
                                               (##car _e12291405_)))
                                          (if (gx#stx-pair? _hd12301409_)
                                              (let ((_e12321415_
                                                     (gx#syntax-e
                                                      _hd12301409_)))
                                                (let ((_tl12341422_
                                                       (##cdr _e12321415_))
                                                      (_hd12331419_
                                                       (##car _e12321415_)))
                                                  (if (gx#stx-pair?
                                                       _hd12331419_)
                                                      (let ((_e12351425_
                                                             (gx#syntax-e
                                                              _hd12331419_)))
                                                        (let ((_tl12371432_
                                                               (##cdr _e12351425_))
                                                              (_hd12361429_
                                                               (##car _e12351425_)))
                                                          (if (gx#identifier?
                                                               _hd12361429_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core$<syntax-sugar>[1]#_g41029_|
                           _hd12361429_)
                          (if (gx#stx-pair? _tl12341422_)
                              (let ((_e12381435_ (gx#syntax-e _tl12341422_)))
                                (let ((_tl12401442_ (##cdr _e12381435_))
                                      (_hd12391439_ (##car _e12381435_)))
                                  (if (gx#stx-null? _tl12401442_)
                                      (if (gx#stx-pair/null? _tl12081540_)
                                          (let ((___splice3579135792_
                                                 (gx#syntax-split-splice
                                                  _tl12081540_
                                                  '0)))
                                            (let ((_tl12431448_
                                                   (##vector-ref
                                                    ___splice3579135792_
                                                    '1))
                                                  (_target12411445_
                                                   (##vector-ref
                                                    ___splice3579135792_
                                                    '0)))
                                              (if (gx#stx-null? _tl12431448_)
                                                  (___match3586935870_
                                                   _e12031523_
                                                   _hd12041527_
                                                   _tl12051530_
                                                   _e12061533_
                                                   _hd12071537_
                                                   _tl12081540_
                                                   _e12291405_
                                                   _hd12301409_
                                                   _tl12311412_
                                                   _e12321415_
                                                   _hd12331419_
                                                   _tl12341422_
                                                   _e12351425_
                                                   _hd12361429_
                                                   _tl12371432_
                                                   _e12381435_
                                                   _hd12391439_
                                                   _tl12401442_
                                                   ___splice3579135792_
                                                   _target12411445_
                                                   _tl12431448_)
                                                  (_g12001277_))))
                                          (_g12001277_))
                                      (if (gx#stx-pair/null? _tl12081540_)
                                          (let ((___splice3579535796_
                                                 (gx#syntax-split-splice
                                                  _tl12081540_
                                                  '0)))
                                            (let ((_tl12651317_
                                                   (##vector-ref
                                                    ___splice3579535796_
                                                    '1))
                                                  (_target12631314_
                                                   (##vector-ref
                                                    ___splice3579535796_
                                                    '0)))
                                              (if (gx#stx-null? _tl12651317_)
                                                  (___match3589535896_
                                                   _e12031523_
                                                   _hd12041527_
                                                   _tl12051530_
                                                   _e12061533_
                                                   _hd12071537_
                                                   _tl12081540_
                                                   _e12291405_
                                                   _hd12301409_
                                                   _tl12311412_
                                                   ___splice3579535796_
                                                   _target12631314_
                                                   _tl12651317_)
                                                  (_g12001277_))))
                                          (_g12001277_)))))
                              (if (gx#stx-pair/null? _tl12081540_)
                                  (let ((___splice3579535796_
                                         (gx#syntax-split-splice
                                          _tl12081540_
                                          '0)))
                                    (let ((_tl12651317_
                                           (##vector-ref
                                            ___splice3579535796_
                                            '1))
                                          (_target12631314_
                                           (##vector-ref
                                            ___splice3579535796_
                                            '0)))
                                      (if (gx#stx-null? _tl12651317_)
                                          (___match3589535896_
                                           _e12031523_
                                           _hd12041527_
                                           _tl12051530_
                                           _e12061533_
                                           _hd12071537_
                                           _tl12081540_
                                           _e12291405_
                                           _hd12301409_
                                           _tl12311412_
                                           ___splice3579535796_
                                           _target12631314_
                                           _tl12651317_)
                                          (_g12001277_))))
                                  (_g12001277_)))
                          (if (gx#stx-pair/null? _tl12081540_)
                              (let ((___splice3579535796_
                                     (gx#syntax-split-splice _tl12081540_ '0)))
                                (let ((_tl12651317_
                                       (##vector-ref ___splice3579535796_ '1))
                                      (_target12631314_
                                       (##vector-ref ___splice3579535796_ '0)))
                                  (if (gx#stx-null? _tl12651317_)
                                      (___match3589535896_
                                       _e12031523_
                                       _hd12041527_
                                       _tl12051530_
                                       _e12061533_
                                       _hd12071537_
                                       _tl12081540_
                                       _e12291405_
                                       _hd12301409_
                                       _tl12311412_
                                       ___splice3579535796_
                                       _target12631314_
                                       _tl12651317_)
                                      (_g12001277_))))
                              (_g12001277_)))
                      (if (gx#stx-pair/null? _tl12081540_)
                          (let ((___splice3579535796_
                                 (gx#syntax-split-splice _tl12081540_ '0)))
                            (let ((_tl12651317_
                                   (##vector-ref ___splice3579535796_ '1))
                                  (_target12631314_
                                   (##vector-ref ___splice3579535796_ '0)))
                              (if (gx#stx-null? _tl12651317_)
                                  (___match3589535896_
                                   _e12031523_
                                   _hd12041527_
                                   _tl12051530_
                                   _e12061533_
                                   _hd12071537_
                                   _tl12081540_
                                   _e12291405_
                                   _hd12301409_
                                   _tl12311412_
                                   ___splice3579535796_
                                   _target12631314_
                                   _tl12651317_)
                                  (_g12001277_))))
                          (_g12001277_)))))
              (if (gx#stx-pair/null? _tl12081540_)
                  (let ((___splice3579535796_
                         (gx#syntax-split-splice _tl12081540_ '0)))
                    (let ((_tl12651317_ (##vector-ref ___splice3579535796_ '1))
                          (_target12631314_
                           (##vector-ref ___splice3579535796_ '0)))
                      (if (gx#stx-null? _tl12651317_)
                          (___match3589535896_
                           _e12031523_
                           _hd12041527_
                           _tl12051530_
                           _e12061533_
                           _hd12071537_
                           _tl12081540_
                           _e12291405_
                           _hd12301409_
                           _tl12311412_
                           ___splice3579535796_
                           _target12631314_
                           _tl12651317_)
                          (_g12001277_))))
                  (_g12001277_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl12081540_)
                                                  (let ((___splice3579535796_
                                                         (gx#syntax-split-splice
                                                          _tl12081540_
                                                          '0)))
                                                    (let ((_tl12651317_
                                                           (##vector-ref
                                                            ___splice3579535796_
                                                            '1))
                                                          (_target12631314_
                                                           (##vector-ref
                                                            ___splice3579535796_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl12651317_)
                                                          (___match3589535896_
                                                           _e12031523_
                                                           _hd12041527_
                                                           _tl12051530_
                                                           _e12061533_
                                                           _hd12071537_
                                                           _tl12081540_
                                                           _e12291405_
                                                           _hd12301409_
                                                           _tl12311412_
                                                           ___splice3579535796_
                                                           _target12631314_
                                                           _tl12651317_)
                                                          (_g12001277_))))
                                                  (_g12001277_)))))
                                      (_g12001277_)))))
                          (_g12001277_))))
                  (_g12001277_)))))))
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
