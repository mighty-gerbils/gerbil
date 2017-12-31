(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defsyntax|
    (lambda (_$stx12887_)
      (let* ((_g1289212931_
              (lambda (_g1289312927_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1289312927_)))
             (_g1289112987_
              (lambda (_g1289312935_)
                (if (gx#stx-pair? _g1289312935_)
                    (let ((_e1291712938_ (gx#syntax-e _g1289312935_)))
                      (let ((_hd1291812942_ (##car _e1291712938_))
                            (_tl1291912945_ (##cdr _e1291712938_)))
                        (if (gx#stx-pair? _tl1291912945_)
                            (let ((_e1292012948_ (gx#syntax-e _tl1291912945_)))
                              (let ((_hd1292112952_ (##car _e1292012948_))
                                    (_tl1292212955_ (##cdr _e1292012948_)))
                                (if (gx#stx-pair? _tl1292212955_)
                                    (let ((_e1292312958_
                                           (gx#syntax-e _tl1292212955_)))
                                      (let ((_hd1292412962_
                                             (##car _e1292312958_))
                                            (_tl1292512965_
                                             (##cdr _e1292312958_)))
                                        (if (gx#stx-null? _tl1292512965_)
                                            ((lambda (_L12968_ _L12970_)
                                               (if (gx#identifier? _L12970_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'define-syntax)
                                                         (cons _L12970_
                                                               (cons _L12968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1289212931_
                                                    _g1289312935_)))
                                             _hd1292412962_
                                             _hd1292112952_)
                                            (_g1289212931_ _g1289312935_))))
                                    (_g1289212931_ _g1289312935_))))
                            (_g1289212931_ _g1289312935_))))
                    (_g1289212931_ _g1289312935_))))
             (_g1289013085_
              (lambda (_g1289312991_)
                (if (gx#stx-pair? _g1289312991_)
                    (let ((_e1289712994_ (gx#syntax-e _g1289312991_)))
                      (let ((_hd1289812998_ (##car _e1289712994_))
                            (_tl1289913001_ (##cdr _e1289712994_)))
                        (if (gx#stx-pair? _tl1289913001_)
                            (let ((_e1290013004_ (gx#syntax-e _tl1289913001_)))
                              (let ((_hd1290113008_ (##car _e1290013004_))
                                    (_tl1290213011_ (##cdr _e1290013004_)))
                                (if (gx#stx-pair? _hd1290113008_)
                                    (let ((_e1290313014_
                                           (gx#syntax-e _hd1290113008_)))
                                      (let ((_hd1290413018_
                                             (##car _e1290313014_))
                                            (_tl1290513021_
                                             (##cdr _e1290313014_)))
                                        (if (gx#stx-pair/null? _tl1290213011_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1290213011_)
                                                      '0)
                                                (let ((_g30756_
                                                       (gx#syntax-split-splice
                                                        _tl1290213011_
                                                        '0)))
                                                  (begin
                                                    (let ((_g30757_
                                                           (values-count
                                                            _g30756_)))
                                                      (if (not (fx= _g30757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g30757_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1290613024_
                                                           (values-ref
                                                            _g30756_
                                                            0))
                                                          (_tl1290813027_
                                                           (values-ref
                                                            _g30756_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1290813027_)
                                                          (letrec ((_loop1290913030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1290713034_ _body1291313037_)
                              (if (gx#stx-pair? _hd1290713034_)
                                  (let ((_e1291013040_
                                         (gx#syntax-e _hd1290713034_)))
                                    (let ((_lp-hd1291113044_
                                           (##car _e1291013040_))
                                          (_lp-tl1291213047_
                                           (##cdr _e1291013040_)))
                                      (_loop1290913030_
                                       _lp-tl1291213047_
                                       (cons _lp-hd1291113044_
                                             _body1291313037_))))
                                  (let ((_body1291413050_
                                         (reverse _body1291313037_)))
                                    ((lambda (_L13054_ _L13056_ _L13057_)
                                       (if (gx#identifier? _L13057_)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'define-syntax)
                                                 (cons _L13057_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons _L13056_
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1307613079_ _g1307713082_)
                                            (cons _g1307613079_ _g1307713082_))
                                          '()
                                          _L13054_))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1289112987_ _g1289312991_)))
                                     _body1291413050_
                                     _tl1290513021_
                                     _hd1290413018_))))))
                    (_loop1290913030_ _target1290613024_ '()))
                  (_g1289112987_ _g1289312991_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1289112987_ _g1289312991_))
                                            (_g1289112987_ _g1289312991_))))
                                    (_g1289112987_ _g1289312991_))))
                            (_g1289112987_ _g1289312991_))))
                    (_g1289112987_ _g1289312991_)))))
        (_g1289013085_ _$stx12887_))))
  (define |gerbil/core$<sugar>$<sugar:3>[:0:]#definline|
    (lambda (_stx13090_)
      (let* ((_g1309313130_
              (lambda (_g1309413126_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1309413126_)))
             (_g1309213491_
              (lambda (_g1309413134_)
                (if (gx#stx-pair? _g1309413134_)
                    (let ((_e1309813137_ (gx#syntax-e _g1309413134_)))
                      (let ((_hd1309913141_ (##car _e1309813137_))
                            (_tl1310013144_ (##cdr _e1309813137_)))
                        (if (gx#stx-pair? _tl1310013144_)
                            (let ((_e1310113147_ (gx#syntax-e _tl1310013144_)))
                              (let ((_hd1310213151_ (##car _e1310113147_))
                                    (_tl1310313154_ (##cdr _e1310113147_)))
                                (if (gx#stx-pair? _hd1310213151_)
                                    (let ((_e1310413157_
                                           (gx#syntax-e _hd1310213151_)))
                                      (let ((_hd1310513161_
                                             (##car _e1310413157_))
                                            (_tl1310613164_
                                             (##cdr _e1310413157_)))
                                        (if (gx#stx-pair/null? _tl1310613164_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1310613164_)
                                                      '0)
                                                (let ((_g30758_
                                                       (gx#syntax-split-splice
                                                        _tl1310613164_
                                                        '0)))
                                                  (begin
                                                    (let ((_g30759_
                                                           (values-count
                                                            _g30758_)))
                                                      (if (not (fx= _g30759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g30759_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1310713167_
                                                           (values-ref
                                                            _g30758_
                                                            0))
                                                          (_tl1310913170_
                                                           (values-ref
                                                            _g30758_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1310913170_)
                                                          (letrec ((_loop1311013173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1310813177_ _arg1311413180_)
                              (if (gx#stx-pair? _hd1310813177_)
                                  (let ((_e1311113183_
                                         (gx#syntax-e _hd1310813177_)))
                                    (let ((_lp-hd1311213187_
                                           (##car _e1311113183_))
                                          (_lp-tl1311313190_
                                           (##cdr _e1311113183_)))
                                      (_loop1311013173_
                                       _lp-tl1311313190_
                                       (cons _lp-hd1311213187_
                                             _arg1311413180_))))
                                  (let ((_arg1311513193_
                                         (reverse _arg1311413180_)))
                                    (if (gx#stx-pair/null? _tl1310313154_)
                                        (if (fx>= (gx#stx-length
                                                   _tl1310313154_)
                                                  '0)
                                            (let ((_g30760_
                                                   (gx#syntax-split-splice
                                                    _tl1310313154_
                                                    '0)))
                                              (begin
                                                (let ((_g30761_
                                                       (values-count
                                                        _g30760_)))
                                                  (if (not (fx= _g30761_ 2))
                                                      (error "Context expects 2 values"
                                                             _g30761_)))
                                                (let ((_target1311613197_
                                                       (values-ref _g30760_ 0))
                                                      (_tl1311813200_
                                                       (values-ref
                                                        _g30760_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1311813200_)
                                                      (letrec ((_loop1311913203_
                                                                (lambda (_hd1311713207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body1312313210_)
                          (if (gx#stx-pair? _hd1311713207_)
                              (let ((_e1312013213_
                                     (gx#syntax-e _hd1311713207_)))
                                (let ((_lp-hd1312113217_ (##car _e1312013213_))
                                      (_lp-tl1312213220_
                                       (##cdr _e1312013213_)))
                                  (_loop1311913203_
                                   _lp-tl1312213220_
                                   (cons _lp-hd1312113217_ _body1312313210_))))
                              (let ((_body1312413223_
                                     (reverse _body1312313210_)))
                                ((lambda (_L13227_ _L13229_ _L13230_)
                                   (if (if (gx#identifier? _L13230_)
                                           (gx#identifier-list?
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1325413257_
                                                              _g1325513260_)
                                                       (cons _g1325413257_
                                                             _g1325513260_))
                                                     '()
                                                     _L13229_)))
                                           '#f)
                                       (let* ((_g1326313271_
                                               (lambda (_g1326413267_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1326413267_)))
                                              (_g1326213487_
                                               (lambda (_g1326413275_)
                                                 ((lambda (_L13278_)
                                                    (let ()
                                                      (let* ((_g1329013307_
                                                              (lambda (_g1329113303_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1329113303_)))
                     (_g1328913475_
                      (lambda (_g1329113311_)
                        (if (gx#stx-pair/null? _g1329113311_)
                            (if (fx>= (gx#stx-length _g1329113311_) '0)
                                (let ((_g30762_
                                       (gx#syntax-split-splice
                                        _g1329113311_
                                        '0)))
                                  (begin
                                    (let ((_g30763_ (values-count _g30762_)))
                                      (if (not (fx= _g30763_ 2))
                                          (error "Context expects 2 values"
                                                 _g30763_)))
                                    (let ((_target1329313314_
                                           (values-ref _g30762_ 0))
                                          (_tl1329513317_
                                           (values-ref _g30762_ 1)))
                                      (if (gx#stx-null? _tl1329513317_)
                                          (letrec ((_loop1329613320_
                                                    (lambda (_hd1329413324_
                                                             _xarg1330013327_)
                                                      (if (gx#stx-pair?
                                                           _hd1329413324_)
                                                          (let ((_e1329713330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1329413324_)))
                    (let ((_lp-hd1329813334_ (##car _e1329713330_))
                          (_lp-tl1329913337_ (##cdr _e1329713330_)))
                      (_loop1329613320_
                       _lp-tl1329913337_
                       (cons _lp-hd1329813334_ _xarg1330013327_))))
                  (let ((_xarg1330113340_ (reverse _xarg1330013327_)))
                    ((lambda (_L13344_)
                       (let ()
                         (let* ((_g1336113369_
                                 (lambda (_g1336213365_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1336213365_)))
                                (_g1336013439_
                                 (lambda (_g1336213373_)
                                   ((lambda (_L13376_)
                                      (let ()
                                        (let* ((_g1338913397_
                                                (lambda (_g1339013393_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1339013393_)))
                                               (_g1338813419_
                                                (lambda (_g1339013401_)
                                                  ((lambda (_L13404_)
                                                     (let ()
                                                       (let ()
                                                         (gx#stx-wrap-source
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons _L13404_ (cons _L13376_ '())))
                  (gx#stx-source _stx13090_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1339013401_))))
                                          (_g1338813419_
                                           (gx#stx-wrap-source
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons (cons _L13278_
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g1342213427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1342313430_)
                                 (cons _g1342213427_ _g1342313430_))
                               '()
                               _L13229_)))
                (begin
                  '#!void
                  (foldr (lambda (_g1342413433_ _g1342513436_)
                           (cons _g1342413433_ _g1342513436_))
                         '()
                         _L13227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gx#stx-source _stx13090_))))))
                                    _g1336213373_))))
                           (_g1336013439_
                            (gx#stx-wrap-source
                             (cons (gx#datum->syntax '#f 'defrules)
                                   (cons _L13230_
                                         (cons '()
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '_)
                         (begin
                           '#!void
                           (foldr (lambda (_g1344213451_ _g1344313454_)
                                    (cons _g1344213451_ _g1344313454_))
                                  '()
                                  _L13344_)))
                   (cons (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons (begin
                                             '#!void
                                             (foldr (lambda (_g1344413457_
                                                             _g1344513460_)
                                                      (cons _g1344413457_
                                                            _g1344513460_))
                                                    '()
                                                    _L13229_))
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1344613463_
                                                             _g1344713466_)
                                                      (cons _g1344613463_
                                                            _g1344713466_))
                                                    '()
                                                    _L13227_))))
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1344813469_ _g1344913472_)
                                          (cons _g1344813469_ _g1344913472_))
                                        '()
                                        _L13344_)))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ref)
                         (cons (cons (gx#datum->syntax '#f 'identifier?)
                                     (cons (cons (gx#datum->syntax '#f 'syntax)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'ref)
                                                       '()))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'syntax)
                                           (cons _L13278_ '()))
                                     '())))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (gx#stx-source _stx13090_))))))
                     _xarg1330113340_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1329613320_
                                             _target1329313314_
                                             '()))
                                          (_g1329013307_ _g1329113311_)))))
                                (_g1329013307_ _g1329113311_))
                            (_g1329013307_ _g1329113311_)))))
                (_g1328913475_
                 (gx#gentemps
                  (begin
                    '#!void
                    (foldr (lambda (_g1347813481_ _g1347913484_)
                             (cons _g1347813481_ _g1347913484_))
                           '()
                           _L13229_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1326413275_))))
                                         (_g1326213487_
                                          (gx#stx-identifier
                                           _L13230_
                                           _L13230_
                                           '"__impl")))
                                       (_g1309313130_ _g1309413134_)))
                                 _body1312413223_
                                 _arg1311513193_
                                 _hd1310513161_))))))
                (_loop1311913203_ _target1311613197_ '()))
              (_g1309313130_ _g1309413134_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1309313130_ _g1309413134_))
                                        (_g1309313130_ _g1309413134_)))))))
                    (_loop1311013173_ _target1310713167_ '()))
                  (_g1309313130_ _g1309413134_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1309313130_ _g1309413134_))
                                            (_g1309313130_ _g1309413134_))))
                                    (_g1309313130_ _g1309413134_))))
                            (_g1309313130_ _g1309413134_))))
                    (_g1309313130_ _g1309413134_)))))
        (_g1309213491_ _stx13090_)))))
