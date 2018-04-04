(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g4979_|
    (gx#make-syntax-quote 'error::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4980_|
    (gx#make-syntax-quote 'AST::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4981_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (begin
    (define |gx[:0:]#<error>|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g4979_|))
    (define |gx[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g4980_|))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx388_)
        (letrec ((_generate391_
                  (lambda (_tgt542_ _kws544_ _clauses545_)
                    (letrec ((_generate-clause547_
                              (lambda (_hd1457_ _E1459_)
                                (let* ((___stx48824883_ _hd1457_)
                                       (_g14631490_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx48824883_))))
                                  (let ((___kont48854886_
                                         (lambda (_L1586_ _L1588_)
                                           (_generate1549_
                                            _hd1457_
                                            _L1588_
                                            '#t
                                            _L1586_
                                            _E1459_)))
                                        (___kont48874888_
                                         (lambda (_L1538_ _L1540_ _L1541_)
                                           (_generate1549_
                                            _hd1457_
                                            _L1541_
                                            _L1540_
                                            _L1538_
                                            _E1459_)))
                                        (___kont48894890_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _stx388_
                                            _hd1457_))))
                                    (if (gx#stx-pair? ___stx48824883_)
                                        (let ((_e14671566_
                                               (gx#syntax-e ___stx48824883_)))
                                          (let ((_tl14691573_
                                                 (##cdr _e14671566_))
                                                (_hd14681570_
                                                 (##car _e14671566_)))
                                            (if (gx#stx-pair? _tl14691573_)
                                                (let ((_e14701576_
                                                       (gx#syntax-e
                                                        _tl14691573_)))
                                                  (let ((_tl14721583_
                                                         (##cdr _e14701576_))
                                                        (_hd14711580_
                                                         (##car _e14701576_)))
                                                    (if (gx#stx-null?
                                                         _tl14721583_)
                                                        (___kont48854886_
                                                         _hd14711580_
                                                         _hd14681570_)
                                                        (if (gx#stx-pair?
                                                             _tl14721583_)
                                                            (let ((_e14821528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl14721583_)))
                      (let ((_tl14841535_ (##cdr _e14821528_))
                            (_hd14831532_ (##car _e14821528_)))
                        (if (gx#stx-null? _tl14841535_)
                            (___kont48874888_
                             _hd14831532_
                             _hd14711580_
                             _hd14681570_)
                            (___kont48894890_))))
                    (___kont48894890_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont48894890_))))
                                        (___kont48894890_))))))
                             (_generate1549_
                              (lambda (_where935_
                                       _hd937_
                                       _fender938_
                                       _body939_
                                       _E940_)
                                (letrec ((_recur942_
                                          (lambda (_hd945_ _tgt947_ _K948_)
                                            (let* ((___stx49284929_ _hd945_)
                                                   (_g951963_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx49284929_))))
                                              (let ((___kont49314932_
                                                     (lambda (_L1247_ _L1249_)
                                                       (let* ((_g12601268_
                                                               (lambda (_g12611264_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g12611264_)))
                      (_g12591449_
                       (lambda (_g12611272_)
                         ((lambda (_L1275_)
                            (let ()
                              (let* ((_g12871295_
                                      (lambda (_g12881291_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g12881291_)))
                                     (_g12861445_
                                      (lambda (_g12881299_)
                                        ((lambda (_L1302_)
                                           (let ()
                                             (let* ((_g13151323_
                                                     (lambda (_g13161319_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g13161319_)))
                                                    (_g13141441_
                                                     (lambda (_g13161327_)
                                                       ((lambda (_L1330_)
                                                          (let ()
                                                            (let* ((_g13431351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g13441347_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g13441347_)))
                           (_g13421437_
                            (lambda (_g13441355_)
                              ((lambda (_L1358_)
                                 (let ()
                                   (let* ((_g13711379_
                                           (lambda (_g13721375_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g13721375_)))
                                          (_g13701433_
                                           (lambda (_g13721383_)
                                             ((lambda (_L1386_)
                                                (let ()
                                                  (let* ((_g13991407_
                                                          (lambda (_g14001403_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g14001403_)))
                                                         (_g13981429_
                                                          (lambda (_g14001411_)
                                                            ((lambda (_L1414_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'stx-pair?)
                                             (cons _L1275_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _L1302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'syntax-e)
                                         (cons _L1275_ '()))
                                   '()))
                       '())
                 (cons (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _L1330_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##car)
                                                           (cons _L1302_ '()))
                                                     '()))
                                         (cons (cons _L1358_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _L1302_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons _L1386_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons _L1414_ '())))))))
                     _g14001411_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g13981429_ _E940_))))
                                              _g13721383_))))
                                     (_g13701433_
                                      (_recur942_
                                       _L1249_
                                       _L1330_
                                       (_recur942_ _L1247_ _L1358_ _K948_))))))
                               _g13441355_))))
                      (_g13421437_ (gx#genident 'tl)))))
                _g13161327_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g13141441_
                                                (gx#genident 'hd)))))
                                         _g12881299_))))
                                (_g12861445_ (gx#genident 'e)))))
                          _g12611272_))))
                 (_g12591449_ _tgt947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont49334934_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd945_)
                                                           (if (gx#underscore?
                                                                _hd945_)
                                                               _K948_
                                                               (if (find (lambda (_g973975_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (gx#bound-identifier=? _g973975_ _hd945_))
                                 _kws544_)
                           (let* ((_g979994_
                                   (lambda (_g980990_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g980990_)))
                                  (_g9781045_
                                   (lambda (_g980998_)
                                     (if (gx#stx-pair? _g980998_)
                                         (let ((_e9831001_
                                                (gx#syntax-e _g980998_)))
                                           (let ((_hd9841005_
                                                  (##car _e9831001_))
                                                 (_tl9851008_
                                                  (##cdr _e9831001_)))
                                             (if (gx#stx-pair? _tl9851008_)
                                                 (let ((_e9861011_
                                                        (gx#syntax-e
                                                         _tl9851008_)))
                                                   (let ((_hd9871015_
                                                          (##car _e9861011_))
                                                         (_tl9881018_
                                                          (##cdr _e9861011_)))
                                                     (if (gx#stx-null?
                                                          _tl9881018_)
                                                         ((lambda (_L1021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L1023_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'if)
                            (cons (cons (gx#datum->syntax '#f 'and)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'identifier?)
                                                    (cons _L1023_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'core-identifier=?)
                                                          (cons _L1023_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'quote)
                                    (cons _L1021_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons _K948_ (cons _E940_ '()))))))
                  _hd9871015_
                  _hd9841005_)
                 (_g979994_ _g980998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g979994_ _g980998_))))
                                         (_g979994_ _g980998_)))))
                             (_g9781045_ (list _tgt947_ _hd945_)))
                           (let* ((_g10491064_
                                   (lambda (_g10501060_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g10501060_)))
                                  (_g10481108_
                                   (lambda (_g10501068_)
                                     (if (gx#stx-pair? _g10501068_)
                                         (let ((_e10531071_
                                                (gx#syntax-e _g10501068_)))
                                           (let ((_hd10541075_
                                                  (##car _e10531071_))
                                                 (_tl10551078_
                                                  (##cdr _e10531071_)))
                                             (if (gx#stx-pair? _tl10551078_)
                                                 (let ((_e10561081_
                                                        (gx#syntax-e
                                                         _tl10551078_)))
                                                   (let ((_hd10571085_
                                                          (##car _e10561081_))
                                                         (_tl10581088_
                                                          (##cdr _e10561081_)))
                                                     (if (gx#stx-null?
                                                          _tl10581088_)
                                                         ((lambda (_L1091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L1093_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (cons _L1091_ (cons _L1093_ '())) '())
                                  (cons _K948_ '())))))
                  _hd10571085_
                  _hd10541075_)
                 (_g10491064_ _g10501068_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g10491064_ _g10501068_))))
                                         (_g10491064_ _g10501068_)))))
                             (_g10481108_ (list _tgt947_ _hd945_)))))
                   (if (gx#stx-null? _hd945_)
                       (let* ((_g11121120_
                               (lambda (_g11131116_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g11131116_)))
                              (_g11111138_
                               (lambda (_g11131124_)
                                 ((lambda (_L1127_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'stx-null?)
                                                        (cons _L1127_ '()))
                                                  (cons _K948_
                                                        (cons _E940_ '()))))))
                                  _g11131124_))))
                         (_g11111138_ _tgt947_))
                       (if (gx#stx-datum? _hd945_)
                           (let* ((_g11421161_
                                   (lambda (_g11431157_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g11431157_)))
                                  (_g11411219_
                                   (lambda (_g11431165_)
                                     (if (gx#stx-pair? _g11431165_)
                                         (let ((_e11471168_
                                                (gx#syntax-e _g11431165_)))
                                           (let ((_hd11481172_
                                                  (##car _e11471168_))
                                                 (_tl11491175_
                                                  (##cdr _e11471168_)))
                                             (if (gx#stx-pair? _tl11491175_)
                                                 (let ((_e11501178_
                                                        (gx#syntax-e
                                                         _tl11491175_)))
                                                   (let ((_hd11511182_
                                                          (##car _e11501178_))
                                                         (_tl11521185_
                                                          (##cdr _e11501178_)))
                                                     (if (gx#stx-pair?
                                                          _tl11521185_)
                                                         (let ((_e11531188_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl11521185_)))
                   (let ((_hd11541192_ (##car _e11531188_))
                         (_tl11551195_ (##cdr _e11531188_)))
                     (if (gx#stx-null? _tl11551195_)
                         ((lambda (_L1198_ _L1200_ _L1201_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons _L1198_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'stx-e)
                                                            (cons _L1201_ '()))
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L1200_ '()))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _K948_ (cons _E940_ '()))))))
                          _hd11541192_
                          _hd11511182_
                          _hd11481172_)
                         (_g11421161_ _g11431165_))))
                 (_g11421161_ _g11431165_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g11421161_ _g11431165_))))
                                         (_g11421161_ _g11431165_)))))
                             (_g11411219_
                              (list _tgt947_
                                    _hd945_
                                    (let ((_e1223_ (gx#stx-e _hd945_)))
                                      (if (let ((_$e1226_ (keyword? _e1223_)))
                                            (if _$e1226_
                                                _$e1226_
                                                (immediate? _e1223_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _e1223_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _stx388_
                            _where935_
                            _hd945_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx49284929_)
                                                    (let ((_e9551237_
                                                           (gx#syntax-e
                                                            ___stx49284929_)))
                                                      (let ((_tl9571244_
                                                             (##cdr _e9551237_))
                                                            (_hd9561241_
                                                             (##car _e9551237_)))
                                                        (___kont49314932_
                                                         _tl9571244_
                                                         _hd9561241_)))
                                                    (___kont49334934_)))))))
                                  (_recur942_
                                   _hd937_
                                   _tgt542_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _fender938_
                                               (cons _body939_
                                                     (cons _E940_ '()))))))))
                             (_generate-clauses550_
                              (lambda (_clauses673_)
                                (let _lp676_ ((_rest679_ _clauses673_)
                                              (_E681_ (gx#genident 'E))
                                              (_r682_ '()))
                                  (let* ((___stx49644965_ _rest679_)
                                         (_g685697_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             ___stx49644965_))))
                                    (let ((___kont49674968_
                                           (lambda (_L762_ _L764_)
                                             (let* ((___stx49444945_ _L764_)
                                                    (_g776787_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        ___stx49444945_))))
                                               (let ((___kont49474948_
                                                      (lambda (_L916_)
                                                        (if (gx#stx-null?
                                                             _L762_)
                                                            (if (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L916_)
                            (not (gx#stx-null? _L916_))
                            '#f)
                        (cons (cons _E681_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _L916_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _L764_))
                                          '()))
                              _r682_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx388_
                         _L764_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx388_
                     _L764_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont49494950_
                                                      (lambda ()
                                                        (let* ((_g798806_
                                                                (lambda (_g799802_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error '#f '"Bad syntax" _g799802_)))
                       (_g797895_
                        (lambda (_g799810_)
                          ((lambda (_L813_)
                             (let ()
                               (let* ((_g829837_
                                       (lambda (_g830833_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g830833_)))
                                      (_g828891_
                                       (lambda (_g830841_)
                                         ((lambda (_L844_)
                                            (let ()
                                              (let* ((_g857865_
                                                      (lambda (_g858861_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g858861_)))
                                                     (_g856887_
                                                      (lambda (_g858869_)
                                                        ((lambda (_L872_)
                                                           (let ()
                                                             (let ()
                                                               (_lp676_ _L762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L813_
                                (cons (cons _E681_ (cons _L872_ '()))
                                      _r682_)))))
                 _g858869_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g856887_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons _L844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _L764_))))))
                                          _g830841_))))
                                 (_g828891_
                                  (_generate-clause547_
                                   _L764_
                                   (cons _L813_ '()))))))
                           _g799810_))))
                  (_g797895_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx49444945_)
                                                     (let ((_e779906_
                                                            (gx#syntax-e
                                                             ___stx49444945_)))
                                                       (let ((_tl781913_
                                                              (##cdr _e779906_))
                                                             (_hd780910_
                                                              (##car _e779906_)))
                                                         (if (gx#identifier?
                                                              _hd780910_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gx[1]#_g4981_|
                          _hd780910_)
                         (___kont49474948_ _tl781913_)
                         (___kont49494950_))
                     (___kont49494950_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont49494950_))))))
                                          (___kont49694970_
                                           (lambda ()
                                             (let* ((_g708716_
                                                     (lambda (_g709712_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g709712_)))
                                                    (_g707741_
                                                     (lambda (_g709720_)
                                                       ((lambda (_L723_)
                                                          (let ()
                                                            (cons (cons _E681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (gx#stx-wrap-source
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons '()
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'raise-syntax-error)
                                                               (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '"Bad syntax" (cons _L723_ '()))))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (gx#stx-source _stx388_))
                                      '()))
                          _r682_)))
                _g709720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g707741_ _tgt542_)))))
                                      (if (gx#stx-pair? ___stx49644965_)
                                          (let ((_e689752_
                                                 (gx#syntax-e
                                                  ___stx49644965_)))
                                            (let ((_tl691759_
                                                   (##cdr _e689752_))
                                                  (_hd690756_
                                                   (##car _e689752_)))
                                              (___kont49674968_
                                               _tl691759_
                                               _hd690756_)))
                                          (___kont49694970_))))))))
                      (let* ((_bind552_ (_generate-clauses550_ _clauses545_))
                             (_g555572_
                              (lambda (_g556568_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g556568_)))
                             (_g554669_
                              (lambda (_g556576_)
                                (if (gx#stx-pair/null? _g556576_)
                                    (let ((_g4982_ (gx#syntax-split-splice
                                                    _g556576_
                                                    '0)))
                                      (begin
                                        (let ((_g4983_ (if (##values? _g4982_)
                                                           (##vector-length
                                                            _g4982_)
                                                           1)))
                                          (if (not (##fx= _g4983_ 2))
                                              (error "Context expects 2 values"
                                                     _g4983_)))
                                        (let ((_target558579_
                                               (##vector-ref _g4982_ 0))
                                              (_tl560582_
                                               (##vector-ref _g4982_ 1)))
                                          (if (gx#stx-null? _tl560582_)
                                              (letrec ((_loop561585_
                                                        (lambda (_hd559589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try565592_)
                  (if (gx#stx-pair? _hd559589_)
                      (let ((_e562595_ (gx#syntax-e _hd559589_)))
                        (let ((_lp-hd563599_ (##car _e562595_))
                              (_lp-tl564602_ (##cdr _e562595_)))
                          (_loop561585_
                           _lp-tl564602_
                           (cons _lp-hd563599_ _bind-try565592_))))
                      (let ((_bind-try566605_ (reverse _bind-try565592_)))
                        ((lambda (_L609_)
                           (let ()
                             (let* ((_g627635_
                                     (lambda (_g628631_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g628631_)))
                                    (_g626665_
                                     (lambda (_g628639_)
                                       ((lambda (_L642_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'let*)
                                                    (cons (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g656659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g657662_)
                              (cons _g656659_ _g657662_))
                            '()
                            _L609_))
                  (cons (cons _L642_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g628639_))))
                               (_g626665_ (car (last _bind552_))))))
                         _bind-try566605_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop561585_
                                                 _target558579_
                                                 '()))
                                              (_g555572_ _g556576_)))))
                                    (_g555572_ _g556576_)))))
                        (_g554669_ _bind552_))))))
          (let* ((_g394413_
                  (lambda (_g395409_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g395409_)))
                 (_g393538_
                  (lambda (_g395417_)
                    (if (gx#stx-pair? _g395417_)
                        (let ((_e399420_ (gx#syntax-e _g395417_)))
                          (let ((_hd400424_ (##car _e399420_))
                                (_tl401427_ (##cdr _e399420_)))
                            (if (gx#stx-pair? _tl401427_)
                                (let ((_e402430_ (gx#syntax-e _tl401427_)))
                                  (let ((_hd403434_ (##car _e402430_))
                                        (_tl404437_ (##cdr _e402430_)))
                                    (if (gx#stx-pair? _tl404437_)
                                        (let ((_e405440_
                                               (gx#syntax-e _tl404437_)))
                                          (let ((_hd406444_ (##car _e405440_))
                                                (_tl407447_ (##cdr _e405440_)))
                                            ((lambda (_L450_ _L452_ _L453_)
                                               (if (if (gx#identifier-list?
                                                        _L452_)
                                                       (gx#stx-list? _L450_)
                                                       '#f)
                                                   (let* ((_g473481_
                                                           (lambda (_g474477_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g474477_)))
                                                          (_g472534_
                                                           (lambda (_g474485_)
                                                             ((lambda (_L488_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g500508_
                                  (lambda (_g501504_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g501504_)))
                                 (_g499530_
                                  (lambda (_g501512_)
                                    ((lambda (_L515_)
                                       (let ()
                                         (let ()
                                           (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _L488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L453_ '()))
                     '())
               (cons _L515_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g501512_))))
                            (_g499530_
                             (_generate391_
                              _L488_
                              (gx#syntax->list _L452_)
                              _L450_)))))
                      _g474485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g472534_
                                                      (gx#genident 'e)))
                                                   (_g394413_ _g395417_)))
                                             _tl407447_
                                             _hd406444_
                                             _hd403434_)))
                                        (_g394413_ _g395417_))))
                                (_g394413_ _g395417_))))
                        (_g394413_ _g395417_)))))
            (_g393538_ _stx388_)))))))
