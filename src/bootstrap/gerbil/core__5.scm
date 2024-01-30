(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:3>[1]#_g42671_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defsyntax|
      (lambda (_$stx16997_)
        (let* ((___stx3943039431_ _$stx16997_)
               (_g1700217041_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3943039431_))))
          (let ((___kont3943339434_
                 (lambda (_L17164_ _L17166_ _L17167_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _L17167_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _L17166_
                                                 (foldr (lambda (_g1718617189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1718717192_)
                  (cons _g1718617189_ _g1718717192_))
                '()
                _L17164_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3943739438_
                 (lambda (_L17078_ _L17080_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _L17080_ (cons _L17078_ '()))))))
            (let* ((___match3948539486_
                    (lambda (_e1702917048_
                             _hd1702817052_
                             _tl1702717055_
                             _e1703217058_
                             _hd1703117062_
                             _tl1703017065_
                             _e1703517068_
                             _hd1703417072_
                             _tl1703317075_)
                      (let ((_L17078_ _hd1703417072_)
                            (_L17080_ _hd1703117062_))
                        (if (gx#identifier? _L17080_)
                            (___kont3943739438_ _L17078_ _L17080_)
                            (let () (declare (not safe)) (_g1700217041_))))))
                   (___match3947739478_
                    (lambda (_e1702917048_
                             _hd1702817052_
                             _tl1702717055_
                             _e1703217058_
                             _hd1703117062_
                             _tl1703017065_)
                      (if (gx#stx-pair? _tl1703017065_)
                          (let ((_e1703517068_ (gx#syntax-e _tl1703017065_)))
                            (let ((_tl1703317075_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1703517068_)))
                                  (_hd1703417072_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1703517068_))))
                              (if (gx#stx-null? _tl1703317075_)
                                  (___match3948539486_
                                   _e1702917048_
                                   _hd1702817052_
                                   _tl1702717055_
                                   _e1703217058_
                                   _hd1703117062_
                                   _tl1703017065_
                                   _e1703517068_
                                   _hd1703417072_
                                   _tl1703317075_)
                                  (let ()
                                    (declare (not safe))
                                    (_g1700217041_)))))
                          (let () (declare (not safe)) (_g1700217041_)))))
                   (___match3946539466_
                    (lambda (_e1700917104_
                             _hd1700817108_
                             _tl1700717111_
                             _e1701217114_
                             _hd1701117118_
                             _tl1701017121_
                             _e1701517124_
                             _hd1701417128_
                             _tl1701317131_
                             ___splice3943539436_
                             _target1701617134_
                             _tl1701817137_)
                      (letrec ((_loop1701917140_
                                (lambda (_hd1701717144_ _body1702317147_)
                                  (if (gx#stx-pair? _hd1701717144_)
                                      (let ((_e1702017150_
                                             (gx#syntax-e _hd1701717144_)))
                                        (let ((_lp-tl1702217157_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1702017150_)))
                                              (_lp-hd1702117154_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1702017150_))))
                                          (_loop1701917140_
                                           _lp-tl1702217157_
                                           (cons _lp-hd1702117154_
                                                 _body1702317147_))))
                                      (let ((_body1702417160_
                                             (reverse _body1702317147_)))
                                        (let ((_L17164_ _body1702417160_)
                                              (_L17166_ _tl1701317131_)
                                              (_L17167_ _hd1701417128_))
                                          (if (gx#identifier? _L17167_)
                                              (___kont3943339434_
                                               _L17164_
                                               _L17166_
                                               _L17167_)
                                              (___match3947739478_
                                               _e1700917104_
                                               _hd1700817108_
                                               _tl1700717111_
                                               _e1701217114_
                                               _hd1701117118_
                                               _tl1701017121_))))))))
                        (_loop1701917140_ _target1701617134_ '())))))
              (if (gx#stx-pair? ___stx3943039431_)
                  (let ((_e1700917104_ (gx#syntax-e ___stx3943039431_)))
                    (let ((_tl1700717111_
                           (let () (declare (not safe)) (##cdr _e1700917104_)))
                          (_hd1700817108_
                           (let ()
                             (declare (not safe))
                             (##car _e1700917104_))))
                      (if (gx#stx-pair? _tl1700717111_)
                          (let ((_e1701217114_ (gx#syntax-e _tl1700717111_)))
                            (let ((_tl1701017121_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1701217114_)))
                                  (_hd1701117118_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1701217114_))))
                              (if (gx#stx-pair? _hd1701117118_)
                                  (let ((_e1701517124_
                                         (gx#syntax-e _hd1701117118_)))
                                    (let ((_tl1701317131_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1701517124_)))
                                          (_hd1701417128_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1701517124_))))
                                      (if (gx#stx-pair/null? _tl1701017121_)
                                          (let ((___splice3943539436_
                                                 (gx#syntax-split-splice
                                                  _tl1701017121_
                                                  '0)))
                                            (let ((_tl1701817137_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3943539436_
                                                      '1)))
                                                  (_target1701617134_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3943539436_
                                                      '0))))
                                              (if (gx#stx-null? _tl1701817137_)
                                                  (___match3946539466_
                                                   _e1700917104_
                                                   _hd1700817108_
                                                   _tl1700717111_
                                                   _e1701217114_
                                                   _hd1701117118_
                                                   _tl1701017121_
                                                   _e1701517124_
                                                   _hd1701417128_
                                                   _tl1701317131_
                                                   ___splice3943539436_
                                                   _target1701617134_
                                                   _tl1701817137_)
                                                  (if (gx#stx-pair?
                                                       _tl1701017121_)
                                                      (let ((_e1703517068_
                                                             (gx#syntax-e
                                                              _tl1701017121_)))
                                                        (let ((_tl1703317075_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1703517068_)))
                      (_hd1703417072_
                       (let () (declare (not safe)) (##car _e1703517068_))))
                  (if (gx#stx-null? _tl1703317075_)
                      (___match3948539486_
                       _e1700917104_
                       _hd1700817108_
                       _tl1700717111_
                       _e1701217114_
                       _hd1701117118_
                       _tl1701017121_
                       _e1703517068_
                       _hd1703417072_
                       _tl1703317075_)
                      (let () (declare (not safe)) (_g1700217041_)))))
              (let () (declare (not safe)) (_g1700217041_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl1701017121_)
                                              (let ((_e1703517068_
                                                     (gx#syntax-e
                                                      _tl1701017121_)))
                                                (let ((_tl1703317075_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1703517068_)))
                                                      (_hd1703417072_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1703517068_))))
                                                  (if (gx#stx-null?
                                                       _tl1703317075_)
                                                      (___match3948539486_
                                                       _e1700917104_
                                                       _hd1700817108_
                                                       _tl1700717111_
                                                       _e1701217114_
                                                       _hd1701117118_
                                                       _tl1701017121_
                                                       _e1703517068_
                                                       _hd1703417072_
                                                       _tl1703317075_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1700217041_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1700217041_))))))
                                  (if (gx#stx-pair? _tl1701017121_)
                                      (let ((_e1703517068_
                                             (gx#syntax-e _tl1701017121_)))
                                        (let ((_tl1703317075_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1703517068_)))
                                              (_hd1703417072_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1703517068_))))
                                          (if (gx#stx-null? _tl1703317075_)
                                              (___match3948539486_
                                               _e1700917104_
                                               _hd1700817108_
                                               _tl1700717111_
                                               _e1701217114_
                                               _hd1701117118_
                                               _tl1701017121_
                                               _e1703517068_
                                               _hd1703417072_
                                               _tl1703317075_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1700217041_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1700217041_))))))
                          (let () (declare (not safe)) (_g1700217041_)))))
                  (let () (declare (not safe)) (_g1700217041_))))))))
    (define |gerbil/core$<sugar>$<sugar:3>[:0:]#definline|
      (lambda (_stx17200_)
        (let* ((_g1720317240_
                (lambda (_g1720417236_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1720417236_)))
               (_g1720217601_
                (lambda (_g1720417244_)
                  (if (gx#stx-pair? _g1720417244_)
                      (let ((_e1721017247_ (gx#syntax-e _g1720417244_)))
                        (let ((_hd1720917251_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1721017247_)))
                              (_tl1720817254_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1721017247_))))
                          (if (gx#stx-pair? _tl1720817254_)
                              (let ((_e1721317257_
                                     (gx#syntax-e _tl1720817254_)))
                                (let ((_hd1721217261_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1721317257_)))
                                      (_tl1721117264_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1721317257_))))
                                  (if (gx#stx-pair? _hd1721217261_)
                                      (let ((_e1721617267_
                                             (gx#syntax-e _hd1721217261_)))
                                        (let ((_hd1721517271_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1721617267_)))
                                              (_tl1721417274_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1721617267_))))
                                          (if (gx#stx-pair/null?
                                               _tl1721417274_)
                                              (let ((_g42665_
                                                     (gx#syntax-split-splice
                                                      _tl1721417274_
                                                      '0)))
                                                (begin
                                                  (let ((_g42666_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g42665_)
                                                               (##vector-length
                                                                _g42665_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g42666_ 2)))
                (error "Context expects 2 values" _g42666_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1721717277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g42665_
                                                            0)))
                                                        (_tl1721917280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g42665_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1721917280_)
                                                        (letrec ((_loop1722017283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1721817287_ _arg1722417290_)
                            (if (gx#stx-pair? _hd1721817287_)
                                (let ((_e1722117293_
                                       (gx#syntax-e _hd1721817287_)))
                                  (let ((_lp-hd1722217297_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1722117293_)))
                                        (_lp-tl1722317300_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1722117293_))))
                                    (_loop1722017283_
                                     _lp-tl1722317300_
                                     (cons _lp-hd1722217297_
                                           _arg1722417290_))))
                                (let ((_arg1722517303_
                                       (reverse _arg1722417290_)))
                                  (if (gx#stx-pair/null? _tl1721117264_)
                                      (let ((_g42667_
                                             (gx#syntax-split-splice
                                              _tl1721117264_
                                              '0)))
                                        (begin
                                          (let ((_g42668_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42667_)
                                                       (##vector-length
                                                        _g42667_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42668_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42668_)))
                                          (let ((_target1722617307_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42667_ 0)))
                                                (_tl1722817310_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42667_ 1))))
                                            (if (gx#stx-null? _tl1722817310_)
                                                (letrec ((_loop1722917313_
                                                          (lambda (_hd1722717317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1723317320_)
                    (if (gx#stx-pair? _hd1722717317_)
                        (let ((_e1723017323_ (gx#syntax-e _hd1722717317_)))
                          (let ((_lp-hd1723117327_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1723017323_)))
                                (_lp-tl1723217330_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1723017323_))))
                            (_loop1722917313_
                             _lp-tl1723217330_
                             (cons _lp-hd1723117327_ _body1723317320_))))
                        (let ((_body1723417333_ (reverse _body1723317320_)))
                          ((lambda (_L17337_ _L17339_ _L17340_)
                             (if (and (gx#identifier? _L17340_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_g1736417367_
                                                       _g1736517370_)
                                                (cons _g1736417367_
                                                      _g1736517370_))
                                              '()
                                              _L17339_)))
                                 (let* ((_g1737317381_
                                         (lambda (_g1737417377_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g1737417377_)))
                                        (_g1737217597_
                                         (lambda (_g1737417385_)
                                           ((lambda (_L17388_)
                                              (let ()
                                                (let* ((_g1740017417_
                                                        (lambda (_g1740117413_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1740117413_)))
                                                       (_g1739917585_
                                                        (lambda (_g1740117421_)
                                                          (if (gx#stx-pair/null?
                                                               _g1740117421_)
                                                              (let ((_g42669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g1740117421_ '0)))
                        (begin
                          (let ((_g42670_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g42669_)
                                       (##vector-length _g42669_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g42670_ 2)))
                                (error "Context expects 2 values" _g42670_)))
                          (let ((_target1740317424_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g42669_ 0)))
                                (_tl1740517427_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g42669_ 1))))
                            (if (gx#stx-null? _tl1740517427_)
                                (letrec ((_loop1740617430_
                                          (lambda (_hd1740417434_
                                                   _xarg1741017437_)
                                            (if (gx#stx-pair? _hd1740417434_)
                                                (let ((_e1740717440_
                                                       (gx#syntax-e
                                                        _hd1740417434_)))
                                                  (let ((_lp-hd1740817444_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1740717440_)))
                                                        (_lp-tl1740917447_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1740717440_))))
                                                    (_loop1740617430_
                                                     _lp-tl1740917447_
                                                     (cons _lp-hd1740817444_
                                                           _xarg1741017437_))))
                                                (let ((_xarg1741117450_
                                                       (reverse _xarg1741017437_)))
                                                  ((lambda (_L17454_)
                                                     (let ()
                                                       (let* ((_g1747117479_
                                                               (lambda (_g1747217475_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g1747217475_)))
                      (_g1747017549_
                       (lambda (_g1747217483_)
                         ((lambda (_L17486_)
                            (let ()
                              (let* ((_g1749917507_
                                      (lambda (_g1750017503_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1750017503_)))
                                     (_g1749817529_
                                      (lambda (_g1750017511_)
                                        ((lambda (_L17514_)
                                           (let ()
                                             (let ()
                                               (gx#stx-wrap-source
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons _L17514_
                                                            (cons _L17486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _stx17200_)))))
                                         _g1750017511_))))
                                (_g1749817529_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _L17388_
                                                    (foldr (lambda (_g1753417537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1753517540_)
                     (cons _g1753417537_ _g1753517540_))
                   '()
                   _L17339_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (foldr (lambda (_g1753217543_
                                                              _g1753317546_)
                                                       (cons _g1753217543_
                                                             _g1753317546_))
                                                     '()
                                                     _L17337_)))
                                  (gx#stx-source _stx17200_))))))
                          _g1747217483_))))
                 (_g1747017549_
                  (gx#stx-wrap-source
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _L17340_
                               (cons '()
                                     (cons (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '_)
                                                       (foldr (lambda (_g1755817561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1755917564_)
                        (cons _g1755817561_ _g1755917564_))
                      '()
                      _L17454_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons (foldr (lambda (_g1755617567_ _g1755717570_)
                                          (cons _g1755617567_ _g1755717570_))
                                        '()
                                        _L17339_)
                                 (foldr (lambda (_g1755417573_ _g1755517576_)
                                          (cons _g1755417573_ _g1755517576_))
                                        '()
                                        _L17337_)))
                     (foldr (lambda (_g1755217579_ _g1755317582_)
                              (cons _g1755217579_ _g1755317582_))
                            '()
                            _L17454_))
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
                     (cons _L17388_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                   (gx#stx-source _stx17200_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _xarg1741117450_))))))
                                  (_loop1740617430_ _target1740317424_ '()))
                                (_g1740017417_ _g1740117421_)))))
                      (_g1740017417_ _g1740117421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1739917585_
                                                   (gx#gentemps
                                                    (foldr (lambda (_g1758817591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1758917594_)
                     (cons _g1758817591_ _g1758917594_))
                   '()
                   _L17339_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1737417385_))))
                                   (_g1737217597_
                                    (gx#stx-identifier
                                     _L17340_
                                     _L17340_
                                     '"__impl")))
                                 (_g1720317240_ _g1720417244_)))
                           _body1723417333_
                           _arg1722517303_
                           _hd1721517271_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1722917313_
                                                   _target1722617307_
                                                   '()))
                                                (_g1720317240_
                                                 _g1720417244_)))))
                                      (_g1720317240_ _g1720417244_)))))))
                  (_loop1722017283_ _target1721717277_ '()))
                (_g1720317240_ _g1720417244_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1720317240_ _g1720417244_))))
                                      (_g1720317240_ _g1720417244_))))
                              (_g1720317240_ _g1720417244_))))
                      (_g1720317240_ _g1720417244_)))))
          (_g1720217601_ _stx17200_))))
    (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defconst|
      (lambda (_$stx17608_)
        (let* ((___stx3948839489_ _$stx17608_)
               (_g1761317649_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3948839489_))))
          (let ((___kont3949139492_
                 (lambda (_L17763_ _L17765_)
                   (cons (gx#datum->syntax '#f 'defrules)
                         (cons _L17765_
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
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _L17763_ '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (___kont3949339494_
                 (lambda (_L17686_ _L17688_ _L17689_)
                   (cons _L17689_
                         (cons _L17688_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L17686_ '()))
                                     '()))))))
            (let* ((___match3955339554_
                    (lambda (_e1763717656_
                             _hd1763617660_
                             _tl1763517663_
                             _e1764017666_
                             _hd1763917670_
                             _tl1763817673_
                             _e1764317676_
                             _hd1764217680_
                             _tl1764117683_)
                      (let ((_L17686_ _hd1764217680_)
                            (_L17688_ _hd1763917670_)
                            (_L17689_ _hd1763617660_))
                        (if (and (gx#identifier? _L17688_)
                                 (gx#stx-datum? _L17686_))
                            (___kont3949339494_ _L17686_ _L17688_ _L17689_)
                            (let () (declare (not safe)) (_g1761317649_))))))
                   (___match3953339534_
                    (lambda (_e1761917713_
                             _hd1761817717_
                             _tl1761717720_
                             _e1762217723_
                             _hd1762117727_
                             _tl1762017730_
                             _e1762517733_
                             _hd1762417737_
                             _tl1762317740_
                             _e1762817743_
                             _hd1762717747_
                             _tl1762617750_
                             _e1763117753_
                             _hd1763017757_
                             _tl1762917760_)
                      (let ((_L17763_ _hd1763017757_)
                            (_L17765_ _hd1762117727_))
                        (if (gx#identifier? _L17765_)
                            (___kont3949139492_ _L17763_ _L17765_)
                            (___match3955339554_
                             _e1761917713_
                             _hd1761817717_
                             _tl1761717720_
                             _e1762217723_
                             _hd1762117727_
                             _tl1762017730_
                             _e1762517733_
                             _hd1762417737_
                             _tl1762317740_))))))
              (if (gx#stx-pair? ___stx3948839489_)
                  (let ((_e1761917713_ (gx#syntax-e ___stx3948839489_)))
                    (let ((_tl1761717720_
                           (let () (declare (not safe)) (##cdr _e1761917713_)))
                          (_hd1761817717_
                           (let ()
                             (declare (not safe))
                             (##car _e1761917713_))))
                      (if (gx#stx-pair? _tl1761717720_)
                          (let ((_e1762217723_ (gx#syntax-e _tl1761717720_)))
                            (let ((_tl1762017730_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1762217723_)))
                                  (_hd1762117727_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1762217723_))))
                              (if (gx#stx-pair? _tl1762017730_)
                                  (let ((_e1762517733_
                                         (gx#syntax-e _tl1762017730_)))
                                    (let ((_tl1762317740_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1762517733_)))
                                          (_hd1762417737_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1762517733_))))
                                      (if (gx#stx-pair? _hd1762417737_)
                                          (let ((_e1762817743_
                                                 (gx#syntax-e _hd1762417737_)))
                                            (let ((_tl1762617750_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1762817743_)))
                                                  (_hd1762717747_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1762817743_))))
                                              (if (gx#identifier?
                                                   _hd1762717747_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<sugar>$<sugar:3>[1]#_g42671_|
                                                       _hd1762717747_)
                                                      (if (gx#stx-pair?
                                                           _tl1762617750_)
                                                          (let ((_e1763117753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1762617750_)))
                    (let ((_tl1762917760_
                           (let () (declare (not safe)) (##cdr _e1763117753_)))
                          (_hd1763017757_
                           (let ()
                             (declare (not safe))
                             (##car _e1763117753_))))
                      (if (gx#stx-null? _tl1762917760_)
                          (if (gx#stx-null? _tl1762317740_)
                              (___match3953339534_
                               _e1761917713_
                               _hd1761817717_
                               _tl1761717720_
                               _e1762217723_
                               _hd1762117727_
                               _tl1762017730_
                               _e1762517733_
                               _hd1762417737_
                               _tl1762317740_
                               _e1762817743_
                               _hd1762717747_
                               _tl1762617750_
                               _e1763117753_
                               _hd1763017757_
                               _tl1762917760_)
                              (let () (declare (not safe)) (_g1761317649_)))
                          (if (gx#stx-null? _tl1762317740_)
                              (___match3955339554_
                               _e1761917713_
                               _hd1761817717_
                               _tl1761717720_
                               _e1762217723_
                               _hd1762117727_
                               _tl1762017730_
                               _e1762517733_
                               _hd1762417737_
                               _tl1762317740_)
                              (let () (declare (not safe)) (_g1761317649_))))))
                  (if (gx#stx-null? _tl1762317740_)
                      (___match3955339554_
                       _e1761917713_
                       _hd1761817717_
                       _tl1761717720_
                       _e1762217723_
                       _hd1762117727_
                       _tl1762017730_
                       _e1762517733_
                       _hd1762417737_
                       _tl1762317740_)
                      (let () (declare (not safe)) (_g1761317649_))))
              (if (gx#stx-null? _tl1762317740_)
                  (___match3955339554_
                   _e1761917713_
                   _hd1761817717_
                   _tl1761717720_
                   _e1762217723_
                   _hd1762117727_
                   _tl1762017730_
                   _e1762517733_
                   _hd1762417737_
                   _tl1762317740_)
                  (let () (declare (not safe)) (_g1761317649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl1762317740_)
                                                      (___match3955339554_
                                                       _e1761917713_
                                                       _hd1761817717_
                                                       _tl1761717720_
                                                       _e1762217723_
                                                       _hd1762117727_
                                                       _tl1762017730_
                                                       _e1762517733_
                                                       _hd1762417737_
                                                       _tl1762317740_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1761317649_))))))
                                          (if (gx#stx-null? _tl1762317740_)
                                              (___match3955339554_
                                               _e1761917713_
                                               _hd1761817717_
                                               _tl1761717720_
                                               _e1762217723_
                                               _hd1762117727_
                                               _tl1762017730_
                                               _e1762517733_
                                               _hd1762417737_
                                               _tl1762317740_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1761317649_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1761317649_)))))
                          (let () (declare (not safe)) (_g1761317649_)))))
                  (let () (declare (not safe)) (_g1761317649_))))))))))
