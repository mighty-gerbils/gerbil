(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar$<sugar:3>[1]#_g25811_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar$<sugar:3>[:0:]#defsyntax|
      (lambda (_$stx21276_)
        (let* ((___stx2429324294_ _$stx21276_)
               (_g2128121320_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2429324294_))))
          (let ((___kont2429624297_
                 (lambda (_L21443_ _L21445_ _L21446_)
                   (let ((__tmp25742 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp25736
                          (let ((__tmp25737
                                 (let ((__tmp25738
                                        (let ((__tmp25741
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp25739
                                               (let ((__tmp25740
                                                      (foldr (lambda (_g2146521468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2146621471_)
                       (let ()
                         (declare (not safe))
                         (cons _g2146521468_ _g2146621471_)))
                     '()
                     _L21443_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L21445_ __tmp25740))))
                                          (declare (not safe))
                                          (cons __tmp25741 __tmp25739))))
                                   (declare (not safe))
                                   (cons __tmp25738 '()))))
                            (declare (not safe))
                            (cons _L21446_ __tmp25737))))
                     (declare (not safe))
                     (cons __tmp25742 __tmp25736))))
                (___kont2430024301_
                 (lambda (_L21357_ _L21359_)
                   (let ((__tmp25745 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp25743
                          (let ((__tmp25744
                                 (let ()
                                   (declare (not safe))
                                   (cons _L21357_ '()))))
                            (declare (not safe))
                            (cons _L21359_ __tmp25744))))
                     (declare (not safe))
                     (cons __tmp25745 __tmp25743)))))
            (let* ((___match2434824349_
                    (lambda (_e2130821327_
                             _hd2130721331_
                             _tl2130621334_
                             _e2131121337_
                             _hd2131021341_
                             _tl2130921344_
                             _e2131421347_
                             _hd2131321351_
                             _tl2131221354_)
                      (let ((_L21357_ _hd2131321351_)
                            (_L21359_ _hd2131021341_))
                        (if (gx#identifier? _L21359_)
                            (___kont2430024301_ _L21357_ _L21359_)
                            (let () (declare (not safe)) (_g2128121320_))))))
                   (___match2434024341_
                    (lambda (_e2130821327_
                             _hd2130721331_
                             _tl2130621334_
                             _e2131121337_
                             _hd2131021341_
                             _tl2130921344_)
                      (if (gx#stx-pair? _tl2130921344_)
                          (let ((_e2131421347_ (gx#syntax-e _tl2130921344_)))
                            (let ((_tl2131221354_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2131421347_)))
                                  (_hd2131321351_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2131421347_))))
                              (if (gx#stx-null? _tl2131221354_)
                                  (___match2434824349_
                                   _e2130821327_
                                   _hd2130721331_
                                   _tl2130621334_
                                   _e2131121337_
                                   _hd2131021341_
                                   _tl2130921344_
                                   _e2131421347_
                                   _hd2131321351_
                                   _tl2131221354_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2128121320_)))))
                          (let () (declare (not safe)) (_g2128121320_)))))
                   (___match2432824329_
                    (lambda (_e2128821383_
                             _hd2128721387_
                             _tl2128621390_
                             _e2129121393_
                             _hd2129021397_
                             _tl2128921400_
                             _e2129421403_
                             _hd2129321407_
                             _tl2129221410_
                             ___splice2429824299_
                             _target2129521413_
                             _tl2129721416_)
                      (letrec ((_loop2129821419_
                                (lambda (_hd2129621423_ _body2130221426_)
                                  (if (gx#stx-pair? _hd2129621423_)
                                      (let ((_e2129921429_
                                             (gx#syntax-e _hd2129621423_)))
                                        (let ((_lp-tl2130121436_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2129921429_)))
                                              (_lp-hd2130021433_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2129921429_))))
                                          (_loop2129821419_
                                           _lp-tl2130121436_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd2130021433_
                                                   _body2130221426_)))))
                                      (let ((_body2130321439_
                                             (reverse _body2130221426_)))
                                        (let ((_L21443_ _body2130321439_)
                                              (_L21445_ _tl2129221410_)
                                              (_L21446_ _hd2129321407_))
                                          (if (gx#identifier? _L21446_)
                                              (___kont2429624297_
                                               _L21443_
                                               _L21445_
                                               _L21446_)
                                              (___match2434024341_
                                               _e2128821383_
                                               _hd2128721387_
                                               _tl2128621390_
                                               _e2129121393_
                                               _hd2129021397_
                                               _tl2128921400_))))))))
                        (_loop2129821419_ _target2129521413_ '())))))
              (if (gx#stx-pair? ___stx2429324294_)
                  (let ((_e2128821383_ (gx#syntax-e ___stx2429324294_)))
                    (let ((_tl2128621390_
                           (let () (declare (not safe)) (##cdr _e2128821383_)))
                          (_hd2128721387_
                           (let ()
                             (declare (not safe))
                             (##car _e2128821383_))))
                      (if (gx#stx-pair? _tl2128621390_)
                          (let ((_e2129121393_ (gx#syntax-e _tl2128621390_)))
                            (let ((_tl2128921400_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2129121393_)))
                                  (_hd2129021397_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2129121393_))))
                              (if (gx#stx-pair? _hd2129021397_)
                                  (let ((_e2129421403_
                                         (gx#syntax-e _hd2129021397_)))
                                    (let ((_tl2129221410_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2129421403_)))
                                          (_hd2129321407_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2129421403_))))
                                      (if (gx#stx-pair/null? _tl2128921400_)
                                          (let ((___splice2429824299_
                                                 (gx#syntax-split-splice
                                                  _tl2128921400_
                                                  '0)))
                                            (let ((_tl2129721416_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2429824299_
                                                      '1)))
                                                  (_target2129521413_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2429824299_
                                                      '0))))
                                              (if (gx#stx-null? _tl2129721416_)
                                                  (___match2432824329_
                                                   _e2128821383_
                                                   _hd2128721387_
                                                   _tl2128621390_
                                                   _e2129121393_
                                                   _hd2129021397_
                                                   _tl2128921400_
                                                   _e2129421403_
                                                   _hd2129321407_
                                                   _tl2129221410_
                                                   ___splice2429824299_
                                                   _target2129521413_
                                                   _tl2129721416_)
                                                  (if (gx#stx-pair?
                                                       _tl2128921400_)
                                                      (let ((_e2131421347_
                                                             (gx#syntax-e
                                                              _tl2128921400_)))
                                                        (let ((_tl2131221354_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2131421347_)))
                      (_hd2131321351_
                       (let () (declare (not safe)) (##car _e2131421347_))))
                  (if (gx#stx-null? _tl2131221354_)
                      (___match2434824349_
                       _e2128821383_
                       _hd2128721387_
                       _tl2128621390_
                       _e2129121393_
                       _hd2129021397_
                       _tl2128921400_
                       _e2131421347_
                       _hd2131321351_
                       _tl2131221354_)
                      (let () (declare (not safe)) (_g2128121320_)))))
              (let () (declare (not safe)) (_g2128121320_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl2128921400_)
                                              (let ((_e2131421347_
                                                     (gx#syntax-e
                                                      _tl2128921400_)))
                                                (let ((_tl2131221354_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2131421347_)))
                                                      (_hd2131321351_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2131421347_))))
                                                  (if (gx#stx-null?
                                                       _tl2131221354_)
                                                      (___match2434824349_
                                                       _e2128821383_
                                                       _hd2128721387_
                                                       _tl2128621390_
                                                       _e2129121393_
                                                       _hd2129021397_
                                                       _tl2128921400_
                                                       _e2131421347_
                                                       _hd2131321351_
                                                       _tl2131221354_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2128121320_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2128121320_))))))
                                  (if (gx#stx-pair? _tl2128921400_)
                                      (let ((_e2131421347_
                                             (gx#syntax-e _tl2128921400_)))
                                        (let ((_tl2131221354_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2131421347_)))
                                              (_hd2131321351_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2131421347_))))
                                          (if (gx#stx-null? _tl2131221354_)
                                              (___match2434824349_
                                               _e2128821383_
                                               _hd2128721387_
                                               _tl2128621390_
                                               _e2129121393_
                                               _hd2129021397_
                                               _tl2128921400_
                                               _e2131421347_
                                               _hd2131321351_
                                               _tl2131221354_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2128121320_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2128121320_))))))
                          (let () (declare (not safe)) (_g2128121320_)))))
                  (let () (declare (not safe)) (_g2128121320_))))))))
    (define |gerbil/core/sugar$<sugar:3>[:0:]#definline|
      (lambda (_stx21479_)
        (let* ((_g2148221519_
                (lambda (_g2148321515_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2148321515_)))
               (_g2148121880_
                (lambda (_g2148321523_)
                  (if (gx#stx-pair? _g2148321523_)
                      (let ((_e2148921526_ (gx#syntax-e _g2148321523_)))
                        (let ((_hd2148821530_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2148921526_)))
                              (_tl2148721533_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2148921526_))))
                          (if (gx#stx-pair? _tl2148721533_)
                              (let ((_e2149221536_
                                     (gx#syntax-e _tl2148721533_)))
                                (let ((_hd2149121540_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2149221536_)))
                                      (_tl2149021543_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2149221536_))))
                                  (if (gx#stx-pair? _hd2149121540_)
                                      (let ((_e2149521546_
                                             (gx#syntax-e _hd2149121540_)))
                                        (let ((_hd2149421550_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2149521546_)))
                                              (_tl2149321553_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2149521546_))))
                                          (if (gx#stx-pair/null?
                                               _tl2149321553_)
                                              (let ((_g25746_
                                                     (gx#syntax-split-splice
                                                      _tl2149321553_
                                                      '0)))
                                                (begin
                                                  (let ((_g25747_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g25746_)
                                                               (##vector-length
                                                                _g25746_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g25747_ 2)))
                (error "Context expects 2 values" _g25747_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target2149621556_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25746_
                                                            0)))
                                                        (_tl2149821559_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25746_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl2149821559_)
                                                        (letrec ((_loop2149921562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2149721566_ _arg2150321569_)
                            (if (gx#stx-pair? _hd2149721566_)
                                (let ((_e2150021572_
                                       (gx#syntax-e _hd2149721566_)))
                                  (let ((_lp-hd2150121576_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2150021572_)))
                                        (_lp-tl2150221579_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2150021572_))))
                                    (_loop2149921562_
                                     _lp-tl2150221579_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd2150121576_
                                             _arg2150321569_)))))
                                (let ((_arg2150421582_
                                       (reverse _arg2150321569_)))
                                  (if (gx#stx-pair/null? _tl2149021543_)
                                      (let ((_g25748_
                                             (gx#syntax-split-splice
                                              _tl2149021543_
                                              '0)))
                                        (begin
                                          (let ((_g25749_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25748_)
                                                       (##vector-length
                                                        _g25748_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25749_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25749_)))
                                          (let ((_target2150521586_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25748_ 0)))
                                                (_tl2150721589_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25748_ 1))))
                                            (if (gx#stx-null? _tl2150721589_)
                                                (letrec ((_loop2150821592_
                                                          (lambda (_hd2150621596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2151221599_)
                    (if (gx#stx-pair? _hd2150621596_)
                        (let ((_e2150921602_ (gx#syntax-e _hd2150621596_)))
                          (let ((_lp-hd2151021606_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2150921602_)))
                                (_lp-tl2151121609_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2150921602_))))
                            (_loop2150821592_
                             _lp-tl2151121609_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd2151021606_ _body2151221599_)))))
                        (let ((_body2151321612_ (reverse _body2151221599_)))
                          ((lambda (_L21616_ _L21618_ _L21619_)
                             (if (and (gx#identifier? _L21619_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_g2164321646_
                                                       _g2164421649_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g2164321646_
                                                        _g2164421649_)))
                                              '()
                                              _L21618_)))
                                 (let* ((_g2165221660_
                                         (lambda (_g2165321656_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2165321656_)))
                                        (_g2165121876_
                                         (lambda (_g2165321664_)
                                           ((lambda (_L21667_)
                                              (let ()
                                                (let* ((_g2167921696_
                                                        (lambda (_g2168021692_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g2168021692_)))
                                                       (_g2167821864_
                                                        (lambda (_g2168021700_)
                                                          (if (gx#stx-pair/null?
                                                               _g2168021700_)
                                                              (let ((_g25750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g2168021700_ '0)))
                        (begin
                          (let ((_g25751_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g25750_)
                                       (##vector-length _g25750_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g25751_ 2)))
                                (error "Context expects 2 values" _g25751_)))
                          (let ((_target2168221703_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g25750_ 0)))
                                (_tl2168421706_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g25750_ 1))))
                            (if (gx#stx-null? _tl2168421706_)
                                (letrec ((_loop2168521709_
                                          (lambda (_hd2168321713_
                                                   _xarg2168921716_)
                                            (if (gx#stx-pair? _hd2168321713_)
                                                (let ((_e2168621719_
                                                       (gx#syntax-e
                                                        _hd2168321713_)))
                                                  (let ((_lp-hd2168721723_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2168621719_)))
                                                        (_lp-tl2168821726_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2168621719_))))
                                                    (_loop2168521709_
                                                     _lp-tl2168821726_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _lp-hd2168721723_
                                                             _xarg2168921716_)))))
                                                (let ((_xarg2169021729_
                                                       (reverse _xarg2168921716_)))
                                                  ((lambda (_L21733_)
                                                     (let ()
                                                       (let* ((_g2175021758_
                                                               (lambda (_g2175121754_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2175121754_)))
                      (_g2174921828_
                       (lambda (_g2175121762_)
                         ((lambda (_L21765_)
                            (let ()
                              (let* ((_g2177821786_
                                      (lambda (_g2177921782_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g2177921782_)))
                                     (_g2177721808_
                                      (lambda (_g2177921790_)
                                        ((lambda (_L21793_)
                                           (let ()
                                             (let ()
                                               (gx#stx-wrap-source
                                                (let ((__tmp25754
                                                       (gx#datum->syntax
                                                        '#f
                                                        'begin))
                                                      (__tmp25752
                                                       (let ((__tmp25753
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21765_ '()))))
                 (declare (not safe))
                 (cons _L21793_ __tmp25753))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25754 __tmp25752))
                                                (gx#stx-source _stx21479_)))))
                                         _g2177921790_))))
                                (_g2177721808_
                                 (gx#stx-wrap-source
                                  (let ((__tmp25759
                                         (gx#datum->syntax '#f 'def))
                                        (__tmp25755
                                         (let ((__tmp25757
                                                (let ((__tmp25758
                                                       (foldr (lambda (_g2181321816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2181421819_)
                        (let ()
                          (declare (not safe))
                          (cons _g2181321816_ _g2181421819_)))
                      '()
                      _L21618_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L21667_ __tmp25758)))
                                               (__tmp25756
                                                (foldr (lambda (_g2181121822_
                                                                _g2181221825_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g2181121822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2181221825_)))
               '()
               _L21616_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (cons __tmp25757 __tmp25756))))
                                    (declare (not safe))
                                    (cons __tmp25759 __tmp25755))
                                  (gx#stx-source _stx21479_))))))
                          _g2175121762_))))
                 (_g2174921828_
                  (gx#stx-wrap-source
                   (let ((__tmp25787 (gx#datum->syntax '#f 'defrules))
                         (__tmp25760
                          (let ((__tmp25761
                                 (let ((__tmp25762
                                        (let ((__tmp25775
                                               (let ((__tmp25784
                                                      (let ((__tmp25786
                                                             (gx#datum->syntax
                                                              '#f
                                                              '_))
                                                            (__tmp25785
                                                             (foldr (lambda (_g2183721840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2183821843_)
                              (let ()
                                (declare (not safe))
                                (cons _g2183721840_ _g2183821843_)))
                            '()
                            _L21733_)))
                (declare (not safe))
                (cons __tmp25786 __tmp25785)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp25776
                                                      (let ((__tmp25777
                                                             (let ((__tmp25779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25783 (gx#datum->syntax '#f 'lambda))
                                  (__tmp25780
                                   (let ((__tmp25782
                                          (foldr (lambda (_g2183521846_
                                                          _g2183621849_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2183521846_
                                                           _g2183621849_)))
                                                 '()
                                                 _L21618_))
                                         (__tmp25781
                                          (foldr (lambda (_g2183321852_
                                                          _g2183421855_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2183321852_
                                                           _g2183421855_)))
                                                 '()
                                                 _L21616_)))
                                     (declare (not safe))
                                     (cons __tmp25782 __tmp25781))))
                              (declare (not safe))
                              (cons __tmp25783 __tmp25780)))
                           (__tmp25778
                            (foldr (lambda (_g2183121858_ _g2183221861_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2183121858_ _g2183221861_)))
                                   '()
                                   _L21733_)))
                       (declare (not safe))
                       (cons __tmp25779 __tmp25778))))
                (declare (not safe))
                (cons __tmp25777 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25784 __tmp25776)))
                                              (__tmp25763
                                               (let ((__tmp25764
                                                      (let ((__tmp25774
                                                             (gx#datum->syntax
                                                              '#f
                                                              'ref))
                                                            (__tmp25765
                                                             (let ((__tmp25767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25773
                                   (gx#datum->syntax '#f 'identifier?))
                                  (__tmp25768
                                   (let ((__tmp25769
                                          (let ((__tmp25772
                                                 (gx#datum->syntax
                                                  '#f
                                                  'syntax))
                                                (__tmp25770
                                                 (let ((__tmp25771
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ref)))
                                                   (declare (not safe))
                                                   (cons __tmp25771 '()))))
                                            (declare (not safe))
                                            (cons __tmp25772 __tmp25770))))
                                     (declare (not safe))
                                     (cons __tmp25769 '()))))
                              (declare (not safe))
                              (cons __tmp25773 __tmp25768)))
                           (__tmp25766
                            (let () (declare (not safe)) (cons _L21667_ '()))))
                       (declare (not safe))
                       (cons __tmp25767 __tmp25766))))
                (declare (not safe))
                (cons __tmp25774 __tmp25765))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25764 '()))))
                                          (declare (not safe))
                                          (cons __tmp25775 __tmp25763))))
                                   (declare (not safe))
                                   (cons '() __tmp25762))))
                            (declare (not safe))
                            (cons _L21619_ __tmp25761))))
                     (declare (not safe))
                     (cons __tmp25787 __tmp25760))
                   (gx#stx-source _stx21479_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _xarg2169021729_))))))
                                  (_loop2168521709_ _target2168221703_ '()))
                                (_g2167921696_ _g2168021700_)))))
                      (_g2167921696_ _g2168021700_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2167821864_
                                                   (gx#gentemps
                                                    (foldr (lambda (_g2186721870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2186821873_)
                     (let ()
                       (declare (not safe))
                       (cons _g2186721870_ _g2186821873_)))
                   '()
                   _L21618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2165321664_))))
                                   (_g2165121876_
                                    (gx#stx-identifier
                                     _L21619_
                                     _L21619_
                                     '"__impl")))
                                 (_g2148221519_ _g2148321523_)))
                           _body2151321612_
                           _arg2150421582_
                           _hd2149421550_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2150821592_
                                                   _target2150521586_
                                                   '()))
                                                (_g2148221519_
                                                 _g2148321523_)))))
                                      (_g2148221519_ _g2148321523_)))))))
                  (_loop2149921562_ _target2149621556_ '()))
                (_g2148221519_ _g2148321523_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2148221519_ _g2148321523_))))
                                      (_g2148221519_ _g2148321523_))))
                              (_g2148221519_ _g2148321523_))))
                      (_g2148221519_ _g2148321523_)))))
          (_g2148121880_ _stx21479_))))
    (define |gerbil/core/sugar$<sugar:3>[:0:]#defconst|
      (lambda (_$stx21887_)
        (let* ((___stx2435124352_ _$stx21887_)
               (_g2189221928_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2435124352_))))
          (let ((___kont2435424355_
                 (lambda (_L22042_ _L22044_)
                   (let ((__tmp25805 (gx#datum->syntax '#f 'defrules))
                         (__tmp25788
                          (let ((__tmp25789
                                 (let ((__tmp25790
                                        (let ((__tmp25791
                                               (let ((__tmp25804
                                                      (gx#datum->syntax
                                                       '#f
                                                       'x))
                                                     (__tmp25792
                                                      (let ((__tmp25797
                                                             (let ((__tmp25803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'identifier?))
                           (__tmp25798
                            (let ((__tmp25799
                                   (let ((__tmp25802
                                          (gx#datum->syntax '#f 'syntax))
                                         (__tmp25800
                                          (let ((__tmp25801
                                                 (gx#datum->syntax '#f 'x)))
                                            (declare (not safe))
                                            (cons __tmp25801 '()))))
                                     (declare (not safe))
                                     (cons __tmp25802 __tmp25800))))
                              (declare (not safe))
                              (cons __tmp25799 '()))))
                       (declare (not safe))
                       (cons __tmp25803 __tmp25798)))
                    (__tmp25793
                     (let ((__tmp25794
                            (let ((__tmp25796 (gx#datum->syntax '#f 'quote))
                                  (__tmp25795
                                   (let ()
                                     (declare (not safe))
                                     (cons _L22042_ '()))))
                              (declare (not safe))
                              (cons __tmp25796 __tmp25795))))
                       (declare (not safe))
                       (cons __tmp25794 '()))))
                (declare (not safe))
                (cons __tmp25797 __tmp25793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25804
                                                       __tmp25792))))
                                          (declare (not safe))
                                          (cons __tmp25791 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp25790))))
                            (declare (not safe))
                            (cons _L22044_ __tmp25789))))
                     (declare (not safe))
                     (cons __tmp25805 __tmp25788))))
                (___kont2435624357_
                 (lambda (_L21965_ _L21967_ _L21968_)
                   (let ((__tmp25806
                          (let ((__tmp25807
                                 (let ((__tmp25808
                                        (let ((__tmp25810
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp25809
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L21965_ '()))))
                                          (declare (not safe))
                                          (cons __tmp25810 __tmp25809))))
                                   (declare (not safe))
                                   (cons __tmp25808 '()))))
                            (declare (not safe))
                            (cons _L21967_ __tmp25807))))
                     (declare (not safe))
                     (cons _L21968_ __tmp25806)))))
            (let* ((___match2441624417_
                    (lambda (_e2191621935_
                             _hd2191521939_
                             _tl2191421942_
                             _e2191921945_
                             _hd2191821949_
                             _tl2191721952_
                             _e2192221955_
                             _hd2192121959_
                             _tl2192021962_)
                      (let ((_L21965_ _hd2192121959_)
                            (_L21967_ _hd2191821949_)
                            (_L21968_ _hd2191521939_))
                        (if (and (gx#identifier? _L21967_)
                                 (gx#stx-datum? _L21965_))
                            (___kont2435624357_ _L21965_ _L21967_ _L21968_)
                            (let () (declare (not safe)) (_g2189221928_))))))
                   (___match2439624397_
                    (lambda (_e2189821992_
                             _hd2189721996_
                             _tl2189621999_
                             _e2190122002_
                             _hd2190022006_
                             _tl2189922009_
                             _e2190422012_
                             _hd2190322016_
                             _tl2190222019_
                             _e2190722022_
                             _hd2190622026_
                             _tl2190522029_
                             _e2191022032_
                             _hd2190922036_
                             _tl2190822039_)
                      (let ((_L22042_ _hd2190922036_)
                            (_L22044_ _hd2190022006_))
                        (if (gx#identifier? _L22044_)
                            (___kont2435424355_ _L22042_ _L22044_)
                            (___match2441624417_
                             _e2189821992_
                             _hd2189721996_
                             _tl2189621999_
                             _e2190122002_
                             _hd2190022006_
                             _tl2189922009_
                             _e2190422012_
                             _hd2190322016_
                             _tl2190222019_))))))
              (if (gx#stx-pair? ___stx2435124352_)
                  (let ((_e2189821992_ (gx#syntax-e ___stx2435124352_)))
                    (let ((_tl2189621999_
                           (let () (declare (not safe)) (##cdr _e2189821992_)))
                          (_hd2189721996_
                           (let ()
                             (declare (not safe))
                             (##car _e2189821992_))))
                      (if (gx#stx-pair? _tl2189621999_)
                          (let ((_e2190122002_ (gx#syntax-e _tl2189621999_)))
                            (let ((_tl2189922009_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2190122002_)))
                                  (_hd2190022006_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2190122002_))))
                              (if (gx#stx-pair? _tl2189922009_)
                                  (let ((_e2190422012_
                                         (gx#syntax-e _tl2189922009_)))
                                    (let ((_tl2190222019_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2190422012_)))
                                          (_hd2190322016_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2190422012_))))
                                      (if (gx#stx-pair? _hd2190322016_)
                                          (let ((_e2190722022_
                                                 (gx#syntax-e _hd2190322016_)))
                                            (let ((_tl2190522029_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2190722022_)))
                                                  (_hd2190622026_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2190722022_))))
                                              (if (gx#identifier?
                                                   _hd2190622026_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar$<sugar:3>[1]#_g25811_|
                                                       _hd2190622026_)
                                                      (if (gx#stx-pair?
                                                           _tl2190522029_)
                                                          (let ((_e2191022032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2190522029_)))
                    (let ((_tl2190822039_
                           (let () (declare (not safe)) (##cdr _e2191022032_)))
                          (_hd2190922036_
                           (let ()
                             (declare (not safe))
                             (##car _e2191022032_))))
                      (if (gx#stx-null? _tl2190822039_)
                          (if (gx#stx-null? _tl2190222019_)
                              (___match2439624397_
                               _e2189821992_
                               _hd2189721996_
                               _tl2189621999_
                               _e2190122002_
                               _hd2190022006_
                               _tl2189922009_
                               _e2190422012_
                               _hd2190322016_
                               _tl2190222019_
                               _e2190722022_
                               _hd2190622026_
                               _tl2190522029_
                               _e2191022032_
                               _hd2190922036_
                               _tl2190822039_)
                              (let () (declare (not safe)) (_g2189221928_)))
                          (if (gx#stx-null? _tl2190222019_)
                              (___match2441624417_
                               _e2189821992_
                               _hd2189721996_
                               _tl2189621999_
                               _e2190122002_
                               _hd2190022006_
                               _tl2189922009_
                               _e2190422012_
                               _hd2190322016_
                               _tl2190222019_)
                              (let () (declare (not safe)) (_g2189221928_))))))
                  (if (gx#stx-null? _tl2190222019_)
                      (___match2441624417_
                       _e2189821992_
                       _hd2189721996_
                       _tl2189621999_
                       _e2190122002_
                       _hd2190022006_
                       _tl2189922009_
                       _e2190422012_
                       _hd2190322016_
                       _tl2190222019_)
                      (let () (declare (not safe)) (_g2189221928_))))
              (if (gx#stx-null? _tl2190222019_)
                  (___match2441624417_
                   _e2189821992_
                   _hd2189721996_
                   _tl2189621999_
                   _e2190122002_
                   _hd2190022006_
                   _tl2189922009_
                   _e2190422012_
                   _hd2190322016_
                   _tl2190222019_)
                  (let () (declare (not safe)) (_g2189221928_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl2190222019_)
                                                      (___match2441624417_
                                                       _e2189821992_
                                                       _hd2189721996_
                                                       _tl2189621999_
                                                       _e2190122002_
                                                       _hd2190022006_
                                                       _tl2189922009_
                                                       _e2190422012_
                                                       _hd2190322016_
                                                       _tl2190222019_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2189221928_))))))
                                          (if (gx#stx-null? _tl2190222019_)
                                              (___match2441624417_
                                               _e2189821992_
                                               _hd2189721996_
                                               _tl2189621999_
                                               _e2190122002_
                                               _hd2190022006_
                                               _tl2189922009_
                                               _e2190422012_
                                               _hd2190322016_
                                               _tl2190222019_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2189221928_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2189221928_)))))
                          (let () (declare (not safe)) (_g2189221928_)))))
                  (let () (declare (not safe)) (_g2189221928_))))))))))
