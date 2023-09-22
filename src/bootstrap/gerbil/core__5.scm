(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:3>[1]#_g42333_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defsyntax|
      (lambda (_$stx16916_)
        (let* ((___stx3905639057_ _$stx16916_)
               (_g1692116960_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3905639057_))))
          (let ((___kont3905939060_
                 (lambda (_L17083_ _L17085_ _L17086_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _L17086_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _L17085_
                                                 (foldr (lambda (_g1710517108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1710617111_)
                  (cons _g1710517108_ _g1710617111_))
                '()
                _L17083_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3906339064_
                 (lambda (_L16997_ _L16999_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _L16999_ (cons _L16997_ '()))))))
            (let* ((___match3911139112_
                    (lambda (_e1694816967_
                             _hd1694716971_
                             _tl1694616974_
                             _e1695116977_
                             _hd1695016981_
                             _tl1694916984_
                             _e1695416987_
                             _hd1695316991_
                             _tl1695216994_)
                      (let ((_L16997_ _hd1695316991_)
                            (_L16999_ _hd1695016981_))
                        (if (gx#identifier? _L16999_)
                            (___kont3906339064_ _L16997_ _L16999_)
                            (let () (declare (not safe)) (_g1692116960_))))))
                   (___match3910339104_
                    (lambda (_e1694816967_
                             _hd1694716971_
                             _tl1694616974_
                             _e1695116977_
                             _hd1695016981_
                             _tl1694916984_)
                      (if (gx#stx-pair? _tl1694916984_)
                          (let ((_e1695416987_ (gx#syntax-e _tl1694916984_)))
                            (let ((_tl1695216994_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1695416987_)))
                                  (_hd1695316991_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1695416987_))))
                              (if (gx#stx-null? _tl1695216994_)
                                  (___match3911139112_
                                   _e1694816967_
                                   _hd1694716971_
                                   _tl1694616974_
                                   _e1695116977_
                                   _hd1695016981_
                                   _tl1694916984_
                                   _e1695416987_
                                   _hd1695316991_
                                   _tl1695216994_)
                                  (let ()
                                    (declare (not safe))
                                    (_g1692116960_)))))
                          (let () (declare (not safe)) (_g1692116960_)))))
                   (___match3909139092_
                    (lambda (_e1692817023_
                             _hd1692717027_
                             _tl1692617030_
                             _e1693117033_
                             _hd1693017037_
                             _tl1692917040_
                             _e1693417043_
                             _hd1693317047_
                             _tl1693217050_
                             ___splice3906139062_
                             _target1693517053_
                             _tl1693717056_)
                      (letrec ((_loop1693817059_
                                (lambda (_hd1693617063_ _body1694217066_)
                                  (if (gx#stx-pair? _hd1693617063_)
                                      (let ((_e1693917069_
                                             (gx#syntax-e _hd1693617063_)))
                                        (let ((_lp-tl1694117076_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1693917069_)))
                                              (_lp-hd1694017073_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1693917069_))))
                                          (_loop1693817059_
                                           _lp-tl1694117076_
                                           (cons _lp-hd1694017073_
                                                 _body1694217066_))))
                                      (let ((_body1694317079_
                                             (reverse _body1694217066_)))
                                        (let ((_L17083_ _body1694317079_)
                                              (_L17085_ _tl1693217050_)
                                              (_L17086_ _hd1693317047_))
                                          (if (gx#identifier? _L17086_)
                                              (___kont3905939060_
                                               _L17083_
                                               _L17085_
                                               _L17086_)
                                              (___match3910339104_
                                               _e1692817023_
                                               _hd1692717027_
                                               _tl1692617030_
                                               _e1693117033_
                                               _hd1693017037_
                                               _tl1692917040_))))))))
                        (_loop1693817059_ _target1693517053_ '())))))
              (if (gx#stx-pair? ___stx3905639057_)
                  (let ((_e1692817023_ (gx#syntax-e ___stx3905639057_)))
                    (let ((_tl1692617030_
                           (let () (declare (not safe)) (##cdr _e1692817023_)))
                          (_hd1692717027_
                           (let ()
                             (declare (not safe))
                             (##car _e1692817023_))))
                      (if (gx#stx-pair? _tl1692617030_)
                          (let ((_e1693117033_ (gx#syntax-e _tl1692617030_)))
                            (let ((_tl1692917040_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1693117033_)))
                                  (_hd1693017037_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1693117033_))))
                              (if (gx#stx-pair? _hd1693017037_)
                                  (let ((_e1693417043_
                                         (gx#syntax-e _hd1693017037_)))
                                    (let ((_tl1693217050_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1693417043_)))
                                          (_hd1693317047_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1693417043_))))
                                      (if (gx#stx-pair/null? _tl1692917040_)
                                          (let ((___splice3906139062_
                                                 (gx#syntax-split-splice
                                                  _tl1692917040_
                                                  '0)))
                                            (let ((_tl1693717056_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3906139062_
                                                      '1)))
                                                  (_target1693517053_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3906139062_
                                                      '0))))
                                              (if (gx#stx-null? _tl1693717056_)
                                                  (___match3909139092_
                                                   _e1692817023_
                                                   _hd1692717027_
                                                   _tl1692617030_
                                                   _e1693117033_
                                                   _hd1693017037_
                                                   _tl1692917040_
                                                   _e1693417043_
                                                   _hd1693317047_
                                                   _tl1693217050_
                                                   ___splice3906139062_
                                                   _target1693517053_
                                                   _tl1693717056_)
                                                  (if (gx#stx-pair?
                                                       _tl1692917040_)
                                                      (let ((_e1695416987_
                                                             (gx#syntax-e
                                                              _tl1692917040_)))
                                                        (let ((_tl1695216994_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1695416987_)))
                      (_hd1695316991_
                       (let () (declare (not safe)) (##car _e1695416987_))))
                  (if (gx#stx-null? _tl1695216994_)
                      (___match3911139112_
                       _e1692817023_
                       _hd1692717027_
                       _tl1692617030_
                       _e1693117033_
                       _hd1693017037_
                       _tl1692917040_
                       _e1695416987_
                       _hd1695316991_
                       _tl1695216994_)
                      (let () (declare (not safe)) (_g1692116960_)))))
              (let () (declare (not safe)) (_g1692116960_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl1692917040_)
                                              (let ((_e1695416987_
                                                     (gx#syntax-e
                                                      _tl1692917040_)))
                                                (let ((_tl1695216994_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1695416987_)))
                                                      (_hd1695316991_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1695416987_))))
                                                  (if (gx#stx-null?
                                                       _tl1695216994_)
                                                      (___match3911139112_
                                                       _e1692817023_
                                                       _hd1692717027_
                                                       _tl1692617030_
                                                       _e1693117033_
                                                       _hd1693017037_
                                                       _tl1692917040_
                                                       _e1695416987_
                                                       _hd1695316991_
                                                       _tl1695216994_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1692116960_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1692116960_))))))
                                  (if (gx#stx-pair? _tl1692917040_)
                                      (let ((_e1695416987_
                                             (gx#syntax-e _tl1692917040_)))
                                        (let ((_tl1695216994_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1695416987_)))
                                              (_hd1695316991_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1695416987_))))
                                          (if (gx#stx-null? _tl1695216994_)
                                              (___match3911139112_
                                               _e1692817023_
                                               _hd1692717027_
                                               _tl1692617030_
                                               _e1693117033_
                                               _hd1693017037_
                                               _tl1692917040_
                                               _e1695416987_
                                               _hd1695316991_
                                               _tl1695216994_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1692116960_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1692116960_))))))
                          (let () (declare (not safe)) (_g1692116960_)))))
                  (let () (declare (not safe)) (_g1692116960_))))))))
    (define |gerbil/core$<sugar>$<sugar:3>[:0:]#definline|
      (lambda (_stx17119_)
        (let* ((_g1712217159_
                (lambda (_g1712317155_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1712317155_)))
               (_g1712117520_
                (lambda (_g1712317163_)
                  (if (gx#stx-pair? _g1712317163_)
                      (let ((_e1712917166_ (gx#syntax-e _g1712317163_)))
                        (let ((_hd1712817170_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1712917166_)))
                              (_tl1712717173_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1712917166_))))
                          (if (gx#stx-pair? _tl1712717173_)
                              (let ((_e1713217176_
                                     (gx#syntax-e _tl1712717173_)))
                                (let ((_hd1713117180_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1713217176_)))
                                      (_tl1713017183_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1713217176_))))
                                  (if (gx#stx-pair? _hd1713117180_)
                                      (let ((_e1713517186_
                                             (gx#syntax-e _hd1713117180_)))
                                        (let ((_hd1713417190_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1713517186_)))
                                              (_tl1713317193_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1713517186_))))
                                          (if (gx#stx-pair/null?
                                               _tl1713317193_)
                                              (let ((_g42327_
                                                     (gx#syntax-split-splice
                                                      _tl1713317193_
                                                      '0)))
                                                (begin
                                                  (let ((_g42328_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g42327_)
                                                               (##vector-length
                                                                _g42327_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g42328_ 2)))
                (error "Context expects 2 values" _g42328_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1713617196_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g42327_
                                                            0)))
                                                        (_tl1713817199_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g42327_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1713817199_)
                                                        (letrec ((_loop1713917202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1713717206_ _arg1714317209_)
                            (if (gx#stx-pair? _hd1713717206_)
                                (let ((_e1714017212_
                                       (gx#syntax-e _hd1713717206_)))
                                  (let ((_lp-hd1714117216_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1714017212_)))
                                        (_lp-tl1714217219_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1714017212_))))
                                    (_loop1713917202_
                                     _lp-tl1714217219_
                                     (cons _lp-hd1714117216_
                                           _arg1714317209_))))
                                (let ((_arg1714417222_
                                       (reverse _arg1714317209_)))
                                  (if (gx#stx-pair/null? _tl1713017183_)
                                      (let ((_g42329_
                                             (gx#syntax-split-splice
                                              _tl1713017183_
                                              '0)))
                                        (begin
                                          (let ((_g42330_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42329_)
                                                       (##vector-length
                                                        _g42329_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42330_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42330_)))
                                          (let ((_target1714517226_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42329_ 0)))
                                                (_tl1714717229_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42329_ 1))))
                                            (if (gx#stx-null? _tl1714717229_)
                                                (letrec ((_loop1714817232_
                                                          (lambda (_hd1714617236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1715217239_)
                    (if (gx#stx-pair? _hd1714617236_)
                        (let ((_e1714917242_ (gx#syntax-e _hd1714617236_)))
                          (let ((_lp-hd1715017246_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1714917242_)))
                                (_lp-tl1715117249_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1714917242_))))
                            (_loop1714817232_
                             _lp-tl1715117249_
                             (cons _lp-hd1715017246_ _body1715217239_))))
                        (let ((_body1715317252_ (reverse _body1715217239_)))
                          ((lambda (_L17256_ _L17258_ _L17259_)
                             (if (and (gx#identifier? _L17259_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_g1728317286_
                                                       _g1728417289_)
                                                (cons _g1728317286_
                                                      _g1728417289_))
                                              '()
                                              _L17258_)))
                                 (let* ((_g1729217300_
                                         (lambda (_g1729317296_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1729317296_)))
                                        (_g1729117516_
                                         (lambda (_g1729317304_)
                                           ((lambda (_L17307_)
                                              (let ()
                                                (let* ((_g1731917336_
                                                        (lambda (_g1732017332_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1732017332_)))
                                                       (_g1731817504_
                                                        (lambda (_g1732017340_)
                                                          (if (gx#stx-pair/null?
                                                               _g1732017340_)
                                                              (let ((_g42331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g1732017340_ '0)))
                        (begin
                          (let ((_g42332_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g42331_)
                                       (##vector-length _g42331_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g42332_ 2)))
                                (error "Context expects 2 values" _g42332_)))
                          (let ((_target1732217343_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g42331_ 0)))
                                (_tl1732417346_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g42331_ 1))))
                            (if (gx#stx-null? _tl1732417346_)
                                (letrec ((_loop1732517349_
                                          (lambda (_hd1732317353_
                                                   _xarg1732917356_)
                                            (if (gx#stx-pair? _hd1732317353_)
                                                (let ((_e1732617359_
                                                       (gx#syntax-e
                                                        _hd1732317353_)))
                                                  (let ((_lp-hd1732717363_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1732617359_)))
                                                        (_lp-tl1732817366_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1732617359_))))
                                                    (_loop1732517349_
                                                     _lp-tl1732817366_
                                                     (cons _lp-hd1732717363_
                                                           _xarg1732917356_))))
                                                (let ((_xarg1733017369_
                                                       (reverse _xarg1732917356_)))
                                                  ((lambda (_L17373_)
                                                     (let ()
                                                       (let* ((_g1739017398_
                                                               (lambda (_g1739117394_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1739117394_)))
                      (_g1738917468_
                       (lambda (_g1739117402_)
                         ((lambda (_L17405_)
                            (let ()
                              (let* ((_g1741817426_
                                      (lambda (_g1741917422_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1741917422_)))
                                     (_g1741717448_
                                      (lambda (_g1741917430_)
                                        ((lambda (_L17433_)
                                           (let ()
                                             (let ()
                                               (gx#stx-wrap-source
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons _L17433_
                                                            (cons _L17405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _stx17119_)))))
                                         _g1741917430_))))
                                (_g1741717448_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _L17307_
                                                    (foldr (lambda (_g1745317456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1745417459_)
                     (cons _g1745317456_ _g1745417459_))
                   '()
                   _L17258_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (foldr (lambda (_g1745117462_
                                                              _g1745217465_)
                                                       (cons _g1745117462_
                                                             _g1745217465_))
                                                     '()
                                                     _L17256_)))
                                  (gx#stx-source _stx17119_))))))
                          _g1739117402_))))
                 (_g1738917468_
                  (gx#stx-wrap-source
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _L17259_
                               (cons '()
                                     (cons (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '_)
                                                       (foldr (lambda (_g1747717480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1747817483_)
                        (cons _g1747717480_ _g1747817483_))
                      '()
                      _L17373_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons (foldr (lambda (_g1747517486_ _g1747617489_)
                                          (cons _g1747517486_ _g1747617489_))
                                        '()
                                        _L17258_)
                                 (foldr (lambda (_g1747317492_ _g1747417495_)
                                          (cons _g1747317492_ _g1747417495_))
                                        '()
                                        _L17256_)))
                     (foldr (lambda (_g1747117498_ _g1747217501_)
                              (cons _g1747117498_ _g1747217501_))
                            '()
                            _L17373_))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'ref)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'identifier?)
                           (cons (cons (gx#datum->syntax '#f 'syntax)
                                       (cons (gx#datum->syntax '#f 'ref) '()))
                                 '()))
                     (cons _L17307_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                   (gx#stx-source _stx17119_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _xarg1733017369_))))))
                                  (_loop1732517349_ _target1732217343_ '()))
                                (_g1731917336_ _g1732017340_)))))
                      (_g1731917336_ _g1732017340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1731817504_
                                                   (gx#gentemps
                                                    (foldr (lambda (_g1750717510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1750817513_)
                     (cons _g1750717510_ _g1750817513_))
                   '()
                   _L17258_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1729317304_))))
                                   (_g1729117516_
                                    (gx#stx-identifier
                                     _L17259_
                                     _L17259_
                                     '"__impl")))
                                 (_g1712217159_ _g1712317163_)))
                           _body1715317252_
                           _arg1714417222_
                           _hd1713417190_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1714817232_
                                                   _target1714517226_
                                                   '()))
                                                (_g1712217159_
                                                 _g1712317163_)))))
                                      (_g1712217159_ _g1712317163_)))))))
                  (_loop1713917202_ _target1713617196_ '()))
                (_g1712217159_ _g1712317163_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1712217159_ _g1712317163_))))
                                      (_g1712217159_ _g1712317163_))))
                              (_g1712217159_ _g1712317163_))))
                      (_g1712217159_ _g1712317163_)))))
          (_g1712117520_ _stx17119_))))
    (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defconst|
      (lambda (_$stx17527_)
        (let* ((___stx3911439115_ _$stx17527_)
               (_g1753217568_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3911439115_))))
          (let ((___kont3911739118_
                 (lambda (_L17682_ _L17684_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _L17684_
                               (cons '()
                                     (cons (cons (gx#datum->syntax '#f 'x)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'identifier?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons (gx#datum->syntax '#f 'x) '()))
                           '()))
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _L17682_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (___kont3911939120_
                 (lambda (_L17605_ _L17607_ _L17608_)
                   (cons _L17608_
                         (cons _L17607_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L17605_ '()))
                                     '()))))))
            (let* ((___match3917939180_
                    (lambda (_e1755617575_
                             _hd1755517579_
                             _tl1755417582_
                             _e1755917585_
                             _hd1755817589_
                             _tl1755717592_
                             _e1756217595_
                             _hd1756117599_
                             _tl1756017602_)
                      (let ((_L17605_ _hd1756117599_)
                            (_L17607_ _hd1755817589_)
                            (_L17608_ _hd1755517579_))
                        (if (and (gx#identifier? _L17607_)
                                 (gx#stx-datum? _L17605_))
                            (___kont3911939120_ _L17605_ _L17607_ _L17608_)
                            (let () (declare (not safe)) (_g1753217568_))))))
                   (___match3915939160_
                    (lambda (_e1753817632_
                             _hd1753717636_
                             _tl1753617639_
                             _e1754117642_
                             _hd1754017646_
                             _tl1753917649_
                             _e1754417652_
                             _hd1754317656_
                             _tl1754217659_
                             _e1754717662_
                             _hd1754617666_
                             _tl1754517669_
                             _e1755017672_
                             _hd1754917676_
                             _tl1754817679_)
                      (let ((_L17682_ _hd1754917676_)
                            (_L17684_ _hd1754017646_))
                        (if (gx#identifier? _L17684_)
                            (___kont3911739118_ _L17682_ _L17684_)
                            (___match3917939180_
                             _e1753817632_
                             _hd1753717636_
                             _tl1753617639_
                             _e1754117642_
                             _hd1754017646_
                             _tl1753917649_
                             _e1754417652_
                             _hd1754317656_
                             _tl1754217659_))))))
              (if (gx#stx-pair? ___stx3911439115_)
                  (let ((_e1753817632_ (gx#syntax-e ___stx3911439115_)))
                    (let ((_tl1753617639_
                           (let () (declare (not safe)) (##cdr _e1753817632_)))
                          (_hd1753717636_
                           (let ()
                             (declare (not safe))
                             (##car _e1753817632_))))
                      (if (gx#stx-pair? _tl1753617639_)
                          (let ((_e1754117642_ (gx#syntax-e _tl1753617639_)))
                            (let ((_tl1753917649_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1754117642_)))
                                  (_hd1754017646_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1754117642_))))
                              (if (gx#stx-pair? _tl1753917649_)
                                  (let ((_e1754417652_
                                         (gx#syntax-e _tl1753917649_)))
                                    (let ((_tl1754217659_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1754417652_)))
                                          (_hd1754317656_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1754417652_))))
                                      (if (gx#stx-pair? _hd1754317656_)
                                          (let ((_e1754717662_
                                                 (gx#syntax-e _hd1754317656_)))
                                            (let ((_tl1754517669_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1754717662_)))
                                                  (_hd1754617666_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1754717662_))))
                                              (if (gx#identifier?
                                                   _hd1754617666_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<sugar>$<sugar:3>[1]#_g42333_|
                                                       _hd1754617666_)
                                                      (if (gx#stx-pair?
                                                           _tl1754517669_)
                                                          (let ((_e1755017672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1754517669_)))
                    (let ((_tl1754817679_
                           (let () (declare (not safe)) (##cdr _e1755017672_)))
                          (_hd1754917676_
                           (let ()
                             (declare (not safe))
                             (##car _e1755017672_))))
                      (if (gx#stx-null? _tl1754817679_)
                          (if (gx#stx-null? _tl1754217659_)
                              (___match3915939160_
                               _e1753817632_
                               _hd1753717636_
                               _tl1753617639_
                               _e1754117642_
                               _hd1754017646_
                               _tl1753917649_
                               _e1754417652_
                               _hd1754317656_
                               _tl1754217659_
                               _e1754717662_
                               _hd1754617666_
                               _tl1754517669_
                               _e1755017672_
                               _hd1754917676_
                               _tl1754817679_)
                              (let () (declare (not safe)) (_g1753217568_)))
                          (if (gx#stx-null? _tl1754217659_)
                              (___match3917939180_
                               _e1753817632_
                               _hd1753717636_
                               _tl1753617639_
                               _e1754117642_
                               _hd1754017646_
                               _tl1753917649_
                               _e1754417652_
                               _hd1754317656_
                               _tl1754217659_)
                              (let () (declare (not safe)) (_g1753217568_))))))
                  (if (gx#stx-null? _tl1754217659_)
                      (___match3917939180_
                       _e1753817632_
                       _hd1753717636_
                       _tl1753617639_
                       _e1754117642_
                       _hd1754017646_
                       _tl1753917649_
                       _e1754417652_
                       _hd1754317656_
                       _tl1754217659_)
                      (let () (declare (not safe)) (_g1753217568_))))
              (if (gx#stx-null? _tl1754217659_)
                  (___match3917939180_
                   _e1753817632_
                   _hd1753717636_
                   _tl1753617639_
                   _e1754117642_
                   _hd1754017646_
                   _tl1753917649_
                   _e1754417652_
                   _hd1754317656_
                   _tl1754217659_)
                  (let () (declare (not safe)) (_g1753217568_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl1754217659_)
                                                      (___match3917939180_
                                                       _e1753817632_
                                                       _hd1753717636_
                                                       _tl1753617639_
                                                       _e1754117642_
                                                       _hd1754017646_
                                                       _tl1753917649_
                                                       _e1754417652_
                                                       _hd1754317656_
                                                       _tl1754217659_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1753217568_))))))
                                          (if (gx#stx-null? _tl1754217659_)
                                              (___match3917939180_
                                               _e1753817632_
                                               _hd1753717636_
                                               _tl1753617639_
                                               _e1754117642_
                                               _hd1754017646_
                                               _tl1753917649_
                                               _e1754417652_
                                               _hd1754317656_
                                               _tl1754217659_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1753217568_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1753217568_)))))
                          (let () (declare (not safe)) (_g1753217568_)))))
                  (let () (declare (not safe)) (_g1753217568_))))))))))
