(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar$<sugar:3>[1]#_g25688_|
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
                   (let ((__tmp25619 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp25613
                          (let ((__tmp25614
                                 (let ((__tmp25615
                                        (let ((__tmp25618
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp25616
                                               (let ((__tmp25617
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
                                                 (cons _L21443_ __tmp25617))))
                                          (declare (not safe))
                                          (cons __tmp25618 __tmp25616))))
                                   (declare (not safe))
                                   (cons __tmp25615 '()))))
                            (declare (not safe))
                            (cons _L21444_ __tmp25614))))
                     (declare (not safe))
                     (cons __tmp25619 __tmp25613))))
                (___kont2429824299_
                 (lambda (_L21355_ _L21357_)
                   (let ((__tmp25622 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp25620
                          (let ((__tmp25621
                                 (let ()
                                   (declare (not safe))
                                   (cons _L21355_ '()))))
                            (declare (not safe))
                            (cons _L21357_ __tmp25621))))
                     (declare (not safe))
                     (cons __tmp25622 __tmp25620)))))
            (let* ((___match2434624347_
                    (lambda (_e2130421325_
                             _hd2130521329_
                             _tl2130621332_
                             _e2130721335_
                             _hd2130821339_
                             _tl2130921342_
                             _e2131021345_
                             _hd2131121349_
                             _tl2131221352_)
                      (let ((_L21355_ _hd2131121349_)
                            (_L21357_ _hd2130821339_))
                        (if (gx#identifier? _L21357_)
                            (___kont2429824299_ _L21355_ _L21357_)
                            (let () (declare (not safe)) (_g2127921318_))))))
                   (___match2433824339_
                    (lambda (_e2130421325_
                             _hd2130521329_
                             _tl2130621332_
                             _e2130721335_
                             _hd2130821339_
                             _tl2130921342_)
                      (if (gx#stx-pair? _tl2130921342_)
                          (let ((_e2131021345_ (gx#syntax-e _tl2130921342_)))
                            (let ((_tl2131221352_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2131021345_)))
                                  (_hd2131121349_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2131021345_))))
                              (if (gx#stx-null? _tl2131221352_)
                                  (___match2434624347_
                                   _e2130421325_
                                   _hd2130521329_
                                   _tl2130621332_
                                   _e2130721335_
                                   _hd2130821339_
                                   _tl2130921342_
                                   _e2131021345_
                                   _hd2131121349_
                                   _tl2131221352_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2127921318_)))))
                          (let () (declare (not safe)) (_g2127921318_)))))
                   (___match2432624327_
                    (lambda (_e2128421381_
                             _hd2128521385_
                             _tl2128621388_
                             _e2128721391_
                             _hd2128821395_
                             _tl2128921398_
                             _e2129021401_
                             _hd2129121405_
                             _tl2129221408_
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
                                              (_L21443_ _tl2129221408_)
                                              (_L21444_ _hd2129121405_))
                                          (if (gx#identifier? _L21444_)
                                              (___kont2429424295_
                                               _L21441_
                                               _L21443_
                                               _L21444_)
                                              (___match2433824339_
                                               _e2128421381_
                                               _hd2128521385_
                                               _tl2128621388_
                                               _e2128721391_
                                               _hd2128821395_
                                               _tl2128921398_))))))))
                        (_loop2129621417_ _target2129321411_ '())))))
              (if (gx#stx-pair? ___stx2429124292_)
                  (let ((_e2128421381_ (gx#syntax-e ___stx2429124292_)))
                    (let ((_tl2128621388_
                           (let () (declare (not safe)) (##cdr _e2128421381_)))
                          (_hd2128521385_
                           (let ()
                             (declare (not safe))
                             (##car _e2128421381_))))
                      (if (gx#stx-pair? _tl2128621388_)
                          (let ((_e2128721391_ (gx#syntax-e _tl2128621388_)))
                            (let ((_tl2128921398_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2128721391_)))
                                  (_hd2128821395_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2128721391_))))
                              (if (gx#stx-pair? _hd2128821395_)
                                  (let ((_e2129021401_
                                         (gx#syntax-e _hd2128821395_)))
                                    (let ((_tl2129221408_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2129021401_)))
                                          (_hd2129121405_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2129021401_))))
                                      (if (gx#stx-pair/null? _tl2128921398_)
                                          (let ((___splice2429624297_
                                                 (gx#syntax-split-splice
                                                  _tl2128921398_
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
                                                   _e2128421381_
                                                   _hd2128521385_
                                                   _tl2128621388_
                                                   _e2128721391_
                                                   _hd2128821395_
                                                   _tl2128921398_
                                                   _e2129021401_
                                                   _hd2129121405_
                                                   _tl2129221408_
                                                   ___splice2429624297_
                                                   _target2129321411_
                                                   _tl2129521414_)
                                                  (if (gx#stx-pair?
                                                       _tl2128921398_)
                                                      (let ((_e2131021345_
                                                             (gx#syntax-e
                                                              _tl2128921398_)))
                                                        (let ((_tl2131221352_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2131021345_)))
                      (_hd2131121349_
                       (let () (declare (not safe)) (##car _e2131021345_))))
                  (if (gx#stx-null? _tl2131221352_)
                      (___match2434624347_
                       _e2128421381_
                       _hd2128521385_
                       _tl2128621388_
                       _e2128721391_
                       _hd2128821395_
                       _tl2128921398_
                       _e2131021345_
                       _hd2131121349_
                       _tl2131221352_)
                      (let () (declare (not safe)) (_g2127921318_)))))
              (let () (declare (not safe)) (_g2127921318_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl2128921398_)
                                              (let ((_e2131021345_
                                                     (gx#syntax-e
                                                      _tl2128921398_)))
                                                (let ((_tl2131221352_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2131021345_)))
                                                      (_hd2131121349_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2131021345_))))
                                                  (if (gx#stx-null?
                                                       _tl2131221352_)
                                                      (___match2434624347_
                                                       _e2128421381_
                                                       _hd2128521385_
                                                       _tl2128621388_
                                                       _e2128721391_
                                                       _hd2128821395_
                                                       _tl2128921398_
                                                       _e2131021345_
                                                       _hd2131121349_
                                                       _tl2131221352_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2127921318_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2127921318_))))))
                                  (if (gx#stx-pair? _tl2128921398_)
                                      (let ((_e2131021345_
                                             (gx#syntax-e _tl2128921398_)))
                                        (let ((_tl2131221352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2131021345_)))
                                              (_hd2131121349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2131021345_))))
                                          (if (gx#stx-null? _tl2131221352_)
                                              (___match2434624347_
                                               _e2128421381_
                                               _hd2128521385_
                                               _tl2128621388_
                                               _e2128721391_
                                               _hd2128821395_
                                               _tl2128921398_
                                               _e2131021345_
                                               _hd2131121349_
                                               _tl2131221352_)
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
                      (let ((_e2148521524_ (gx#syntax-e _g2148121521_)))
                        (let ((_hd2148621528_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2148521524_)))
                              (_tl2148721531_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2148521524_))))
                          (if (gx#stx-pair? _tl2148721531_)
                              (let ((_e2148821534_
                                     (gx#syntax-e _tl2148721531_)))
                                (let ((_hd2148921538_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2148821534_)))
                                      (_tl2149021541_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2148821534_))))
                                  (if (gx#stx-pair? _hd2148921538_)
                                      (let ((_e2149121544_
                                             (gx#syntax-e _hd2148921538_)))
                                        (let ((_hd2149221548_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2149121544_)))
                                              (_tl2149321551_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2149121544_))))
                                          (if (gx#stx-pair/null?
                                               _tl2149321551_)
                                              (let ((_g25623_
                                                     (gx#syntax-split-splice
                                                      _tl2149321551_
                                                      '0)))
                                                (begin
                                                  (let ((_g25624_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g25623_)
                                                               (##vector-length
                                                                _g25623_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g25624_ 2)))
                (error "Context expects 2 values" _g25624_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target2149421554_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25623_
                                                            0)))
                                                        (_tl2149621557_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25623_
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
                                  (if (gx#stx-pair/null? _tl2149021541_)
                                      (let ((_g25625_
                                             (gx#syntax-split-splice
                                              _tl2149021541_
                                              '0)))
                                        (begin
                                          (let ((_g25626_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25625_)
                                                       (##vector-length
                                                        _g25625_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25626_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25626_)))
                                          (let ((_target2150321584_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25625_ 0)))
                                                (_tl2150521587_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25625_ 1))))
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
                                                              (let ((_g25627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g2167821698_ '0)))
                        (begin
                          (let ((_g25628_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g25627_)
                                       (##vector-length _g25627_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g25628_ 2)))
                                (error "Context expects 2 values" _g25628_)))
                          (let ((_target2168021701_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g25627_ 0)))
                                (_tl2168221704_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g25627_ 1))))
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
                                                (let ((__tmp25631
                                                       (gx#datum->syntax
                                                        '#f
                                                        'begin))
                                                      (__tmp25629
                                                       (let ((__tmp25630
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21763_ '()))))
                 (declare (not safe))
                 (cons _L21791_ __tmp25630))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25631 __tmp25629))
                                                (gx#stx-source _stx21477_)))))
                                         _g2177721788_))))
                                (_g2177521806_
                                 (gx#stx-wrap-source
                                  (let ((__tmp25636
                                         (gx#datum->syntax '#f 'def))
                                        (__tmp25632
                                         (let ((__tmp25634
                                                (let ((__tmp25635
                                                       (foldr (lambda (_g2180921814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2181021817_)
                        (let ()
                          (declare (not safe))
                          (cons _g2180921814_ _g2181021817_)))
                      '()
                      _L21616_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L21665_ __tmp25635)))
                                               (__tmp25633
                                                (foldr (lambda (_g2181121820_
                                                                _g2181221823_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g2181121820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2181221823_)))
               '()
               _L21614_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (cons __tmp25634 __tmp25633))))
                                    (declare (not safe))
                                    (cons __tmp25636 __tmp25632))
                                  (gx#stx-source _stx21477_))))))
                          _g2174921760_))))
                 (_g2174721826_
                  (gx#stx-wrap-source
                   (let ((__tmp25664 (gx#datum->syntax '#f 'defrules))
                         (__tmp25637
                          (let ((__tmp25638
                                 (let ((__tmp25639
                                        (let ((__tmp25652
                                               (let ((__tmp25661
                                                      (let ((__tmp25663
                                                             (gx#datum->syntax
                                                              '#f
                                                              '_))
                                                            (__tmp25662
                                                             (foldr (lambda (_g2182921838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2183021841_)
                              (let ()
                                (declare (not safe))
                                (cons _g2182921838_ _g2183021841_)))
                            '()
                            _L21731_)))
                (declare (not safe))
                (cons __tmp25663 __tmp25662)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp25653
                                                      (let ((__tmp25654
                                                             (let ((__tmp25656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25660 (gx#datum->syntax '#f 'lambda))
                                  (__tmp25657
                                   (let ((__tmp25659
                                          (foldr (lambda (_g2183121844_
                                                          _g2183221847_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2183121844_
                                                           _g2183221847_)))
                                                 '()
                                                 _L21616_))
                                         (__tmp25658
                                          (foldr (lambda (_g2183321850_
                                                          _g2183421853_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2183321850_
                                                           _g2183421853_)))
                                                 '()
                                                 _L21614_)))
                                     (declare (not safe))
                                     (cons __tmp25659 __tmp25658))))
                              (declare (not safe))
                              (cons __tmp25660 __tmp25657)))
                           (__tmp25655
                            (foldr (lambda (_g2183521856_ _g2183621859_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2183521856_ _g2183621859_)))
                                   '()
                                   _L21731_)))
                       (declare (not safe))
                       (cons __tmp25656 __tmp25655))))
                (declare (not safe))
                (cons __tmp25654 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25661 __tmp25653)))
                                              (__tmp25640
                                               (let ((__tmp25641
                                                      (let ((__tmp25651
                                                             (gx#datum->syntax
                                                              '#f
                                                              'ref))
                                                            (__tmp25642
                                                             (let ((__tmp25644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25650
                                   (gx#datum->syntax '#f 'identifier?))
                                  (__tmp25645
                                   (let ((__tmp25646
                                          (let ((__tmp25649
                                                 (gx#datum->syntax
                                                  '#f
                                                  'syntax))
                                                (__tmp25647
                                                 (let ((__tmp25648
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ref)))
                                                   (declare (not safe))
                                                   (cons __tmp25648 '()))))
                                            (declare (not safe))
                                            (cons __tmp25649 __tmp25647))))
                                     (declare (not safe))
                                     (cons __tmp25646 '()))))
                              (declare (not safe))
                              (cons __tmp25650 __tmp25645)))
                           (__tmp25643
                            (let () (declare (not safe)) (cons _L21665_ '()))))
                       (declare (not safe))
                       (cons __tmp25644 __tmp25643))))
                (declare (not safe))
                (cons __tmp25651 __tmp25642))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25641 '()))))
                                          (declare (not safe))
                                          (cons __tmp25652 __tmp25640))))
                                   (declare (not safe))
                                   (cons '() __tmp25639))))
                            (declare (not safe))
                            (cons _L21617_ __tmp25638))))
                     (declare (not safe))
                     (cons __tmp25664 __tmp25637))
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
                   (let ((__tmp25682 (gx#datum->syntax '#f 'defrules))
                         (__tmp25665
                          (let ((__tmp25666
                                 (let ((__tmp25667
                                        (let ((__tmp25668
                                               (let ((__tmp25681
                                                      (gx#datum->syntax
                                                       '#f
                                                       'x))
                                                     (__tmp25669
                                                      (let ((__tmp25674
                                                             (let ((__tmp25680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'identifier?))
                           (__tmp25675
                            (let ((__tmp25676
                                   (let ((__tmp25679
                                          (gx#datum->syntax '#f 'syntax))
                                         (__tmp25677
                                          (let ((__tmp25678
                                                 (gx#datum->syntax '#f 'x)))
                                            (declare (not safe))
                                            (cons __tmp25678 '()))))
                                     (declare (not safe))
                                     (cons __tmp25679 __tmp25677))))
                              (declare (not safe))
                              (cons __tmp25676 '()))))
                       (declare (not safe))
                       (cons __tmp25680 __tmp25675)))
                    (__tmp25670
                     (let ((__tmp25671
                            (let ((__tmp25673 (gx#datum->syntax '#f 'quote))
                                  (__tmp25672
                                   (let ()
                                     (declare (not safe))
                                     (cons _L22040_ '()))))
                              (declare (not safe))
                              (cons __tmp25673 __tmp25672))))
                       (declare (not safe))
                       (cons __tmp25671 '()))))
                (declare (not safe))
                (cons __tmp25674 __tmp25670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25681
                                                       __tmp25669))))
                                          (declare (not safe))
                                          (cons __tmp25668 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp25667))))
                            (declare (not safe))
                            (cons _L22042_ __tmp25666))))
                     (declare (not safe))
                     (cons __tmp25682 __tmp25665))))
                (___kont2435424355_
                 (lambda (_L21963_ _L21965_ _L21966_)
                   (let ((__tmp25683
                          (let ((__tmp25684
                                 (let ((__tmp25685
                                        (let ((__tmp25687
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp25686
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L21963_ '()))))
                                          (declare (not safe))
                                          (cons __tmp25687 __tmp25686))))
                                   (declare (not safe))
                                   (cons __tmp25685 '()))))
                            (declare (not safe))
                            (cons _L21965_ __tmp25684))))
                     (declare (not safe))
                     (cons _L21966_ __tmp25683)))))
            (let* ((___match2441424415_
                    (lambda (_e2191221933_
                             _hd2191321937_
                             _tl2191421940_
                             _e2191521943_
                             _hd2191621947_
                             _tl2191721950_
                             _e2191821953_
                             _hd2191921957_
                             _tl2192021960_)
                      (let ((_L21963_ _hd2191921957_)
                            (_L21965_ _hd2191621947_)
                            (_L21966_ _hd2191321937_))
                        (if (and (gx#identifier? _L21965_)
                                 (gx#stx-datum? _L21963_))
                            (___kont2435424355_ _L21963_ _L21965_ _L21966_)
                            (let () (declare (not safe)) (_g2189021926_))))))
                   (___match2439424395_
                    (lambda (_e2189421990_
                             _hd2189521994_
                             _tl2189621997_
                             _e2189722000_
                             _hd2189822004_
                             _tl2189922007_
                             _e2190022010_
                             _hd2190122014_
                             _tl2190222017_
                             _e2190322020_
                             _hd2190422024_
                             _tl2190522027_
                             _e2190622030_
                             _hd2190722034_
                             _tl2190822037_)
                      (let ((_L22040_ _hd2190722034_)
                            (_L22042_ _hd2189822004_))
                        (if (gx#identifier? _L22042_)
                            (___kont2435224353_ _L22040_ _L22042_)
                            (___match2441424415_
                             _e2189421990_
                             _hd2189521994_
                             _tl2189621997_
                             _e2189722000_
                             _hd2189822004_
                             _tl2189922007_
                             _e2190022010_
                             _hd2190122014_
                             _tl2190222017_))))))
              (if (gx#stx-pair? ___stx2434924350_)
                  (let ((_e2189421990_ (gx#syntax-e ___stx2434924350_)))
                    (let ((_tl2189621997_
                           (let () (declare (not safe)) (##cdr _e2189421990_)))
                          (_hd2189521994_
                           (let ()
                             (declare (not safe))
                             (##car _e2189421990_))))
                      (if (gx#stx-pair? _tl2189621997_)
                          (let ((_e2189722000_ (gx#syntax-e _tl2189621997_)))
                            (let ((_tl2189922007_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2189722000_)))
                                  (_hd2189822004_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2189722000_))))
                              (if (gx#stx-pair? _tl2189922007_)
                                  (let ((_e2190022010_
                                         (gx#syntax-e _tl2189922007_)))
                                    (let ((_tl2190222017_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2190022010_)))
                                          (_hd2190122014_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2190022010_))))
                                      (if (gx#stx-pair? _hd2190122014_)
                                          (let ((_e2190322020_
                                                 (gx#syntax-e _hd2190122014_)))
                                            (let ((_tl2190522027_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2190322020_)))
                                                  (_hd2190422024_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2190322020_))))
                                              (if (gx#identifier?
                                                   _hd2190422024_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar$<sugar:3>[1]#_g25688_|
                                                       _hd2190422024_)
                                                      (if (gx#stx-pair?
                                                           _tl2190522027_)
                                                          (let ((_e2190622030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2190522027_)))
                    (let ((_tl2190822037_
                           (let () (declare (not safe)) (##cdr _e2190622030_)))
                          (_hd2190722034_
                           (let ()
                             (declare (not safe))
                             (##car _e2190622030_))))
                      (if (gx#stx-null? _tl2190822037_)
                          (if (gx#stx-null? _tl2190222017_)
                              (___match2439424395_
                               _e2189421990_
                               _hd2189521994_
                               _tl2189621997_
                               _e2189722000_
                               _hd2189822004_
                               _tl2189922007_
                               _e2190022010_
                               _hd2190122014_
                               _tl2190222017_
                               _e2190322020_
                               _hd2190422024_
                               _tl2190522027_
                               _e2190622030_
                               _hd2190722034_
                               _tl2190822037_)
                              (let () (declare (not safe)) (_g2189021926_)))
                          (if (gx#stx-null? _tl2190222017_)
                              (___match2441424415_
                               _e2189421990_
                               _hd2189521994_
                               _tl2189621997_
                               _e2189722000_
                               _hd2189822004_
                               _tl2189922007_
                               _e2190022010_
                               _hd2190122014_
                               _tl2190222017_)
                              (let () (declare (not safe)) (_g2189021926_))))))
                  (if (gx#stx-null? _tl2190222017_)
                      (___match2441424415_
                       _e2189421990_
                       _hd2189521994_
                       _tl2189621997_
                       _e2189722000_
                       _hd2189822004_
                       _tl2189922007_
                       _e2190022010_
                       _hd2190122014_
                       _tl2190222017_)
                      (let () (declare (not safe)) (_g2189021926_))))
              (if (gx#stx-null? _tl2190222017_)
                  (___match2441424415_
                   _e2189421990_
                   _hd2189521994_
                   _tl2189621997_
                   _e2189722000_
                   _hd2189822004_
                   _tl2189922007_
                   _e2190022010_
                   _hd2190122014_
                   _tl2190222017_)
                  (let () (declare (not safe)) (_g2189021926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl2190222017_)
                                                      (___match2441424415_
                                                       _e2189421990_
                                                       _hd2189521994_
                                                       _tl2189621997_
                                                       _e2189722000_
                                                       _hd2189822004_
                                                       _tl2189922007_
                                                       _e2190022010_
                                                       _hd2190122014_
                                                       _tl2190222017_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2189021926_))))))
                                          (if (gx#stx-null? _tl2190222017_)
                                              (___match2441424415_
                                               _e2189421990_
                                               _hd2189521994_
                                               _tl2189621997_
                                               _e2189722000_
                                               _hd2189822004_
                                               _tl2189922007_
                                               _e2190022010_
                                               _hd2190122014_
                                               _tl2190222017_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2189021926_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2189021926_)))))
                          (let () (declare (not safe)) (_g2189021926_)))))
                  (let () (declare (not safe)) (_g2189021926_))))))))))
