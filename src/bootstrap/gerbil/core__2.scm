(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<syntax-sugar>[1]#_g41980_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx390_)
        (let* ((_g393417_
                (lambda (_g394413_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g394413_)))
               (_g392723_
                (lambda (_g394421_)
                  (if (gx#stx-pair? _g394421_)
                      (let ((_e397424_ (gx#syntax-e _g394421_)))
                        (let ((_hd398428_ (##car _e397424_))
                              (_tl399431_ (##cdr _e397424_)))
                          (if (gx#stx-pair? _tl399431_)
                              (let ((_e400434_ (gx#syntax-e _tl399431_)))
                                (let ((_hd401438_ (##car _e400434_))
                                      (_tl402441_ (##cdr _e400434_)))
                                  (if (gx#stx-pair/null? _tl402441_)
                                      (let ((_g41976_
                                             (gx#syntax-split-splice
                                              _tl402441_
                                              '0)))
                                        (begin
                                          (let ((_g41977_
                                                 (if (##values? _g41976_)
                                                     (##vector-length _g41976_)
                                                     1)))
                                            (if (not (##fx= _g41977_ 2))
                                                (error "Context expects 2 values"
                                                       _g41977_)))
                                          (let ((_target403444_
                                                 (##vector-ref _g41976_ 0))
                                                (_tl405447_
                                                 (##vector-ref _g41976_ 1)))
                                            (if (gx#stx-null? _tl405447_)
                                                (letrec ((_loop406450_
                                                          (lambda (_hd404454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses410457_)
                    (if (gx#stx-pair? _hd404454_)
                        (let ((_e407460_ (gx#syntax-e _hd404454_)))
                          (let ((_lp-hd408464_ (##car _e407460_))
                                (_lp-tl409467_ (##cdr _e407460_)))
                            (_loop406450_
                             _lp-tl409467_
                             (cons _lp-hd408464_ _clauses410457_))))
                        (let ((_clauses411470_ (reverse _clauses410457_)))
                          ((lambda (_L474_ _L476_)
                             (if (gx#identifier-list? _L476_)
                                 (let* ((_body640_
                                         (gx#stx-map
                                          (lambda (_clause497_)
                                            (let* ((___stx3637936380_
                                                    _clause497_)
                                                   (_g501528_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx3637936380_))))
                                              (let ((___kont3638236383_
                                                     (lambda (_L613_ _L615_)
                                                       (cons _L615_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons _L613_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont3638436385_
                                                     (lambda (_L565_
                                                              _L567_
                                                              _L568_)
                                                       (cons _L568_
                                                             (cons _L567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax)
                                       (cons _L565_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx3637936380_)
                                                    (let ((_e505593_
                                                           (gx#syntax-e
                                                            ___stx3637936380_)))
                                                      (let ((_tl507600_
                                                             (##cdr _e505593_))
                                                            (_hd506597_
                                                             (##car _e505593_)))
                                                        (if (gx#stx-pair?
                                                             _tl507600_)
                                                            (let ((_e508603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl507600_)))
                      (let ((_tl510610_ (##cdr _e508603_))
                            (_hd509607_ (##car _e508603_)))
                        (if (gx#stx-null? _tl510610_)
                            (___kont3638236383_ _hd509607_ _hd506597_)
                            (if (gx#stx-pair? _tl510610_)
                                (let ((_e520555_ (gx#syntax-e _tl510610_)))
                                  (let ((_tl522562_ (##cdr _e520555_))
                                        (_hd521559_ (##car _e520555_)))
                                    (if (gx#stx-null? _tl522562_)
                                        (___kont3638436385_
                                         _hd521559_
                                         _hd509607_
                                         _hd506597_)
                                        (_g501528_))))
                                (_g501528_)))))
                    (_g501528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g501528_)))))
                                          (foldr (lambda (_g631634_ _g632637_)
                                                   (cons _g631634_ _g632637_))
                                                 '()
                                                 _L474_)))
                                        (_g643660_
                                         (lambda (_g644656_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g644656_)))
                                        (_g642719_
                                         (lambda (_g644664_)
                                           (if (gx#stx-pair/null? _g644664_)
                                               (let ((_g41978_
                                                      (gx#syntax-split-splice
                                                       _g644664_
                                                       '0)))
                                                 (begin
                                                   (let ((_g41979_
                                                          (if (##values?
                                                               _g41978_)
                                                              (##vector-length
                                                               _g41978_)
                                                              1)))
                                                     (if (not (##fx= _g41979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                 (error "Context expects 2 values" _g41979_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target646667_
                                                          (##vector-ref
                                                           _g41978_
                                                           0))
                                                         (_tl648670_
                                                          (##vector-ref
                                                           _g41978_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl648670_)
                                                         (letrec ((_loop649673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd647677_ _clause653680_)
                             (if (gx#stx-pair? _hd647677_)
                                 (let ((_e650683_ (gx#syntax-e _hd647677_)))
                                   (let ((_lp-hd651687_ (##car _e650683_))
                                         (_lp-tl652690_ (##cdr _e650683_)))
                                     (_loop649673_
                                      _lp-tl652690_
                                      (cons _lp-hd651687_ _clause653680_))))
                                 (let ((_clause654693_
                                        (reverse _clause653680_)))
                                   ((lambda (_L697_)
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
                            (cons _L476_
                                  (foldr (lambda (_g710713_ _g711716_)
                                           (cons _g710713_ _g711716_))
                                         '()
                                         _L697_))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _clause654693_))))))
                   (_loop649673_ _target646667_ '()))
                 (_g643660_ _g644664_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g643660_ _g644664_)))))
                                   (_g642719_ _body640_))
                                 (_g393417_ _g394421_)))
                           _clauses411470_
                           _hd401438_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop406450_
                                                   _target403444_
                                                   '()))
                                                (_g393417_ _g394421_)))))
                                      (_g393417_ _g394421_))))
                              (_g393417_ _g394421_))))
                      (_g393417_ _g394421_)))))
          (_g392723_ _stx390_))))
    (define |gerbil/core$<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx729_)
        (let* ((___stx3642336424_ _stx729_)
               (_g734819_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3642336424_))))
          (let ((___kont3642636427_
                 (lambda (_L1159_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_g11751178_ _g11761181_)
                                        (cons _g11751178_ _g11761181_))
                                      '()
                                      _L1159_)))))
                (___kont3643036431_
                 (lambda (_L1067_ _L1069_ _L1070_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons _L1069_
                               (cons '()
                                     (cons (cons _L1070_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_g10931096_ _g10941099_)
                                    (cons _g10931096_ _g10941099_))
                                  '()
                                  _L1067_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (___kont3643436435_
                 (lambda (_L930_ _L932_ _L933_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons (cons (gx#datum->syntax '#f 'list)
                                     (foldr (lambda (_g955962_ _g956965_)
                                              (cons _g955962_ _g956965_))
                                            '()
                                            _L932_))
                               (cons '()
                                     (cons (cons (foldr (lambda (_g957968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g958971_)
                  (cons _g957968_ _g958971_))
                '()
                _L933_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_g959974_ _g960977_)
                                    (cons _g959974_ _g960977_))
                                  '()
                                  _L930_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let* ((___match3652436525_
                    (lambda (_e782826_
                             _hd783830_
                             _tl784833_
                             _e785836_
                             _hd786840_
                             _tl787843_
                             ___splice3643636437_
                             _target788846_
                             _tl790849_)
                      (letrec ((_loop791852_
                                (lambda (_hd789856_ _e795859_ _pat796861_)
                                  (if (gx#stx-pair? _hd789856_)
                                      (let ((_e792864_
                                             (gx#syntax-e _hd789856_)))
                                        (let ((_lp-tl794871_ (##cdr _e792864_))
                                              (_lp-hd793868_
                                               (##car _e792864_)))
                                          (if (gx#stx-pair? _lp-hd793868_)
                                              (let ((_e799874_
                                                     (gx#syntax-e
                                                      _lp-hd793868_)))
                                                (let ((_tl801881_
                                                       (##cdr _e799874_))
                                                      (_hd800878_
                                                       (##car _e799874_)))
                                                  (if (gx#stx-pair? _tl801881_)
                                                      (let ((_e802884_
                                                             (gx#syntax-e
                                                              _tl801881_)))
                                                        (let ((_tl804891_
                                                               (##cdr _e802884_))
                                                              (_hd803888_
                                                               (##car _e802884_)))
                                                          (if (gx#stx-null?
                                                               _tl804891_)
                                                              (_loop791852_
                                                               _lp-tl794871_
                                                               (cons _hd803888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e795859_)
                       (cons _hd800878_ _pat796861_))
                      (_g734819_))))
              (_g734819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g734819_))))
                                      (let ((_pat798897_ (reverse _pat796861_))
                                            (_e797894_ (reverse _e795859_)))
                                        (if (gx#stx-pair/null? _tl787843_)
                                            (let ((___splice3643836439_
                                                   (gx#syntax-split-splice
                                                    _tl787843_
                                                    '0)))
                                              (let ((_tl807903_
                                                     (##vector-ref
                                                      ___splice3643836439_
                                                      '1))
                                                    (_target805900_
                                                     (##vector-ref
                                                      ___splice3643836439_
                                                      '0)))
                                                (if (gx#stx-null? _tl807903_)
                                                    (letrec ((_loop808906_
                                                              (lambda (_hd806910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body812913_)
                        (if (gx#stx-pair? _hd806910_)
                            (let ((_e809916_ (gx#syntax-e _hd806910_)))
                              (let ((_lp-tl811923_ (##cdr _e809916_))
                                    (_lp-hd810920_ (##car _e809916_)))
                                (_loop808906_
                                 _lp-tl811923_
                                 (cons _lp-hd810920_ _body812913_))))
                            (let ((_body813926_ (reverse _body812913_)))
                              (___kont3643436435_
                               _body813926_
                               _e797894_
                               _pat798897_))))))
              (_loop808906_ _target805900_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g734819_))))
                                            (_g734819_)))))))
                        (_loop791852_ _target788846_ '() '()))))
                   (___match3650436505_
                    (lambda (_e755987_
                             _hd756991_
                             _tl757994_
                             _e758997_
                             _hd7591001_
                             _tl7601004_
                             _e7611007_
                             _hd7621011_
                             _tl7631014_
                             _e7641017_
                             _hd7651021_
                             _tl7661024_
                             _e7671027_
                             _hd7681031_
                             _tl7691034_
                             ___splice3643236433_
                             _target7701037_
                             _tl7721040_)
                      (letrec ((_loop7731043_
                                (lambda (_hd7711047_ _body7771050_)
                                  (if (gx#stx-pair? _hd7711047_)
                                      (let ((_e7741053_
                                             (gx#syntax-e _hd7711047_)))
                                        (let ((_lp-tl7761060_
                                               (##cdr _e7741053_))
                                              (_lp-hd7751057_
                                               (##car _e7741053_)))
                                          (_loop7731043_
                                           _lp-tl7761060_
                                           (cons _lp-hd7751057_
                                                 _body7771050_))))
                                      (let ((_body7781063_
                                             (reverse _body7771050_)))
                                        (___kont3643036431_
                                         _body7781063_
                                         _hd7681031_
                                         _hd7651021_))))))
                        (_loop7731043_ _target7701037_ '()))))
                   (___match3646236463_
                    (lambda (_e7371109_
                             _hd7381113_
                             _tl7391116_
                             _e7401119_
                             _hd7411123_
                             _tl7421126_
                             ___splice3642836429_
                             _target7431129_
                             _tl7451132_)
                      (letrec ((_loop7461135_
                                (lambda (_hd7441139_ _body7501142_)
                                  (if (gx#stx-pair? _hd7441139_)
                                      (let ((_e7471145_
                                             (gx#syntax-e _hd7441139_)))
                                        (let ((_lp-tl7491152_
                                               (##cdr _e7471145_))
                                              (_lp-hd7481149_
                                               (##car _e7471145_)))
                                          (_loop7461135_
                                           _lp-tl7491152_
                                           (cons _lp-hd7481149_
                                                 _body7501142_))))
                                      (let ((_body7511155_
                                             (reverse _body7501142_)))
                                        (___kont3642636427_ _body7511155_))))))
                        (_loop7461135_ _target7431129_ '())))))
              (if (gx#stx-pair? ___stx3642336424_)
                  (let ((_e7371109_ (gx#syntax-e ___stx3642336424_)))
                    (let ((_tl7391116_ (##cdr _e7371109_))
                          (_hd7381113_ (##car _e7371109_)))
                      (if (gx#stx-pair? _tl7391116_)
                          (let ((_e7401119_ (gx#syntax-e _tl7391116_)))
                            (let ((_tl7421126_ (##cdr _e7401119_))
                                  (_hd7411123_ (##car _e7401119_)))
                              (if (gx#stx-null? _hd7411123_)
                                  (if (gx#stx-pair/null? _tl7421126_)
                                      (let ((___splice3642836429_
                                             (gx#syntax-split-splice
                                              _tl7421126_
                                              '0)))
                                        (let ((_tl7451132_
                                               (##vector-ref
                                                ___splice3642836429_
                                                '1))
                                              (_target7431129_
                                               (##vector-ref
                                                ___splice3642836429_
                                                '0)))
                                          (if (gx#stx-null? _tl7451132_)
                                              (___match3646236463_
                                               _e7371109_
                                               _hd7381113_
                                               _tl7391116_
                                               _e7401119_
                                               _hd7411123_
                                               _tl7421126_
                                               ___splice3642836429_
                                               _target7431129_
                                               _tl7451132_)
                                              (if (gx#stx-pair/null?
                                                   _hd7411123_)
                                                  (let ((___splice3643636437_
                                                         (gx#syntax-split-splice
                                                          _hd7411123_
                                                          '0)))
                                                    (let ((_tl790849_
                                                           (##vector-ref
                                                            ___splice3643636437_
                                                            '1))
                                                          (_target788846_
                                                           (##vector-ref
                                                            ___splice3643636437_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl790849_)
                                                          (___match3652436525_
                                                           _e7371109_
                                                           _hd7381113_
                                                           _tl7391116_
                                                           _e7401119_
                                                           _hd7411123_
                                                           _tl7421126_
                                                           ___splice3643636437_
                                                           _target788846_
                                                           _tl790849_)
                                                          (_g734819_))))
                                                  (_g734819_)))))
                                      (if (gx#stx-pair/null? _hd7411123_)
                                          (let ((___splice3643636437_
                                                 (gx#syntax-split-splice
                                                  _hd7411123_
                                                  '0)))
                                            (let ((_tl790849_
                                                   (##vector-ref
                                                    ___splice3643636437_
                                                    '1))
                                                  (_target788846_
                                                   (##vector-ref
                                                    ___splice3643636437_
                                                    '0)))
                                              (if (gx#stx-null? _tl790849_)
                                                  (___match3652436525_
                                                   _e7371109_
                                                   _hd7381113_
                                                   _tl7391116_
                                                   _e7401119_
                                                   _hd7411123_
                                                   _tl7421126_
                                                   ___splice3643636437_
                                                   _target788846_
                                                   _tl790849_)
                                                  (_g734819_))))
                                          (_g734819_)))
                                  (if (gx#stx-pair? _hd7411123_)
                                      (let ((_e7611007_
                                             (gx#syntax-e _hd7411123_)))
                                        (let ((_tl7631014_ (##cdr _e7611007_))
                                              (_hd7621011_ (##car _e7611007_)))
                                          (if (gx#stx-pair? _hd7621011_)
                                              (let ((_e7641017_
                                                     (gx#syntax-e
                                                      _hd7621011_)))
                                                (let ((_tl7661024_
                                                       (##cdr _e7641017_))
                                                      (_hd7651021_
                                                       (##car _e7641017_)))
                                                  (if (gx#stx-pair?
                                                       _tl7661024_)
                                                      (let ((_e7671027_
                                                             (gx#syntax-e
                                                              _tl7661024_)))
                                                        (let ((_tl7691034_
                                                               (##cdr _e7671027_))
                                                              (_hd7681031_
                                                               (##car _e7671027_)))
                                                          (if (gx#stx-null?
                                                               _tl7691034_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl7631014_)
                          (if (gx#stx-pair/null? _tl7421126_)
                              (let ((___splice3643236433_
                                     (gx#syntax-split-splice _tl7421126_ '0)))
                                (let ((_tl7721040_
                                       (##vector-ref ___splice3643236433_ '1))
                                      (_target7701037_
                                       (##vector-ref ___splice3643236433_ '0)))
                                  (if (gx#stx-null? _tl7721040_)
                                      (___match3650436505_
                                       _e7371109_
                                       _hd7381113_
                                       _tl7391116_
                                       _e7401119_
                                       _hd7411123_
                                       _tl7421126_
                                       _e7611007_
                                       _hd7621011_
                                       _tl7631014_
                                       _e7641017_
                                       _hd7651021_
                                       _tl7661024_
                                       _e7671027_
                                       _hd7681031_
                                       _tl7691034_
                                       ___splice3643236433_
                                       _target7701037_
                                       _tl7721040_)
                                      (if (gx#stx-pair/null? _hd7411123_)
                                          (let ((___splice3643636437_
                                                 (gx#syntax-split-splice
                                                  _hd7411123_
                                                  '0)))
                                            (let ((_tl790849_
                                                   (##vector-ref
                                                    ___splice3643636437_
                                                    '1))
                                                  (_target788846_
                                                   (##vector-ref
                                                    ___splice3643636437_
                                                    '0)))
                                              (if (gx#stx-null? _tl790849_)
                                                  (___match3652436525_
                                                   _e7371109_
                                                   _hd7381113_
                                                   _tl7391116_
                                                   _e7401119_
                                                   _hd7411123_
                                                   _tl7421126_
                                                   ___splice3643636437_
                                                   _target788846_
                                                   _tl790849_)
                                                  (_g734819_))))
                                          (_g734819_)))))
                              (if (gx#stx-pair/null? _hd7411123_)
                                  (let ((___splice3643636437_
                                         (gx#syntax-split-splice
                                          _hd7411123_
                                          '0)))
                                    (let ((_tl790849_
                                           (##vector-ref
                                            ___splice3643636437_
                                            '1))
                                          (_target788846_
                                           (##vector-ref
                                            ___splice3643636437_
                                            '0)))
                                      (if (gx#stx-null? _tl790849_)
                                          (___match3652436525_
                                           _e7371109_
                                           _hd7381113_
                                           _tl7391116_
                                           _e7401119_
                                           _hd7411123_
                                           _tl7421126_
                                           ___splice3643636437_
                                           _target788846_
                                           _tl790849_)
                                          (_g734819_))))
                                  (_g734819_)))
                          (if (gx#stx-pair/null? _hd7411123_)
                              (let ((___splice3643636437_
                                     (gx#syntax-split-splice _hd7411123_ '0)))
                                (let ((_tl790849_
                                       (##vector-ref ___splice3643636437_ '1))
                                      (_target788846_
                                       (##vector-ref ___splice3643636437_ '0)))
                                  (if (gx#stx-null? _tl790849_)
                                      (___match3652436525_
                                       _e7371109_
                                       _hd7381113_
                                       _tl7391116_
                                       _e7401119_
                                       _hd7411123_
                                       _tl7421126_
                                       ___splice3643636437_
                                       _target788846_
                                       _tl790849_)
                                      (_g734819_))))
                              (_g734819_)))
                      (if (gx#stx-pair/null? _hd7411123_)
                          (let ((___splice3643636437_
                                 (gx#syntax-split-splice _hd7411123_ '0)))
                            (let ((_tl790849_
                                   (##vector-ref ___splice3643636437_ '1))
                                  (_target788846_
                                   (##vector-ref ___splice3643636437_ '0)))
                              (if (gx#stx-null? _tl790849_)
                                  (___match3652436525_
                                   _e7371109_
                                   _hd7381113_
                                   _tl7391116_
                                   _e7401119_
                                   _hd7411123_
                                   _tl7421126_
                                   ___splice3643636437_
                                   _target788846_
                                   _tl790849_)
                                  (_g734819_))))
                          (_g734819_)))))
              (if (gx#stx-pair/null? _hd7411123_)
                  (let ((___splice3643636437_
                         (gx#syntax-split-splice _hd7411123_ '0)))
                    (let ((_tl790849_ (##vector-ref ___splice3643636437_ '1))
                          (_target788846_
                           (##vector-ref ___splice3643636437_ '0)))
                      (if (gx#stx-null? _tl790849_)
                          (___match3652436525_
                           _e7371109_
                           _hd7381113_
                           _tl7391116_
                           _e7401119_
                           _hd7411123_
                           _tl7421126_
                           ___splice3643636437_
                           _target788846_
                           _tl790849_)
                          (_g734819_))))
                  (_g734819_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd7411123_)
                                                  (let ((___splice3643636437_
                                                         (gx#syntax-split-splice
                                                          _hd7411123_
                                                          '0)))
                                                    (let ((_tl790849_
                                                           (##vector-ref
                                                            ___splice3643636437_
                                                            '1))
                                                          (_target788846_
                                                           (##vector-ref
                                                            ___splice3643636437_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl790849_)
                                                          (___match3652436525_
                                                           _e7371109_
                                                           _hd7381113_
                                                           _tl7391116_
                                                           _e7401119_
                                                           _hd7411123_
                                                           _tl7421126_
                                                           ___splice3643636437_
                                                           _target788846_
                                                           _tl790849_)
                                                          (_g734819_))))
                                                  (_g734819_)))))
                                      (if (gx#stx-pair/null? _hd7411123_)
                                          (let ((___splice3643636437_
                                                 (gx#syntax-split-splice
                                                  _hd7411123_
                                                  '0)))
                                            (let ((_tl790849_
                                                   (##vector-ref
                                                    ___splice3643636437_
                                                    '1))
                                                  (_target788846_
                                                   (##vector-ref
                                                    ___splice3643636437_
                                                    '0)))
                                              (if (gx#stx-null? _tl790849_)
                                                  (___match3652436525_
                                                   _e7371109_
                                                   _hd7381113_
                                                   _tl7391116_
                                                   _e7401119_
                                                   _hd7411123_
                                                   _tl7421126_
                                                   ___splice3643636437_
                                                   _target788846_
                                                   _tl790849_)
                                                  (_g734819_))))
                                          (_g734819_))))))
                          (_g734819_))))
                  (_g734819_)))))))
    (define |gerbil/core$<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx1192_)
        (let* ((___stx3652736528_ _stx1192_)
               (_g11971274_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3652736528_))))
          (let ((___kont3653036531_
                 (lambda (_L1570_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_g15861589_ _g15871592_)
                                        (cons _g15861589_ _g15871592_))
                                      '()
                                      _L1570_)))))
                (___kont3653436535_
                 (lambda (_L1472_ _L1474_ _L1475_ _L1476_ _L1477_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons (cons _L1476_ (cons _L1475_ '())) '())
                               (cons (cons _L1477_
                                           (cons _L1474_
                                                 (foldr (lambda (_g15041507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g15051510_)
                  (cons _g15041507_ _g15051510_))
                '()
                _L1472_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3653836539_
                 (lambda (_L1341_ _L1343_ _L1344_ _L1345_)
                   (cons (gx#datum->syntax '#f 'with-syntax)
                         (cons (cons _L1344_ '())
                               (cons (cons _L1345_
                                           (cons _L1343_
                                                 (foldr (lambda (_g13661369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g13671372_)
                  (cons _g13661369_ _g13671372_))
                '()
                _L1341_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match3664036641_
                    (lambda (_e12511281_
                             _hd12521285_
                             _tl12531288_
                             _e12541291_
                             _hd12551295_
                             _tl12561298_
                             _e12571301_
                             _hd12581305_
                             _tl12591308_
                             ___splice3654036541_
                             _target12601311_
                             _tl12621314_)
                      (letrec ((_loop12631317_
                                (lambda (_hd12611321_ _body12671324_)
                                  (if (gx#stx-pair? _hd12611321_)
                                      (let ((_e12641327_
                                             (gx#syntax-e _hd12611321_)))
                                        (let ((_lp-tl12661334_
                                               (##cdr _e12641327_))
                                              (_lp-hd12651331_
                                               (##car _e12641327_)))
                                          (_loop12631317_
                                           _lp-tl12661334_
                                           (cons _lp-hd12651331_
                                                 _body12671324_))))
                                      (let ((_body12681337_
                                             (reverse _body12671324_)))
                                        (___kont3653836539_
                                         _body12681337_
                                         _tl12591308_
                                         _hd12581305_
                                         _hd12521285_))))))
                        (_loop12631317_ _target12601311_ '()))))
                   (___match3661436615_
                    (lambda (_e12201382_
                             _hd12211386_
                             _tl12221389_
                             _e12231392_
                             _hd12241396_
                             _tl12251399_
                             _e12261402_
                             _hd12271406_
                             _tl12281409_
                             _e12291412_
                             _hd12301416_
                             _tl12311419_
                             _e12321422_
                             _hd12331426_
                             _tl12341429_
                             _e12351432_
                             _hd12361436_
                             _tl12371439_
                             ___splice3653636537_
                             _target12381442_
                             _tl12401445_)
                      (letrec ((_loop12411448_
                                (lambda (_hd12391452_ _body12451455_)
                                  (if (gx#stx-pair? _hd12391452_)
                                      (let ((_e12421458_
                                             (gx#syntax-e _hd12391452_)))
                                        (let ((_lp-tl12441465_
                                               (##cdr _e12421458_))
                                              (_lp-hd12431462_
                                               (##car _e12421458_)))
                                          (_loop12411448_
                                           _lp-tl12441465_
                                           (cons _lp-hd12431462_
                                                 _body12451455_))))
                                      (let ((_body12461468_
                                             (reverse _body12451455_)))
                                        (___kont3653436535_
                                         _body12461468_
                                         _tl12281409_
                                         _hd12361436_
                                         _tl12341429_
                                         _hd12211386_))))))
                        (_loop12411448_ _target12381442_ '()))))
                   (___match3656436565_
                    (lambda (_e12001520_
                             _hd12011524_
                             _tl12021527_
                             _e12031530_
                             _hd12041534_
                             _tl12051537_
                             ___splice3653236533_
                             _target12061540_
                             _tl12081543_)
                      (letrec ((_loop12091546_
                                (lambda (_hd12071550_ _body12131553_)
                                  (if (gx#stx-pair? _hd12071550_)
                                      (let ((_e12101556_
                                             (gx#syntax-e _hd12071550_)))
                                        (let ((_lp-tl12121563_
                                               (##cdr _e12101556_))
                                              (_lp-hd12111560_
                                               (##car _e12101556_)))
                                          (_loop12091546_
                                           _lp-tl12121563_
                                           (cons _lp-hd12111560_
                                                 _body12131553_))))
                                      (let ((_body12141566_
                                             (reverse _body12131553_)))
                                        (___kont3653036531_
                                         _body12141566_))))))
                        (_loop12091546_ _target12061540_ '())))))
              (if (gx#stx-pair? ___stx3652736528_)
                  (let ((_e12001520_ (gx#syntax-e ___stx3652736528_)))
                    (let ((_tl12021527_ (##cdr _e12001520_))
                          (_hd12011524_ (##car _e12001520_)))
                      (if (gx#stx-pair? _tl12021527_)
                          (let ((_e12031530_ (gx#syntax-e _tl12021527_)))
                            (let ((_tl12051537_ (##cdr _e12031530_))
                                  (_hd12041534_ (##car _e12031530_)))
                              (if (gx#stx-null? _hd12041534_)
                                  (if (gx#stx-pair/null? _tl12051537_)
                                      (let ((___splice3653236533_
                                             (gx#syntax-split-splice
                                              _tl12051537_
                                              '0)))
                                        (let ((_tl12081543_
                                               (##vector-ref
                                                ___splice3653236533_
                                                '1))
                                              (_target12061540_
                                               (##vector-ref
                                                ___splice3653236533_
                                                '0)))
                                          (if (gx#stx-null? _tl12081543_)
                                              (___match3656436565_
                                               _e12001520_
                                               _hd12011524_
                                               _tl12021527_
                                               _e12031530_
                                               _hd12041534_
                                               _tl12051537_
                                               ___splice3653236533_
                                               _target12061540_
                                               _tl12081543_)
                                              (_g11971274_))))
                                      (_g11971274_))
                                  (if (gx#stx-pair? _hd12041534_)
                                      (let ((_e12261402_
                                             (gx#syntax-e _hd12041534_)))
                                        (let ((_tl12281409_
                                               (##cdr _e12261402_))
                                              (_hd12271406_
                                               (##car _e12261402_)))
                                          (if (gx#stx-pair? _hd12271406_)
                                              (let ((_e12291412_
                                                     (gx#syntax-e
                                                      _hd12271406_)))
                                                (let ((_tl12311419_
                                                       (##cdr _e12291412_))
                                                      (_hd12301416_
                                                       (##car _e12291412_)))
                                                  (if (gx#stx-pair?
                                                       _hd12301416_)
                                                      (let ((_e12321422_
                                                             (gx#syntax-e
                                                              _hd12301416_)))
                                                        (let ((_tl12341429_
                                                               (##cdr _e12321422_))
                                                              (_hd12331426_
                                                               (##car _e12321422_)))
                                                          (if (gx#identifier?
                                                               _hd12331426_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core$<syntax-sugar>[1]#_g41980_|
                           _hd12331426_)
                          (if (gx#stx-pair? _tl12311419_)
                              (let ((_e12351432_ (gx#syntax-e _tl12311419_)))
                                (let ((_tl12371439_ (##cdr _e12351432_))
                                      (_hd12361436_ (##car _e12351432_)))
                                  (if (gx#stx-null? _tl12371439_)
                                      (if (gx#stx-pair/null? _tl12051537_)
                                          (let ((___splice3653636537_
                                                 (gx#syntax-split-splice
                                                  _tl12051537_
                                                  '0)))
                                            (let ((_tl12401445_
                                                   (##vector-ref
                                                    ___splice3653636537_
                                                    '1))
                                                  (_target12381442_
                                                   (##vector-ref
                                                    ___splice3653636537_
                                                    '0)))
                                              (if (gx#stx-null? _tl12401445_)
                                                  (___match3661436615_
                                                   _e12001520_
                                                   _hd12011524_
                                                   _tl12021527_
                                                   _e12031530_
                                                   _hd12041534_
                                                   _tl12051537_
                                                   _e12261402_
                                                   _hd12271406_
                                                   _tl12281409_
                                                   _e12291412_
                                                   _hd12301416_
                                                   _tl12311419_
                                                   _e12321422_
                                                   _hd12331426_
                                                   _tl12341429_
                                                   _e12351432_
                                                   _hd12361436_
                                                   _tl12371439_
                                                   ___splice3653636537_
                                                   _target12381442_
                                                   _tl12401445_)
                                                  (_g11971274_))))
                                          (_g11971274_))
                                      (if (gx#stx-pair/null? _tl12051537_)
                                          (let ((___splice3654036541_
                                                 (gx#syntax-split-splice
                                                  _tl12051537_
                                                  '0)))
                                            (let ((_tl12621314_
                                                   (##vector-ref
                                                    ___splice3654036541_
                                                    '1))
                                                  (_target12601311_
                                                   (##vector-ref
                                                    ___splice3654036541_
                                                    '0)))
                                              (if (gx#stx-null? _tl12621314_)
                                                  (___match3664036641_
                                                   _e12001520_
                                                   _hd12011524_
                                                   _tl12021527_
                                                   _e12031530_
                                                   _hd12041534_
                                                   _tl12051537_
                                                   _e12261402_
                                                   _hd12271406_
                                                   _tl12281409_
                                                   ___splice3654036541_
                                                   _target12601311_
                                                   _tl12621314_)
                                                  (_g11971274_))))
                                          (_g11971274_)))))
                              (if (gx#stx-pair/null? _tl12051537_)
                                  (let ((___splice3654036541_
                                         (gx#syntax-split-splice
                                          _tl12051537_
                                          '0)))
                                    (let ((_tl12621314_
                                           (##vector-ref
                                            ___splice3654036541_
                                            '1))
                                          (_target12601311_
                                           (##vector-ref
                                            ___splice3654036541_
                                            '0)))
                                      (if (gx#stx-null? _tl12621314_)
                                          (___match3664036641_
                                           _e12001520_
                                           _hd12011524_
                                           _tl12021527_
                                           _e12031530_
                                           _hd12041534_
                                           _tl12051537_
                                           _e12261402_
                                           _hd12271406_
                                           _tl12281409_
                                           ___splice3654036541_
                                           _target12601311_
                                           _tl12621314_)
                                          (_g11971274_))))
                                  (_g11971274_)))
                          (if (gx#stx-pair/null? _tl12051537_)
                              (let ((___splice3654036541_
                                     (gx#syntax-split-splice _tl12051537_ '0)))
                                (let ((_tl12621314_
                                       (##vector-ref ___splice3654036541_ '1))
                                      (_target12601311_
                                       (##vector-ref ___splice3654036541_ '0)))
                                  (if (gx#stx-null? _tl12621314_)
                                      (___match3664036641_
                                       _e12001520_
                                       _hd12011524_
                                       _tl12021527_
                                       _e12031530_
                                       _hd12041534_
                                       _tl12051537_
                                       _e12261402_
                                       _hd12271406_
                                       _tl12281409_
                                       ___splice3654036541_
                                       _target12601311_
                                       _tl12621314_)
                                      (_g11971274_))))
                              (_g11971274_)))
                      (if (gx#stx-pair/null? _tl12051537_)
                          (let ((___splice3654036541_
                                 (gx#syntax-split-splice _tl12051537_ '0)))
                            (let ((_tl12621314_
                                   (##vector-ref ___splice3654036541_ '1))
                                  (_target12601311_
                                   (##vector-ref ___splice3654036541_ '0)))
                              (if (gx#stx-null? _tl12621314_)
                                  (___match3664036641_
                                   _e12001520_
                                   _hd12011524_
                                   _tl12021527_
                                   _e12031530_
                                   _hd12041534_
                                   _tl12051537_
                                   _e12261402_
                                   _hd12271406_
                                   _tl12281409_
                                   ___splice3654036541_
                                   _target12601311_
                                   _tl12621314_)
                                  (_g11971274_))))
                          (_g11971274_)))))
              (if (gx#stx-pair/null? _tl12051537_)
                  (let ((___splice3654036541_
                         (gx#syntax-split-splice _tl12051537_ '0)))
                    (let ((_tl12621314_ (##vector-ref ___splice3654036541_ '1))
                          (_target12601311_
                           (##vector-ref ___splice3654036541_ '0)))
                      (if (gx#stx-null? _tl12621314_)
                          (___match3664036641_
                           _e12001520_
                           _hd12011524_
                           _tl12021527_
                           _e12031530_
                           _hd12041534_
                           _tl12051537_
                           _e12261402_
                           _hd12271406_
                           _tl12281409_
                           ___splice3654036541_
                           _target12601311_
                           _tl12621314_)
                          (_g11971274_))))
                  (_g11971274_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl12051537_)
                                                  (let ((___splice3654036541_
                                                         (gx#syntax-split-splice
                                                          _tl12051537_
                                                          '0)))
                                                    (let ((_tl12621314_
                                                           (##vector-ref
                                                            ___splice3654036541_
                                                            '1))
                                                          (_target12601311_
                                                           (##vector-ref
                                                            ___splice3654036541_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl12621314_)
                                                          (___match3664036641_
                                                           _e12001520_
                                                           _hd12011524_
                                                           _tl12021527_
                                                           _e12031530_
                                                           _hd12041534_
                                                           _tl12051537_
                                                           _e12261402_
                                                           _hd12271406_
                                                           _tl12281409_
                                                           ___splice3654036541_
                                                           _target12601311_
                                                           _tl12621314_)
                                                          (_g11971274_))))
                                                  (_g11971274_)))))
                                      (_g11971274_)))))
                          (_g11971274_))))
                  (_g11971274_)))))))
    (define |gerbil/core$<syntax-sugar>[:0:]#syntax/loc|
      (lambda (_stx1602_)
        (let* ((_g16051623_
                (lambda (_g16061619_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g16061619_)))
               (_g16041678_
                (lambda (_g16061627_)
                  (if (gx#stx-pair? _g16061627_)
                      (let ((_e16091630_ (gx#syntax-e _g16061627_)))
                        (let ((_hd16101634_ (##car _e16091630_))
                              (_tl16111637_ (##cdr _e16091630_)))
                          (if (gx#stx-pair? _tl16111637_)
                              (let ((_e16121640_ (gx#syntax-e _tl16111637_)))
                                (let ((_hd16131644_ (##car _e16121640_))
                                      (_tl16141647_ (##cdr _e16121640_)))
                                  (if (gx#stx-pair? _tl16141647_)
                                      (let ((_e16151650_
                                             (gx#syntax-e _tl16141647_)))
                                        (let ((_hd16161654_
                                               (##car _e16151650_))
                                              (_tl16171657_
                                               (##cdr _e16151650_)))
                                          (if (gx#stx-null? _tl16171657_)
                                              ((lambda (_L1660_ _L1662_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-wrap-source)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax)
                           (cons _L1660_ '()))
                     (cons (cons (gx#datum->syntax '#f 'stx-source)
                                 (cons _L1662_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd16161654_
                                               _hd16131644_)
                                              (_g16051623_ _g16061627_))))
                                      (_g16051623_ _g16061627_))))
                              (_g16051623_ _g16061627_))))
                      (_g16051623_ _g16061627_)))))
          (_g16041678_ _stx1602_))))))
