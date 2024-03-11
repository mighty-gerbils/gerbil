(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar$<sugar:3>[1]#_g25335_|
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
                   (let ((__tmp25266 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp25260
                          (let ((__tmp25261
                                 (let ((__tmp25262
                                        (let ((__tmp25265
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp25263
                                               (let ((__tmp25264
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
                                                 (cons _L21443_ __tmp25264))))
                                          (declare (not safe))
                                          (cons __tmp25265 __tmp25263))))
                                   (declare (not safe))
                                   (cons __tmp25262 '()))))
                            (declare (not safe))
                            (cons _L21444_ __tmp25261))))
                     (declare (not safe))
                     (cons __tmp25266 __tmp25260))))
                (___kont2429824299_
                 (lambda (_L21355_ _L21357_)
                   (let ((__tmp25269 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp25267
                          (let ((__tmp25268
                                 (let ()
                                   (declare (not safe))
                                   (cons _L21355_ '()))))
                            (declare (not safe))
                            (cons _L21357_ __tmp25268))))
                     (declare (not safe))
                     (cons __tmp25269 __tmp25267)))))
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
                                              (let ((_g25270_
                                                     (gx#syntax-split-splice
                                                      _tl2149121551_
                                                      '0)))
                                                (begin
                                                  (let ((_g25271_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g25270_)
                                                               (##vector-length
                                                                _g25270_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g25271_ 2)))
                (error "Context expects 2 values" _g25271_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target2149421554_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25270_
                                                            0)))
                                                        (_tl2149621557_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25270_
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
                                      (let ((_g25272_
                                             (gx#syntax-split-splice
                                              _tl2148821541_
                                              '0)))
                                        (begin
                                          (let ((_g25273_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25272_)
                                                       (##vector-length
                                                        _g25272_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25273_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25273_)))
                                          (let ((_target2150321584_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25272_ 0)))
                                                (_tl2150521587_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25272_ 1))))
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
                                                              (let ((_g25274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g2167821698_ '0)))
                        (begin
                          (let ((_g25275_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g25274_)
                                       (##vector-length _g25274_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g25275_ 2)))
                                (error "Context expects 2 values" _g25275_)))
                          (let ((_target2168021701_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g25274_ 0)))
                                (_tl2168221704_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g25274_ 1))))
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
                                                (let ((__tmp25278
                                                       (gx#datum->syntax
                                                        '#f
                                                        'begin))
                                                      (__tmp25276
                                                       (let ((__tmp25277
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21763_ '()))))
                 (declare (not safe))
                 (cons _L21791_ __tmp25277))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25278 __tmp25276))
                                                (gx#stx-source _stx21477_)))))
                                         _g2177721788_))))
                                (_g2177521806_
                                 (gx#stx-wrap-source
                                  (let ((__tmp25283
                                         (gx#datum->syntax '#f 'def))
                                        (__tmp25279
                                         (let ((__tmp25281
                                                (let ((__tmp25282
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
                                                  (cons _L21665_ __tmp25282)))
                                               (__tmp25280
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
                                           (cons __tmp25281 __tmp25280))))
                                    (declare (not safe))
                                    (cons __tmp25283 __tmp25279))
                                  (gx#stx-source _stx21477_))))))
                          _g2174921760_))))
                 (_g2174721826_
                  (gx#stx-wrap-source
                   (let ((__tmp25311 (gx#datum->syntax '#f 'defrules))
                         (__tmp25284
                          (let ((__tmp25285
                                 (let ((__tmp25286
                                        (let ((__tmp25299
                                               (let ((__tmp25308
                                                      (let ((__tmp25310
                                                             (gx#datum->syntax
                                                              '#f
                                                              '_))
                                                            (__tmp25309
                                                             (foldr (lambda (_g2183521838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2183621841_)
                              (let ()
                                (declare (not safe))
                                (cons _g2183521838_ _g2183621841_)))
                            '()
                            _L21731_)))
                (declare (not safe))
                (cons __tmp25310 __tmp25309)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp25300
                                                      (let ((__tmp25301
                                                             (let ((__tmp25303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25307 (gx#datum->syntax '#f 'lambda))
                                  (__tmp25304
                                   (let ((__tmp25306
                                          (foldr (lambda (_g2183321844_
                                                          _g2183421847_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2183321844_
                                                           _g2183421847_)))
                                                 '()
                                                 _L21616_))
                                         (__tmp25305
                                          (foldr (lambda (_g2183121850_
                                                          _g2183221853_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2183121850_
                                                           _g2183221853_)))
                                                 '()
                                                 _L21614_)))
                                     (declare (not safe))
                                     (cons __tmp25306 __tmp25305))))
                              (declare (not safe))
                              (cons __tmp25307 __tmp25304)))
                           (__tmp25302
                            (foldr (lambda (_g2182921856_ _g2183021859_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2182921856_ _g2183021859_)))
                                   '()
                                   _L21731_)))
                       (declare (not safe))
                       (cons __tmp25303 __tmp25302))))
                (declare (not safe))
                (cons __tmp25301 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25308 __tmp25300)))
                                              (__tmp25287
                                               (let ((__tmp25288
                                                      (let ((__tmp25298
                                                             (gx#datum->syntax
                                                              '#f
                                                              'ref))
                                                            (__tmp25289
                                                             (let ((__tmp25291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25297
                                   (gx#datum->syntax '#f 'identifier?))
                                  (__tmp25292
                                   (let ((__tmp25293
                                          (let ((__tmp25296
                                                 (gx#datum->syntax
                                                  '#f
                                                  'syntax))
                                                (__tmp25294
                                                 (let ((__tmp25295
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ref)))
                                                   (declare (not safe))
                                                   (cons __tmp25295 '()))))
                                            (declare (not safe))
                                            (cons __tmp25296 __tmp25294))))
                                     (declare (not safe))
                                     (cons __tmp25293 '()))))
                              (declare (not safe))
                              (cons __tmp25297 __tmp25292)))
                           (__tmp25290
                            (let () (declare (not safe)) (cons _L21665_ '()))))
                       (declare (not safe))
                       (cons __tmp25291 __tmp25290))))
                (declare (not safe))
                (cons __tmp25298 __tmp25289))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25288 '()))))
                                          (declare (not safe))
                                          (cons __tmp25299 __tmp25287))))
                                   (declare (not safe))
                                   (cons '() __tmp25286))))
                            (declare (not safe))
                            (cons _L21617_ __tmp25285))))
                     (declare (not safe))
                     (cons __tmp25311 __tmp25284))
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
                   (let ((__tmp25329 (gx#datum->syntax '#f 'defrules))
                         (__tmp25312
                          (let ((__tmp25313
                                 (let ((__tmp25314
                                        (let ((__tmp25315
                                               (let ((__tmp25328
                                                      (gx#datum->syntax
                                                       '#f
                                                       'x))
                                                     (__tmp25316
                                                      (let ((__tmp25321
                                                             (let ((__tmp25327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'identifier?))
                           (__tmp25322
                            (let ((__tmp25323
                                   (let ((__tmp25326
                                          (gx#datum->syntax '#f 'syntax))
                                         (__tmp25324
                                          (let ((__tmp25325
                                                 (gx#datum->syntax '#f 'x)))
                                            (declare (not safe))
                                            (cons __tmp25325 '()))))
                                     (declare (not safe))
                                     (cons __tmp25326 __tmp25324))))
                              (declare (not safe))
                              (cons __tmp25323 '()))))
                       (declare (not safe))
                       (cons __tmp25327 __tmp25322)))
                    (__tmp25317
                     (let ((__tmp25318
                            (let ((__tmp25320 (gx#datum->syntax '#f 'quote))
                                  (__tmp25319
                                   (let ()
                                     (declare (not safe))
                                     (cons _L22040_ '()))))
                              (declare (not safe))
                              (cons __tmp25320 __tmp25319))))
                       (declare (not safe))
                       (cons __tmp25318 '()))))
                (declare (not safe))
                (cons __tmp25321 __tmp25317))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25328
                                                       __tmp25316))))
                                          (declare (not safe))
                                          (cons __tmp25315 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp25314))))
                            (declare (not safe))
                            (cons _L22042_ __tmp25313))))
                     (declare (not safe))
                     (cons __tmp25329 __tmp25312))))
                (___kont2435424355_
                 (lambda (_L21963_ _L21965_ _L21966_)
                   (let ((__tmp25330
                          (let ((__tmp25331
                                 (let ((__tmp25332
                                        (let ((__tmp25334
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp25333
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L21963_ '()))))
                                          (declare (not safe))
                                          (cons __tmp25334 __tmp25333))))
                                   (declare (not safe))
                                   (cons __tmp25332 '()))))
                            (declare (not safe))
                            (cons _L21965_ __tmp25331))))
                     (declare (not safe))
                     (cons _L21966_ __tmp25330)))))
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
                                                       |gerbil/core/sugar$<sugar:3>[1]#_g25335_|
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
