(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar$<sugar:3>[1]#_g25495_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar$<sugar:3>[:0:]#defsyntax|
      (lambda (_$stx21274_)
        (let* ((___stx2429124292_ _$stx21274_)
               (_g2127921318_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2429124292_))))
          (let ((___kont2429424295_
                 (lambda (_L21441_ _L21443_ _L21444_)
                   (let ((__tmp25426 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp25420
                          (let ((__tmp25421
                                 (let ((__tmp25422
                                        (let ((__tmp25425
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp25423
                                               (let ((__tmp25424
                                                      (foldr (lambda (_g2146321466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2146421469_)
                       (let ()
                         (declare (not safe))
                         (cons _g2146321466_ _g2146421469_)))
                     '()
                     _L21441_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L21443_ __tmp25424))))
                                          (declare (not safe))
                                          (cons __tmp25425 __tmp25423))))
                                   (declare (not safe))
                                   (cons __tmp25422 '()))))
                            (declare (not safe))
                            (cons _L21444_ __tmp25421))))
                     (declare (not safe))
                     (cons __tmp25426 __tmp25420))))
                (___kont2429824299_
                 (lambda (_L21355_ _L21357_)
                   (let ((__tmp25429 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp25427
                          (let ((__tmp25428
                                 (let ()
                                   (declare (not safe))
                                   (cons _L21355_ '()))))
                            (declare (not safe))
                            (cons _L21357_ __tmp25428))))
                     (declare (not safe))
                     (cons __tmp25429 __tmp25427)))))
            (let* ((___match2434624347_
                    (lambda (_e2130621325_
                             _hd2130521329_
                             _tl2130421332_
                             _e2130921335_
                             _hd2130821339_
                             _tl2130721342_
                             _e2131221345_
                             _hd2131121349_
                             _tl2131021352_)
                      (let ((_L21355_ _hd2131121349_)
                            (_L21357_ _hd2130821339_))
                        (if (gx#identifier? _L21357_)
                            (___kont2429824299_ _L21355_ _L21357_)
                            (let () (declare (not safe)) (_g2127921318_))))))
                   (___match2433824339_
                    (lambda (_e2130621325_
                             _hd2130521329_
                             _tl2130421332_
                             _e2130921335_
                             _hd2130821339_
                             _tl2130721342_)
                      (if (gx#stx-pair? _tl2130721342_)
                          (let ((_e2131221345_ (gx#syntax-e _tl2130721342_)))
                            (let ((_tl2131021352_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2131221345_)))
                                  (_hd2131121349_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2131221345_))))
                              (if (gx#stx-null? _tl2131021352_)
                                  (___match2434624347_
                                   _e2130621325_
                                   _hd2130521329_
                                   _tl2130421332_
                                   _e2130921335_
                                   _hd2130821339_
                                   _tl2130721342_
                                   _e2131221345_
                                   _hd2131121349_
                                   _tl2131021352_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2127921318_)))))
                          (let () (declare (not safe)) (_g2127921318_)))))
                   (___match2432624327_
                    (lambda (_e2128621381_
                             _hd2128521385_
                             _tl2128421388_
                             _e2128921391_
                             _hd2128821395_
                             _tl2128721398_
                             _e2129221401_
                             _hd2129121405_
                             _tl2129021408_
                             ___splice2429624297_
                             _target2129321411_
                             _tl2129521414_)
                      (letrec ((_loop2129621417_
                                (lambda (_hd2129421421_ _body2130021424_)
                                  (if (gx#stx-pair? _hd2129421421_)
                                      (let ((_e2129721427_
                                             (gx#syntax-e _hd2129421421_)))
                                        (let ((_lp-tl2129921434_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2129721427_)))
                                              (_lp-hd2129821431_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2129721427_))))
                                          (_loop2129621417_
                                           _lp-tl2129921434_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd2129821431_
                                                   _body2130021424_)))))
                                      (let ((_body2130121437_
                                             (reverse _body2130021424_)))
                                        (let ((_L21441_ _body2130121437_)
                                              (_L21443_ _tl2129021408_)
                                              (_L21444_ _hd2129121405_))
                                          (if (gx#identifier? _L21444_)
                                              (___kont2429424295_
                                               _L21441_
                                               _L21443_
                                               _L21444_)
                                              (___match2433824339_
                                               _e2128621381_
                                               _hd2128521385_
                                               _tl2128421388_
                                               _e2128921391_
                                               _hd2128821395_
                                               _tl2128721398_))))))))
                        (_loop2129621417_ _target2129321411_ '())))))
              (if (gx#stx-pair? ___stx2429124292_)
                  (let ((_e2128621381_ (gx#syntax-e ___stx2429124292_)))
                    (let ((_tl2128421388_
                           (let () (declare (not safe)) (##cdr _e2128621381_)))
                          (_hd2128521385_
                           (let ()
                             (declare (not safe))
                             (##car _e2128621381_))))
                      (if (gx#stx-pair? _tl2128421388_)
                          (let ((_e2128921391_ (gx#syntax-e _tl2128421388_)))
                            (let ((_tl2128721398_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2128921391_)))
                                  (_hd2128821395_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2128921391_))))
                              (if (gx#stx-pair? _hd2128821395_)
                                  (let ((_e2129221401_
                                         (gx#syntax-e _hd2128821395_)))
                                    (let ((_tl2129021408_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2129221401_)))
                                          (_hd2129121405_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2129221401_))))
                                      (if (gx#stx-pair/null? _tl2128721398_)
                                          (let ((___splice2429624297_
                                                 (gx#syntax-split-splice
                                                  _tl2128721398_
                                                  '0)))
                                            (let ((_tl2129521414_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2429624297_
                                                      '1)))
                                                  (_target2129321411_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2429624297_
                                                      '0))))
                                              (if (gx#stx-null? _tl2129521414_)
                                                  (___match2432624327_
                                                   _e2128621381_
                                                   _hd2128521385_
                                                   _tl2128421388_
                                                   _e2128921391_
                                                   _hd2128821395_
                                                   _tl2128721398_
                                                   _e2129221401_
                                                   _hd2129121405_
                                                   _tl2129021408_
                                                   ___splice2429624297_
                                                   _target2129321411_
                                                   _tl2129521414_)
                                                  (if (gx#stx-pair?
                                                       _tl2128721398_)
                                                      (let ((_e2131221345_
                                                             (gx#syntax-e
                                                              _tl2128721398_)))
                                                        (let ((_tl2131021352_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2131221345_)))
                      (_hd2131121349_
                       (let () (declare (not safe)) (##car _e2131221345_))))
                  (if (gx#stx-null? _tl2131021352_)
                      (___match2434624347_
                       _e2128621381_
                       _hd2128521385_
                       _tl2128421388_
                       _e2128921391_
                       _hd2128821395_
                       _tl2128721398_
                       _e2131221345_
                       _hd2131121349_
                       _tl2131021352_)
                      (let () (declare (not safe)) (_g2127921318_)))))
              (let () (declare (not safe)) (_g2127921318_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl2128721398_)
                                              (let ((_e2131221345_
                                                     (gx#syntax-e
                                                      _tl2128721398_)))
                                                (let ((_tl2131021352_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2131221345_)))
                                                      (_hd2131121349_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2131221345_))))
                                                  (if (gx#stx-null?
                                                       _tl2131021352_)
                                                      (___match2434624347_
                                                       _e2128621381_
                                                       _hd2128521385_
                                                       _tl2128421388_
                                                       _e2128921391_
                                                       _hd2128821395_
                                                       _tl2128721398_
                                                       _e2131221345_
                                                       _hd2131121349_
                                                       _tl2131021352_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2127921318_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2127921318_))))))
                                  (if (gx#stx-pair? _tl2128721398_)
                                      (let ((_e2131221345_
                                             (gx#syntax-e _tl2128721398_)))
                                        (let ((_tl2131021352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2131221345_)))
                                              (_hd2131121349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2131221345_))))
                                          (if (gx#stx-null? _tl2131021352_)
                                              (___match2434624347_
                                               _e2128621381_
                                               _hd2128521385_
                                               _tl2128421388_
                                               _e2128921391_
                                               _hd2128821395_
                                               _tl2128721398_
                                               _e2131221345_
                                               _hd2131121349_
                                               _tl2131021352_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2127921318_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2127921318_))))))
                          (let () (declare (not safe)) (_g2127921318_)))))
                  (let () (declare (not safe)) (_g2127921318_))))))))
    (define |gerbil/core/sugar$<sugar:3>[:0:]#definline|
      (lambda (_stx21477_)
        (let* ((_g2148021517_
                (lambda (_g2148121513_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2148121513_)))
               (_g2147921878_
                (lambda (_g2148121521_)
                  (if (gx#stx-pair? _g2148121521_)
                      (let ((_e2148721524_ (gx#syntax-e _g2148121521_)))
                        (let ((_hd2148621528_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2148721524_)))
                              (_tl2148521531_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2148721524_))))
                          (if (gx#stx-pair? _tl2148521531_)
                              (let ((_e2149021534_
                                     (gx#syntax-e _tl2148521531_)))
                                (let ((_hd2148921538_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2149021534_)))
                                      (_tl2148821541_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2149021534_))))
                                  (if (gx#stx-pair? _hd2148921538_)
                                      (let ((_e2149321544_
                                             (gx#syntax-e _hd2148921538_)))
                                        (let ((_hd2149221548_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2149321544_)))
                                              (_tl2149121551_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2149321544_))))
                                          (if (gx#stx-pair/null?
                                               _tl2149121551_)
                                              (let ((_g25430_
                                                     (gx#syntax-split-splice
                                                      _tl2149121551_
                                                      '0)))
                                                (begin
                                                  (let ((_g25431_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g25430_)
                                                               (##vector-length
                                                                _g25430_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g25431_ 2)))
                (error "Context expects 2 values" _g25431_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target2149421554_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25430_
                                                            0)))
                                                        (_tl2149621557_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25430_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl2149621557_)
                                                        (letrec ((_loop2149721560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2149521564_ _arg2150121567_)
                            (if (gx#stx-pair? _hd2149521564_)
                                (let ((_e2149821570_
                                       (gx#syntax-e _hd2149521564_)))
                                  (let ((_lp-hd2149921574_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2149821570_)))
                                        (_lp-tl2150021577_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2149821570_))))
                                    (_loop2149721560_
                                     _lp-tl2150021577_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd2149921574_
                                             _arg2150121567_)))))
                                (let ((_arg2150221580_
                                       (reverse _arg2150121567_)))
                                  (if (gx#stx-pair/null? _tl2148821541_)
                                      (let ((_g25432_
                                             (gx#syntax-split-splice
                                              _tl2148821541_
                                              '0)))
                                        (begin
                                          (let ((_g25433_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25432_)
                                                       (##vector-length
                                                        _g25432_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25433_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25433_)))
                                          (let ((_target2150321584_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25432_ 0)))
                                                (_tl2150521587_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25432_ 1))))
                                            (if (gx#stx-null? _tl2150521587_)
                                                (letrec ((_loop2150621590_
                                                          (lambda (_hd2150421594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2151021597_)
                    (if (gx#stx-pair? _hd2150421594_)
                        (let ((_e2150721600_ (gx#syntax-e _hd2150421594_)))
                          (let ((_lp-hd2150821604_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2150721600_)))
                                (_lp-tl2150921607_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2150721600_))))
                            (_loop2150621590_
                             _lp-tl2150921607_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd2150821604_ _body2151021597_)))))
                        (let ((_body2151121610_ (reverse _body2151021597_)))
                          ((lambda (_L21614_ _L21616_ _L21617_)
                             (if (and (gx#identifier? _L21617_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_g2164121644_
                                                       _g2164221647_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g2164121644_
                                                        _g2164221647_)))
                                              '()
                                              _L21616_)))
                                 (let* ((_g2165021658_
                                         (lambda (_g2165121654_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2165121654_)))
                                        (_g2164921874_
                                         (lambda (_g2165121662_)
                                           ((lambda (_L21665_)
                                              (let ()
                                                (let* ((_g2167721694_
                                                        (lambda (_g2167821690_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g2167821690_)))
                                                       (_g2167621862_
                                                        (lambda (_g2167821698_)
                                                          (if (gx#stx-pair/null?
                                                               _g2167821698_)
                                                              (let ((_g25434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g2167821698_ '0)))
                        (begin
                          (let ((_g25435_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g25434_)
                                       (##vector-length _g25434_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g25435_ 2)))
                                (error "Context expects 2 values" _g25435_)))
                          (let ((_target2168021701_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g25434_ 0)))
                                (_tl2168221704_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g25434_ 1))))
                            (if (gx#stx-null? _tl2168221704_)
                                (letrec ((_loop2168321707_
                                          (lambda (_hd2168121711_
                                                   _xarg2168721714_)
                                            (if (gx#stx-pair? _hd2168121711_)
                                                (let ((_e2168421717_
                                                       (gx#syntax-e
                                                        _hd2168121711_)))
                                                  (let ((_lp-hd2168521721_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2168421717_)))
                                                        (_lp-tl2168621724_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2168421717_))))
                                                    (_loop2168321707_
                                                     _lp-tl2168621724_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _lp-hd2168521721_
                                                             _xarg2168721714_)))))
                                                (let ((_xarg2168821727_
                                                       (reverse _xarg2168721714_)))
                                                  ((lambda (_L21731_)
                                                     (let ()
                                                       (let* ((_g2174821756_
                                                               (lambda (_g2174921752_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2174921752_)))
                      (_g2174721826_
                       (lambda (_g2174921760_)
                         ((lambda (_L21763_)
                            (let ()
                              (let* ((_g2177621784_
                                      (lambda (_g2177721780_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g2177721780_)))
                                     (_g2177521806_
                                      (lambda (_g2177721788_)
                                        ((lambda (_L21791_)
                                           (let ()
                                             (let ()
                                               (gx#stx-wrap-source
                                                (let ((__tmp25438
                                                       (gx#datum->syntax
                                                        '#f
                                                        'begin))
                                                      (__tmp25436
                                                       (let ((__tmp25437
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21763_ '()))))
                 (declare (not safe))
                 (cons _L21791_ __tmp25437))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25438 __tmp25436))
                                                (gx#stx-source _stx21477_)))))
                                         _g2177721788_))))
                                (_g2177521806_
                                 (gx#stx-wrap-source
                                  (let ((__tmp25443
                                         (gx#datum->syntax '#f 'def))
                                        (__tmp25439
                                         (let ((__tmp25441
                                                (let ((__tmp25442
                                                       (foldr (lambda (_g2181121814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2181221817_)
                        (let ()
                          (declare (not safe))
                          (cons _g2181121814_ _g2181221817_)))
                      '()
                      _L21616_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L21665_ __tmp25442)))
                                               (__tmp25440
                                                (foldr (lambda (_g2180921820_
                                                                _g2181021823_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g2180921820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2181021823_)))
               '()
               _L21614_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (cons __tmp25441 __tmp25440))))
                                    (declare (not safe))
                                    (cons __tmp25443 __tmp25439))
                                  (gx#stx-source _stx21477_))))))
                          _g2174921760_))))
                 (_g2174721826_
                  (gx#stx-wrap-source
                   (let ((__tmp25471 (gx#datum->syntax '#f 'defrules))
                         (__tmp25444
                          (let ((__tmp25445
                                 (let ((__tmp25446
                                        (let ((__tmp25459
                                               (let ((__tmp25468
                                                      (let ((__tmp25470
                                                             (gx#datum->syntax
                                                              '#f
                                                              '_))
                                                            (__tmp25469
                                                             (foldr (lambda (_g2183521838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2183621841_)
                              (let ()
                                (declare (not safe))
                                (cons _g2183521838_ _g2183621841_)))
                            '()
                            _L21731_)))
                (declare (not safe))
                (cons __tmp25470 __tmp25469)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp25460
                                                      (let ((__tmp25461
                                                             (let ((__tmp25463
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25467 (gx#datum->syntax '#f 'lambda))
                                  (__tmp25464
                                   (let ((__tmp25466
                                          (foldr (lambda (_g2183321844_
                                                          _g2183421847_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2183321844_
                                                           _g2183421847_)))
                                                 '()
                                                 _L21616_))
                                         (__tmp25465
                                          (foldr (lambda (_g2183121850_
                                                          _g2183221853_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2183121850_
                                                           _g2183221853_)))
                                                 '()
                                                 _L21614_)))
                                     (declare (not safe))
                                     (cons __tmp25466 __tmp25465))))
                              (declare (not safe))
                              (cons __tmp25467 __tmp25464)))
                           (__tmp25462
                            (foldr (lambda (_g2182921856_ _g2183021859_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2182921856_ _g2183021859_)))
                                   '()
                                   _L21731_)))
                       (declare (not safe))
                       (cons __tmp25463 __tmp25462))))
                (declare (not safe))
                (cons __tmp25461 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25468 __tmp25460)))
                                              (__tmp25447
                                               (let ((__tmp25448
                                                      (let ((__tmp25458
                                                             (gx#datum->syntax
                                                              '#f
                                                              'ref))
                                                            (__tmp25449
                                                             (let ((__tmp25451
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25457
                                   (gx#datum->syntax '#f 'identifier?))
                                  (__tmp25452
                                   (let ((__tmp25453
                                          (let ((__tmp25456
                                                 (gx#datum->syntax
                                                  '#f
                                                  'syntax))
                                                (__tmp25454
                                                 (let ((__tmp25455
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ref)))
                                                   (declare (not safe))
                                                   (cons __tmp25455 '()))))
                                            (declare (not safe))
                                            (cons __tmp25456 __tmp25454))))
                                     (declare (not safe))
                                     (cons __tmp25453 '()))))
                              (declare (not safe))
                              (cons __tmp25457 __tmp25452)))
                           (__tmp25450
                            (let () (declare (not safe)) (cons _L21665_ '()))))
                       (declare (not safe))
                       (cons __tmp25451 __tmp25450))))
                (declare (not safe))
                (cons __tmp25458 __tmp25449))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25448 '()))))
                                          (declare (not safe))
                                          (cons __tmp25459 __tmp25447))))
                                   (declare (not safe))
                                   (cons '() __tmp25446))))
                            (declare (not safe))
                            (cons _L21617_ __tmp25445))))
                     (declare (not safe))
                     (cons __tmp25471 __tmp25444))
                   (gx#stx-source _stx21477_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _xarg2168821727_))))))
                                  (_loop2168321707_ _target2168021701_ '()))
                                (_g2167721694_ _g2167821698_)))))
                      (_g2167721694_ _g2167821698_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2167621862_
                                                   (gx#gentemps
                                                    (foldr (lambda (_g2186521868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2186621871_)
                     (let ()
                       (declare (not safe))
                       (cons _g2186521868_ _g2186621871_)))
                   '()
                   _L21616_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2165121662_))))
                                   (_g2164921874_
                                    (gx#stx-identifier
                                     _L21617_
                                     _L21617_
                                     '"__impl")))
                                 (_g2148021517_ _g2148121521_)))
                           _body2151121610_
                           _arg2150221580_
                           _hd2149221548_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2150621590_
                                                   _target2150321584_
                                                   '()))
                                                (_g2148021517_
                                                 _g2148121521_)))))
                                      (_g2148021517_ _g2148121521_)))))))
                  (_loop2149721560_ _target2149421554_ '()))
                (_g2148021517_ _g2148121521_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2148021517_ _g2148121521_))))
                                      (_g2148021517_ _g2148121521_))))
                              (_g2148021517_ _g2148121521_))))
                      (_g2148021517_ _g2148121521_)))))
          (_g2147921878_ _stx21477_))))
    (define |gerbil/core/sugar$<sugar:3>[:0:]#defconst|
      (lambda (_$stx21885_)
        (let* ((___stx2434924350_ _$stx21885_)
               (_g2189021926_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2434924350_))))
          (let ((___kont2435224353_
                 (lambda (_L22040_ _L22042_)
                   (let ((__tmp25489 (gx#datum->syntax '#f 'defrules))
                         (__tmp25472
                          (let ((__tmp25473
                                 (let ((__tmp25474
                                        (let ((__tmp25475
                                               (let ((__tmp25488
                                                      (gx#datum->syntax
                                                       '#f
                                                       'x))
                                                     (__tmp25476
                                                      (let ((__tmp25481
                                                             (let ((__tmp25487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'identifier?))
                           (__tmp25482
                            (let ((__tmp25483
                                   (let ((__tmp25486
                                          (gx#datum->syntax '#f 'syntax))
                                         (__tmp25484
                                          (let ((__tmp25485
                                                 (gx#datum->syntax '#f 'x)))
                                            (declare (not safe))
                                            (cons __tmp25485 '()))))
                                     (declare (not safe))
                                     (cons __tmp25486 __tmp25484))))
                              (declare (not safe))
                              (cons __tmp25483 '()))))
                       (declare (not safe))
                       (cons __tmp25487 __tmp25482)))
                    (__tmp25477
                     (let ((__tmp25478
                            (let ((__tmp25480 (gx#datum->syntax '#f 'quote))
                                  (__tmp25479
                                   (let ()
                                     (declare (not safe))
                                     (cons _L22040_ '()))))
                              (declare (not safe))
                              (cons __tmp25480 __tmp25479))))
                       (declare (not safe))
                       (cons __tmp25478 '()))))
                (declare (not safe))
                (cons __tmp25481 __tmp25477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25488
                                                       __tmp25476))))
                                          (declare (not safe))
                                          (cons __tmp25475 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp25474))))
                            (declare (not safe))
                            (cons _L22042_ __tmp25473))))
                     (declare (not safe))
                     (cons __tmp25489 __tmp25472))))
                (___kont2435424355_
                 (lambda (_L21963_ _L21965_ _L21966_)
                   (let ((__tmp25490
                          (let ((__tmp25491
                                 (let ((__tmp25492
                                        (let ((__tmp25494
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp25493
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L21963_ '()))))
                                          (declare (not safe))
                                          (cons __tmp25494 __tmp25493))))
                                   (declare (not safe))
                                   (cons __tmp25492 '()))))
                            (declare (not safe))
                            (cons _L21965_ __tmp25491))))
                     (declare (not safe))
                     (cons _L21966_ __tmp25490)))))
            (let* ((___match2441424415_
                    (lambda (_e2191421933_
                             _hd2191321937_
                             _tl2191221940_
                             _e2191721943_
                             _hd2191621947_
                             _tl2191521950_
                             _e2192021953_
                             _hd2191921957_
                             _tl2191821960_)
                      (let ((_L21963_ _hd2191921957_)
                            (_L21965_ _hd2191621947_)
                            (_L21966_ _hd2191321937_))
                        (if (and (gx#identifier? _L21965_)
                                 (gx#stx-datum? _L21963_))
                            (___kont2435424355_ _L21963_ _L21965_ _L21966_)
                            (let () (declare (not safe)) (_g2189021926_))))))
                   (___match2439424395_
                    (lambda (_e2189621990_
                             _hd2189521994_
                             _tl2189421997_
                             _e2189922000_
                             _hd2189822004_
                             _tl2189722007_
                             _e2190222010_
                             _hd2190122014_
                             _tl2190022017_
                             _e2190522020_
                             _hd2190422024_
                             _tl2190322027_
                             _e2190822030_
                             _hd2190722034_
                             _tl2190622037_)
                      (let ((_L22040_ _hd2190722034_)
                            (_L22042_ _hd2189822004_))
                        (if (gx#identifier? _L22042_)
                            (___kont2435224353_ _L22040_ _L22042_)
                            (___match2441424415_
                             _e2189621990_
                             _hd2189521994_
                             _tl2189421997_
                             _e2189922000_
                             _hd2189822004_
                             _tl2189722007_
                             _e2190222010_
                             _hd2190122014_
                             _tl2190022017_))))))
              (if (gx#stx-pair? ___stx2434924350_)
                  (let ((_e2189621990_ (gx#syntax-e ___stx2434924350_)))
                    (let ((_tl2189421997_
                           (let () (declare (not safe)) (##cdr _e2189621990_)))
                          (_hd2189521994_
                           (let ()
                             (declare (not safe))
                             (##car _e2189621990_))))
                      (if (gx#stx-pair? _tl2189421997_)
                          (let ((_e2189922000_ (gx#syntax-e _tl2189421997_)))
                            (let ((_tl2189722007_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2189922000_)))
                                  (_hd2189822004_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2189922000_))))
                              (if (gx#stx-pair? _tl2189722007_)
                                  (let ((_e2190222010_
                                         (gx#syntax-e _tl2189722007_)))
                                    (let ((_tl2190022017_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2190222010_)))
                                          (_hd2190122014_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2190222010_))))
                                      (if (gx#stx-pair? _hd2190122014_)
                                          (let ((_e2190522020_
                                                 (gx#syntax-e _hd2190122014_)))
                                            (let ((_tl2190322027_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2190522020_)))
                                                  (_hd2190422024_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2190522020_))))
                                              (if (gx#identifier?
                                                   _hd2190422024_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar$<sugar:3>[1]#_g25495_|
                                                       _hd2190422024_)
                                                      (if (gx#stx-pair?
                                                           _tl2190322027_)
                                                          (let ((_e2190822030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2190322027_)))
                    (let ((_tl2190622037_
                           (let () (declare (not safe)) (##cdr _e2190822030_)))
                          (_hd2190722034_
                           (let ()
                             (declare (not safe))
                             (##car _e2190822030_))))
                      (if (gx#stx-null? _tl2190622037_)
                          (if (gx#stx-null? _tl2190022017_)
                              (___match2439424395_
                               _e2189621990_
                               _hd2189521994_
                               _tl2189421997_
                               _e2189922000_
                               _hd2189822004_
                               _tl2189722007_
                               _e2190222010_
                               _hd2190122014_
                               _tl2190022017_
                               _e2190522020_
                               _hd2190422024_
                               _tl2190322027_
                               _e2190822030_
                               _hd2190722034_
                               _tl2190622037_)
                              (let () (declare (not safe)) (_g2189021926_)))
                          (if (gx#stx-null? _tl2190022017_)
                              (___match2441424415_
                               _e2189621990_
                               _hd2189521994_
                               _tl2189421997_
                               _e2189922000_
                               _hd2189822004_
                               _tl2189722007_
                               _e2190222010_
                               _hd2190122014_
                               _tl2190022017_)
                              (let () (declare (not safe)) (_g2189021926_))))))
                  (if (gx#stx-null? _tl2190022017_)
                      (___match2441424415_
                       _e2189621990_
                       _hd2189521994_
                       _tl2189421997_
                       _e2189922000_
                       _hd2189822004_
                       _tl2189722007_
                       _e2190222010_
                       _hd2190122014_
                       _tl2190022017_)
                      (let () (declare (not safe)) (_g2189021926_))))
              (if (gx#stx-null? _tl2190022017_)
                  (___match2441424415_
                   _e2189621990_
                   _hd2189521994_
                   _tl2189421997_
                   _e2189922000_
                   _hd2189822004_
                   _tl2189722007_
                   _e2190222010_
                   _hd2190122014_
                   _tl2190022017_)
                  (let () (declare (not safe)) (_g2189021926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl2190022017_)
                                                      (___match2441424415_
                                                       _e2189621990_
                                                       _hd2189521994_
                                                       _tl2189421997_
                                                       _e2189922000_
                                                       _hd2189822004_
                                                       _tl2189722007_
                                                       _e2190222010_
                                                       _hd2190122014_
                                                       _tl2190022017_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2189021926_))))))
                                          (if (gx#stx-null? _tl2190022017_)
                                              (___match2441424415_
                                               _e2189621990_
                                               _hd2189521994_
                                               _tl2189421997_
                                               _e2189922000_
                                               _hd2189822004_
                                               _tl2189722007_
                                               _e2190222010_
                                               _hd2190122014_
                                               _tl2190022017_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2189021926_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2189021926_)))))
                          (let () (declare (not safe)) (_g2189021926_)))))
                  (let () (declare (not safe)) (_g2189021926_))))))))))
