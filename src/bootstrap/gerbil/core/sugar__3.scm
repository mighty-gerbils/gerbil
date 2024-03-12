(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar$<sugar:3>[1]#_g25809_|
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
                   (let ((__tmp25740 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp25734
                          (let ((__tmp25735
                                 (let ((__tmp25736
                                        (let ((__tmp25739
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp25737
                                               (let ((__tmp25738
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
                                                 (cons _L21443_ __tmp25738))))
                                          (declare (not safe))
                                          (cons __tmp25739 __tmp25737))))
                                   (declare (not safe))
                                   (cons __tmp25736 '()))))
                            (declare (not safe))
                            (cons _L21444_ __tmp25735))))
                     (declare (not safe))
                     (cons __tmp25740 __tmp25734))))
                (___kont2429824299_
                 (lambda (_L21355_ _L21357_)
                   (let ((__tmp25743 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp25741
                          (let ((__tmp25742
                                 (let ()
                                   (declare (not safe))
                                   (cons _L21355_ '()))))
                            (declare (not safe))
                            (cons _L21357_ __tmp25742))))
                     (declare (not safe))
                     (cons __tmp25743 __tmp25741)))))
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
                                              (let ((_g25744_
                                                     (gx#syntax-split-splice
                                                      _tl2149121551_
                                                      '0)))
                                                (begin
                                                  (let ((_g25745_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g25744_)
                                                               (##vector-length
                                                                _g25744_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g25745_ 2)))
                (error "Context expects 2 values" _g25745_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target2149421554_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25744_
                                                            0)))
                                                        (_tl2149621557_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25744_
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
                                      (let ((_g25746_
                                             (gx#syntax-split-splice
                                              _tl2148821541_
                                              '0)))
                                        (begin
                                          (let ((_g25747_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25746_)
                                                       (##vector-length
                                                        _g25746_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25747_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25747_)))
                                          (let ((_target2150321584_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25746_ 0)))
                                                (_tl2150521587_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25746_ 1))))
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
                                                              (let ((_g25748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g2167821698_ '0)))
                        (begin
                          (let ((_g25749_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g25748_)
                                       (##vector-length _g25748_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g25749_ 2)))
                                (error "Context expects 2 values" _g25749_)))
                          (let ((_target2168021701_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g25748_ 0)))
                                (_tl2168221704_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g25748_ 1))))
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
                                                (let ((__tmp25752
                                                       (gx#datum->syntax
                                                        '#f
                                                        'begin))
                                                      (__tmp25750
                                                       (let ((__tmp25751
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21763_ '()))))
                 (declare (not safe))
                 (cons _L21791_ __tmp25751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25752 __tmp25750))
                                                (gx#stx-source _stx21477_)))))
                                         _g2177721788_))))
                                (_g2177521806_
                                 (gx#stx-wrap-source
                                  (let ((__tmp25757
                                         (gx#datum->syntax '#f 'def))
                                        (__tmp25753
                                         (let ((__tmp25755
                                                (let ((__tmp25756
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
                                                  (cons _L21665_ __tmp25756)))
                                               (__tmp25754
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
                                           (cons __tmp25755 __tmp25754))))
                                    (declare (not safe))
                                    (cons __tmp25757 __tmp25753))
                                  (gx#stx-source _stx21477_))))))
                          _g2174921760_))))
                 (_g2174721826_
                  (gx#stx-wrap-source
                   (let ((__tmp25785 (gx#datum->syntax '#f 'defrules))
                         (__tmp25758
                          (let ((__tmp25759
                                 (let ((__tmp25760
                                        (let ((__tmp25773
                                               (let ((__tmp25782
                                                      (let ((__tmp25784
                                                             (gx#datum->syntax
                                                              '#f
                                                              '_))
                                                            (__tmp25783
                                                             (foldr (lambda (_g2183521838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2183621841_)
                              (let ()
                                (declare (not safe))
                                (cons _g2183521838_ _g2183621841_)))
                            '()
                            _L21731_)))
                (declare (not safe))
                (cons __tmp25784 __tmp25783)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp25774
                                                      (let ((__tmp25775
                                                             (let ((__tmp25777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25781 (gx#datum->syntax '#f 'lambda))
                                  (__tmp25778
                                   (let ((__tmp25780
                                          (foldr (lambda (_g2183321844_
                                                          _g2183421847_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2183321844_
                                                           _g2183421847_)))
                                                 '()
                                                 _L21616_))
                                         (__tmp25779
                                          (foldr (lambda (_g2183121850_
                                                          _g2183221853_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2183121850_
                                                           _g2183221853_)))
                                                 '()
                                                 _L21614_)))
                                     (declare (not safe))
                                     (cons __tmp25780 __tmp25779))))
                              (declare (not safe))
                              (cons __tmp25781 __tmp25778)))
                           (__tmp25776
                            (foldr (lambda (_g2182921856_ _g2183021859_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2182921856_ _g2183021859_)))
                                   '()
                                   _L21731_)))
                       (declare (not safe))
                       (cons __tmp25777 __tmp25776))))
                (declare (not safe))
                (cons __tmp25775 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25782 __tmp25774)))
                                              (__tmp25761
                                               (let ((__tmp25762
                                                      (let ((__tmp25772
                                                             (gx#datum->syntax
                                                              '#f
                                                              'ref))
                                                            (__tmp25763
                                                             (let ((__tmp25765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25771
                                   (gx#datum->syntax '#f 'identifier?))
                                  (__tmp25766
                                   (let ((__tmp25767
                                          (let ((__tmp25770
                                                 (gx#datum->syntax
                                                  '#f
                                                  'syntax))
                                                (__tmp25768
                                                 (let ((__tmp25769
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ref)))
                                                   (declare (not safe))
                                                   (cons __tmp25769 '()))))
                                            (declare (not safe))
                                            (cons __tmp25770 __tmp25768))))
                                     (declare (not safe))
                                     (cons __tmp25767 '()))))
                              (declare (not safe))
                              (cons __tmp25771 __tmp25766)))
                           (__tmp25764
                            (let () (declare (not safe)) (cons _L21665_ '()))))
                       (declare (not safe))
                       (cons __tmp25765 __tmp25764))))
                (declare (not safe))
                (cons __tmp25772 __tmp25763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25762 '()))))
                                          (declare (not safe))
                                          (cons __tmp25773 __tmp25761))))
                                   (declare (not safe))
                                   (cons '() __tmp25760))))
                            (declare (not safe))
                            (cons _L21617_ __tmp25759))))
                     (declare (not safe))
                     (cons __tmp25785 __tmp25758))
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
                   (let ((__tmp25803 (gx#datum->syntax '#f 'defrules))
                         (__tmp25786
                          (let ((__tmp25787
                                 (let ((__tmp25788
                                        (let ((__tmp25789
                                               (let ((__tmp25802
                                                      (gx#datum->syntax
                                                       '#f
                                                       'x))
                                                     (__tmp25790
                                                      (let ((__tmp25795
                                                             (let ((__tmp25801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'identifier?))
                           (__tmp25796
                            (let ((__tmp25797
                                   (let ((__tmp25800
                                          (gx#datum->syntax '#f 'syntax))
                                         (__tmp25798
                                          (let ((__tmp25799
                                                 (gx#datum->syntax '#f 'x)))
                                            (declare (not safe))
                                            (cons __tmp25799 '()))))
                                     (declare (not safe))
                                     (cons __tmp25800 __tmp25798))))
                              (declare (not safe))
                              (cons __tmp25797 '()))))
                       (declare (not safe))
                       (cons __tmp25801 __tmp25796)))
                    (__tmp25791
                     (let ((__tmp25792
                            (let ((__tmp25794 (gx#datum->syntax '#f 'quote))
                                  (__tmp25793
                                   (let ()
                                     (declare (not safe))
                                     (cons _L22040_ '()))))
                              (declare (not safe))
                              (cons __tmp25794 __tmp25793))))
                       (declare (not safe))
                       (cons __tmp25792 '()))))
                (declare (not safe))
                (cons __tmp25795 __tmp25791))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25802
                                                       __tmp25790))))
                                          (declare (not safe))
                                          (cons __tmp25789 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp25788))))
                            (declare (not safe))
                            (cons _L22042_ __tmp25787))))
                     (declare (not safe))
                     (cons __tmp25803 __tmp25786))))
                (___kont2435424355_
                 (lambda (_L21963_ _L21965_ _L21966_)
                   (let ((__tmp25804
                          (let ((__tmp25805
                                 (let ((__tmp25806
                                        (let ((__tmp25808
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp25807
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L21963_ '()))))
                                          (declare (not safe))
                                          (cons __tmp25808 __tmp25807))))
                                   (declare (not safe))
                                   (cons __tmp25806 '()))))
                            (declare (not safe))
                            (cons _L21965_ __tmp25805))))
                     (declare (not safe))
                     (cons _L21966_ __tmp25804)))))
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
                                                       |gerbil/core/sugar$<sugar:3>[1]#_g25809_|
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
