(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar$<sugar:3>[1]#_g25738_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar$<sugar:3>[:0:]#defsyntax|
      (lambda (_$stx21275_)
        (let* ((___stx2429224293_ _$stx21275_)
               (_g2128021319_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2429224293_))))
          (let ((___kont2429524296_
                 (lambda (_L21442_ _L21444_ _L21445_)
                   (let ((__tmp25669 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp25663
                          (let ((__tmp25664
                                 (let ((__tmp25665
                                        (let ((__tmp25668
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp25666
                                               (let ((__tmp25667
                                                      (foldr (lambda (_g2146421467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2146521470_)
                       (let ()
                         (declare (not safe))
                         (cons _g2146421467_ _g2146521470_)))
                     '()
                     _L21442_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L21444_ __tmp25667))))
                                          (declare (not safe))
                                          (cons __tmp25668 __tmp25666))))
                                   (declare (not safe))
                                   (cons __tmp25665 '()))))
                            (declare (not safe))
                            (cons _L21445_ __tmp25664))))
                     (declare (not safe))
                     (cons __tmp25669 __tmp25663))))
                (___kont2429924300_
                 (lambda (_L21356_ _L21358_)
                   (let ((__tmp25672 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp25670
                          (let ((__tmp25671
                                 (let ()
                                   (declare (not safe))
                                   (cons _L21356_ '()))))
                            (declare (not safe))
                            (cons _L21358_ __tmp25671))))
                     (declare (not safe))
                     (cons __tmp25672 __tmp25670)))))
            (let* ((___match2434724348_
                    (lambda (_e2130521326_
                             _hd2130621330_
                             _tl2130721333_
                             _e2130821336_
                             _hd2130921340_
                             _tl2131021343_
                             _e2131121346_
                             _hd2131221350_
                             _tl2131321353_)
                      (let ((_L21356_ _hd2131221350_)
                            (_L21358_ _hd2130921340_))
                        (if (gx#identifier? _L21358_)
                            (___kont2429924300_ _L21356_ _L21358_)
                            (let () (declare (not safe)) (_g2128021319_))))))
                   (___match2433924340_
                    (lambda (_e2130521326_
                             _hd2130621330_
                             _tl2130721333_
                             _e2130821336_
                             _hd2130921340_
                             _tl2131021343_)
                      (if (gx#stx-pair? _tl2131021343_)
                          (let ((_e2131121346_ (gx#syntax-e _tl2131021343_)))
                            (let ((_tl2131321353_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2131121346_)))
                                  (_hd2131221350_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2131121346_))))
                              (if (gx#stx-null? _tl2131321353_)
                                  (___match2434724348_
                                   _e2130521326_
                                   _hd2130621330_
                                   _tl2130721333_
                                   _e2130821336_
                                   _hd2130921340_
                                   _tl2131021343_
                                   _e2131121346_
                                   _hd2131221350_
                                   _tl2131321353_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2128021319_)))))
                          (let () (declare (not safe)) (_g2128021319_)))))
                   (___match2432724328_
                    (lambda (_e2128521382_
                             _hd2128621386_
                             _tl2128721389_
                             _e2128821392_
                             _hd2128921396_
                             _tl2129021399_
                             _e2129121402_
                             _hd2129221406_
                             _tl2129321409_
                             ___splice2429724298_
                             _target2129421412_
                             _tl2129621415_)
                      (letrec ((_loop2129721418_
                                (lambda (_hd2129521422_ _body2130121425_)
                                  (if (gx#stx-pair? _hd2129521422_)
                                      (let ((_e2129821428_
                                             (gx#syntax-e _hd2129521422_)))
                                        (let ((_lp-tl2130021435_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2129821428_)))
                                              (_lp-hd2129921432_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2129821428_))))
                                          (_loop2129721418_
                                           _lp-tl2130021435_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd2129921432_
                                                   _body2130121425_)))))
                                      (let ((_body2130221438_
                                             (reverse _body2130121425_)))
                                        (let ((_L21442_ _body2130221438_)
                                              (_L21444_ _tl2129321409_)
                                              (_L21445_ _hd2129221406_))
                                          (if (gx#identifier? _L21445_)
                                              (___kont2429524296_
                                               _L21442_
                                               _L21444_
                                               _L21445_)
                                              (___match2433924340_
                                               _e2128521382_
                                               _hd2128621386_
                                               _tl2128721389_
                                               _e2128821392_
                                               _hd2128921396_
                                               _tl2129021399_))))))))
                        (_loop2129721418_ _target2129421412_ '())))))
              (if (gx#stx-pair? ___stx2429224293_)
                  (let ((_e2128521382_ (gx#syntax-e ___stx2429224293_)))
                    (let ((_tl2128721389_
                           (let () (declare (not safe)) (##cdr _e2128521382_)))
                          (_hd2128621386_
                           (let ()
                             (declare (not safe))
                             (##car _e2128521382_))))
                      (if (gx#stx-pair? _tl2128721389_)
                          (let ((_e2128821392_ (gx#syntax-e _tl2128721389_)))
                            (let ((_tl2129021399_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2128821392_)))
                                  (_hd2128921396_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2128821392_))))
                              (if (gx#stx-pair? _hd2128921396_)
                                  (let ((_e2129121402_
                                         (gx#syntax-e _hd2128921396_)))
                                    (let ((_tl2129321409_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2129121402_)))
                                          (_hd2129221406_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2129121402_))))
                                      (if (gx#stx-pair/null? _tl2129021399_)
                                          (let ((___splice2429724298_
                                                 (gx#syntax-split-splice
                                                  _tl2129021399_
                                                  '0)))
                                            (let ((_tl2129621415_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2429724298_
                                                      '1)))
                                                  (_target2129421412_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2429724298_
                                                      '0))))
                                              (if (gx#stx-null? _tl2129621415_)
                                                  (___match2432724328_
                                                   _e2128521382_
                                                   _hd2128621386_
                                                   _tl2128721389_
                                                   _e2128821392_
                                                   _hd2128921396_
                                                   _tl2129021399_
                                                   _e2129121402_
                                                   _hd2129221406_
                                                   _tl2129321409_
                                                   ___splice2429724298_
                                                   _target2129421412_
                                                   _tl2129621415_)
                                                  (if (gx#stx-pair?
                                                       _tl2129021399_)
                                                      (let ((_e2131121346_
                                                             (gx#syntax-e
                                                              _tl2129021399_)))
                                                        (let ((_tl2131321353_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2131121346_)))
                      (_hd2131221350_
                       (let () (declare (not safe)) (##car _e2131121346_))))
                  (if (gx#stx-null? _tl2131321353_)
                      (___match2434724348_
                       _e2128521382_
                       _hd2128621386_
                       _tl2128721389_
                       _e2128821392_
                       _hd2128921396_
                       _tl2129021399_
                       _e2131121346_
                       _hd2131221350_
                       _tl2131321353_)
                      (let () (declare (not safe)) (_g2128021319_)))))
              (let () (declare (not safe)) (_g2128021319_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl2129021399_)
                                              (let ((_e2131121346_
                                                     (gx#syntax-e
                                                      _tl2129021399_)))
                                                (let ((_tl2131321353_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2131121346_)))
                                                      (_hd2131221350_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2131121346_))))
                                                  (if (gx#stx-null?
                                                       _tl2131321353_)
                                                      (___match2434724348_
                                                       _e2128521382_
                                                       _hd2128621386_
                                                       _tl2128721389_
                                                       _e2128821392_
                                                       _hd2128921396_
                                                       _tl2129021399_
                                                       _e2131121346_
                                                       _hd2131221350_
                                                       _tl2131321353_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2128021319_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2128021319_))))))
                                  (if (gx#stx-pair? _tl2129021399_)
                                      (let ((_e2131121346_
                                             (gx#syntax-e _tl2129021399_)))
                                        (let ((_tl2131321353_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2131121346_)))
                                              (_hd2131221350_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2131121346_))))
                                          (if (gx#stx-null? _tl2131321353_)
                                              (___match2434724348_
                                               _e2128521382_
                                               _hd2128621386_
                                               _tl2128721389_
                                               _e2128821392_
                                               _hd2128921396_
                                               _tl2129021399_
                                               _e2131121346_
                                               _hd2131221350_
                                               _tl2131321353_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2128021319_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2128021319_))))))
                          (let () (declare (not safe)) (_g2128021319_)))))
                  (let () (declare (not safe)) (_g2128021319_))))))))
    (define |gerbil/core/sugar$<sugar:3>[:0:]#definline|
      (lambda (_stx21478_)
        (let* ((_g2148121518_
                (lambda (_g2148221514_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2148221514_)))
               (_g2148021879_
                (lambda (_g2148221522_)
                  (if (gx#stx-pair? _g2148221522_)
                      (let ((_e2148621525_ (gx#syntax-e _g2148221522_)))
                        (let ((_hd2148721529_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2148621525_)))
                              (_tl2148821532_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2148621525_))))
                          (if (gx#stx-pair? _tl2148821532_)
                              (let ((_e2148921535_
                                     (gx#syntax-e _tl2148821532_)))
                                (let ((_hd2149021539_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2148921535_)))
                                      (_tl2149121542_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2148921535_))))
                                  (if (gx#stx-pair? _hd2149021539_)
                                      (let ((_e2149221545_
                                             (gx#syntax-e _hd2149021539_)))
                                        (let ((_hd2149321549_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2149221545_)))
                                              (_tl2149421552_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2149221545_))))
                                          (if (gx#stx-pair/null?
                                               _tl2149421552_)
                                              (let ((_g25673_
                                                     (gx#syntax-split-splice
                                                      _tl2149421552_
                                                      '0)))
                                                (begin
                                                  (let ((_g25674_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g25673_)
                                                               (##vector-length
                                                                _g25673_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g25674_ 2)))
                (error "Context expects 2 values" _g25674_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target2149521555_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25673_
                                                            0)))
                                                        (_tl2149721558_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25673_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl2149721558_)
                                                        (letrec ((_loop2149821561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2149621565_ _arg2150221568_)
                            (if (gx#stx-pair? _hd2149621565_)
                                (let ((_e2149921571_
                                       (gx#syntax-e _hd2149621565_)))
                                  (let ((_lp-hd2150021575_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2149921571_)))
                                        (_lp-tl2150121578_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2149921571_))))
                                    (_loop2149821561_
                                     _lp-tl2150121578_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd2150021575_
                                             _arg2150221568_)))))
                                (let ((_arg2150321581_
                                       (reverse _arg2150221568_)))
                                  (if (gx#stx-pair/null? _tl2149121542_)
                                      (let ((_g25675_
                                             (gx#syntax-split-splice
                                              _tl2149121542_
                                              '0)))
                                        (begin
                                          (let ((_g25676_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25675_)
                                                       (##vector-length
                                                        _g25675_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25676_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25676_)))
                                          (let ((_target2150421585_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25675_ 0)))
                                                (_tl2150621588_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25675_ 1))))
                                            (if (gx#stx-null? _tl2150621588_)
                                                (letrec ((_loop2150721591_
                                                          (lambda (_hd2150521595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2151121598_)
                    (if (gx#stx-pair? _hd2150521595_)
                        (let ((_e2150821601_ (gx#syntax-e _hd2150521595_)))
                          (let ((_lp-hd2150921605_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2150821601_)))
                                (_lp-tl2151021608_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2150821601_))))
                            (_loop2150721591_
                             _lp-tl2151021608_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd2150921605_ _body2151121598_)))))
                        (let ((_body2151221611_ (reverse _body2151121598_)))
                          ((lambda (_L21615_ _L21617_ _L21618_)
                             (if (and (gx#identifier? _L21618_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_g2164221645_
                                                       _g2164321648_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g2164221645_
                                                        _g2164321648_)))
                                              '()
                                              _L21617_)))
                                 (let* ((_g2165121659_
                                         (lambda (_g2165221655_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2165221655_)))
                                        (_g2165021875_
                                         (lambda (_g2165221663_)
                                           ((lambda (_L21666_)
                                              (let ()
                                                (let* ((_g2167821695_
                                                        (lambda (_g2167921691_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g2167921691_)))
                                                       (_g2167721863_
                                                        (lambda (_g2167921699_)
                                                          (if (gx#stx-pair/null?
                                                               _g2167921699_)
                                                              (let ((_g25677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g2167921699_ '0)))
                        (begin
                          (let ((_g25678_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g25677_)
                                       (##vector-length _g25677_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g25678_ 2)))
                                (error "Context expects 2 values" _g25678_)))
                          (let ((_target2168121702_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g25677_ 0)))
                                (_tl2168321705_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g25677_ 1))))
                            (if (gx#stx-null? _tl2168321705_)
                                (letrec ((_loop2168421708_
                                          (lambda (_hd2168221712_
                                                   _xarg2168821715_)
                                            (if (gx#stx-pair? _hd2168221712_)
                                                (let ((_e2168521718_
                                                       (gx#syntax-e
                                                        _hd2168221712_)))
                                                  (let ((_lp-hd2168621722_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2168521718_)))
                                                        (_lp-tl2168721725_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2168521718_))))
                                                    (_loop2168421708_
                                                     _lp-tl2168721725_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _lp-hd2168621722_
                                                             _xarg2168821715_)))))
                                                (let ((_xarg2168921728_
                                                       (reverse _xarg2168821715_)))
                                                  ((lambda (_L21732_)
                                                     (let ()
                                                       (let* ((_g2174921757_
                                                               (lambda (_g2175021753_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2175021753_)))
                      (_g2174821827_
                       (lambda (_g2175021761_)
                         ((lambda (_L21764_)
                            (let ()
                              (let* ((_g2177721785_
                                      (lambda (_g2177821781_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g2177821781_)))
                                     (_g2177621807_
                                      (lambda (_g2177821789_)
                                        ((lambda (_L21792_)
                                           (let ()
                                             (let ()
                                               (gx#stx-wrap-source
                                                (let ((__tmp25681
                                                       (gx#datum->syntax
                                                        '#f
                                                        'begin))
                                                      (__tmp25679
                                                       (let ((__tmp25680
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21764_ '()))))
                 (declare (not safe))
                 (cons _L21792_ __tmp25680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25681 __tmp25679))
                                                (gx#stx-source _stx21478_)))))
                                         _g2177821789_))))
                                (_g2177621807_
                                 (gx#stx-wrap-source
                                  (let ((__tmp25686
                                         (gx#datum->syntax '#f 'def))
                                        (__tmp25682
                                         (let ((__tmp25684
                                                (let ((__tmp25685
                                                       (foldr (lambda (_g2181021815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2181121818_)
                        (let ()
                          (declare (not safe))
                          (cons _g2181021815_ _g2181121818_)))
                      '()
                      _L21617_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L21666_ __tmp25685)))
                                               (__tmp25683
                                                (foldr (lambda (_g2181221821_
                                                                _g2181321824_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g2181221821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2181321824_)))
               '()
               _L21615_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (cons __tmp25684 __tmp25683))))
                                    (declare (not safe))
                                    (cons __tmp25686 __tmp25682))
                                  (gx#stx-source _stx21478_))))))
                          _g2175021761_))))
                 (_g2174821827_
                  (gx#stx-wrap-source
                   (let ((__tmp25714 (gx#datum->syntax '#f 'defrules))
                         (__tmp25687
                          (let ((__tmp25688
                                 (let ((__tmp25689
                                        (let ((__tmp25702
                                               (let ((__tmp25711
                                                      (let ((__tmp25713
                                                             (gx#datum->syntax
                                                              '#f
                                                              '_))
                                                            (__tmp25712
                                                             (foldr (lambda (_g2183021839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2183121842_)
                              (let ()
                                (declare (not safe))
                                (cons _g2183021839_ _g2183121842_)))
                            '()
                            _L21732_)))
                (declare (not safe))
                (cons __tmp25713 __tmp25712)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp25703
                                                      (let ((__tmp25704
                                                             (let ((__tmp25706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25710 (gx#datum->syntax '#f 'lambda))
                                  (__tmp25707
                                   (let ((__tmp25709
                                          (foldr (lambda (_g2183221845_
                                                          _g2183321848_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2183221845_
                                                           _g2183321848_)))
                                                 '()
                                                 _L21617_))
                                         (__tmp25708
                                          (foldr (lambda (_g2183421851_
                                                          _g2183521854_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2183421851_
                                                           _g2183521854_)))
                                                 '()
                                                 _L21615_)))
                                     (declare (not safe))
                                     (cons __tmp25709 __tmp25708))))
                              (declare (not safe))
                              (cons __tmp25710 __tmp25707)))
                           (__tmp25705
                            (foldr (lambda (_g2183621857_ _g2183721860_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2183621857_ _g2183721860_)))
                                   '()
                                   _L21732_)))
                       (declare (not safe))
                       (cons __tmp25706 __tmp25705))))
                (declare (not safe))
                (cons __tmp25704 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25711 __tmp25703)))
                                              (__tmp25690
                                               (let ((__tmp25691
                                                      (let ((__tmp25701
                                                             (gx#datum->syntax
                                                              '#f
                                                              'ref))
                                                            (__tmp25692
                                                             (let ((__tmp25694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25700
                                   (gx#datum->syntax '#f 'identifier?))
                                  (__tmp25695
                                   (let ((__tmp25696
                                          (let ((__tmp25699
                                                 (gx#datum->syntax
                                                  '#f
                                                  'syntax))
                                                (__tmp25697
                                                 (let ((__tmp25698
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ref)))
                                                   (declare (not safe))
                                                   (cons __tmp25698 '()))))
                                            (declare (not safe))
                                            (cons __tmp25699 __tmp25697))))
                                     (declare (not safe))
                                     (cons __tmp25696 '()))))
                              (declare (not safe))
                              (cons __tmp25700 __tmp25695)))
                           (__tmp25693
                            (let () (declare (not safe)) (cons _L21666_ '()))))
                       (declare (not safe))
                       (cons __tmp25694 __tmp25693))))
                (declare (not safe))
                (cons __tmp25701 __tmp25692))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25691 '()))))
                                          (declare (not safe))
                                          (cons __tmp25702 __tmp25690))))
                                   (declare (not safe))
                                   (cons '() __tmp25689))))
                            (declare (not safe))
                            (cons _L21618_ __tmp25688))))
                     (declare (not safe))
                     (cons __tmp25714 __tmp25687))
                   (gx#stx-source _stx21478_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _xarg2168921728_))))))
                                  (_loop2168421708_ _target2168121702_ '()))
                                (_g2167821695_ _g2167921699_)))))
                      (_g2167821695_ _g2167921699_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2167721863_
                                                   (gx#gentemps
                                                    (foldr (lambda (_g2186621869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2186721872_)
                     (let ()
                       (declare (not safe))
                       (cons _g2186621869_ _g2186721872_)))
                   '()
                   _L21617_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2165221663_))))
                                   (_g2165021875_
                                    (gx#stx-identifier
                                     _L21618_
                                     _L21618_
                                     '"__impl")))
                                 (_g2148121518_ _g2148221522_)))
                           _body2151221611_
                           _arg2150321581_
                           _hd2149321549_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2150721591_
                                                   _target2150421585_
                                                   '()))
                                                (_g2148121518_
                                                 _g2148221522_)))))
                                      (_g2148121518_ _g2148221522_)))))))
                  (_loop2149821561_ _target2149521555_ '()))
                (_g2148121518_ _g2148221522_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2148121518_ _g2148221522_))))
                                      (_g2148121518_ _g2148221522_))))
                              (_g2148121518_ _g2148221522_))))
                      (_g2148121518_ _g2148221522_)))))
          (_g2148021879_ _stx21478_))))
    (define |gerbil/core/sugar$<sugar:3>[:0:]#defconst|
      (lambda (_$stx21886_)
        (let* ((___stx2435024351_ _$stx21886_)
               (_g2189121927_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2435024351_))))
          (let ((___kont2435324354_
                 (lambda (_L22041_ _L22043_)
                   (let ((__tmp25732 (gx#datum->syntax '#f 'defrules))
                         (__tmp25715
                          (let ((__tmp25716
                                 (let ((__tmp25717
                                        (let ((__tmp25718
                                               (let ((__tmp25731
                                                      (gx#datum->syntax
                                                       '#f
                                                       'x))
                                                     (__tmp25719
                                                      (let ((__tmp25724
                                                             (let ((__tmp25730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'identifier?))
                           (__tmp25725
                            (let ((__tmp25726
                                   (let ((__tmp25729
                                          (gx#datum->syntax '#f 'syntax))
                                         (__tmp25727
                                          (let ((__tmp25728
                                                 (gx#datum->syntax '#f 'x)))
                                            (declare (not safe))
                                            (cons __tmp25728 '()))))
                                     (declare (not safe))
                                     (cons __tmp25729 __tmp25727))))
                              (declare (not safe))
                              (cons __tmp25726 '()))))
                       (declare (not safe))
                       (cons __tmp25730 __tmp25725)))
                    (__tmp25720
                     (let ((__tmp25721
                            (let ((__tmp25723 (gx#datum->syntax '#f 'quote))
                                  (__tmp25722
                                   (let ()
                                     (declare (not safe))
                                     (cons _L22041_ '()))))
                              (declare (not safe))
                              (cons __tmp25723 __tmp25722))))
                       (declare (not safe))
                       (cons __tmp25721 '()))))
                (declare (not safe))
                (cons __tmp25724 __tmp25720))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25731
                                                       __tmp25719))))
                                          (declare (not safe))
                                          (cons __tmp25718 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp25717))))
                            (declare (not safe))
                            (cons _L22043_ __tmp25716))))
                     (declare (not safe))
                     (cons __tmp25732 __tmp25715))))
                (___kont2435524356_
                 (lambda (_L21964_ _L21966_ _L21967_)
                   (let ((__tmp25733
                          (let ((__tmp25734
                                 (let ((__tmp25735
                                        (let ((__tmp25737
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp25736
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L21964_ '()))))
                                          (declare (not safe))
                                          (cons __tmp25737 __tmp25736))))
                                   (declare (not safe))
                                   (cons __tmp25735 '()))))
                            (declare (not safe))
                            (cons _L21966_ __tmp25734))))
                     (declare (not safe))
                     (cons _L21967_ __tmp25733)))))
            (let* ((___match2441524416_
                    (lambda (_e2191321934_
                             _hd2191421938_
                             _tl2191521941_
                             _e2191621944_
                             _hd2191721948_
                             _tl2191821951_
                             _e2191921954_
                             _hd2192021958_
                             _tl2192121961_)
                      (let ((_L21964_ _hd2192021958_)
                            (_L21966_ _hd2191721948_)
                            (_L21967_ _hd2191421938_))
                        (if (and (gx#identifier? _L21966_)
                                 (gx#stx-datum? _L21964_))
                            (___kont2435524356_ _L21964_ _L21966_ _L21967_)
                            (let () (declare (not safe)) (_g2189121927_))))))
                   (___match2439524396_
                    (lambda (_e2189521991_
                             _hd2189621995_
                             _tl2189721998_
                             _e2189822001_
                             _hd2189922005_
                             _tl2190022008_
                             _e2190122011_
                             _hd2190222015_
                             _tl2190322018_
                             _e2190422021_
                             _hd2190522025_
                             _tl2190622028_
                             _e2190722031_
                             _hd2190822035_
                             _tl2190922038_)
                      (let ((_L22041_ _hd2190822035_)
                            (_L22043_ _hd2189922005_))
                        (if (gx#identifier? _L22043_)
                            (___kont2435324354_ _L22041_ _L22043_)
                            (___match2441524416_
                             _e2189521991_
                             _hd2189621995_
                             _tl2189721998_
                             _e2189822001_
                             _hd2189922005_
                             _tl2190022008_
                             _e2190122011_
                             _hd2190222015_
                             _tl2190322018_))))))
              (if (gx#stx-pair? ___stx2435024351_)
                  (let ((_e2189521991_ (gx#syntax-e ___stx2435024351_)))
                    (let ((_tl2189721998_
                           (let () (declare (not safe)) (##cdr _e2189521991_)))
                          (_hd2189621995_
                           (let ()
                             (declare (not safe))
                             (##car _e2189521991_))))
                      (if (gx#stx-pair? _tl2189721998_)
                          (let ((_e2189822001_ (gx#syntax-e _tl2189721998_)))
                            (let ((_tl2190022008_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2189822001_)))
                                  (_hd2189922005_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2189822001_))))
                              (if (gx#stx-pair? _tl2190022008_)
                                  (let ((_e2190122011_
                                         (gx#syntax-e _tl2190022008_)))
                                    (let ((_tl2190322018_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2190122011_)))
                                          (_hd2190222015_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2190122011_))))
                                      (if (gx#stx-pair? _hd2190222015_)
                                          (let ((_e2190422021_
                                                 (gx#syntax-e _hd2190222015_)))
                                            (let ((_tl2190622028_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2190422021_)))
                                                  (_hd2190522025_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2190422021_))))
                                              (if (gx#identifier?
                                                   _hd2190522025_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar$<sugar:3>[1]#_g25738_|
                                                       _hd2190522025_)
                                                      (if (gx#stx-pair?
                                                           _tl2190622028_)
                                                          (let ((_e2190722031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2190622028_)))
                    (let ((_tl2190922038_
                           (let () (declare (not safe)) (##cdr _e2190722031_)))
                          (_hd2190822035_
                           (let ()
                             (declare (not safe))
                             (##car _e2190722031_))))
                      (if (gx#stx-null? _tl2190922038_)
                          (if (gx#stx-null? _tl2190322018_)
                              (___match2439524396_
                               _e2189521991_
                               _hd2189621995_
                               _tl2189721998_
                               _e2189822001_
                               _hd2189922005_
                               _tl2190022008_
                               _e2190122011_
                               _hd2190222015_
                               _tl2190322018_
                               _e2190422021_
                               _hd2190522025_
                               _tl2190622028_
                               _e2190722031_
                               _hd2190822035_
                               _tl2190922038_)
                              (let () (declare (not safe)) (_g2189121927_)))
                          (if (gx#stx-null? _tl2190322018_)
                              (___match2441524416_
                               _e2189521991_
                               _hd2189621995_
                               _tl2189721998_
                               _e2189822001_
                               _hd2189922005_
                               _tl2190022008_
                               _e2190122011_
                               _hd2190222015_
                               _tl2190322018_)
                              (let () (declare (not safe)) (_g2189121927_))))))
                  (if (gx#stx-null? _tl2190322018_)
                      (___match2441524416_
                       _e2189521991_
                       _hd2189621995_
                       _tl2189721998_
                       _e2189822001_
                       _hd2189922005_
                       _tl2190022008_
                       _e2190122011_
                       _hd2190222015_
                       _tl2190322018_)
                      (let () (declare (not safe)) (_g2189121927_))))
              (if (gx#stx-null? _tl2190322018_)
                  (___match2441524416_
                   _e2189521991_
                   _hd2189621995_
                   _tl2189721998_
                   _e2189822001_
                   _hd2189922005_
                   _tl2190022008_
                   _e2190122011_
                   _hd2190222015_
                   _tl2190322018_)
                  (let () (declare (not safe)) (_g2189121927_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl2190322018_)
                                                      (___match2441524416_
                                                       _e2189521991_
                                                       _hd2189621995_
                                                       _tl2189721998_
                                                       _e2189822001_
                                                       _hd2189922005_
                                                       _tl2190022008_
                                                       _e2190122011_
                                                       _hd2190222015_
                                                       _tl2190322018_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2189121927_))))))
                                          (if (gx#stx-null? _tl2190322018_)
                                              (___match2441524416_
                                               _e2189521991_
                                               _hd2189621995_
                                               _tl2189721998_
                                               _e2189822001_
                                               _hd2189922005_
                                               _tl2190022008_
                                               _e2190122011_
                                               _hd2190222015_
                                               _tl2190322018_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2189121927_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2189121927_)))))
                          (let () (declare (not safe)) (_g2189121927_)))))
                  (let () (declare (not safe)) (_g2189121927_))))))))))
