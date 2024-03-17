(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-3[1]#_g25818_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-3[:0:]#defsyntax|
      (lambda (_$stx21283_)
        (let* ((___stx2430024301_ _$stx21283_)
               (_g2128821327_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2430024301_))))
          (let ((___kont2430324304_
                 (lambda (_L21450_ _L21452_ _L21453_)
                   (let ((__tmp25749 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp25743
                          (let ((__tmp25744
                                 (let ((__tmp25745
                                        (let ((__tmp25748
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp25746
                                               (let ((__tmp25747
                                                      (foldr (lambda (_g2147221475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2147321478_)
                       (let ()
                         (declare (not safe))
                         (cons _g2147221475_ _g2147321478_)))
                     '()
                     _L21450_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L21452_ __tmp25747))))
                                          (declare (not safe))
                                          (cons __tmp25748 __tmp25746))))
                                   (declare (not safe))
                                   (cons __tmp25745 '()))))
                            (declare (not safe))
                            (cons _L21453_ __tmp25744))))
                     (declare (not safe))
                     (cons __tmp25749 __tmp25743))))
                (___kont2430724308_
                 (lambda (_L21364_ _L21366_)
                   (let ((__tmp25752 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp25750
                          (let ((__tmp25751
                                 (let ()
                                   (declare (not safe))
                                   (cons _L21364_ '()))))
                            (declare (not safe))
                            (cons _L21366_ __tmp25751))))
                     (declare (not safe))
                     (cons __tmp25752 __tmp25750)))))
            (let* ((___match2435524356_
                    (lambda (_e2131521334_
                             _hd2131421338_
                             _tl2131321341_
                             _e2131821344_
                             _hd2131721348_
                             _tl2131621351_
                             _e2132121354_
                             _hd2132021358_
                             _tl2131921361_)
                      (let ((_L21364_ _hd2132021358_)
                            (_L21366_ _hd2131721348_))
                        (if (gx#identifier? _L21366_)
                            (___kont2430724308_ _L21364_ _L21366_)
                            (let () (declare (not safe)) (_g2128821327_))))))
                   (___match2434724348_
                    (lambda (_e2131521334_
                             _hd2131421338_
                             _tl2131321341_
                             _e2131821344_
                             _hd2131721348_
                             _tl2131621351_)
                      (if (gx#stx-pair? _tl2131621351_)
                          (let ((_e2132121354_ (gx#syntax-e _tl2131621351_)))
                            (let ((_tl2131921361_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2132121354_)))
                                  (_hd2132021358_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2132121354_))))
                              (if (gx#stx-null? _tl2131921361_)
                                  (___match2435524356_
                                   _e2131521334_
                                   _hd2131421338_
                                   _tl2131321341_
                                   _e2131821344_
                                   _hd2131721348_
                                   _tl2131621351_
                                   _e2132121354_
                                   _hd2132021358_
                                   _tl2131921361_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2128821327_)))))
                          (let () (declare (not safe)) (_g2128821327_)))))
                   (___match2433524336_
                    (lambda (_e2129521390_
                             _hd2129421394_
                             _tl2129321397_
                             _e2129821400_
                             _hd2129721404_
                             _tl2129621407_
                             _e2130121410_
                             _hd2130021414_
                             _tl2129921417_
                             ___splice2430524306_
                             _target2130221420_
                             _tl2130421423_)
                      (letrec ((_loop2130521426_
                                (lambda (_hd2130321430_ _body2130921433_)
                                  (if (gx#stx-pair? _hd2130321430_)
                                      (let ((_e2130621436_
                                             (gx#syntax-e _hd2130321430_)))
                                        (let ((_lp-tl2130821443_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2130621436_)))
                                              (_lp-hd2130721440_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2130621436_))))
                                          (_loop2130521426_
                                           _lp-tl2130821443_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd2130721440_
                                                   _body2130921433_)))))
                                      (let ((_body2131021446_
                                             (reverse _body2130921433_)))
                                        (let ((_L21450_ _body2131021446_)
                                              (_L21452_ _tl2129921417_)
                                              (_L21453_ _hd2130021414_))
                                          (if (gx#identifier? _L21453_)
                                              (___kont2430324304_
                                               _L21450_
                                               _L21452_
                                               _L21453_)
                                              (___match2434724348_
                                               _e2129521390_
                                               _hd2129421394_
                                               _tl2129321397_
                                               _e2129821400_
                                               _hd2129721404_
                                               _tl2129621407_))))))))
                        (_loop2130521426_ _target2130221420_ '())))))
              (if (gx#stx-pair? ___stx2430024301_)
                  (let ((_e2129521390_ (gx#syntax-e ___stx2430024301_)))
                    (let ((_tl2129321397_
                           (let () (declare (not safe)) (##cdr _e2129521390_)))
                          (_hd2129421394_
                           (let ()
                             (declare (not safe))
                             (##car _e2129521390_))))
                      (if (gx#stx-pair? _tl2129321397_)
                          (let ((_e2129821400_ (gx#syntax-e _tl2129321397_)))
                            (let ((_tl2129621407_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2129821400_)))
                                  (_hd2129721404_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2129821400_))))
                              (if (gx#stx-pair? _hd2129721404_)
                                  (let ((_e2130121410_
                                         (gx#syntax-e _hd2129721404_)))
                                    (let ((_tl2129921417_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2130121410_)))
                                          (_hd2130021414_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2130121410_))))
                                      (if (gx#stx-pair/null? _tl2129621407_)
                                          (let ((___splice2430524306_
                                                 (gx#syntax-split-splice
                                                  _tl2129621407_
                                                  '0)))
                                            (let ((_tl2130421423_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2430524306_
                                                      '1)))
                                                  (_target2130221420_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2430524306_
                                                      '0))))
                                              (if (gx#stx-null? _tl2130421423_)
                                                  (___match2433524336_
                                                   _e2129521390_
                                                   _hd2129421394_
                                                   _tl2129321397_
                                                   _e2129821400_
                                                   _hd2129721404_
                                                   _tl2129621407_
                                                   _e2130121410_
                                                   _hd2130021414_
                                                   _tl2129921417_
                                                   ___splice2430524306_
                                                   _target2130221420_
                                                   _tl2130421423_)
                                                  (if (gx#stx-pair?
                                                       _tl2129621407_)
                                                      (let ((_e2132121354_
                                                             (gx#syntax-e
                                                              _tl2129621407_)))
                                                        (let ((_tl2131921361_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2132121354_)))
                      (_hd2132021358_
                       (let () (declare (not safe)) (##car _e2132121354_))))
                  (if (gx#stx-null? _tl2131921361_)
                      (___match2435524356_
                       _e2129521390_
                       _hd2129421394_
                       _tl2129321397_
                       _e2129821400_
                       _hd2129721404_
                       _tl2129621407_
                       _e2132121354_
                       _hd2132021358_
                       _tl2131921361_)
                      (let () (declare (not safe)) (_g2128821327_)))))
              (let () (declare (not safe)) (_g2128821327_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl2129621407_)
                                              (let ((_e2132121354_
                                                     (gx#syntax-e
                                                      _tl2129621407_)))
                                                (let ((_tl2131921361_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2132121354_)))
                                                      (_hd2132021358_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2132121354_))))
                                                  (if (gx#stx-null?
                                                       _tl2131921361_)
                                                      (___match2435524356_
                                                       _e2129521390_
                                                       _hd2129421394_
                                                       _tl2129321397_
                                                       _e2129821400_
                                                       _hd2129721404_
                                                       _tl2129621407_
                                                       _e2132121354_
                                                       _hd2132021358_
                                                       _tl2131921361_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2128821327_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2128821327_))))))
                                  (if (gx#stx-pair? _tl2129621407_)
                                      (let ((_e2132121354_
                                             (gx#syntax-e _tl2129621407_)))
                                        (let ((_tl2131921361_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2132121354_)))
                                              (_hd2132021358_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2132121354_))))
                                          (if (gx#stx-null? _tl2131921361_)
                                              (___match2435524356_
                                               _e2129521390_
                                               _hd2129421394_
                                               _tl2129321397_
                                               _e2129821400_
                                               _hd2129721404_
                                               _tl2129621407_
                                               _e2132121354_
                                               _hd2132021358_
                                               _tl2131921361_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2128821327_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2128821327_))))))
                          (let () (declare (not safe)) (_g2128821327_)))))
                  (let () (declare (not safe)) (_g2128821327_))))))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#definline|
      (lambda (_stx21486_)
        (let* ((_g2148921526_
                (lambda (_g2149021522_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2149021522_)))
               (_g2148821887_
                (lambda (_g2149021530_)
                  (if (gx#stx-pair? _g2149021530_)
                      (let ((_e2149621533_ (gx#syntax-e _g2149021530_)))
                        (let ((_hd2149521537_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2149621533_)))
                              (_tl2149421540_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2149621533_))))
                          (if (gx#stx-pair? _tl2149421540_)
                              (let ((_e2149921543_
                                     (gx#syntax-e _tl2149421540_)))
                                (let ((_hd2149821547_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2149921543_)))
                                      (_tl2149721550_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2149921543_))))
                                  (if (gx#stx-pair? _hd2149821547_)
                                      (let ((_e2150221553_
                                             (gx#syntax-e _hd2149821547_)))
                                        (let ((_hd2150121557_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2150221553_)))
                                              (_tl2150021560_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2150221553_))))
                                          (if (gx#stx-pair/null?
                                               _tl2150021560_)
                                              (let ((_g25753_
                                                     (gx#syntax-split-splice
                                                      _tl2150021560_
                                                      '0)))
                                                (begin
                                                  (let ((_g25754_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g25753_)
                                                               (##vector-length
                                                                _g25753_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g25754_ 2)))
                (error "Context expects 2 values" _g25754_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target2150321563_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25753_
                                                            0)))
                                                        (_tl2150521566_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25753_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl2150521566_)
                                                        (letrec ((_loop2150621569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2150421573_ _arg2151021576_)
                            (if (gx#stx-pair? _hd2150421573_)
                                (let ((_e2150721579_
                                       (gx#syntax-e _hd2150421573_)))
                                  (let ((_lp-hd2150821583_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2150721579_)))
                                        (_lp-tl2150921586_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2150721579_))))
                                    (_loop2150621569_
                                     _lp-tl2150921586_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd2150821583_
                                             _arg2151021576_)))))
                                (let ((_arg2151121589_
                                       (reverse _arg2151021576_)))
                                  (if (gx#stx-pair/null? _tl2149721550_)
                                      (let ((_g25755_
                                             (gx#syntax-split-splice
                                              _tl2149721550_
                                              '0)))
                                        (begin
                                          (let ((_g25756_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25755_)
                                                       (##vector-length
                                                        _g25755_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25756_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25756_)))
                                          (let ((_target2151221593_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25755_ 0)))
                                                (_tl2151421596_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25755_ 1))))
                                            (if (gx#stx-null? _tl2151421596_)
                                                (letrec ((_loop2151521599_
                                                          (lambda (_hd2151321603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2151921606_)
                    (if (gx#stx-pair? _hd2151321603_)
                        (let ((_e2151621609_ (gx#syntax-e _hd2151321603_)))
                          (let ((_lp-hd2151721613_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2151621609_)))
                                (_lp-tl2151821616_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2151621609_))))
                            (_loop2151521599_
                             _lp-tl2151821616_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd2151721613_ _body2151921606_)))))
                        (let ((_body2152021619_ (reverse _body2151921606_)))
                          ((lambda (_L21623_ _L21625_ _L21626_)
                             (if (and (gx#identifier? _L21626_)
                                      (gx#identifier-list?
                                       (foldr (lambda (_g2165021653_
                                                       _g2165121656_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g2165021653_
                                                        _g2165121656_)))
                                              '()
                                              _L21625_)))
                                 (let* ((_g2165921667_
                                         (lambda (_g2166021663_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2166021663_)))
                                        (_g2165821883_
                                         (lambda (_g2166021671_)
                                           ((lambda (_L21674_)
                                              (let ()
                                                (let* ((_g2168621703_
                                                        (lambda (_g2168721699_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g2168721699_)))
                                                       (_g2168521871_
                                                        (lambda (_g2168721707_)
                                                          (if (gx#stx-pair/null?
                                                               _g2168721707_)
                                                              (let ((_g25757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g2168721707_ '0)))
                        (begin
                          (let ((_g25758_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g25757_)
                                       (##vector-length _g25757_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g25758_ 2)))
                                (error "Context expects 2 values" _g25758_)))
                          (let ((_target2168921710_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g25757_ 0)))
                                (_tl2169121713_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g25757_ 1))))
                            (if (gx#stx-null? _tl2169121713_)
                                (letrec ((_loop2169221716_
                                          (lambda (_hd2169021720_
                                                   _xarg2169621723_)
                                            (if (gx#stx-pair? _hd2169021720_)
                                                (let ((_e2169321726_
                                                       (gx#syntax-e
                                                        _hd2169021720_)))
                                                  (let ((_lp-hd2169421730_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2169321726_)))
                                                        (_lp-tl2169521733_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2169321726_))))
                                                    (_loop2169221716_
                                                     _lp-tl2169521733_
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _lp-hd2169421730_
                                                             _xarg2169621723_)))))
                                                (let ((_xarg2169721736_
                                                       (reverse _xarg2169621723_)))
                                                  ((lambda (_L21740_)
                                                     (let ()
                                                       (let* ((_g2175721765_
                                                               (lambda (_g2175821761_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2175821761_)))
                      (_g2175621835_
                       (lambda (_g2175821769_)
                         ((lambda (_L21772_)
                            (let ()
                              (let* ((_g2178521793_
                                      (lambda (_g2178621789_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g2178621789_)))
                                     (_g2178421815_
                                      (lambda (_g2178621797_)
                                        ((lambda (_L21800_)
                                           (let ()
                                             (let ()
                                               (gx#stx-wrap-source
                                                (let ((__tmp25761
                                                       (gx#datum->syntax
                                                        '#f
                                                        'begin))
                                                      (__tmp25759
                                                       (let ((__tmp25760
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21772_ '()))))
                 (declare (not safe))
                 (cons _L21800_ __tmp25760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25761 __tmp25759))
                                                (gx#stx-source _stx21486_)))))
                                         _g2178621797_))))
                                (_g2178421815_
                                 (gx#stx-wrap-source
                                  (let ((__tmp25766
                                         (gx#datum->syntax '#f 'def))
                                        (__tmp25762
                                         (let ((__tmp25764
                                                (let ((__tmp25765
                                                       (foldr (lambda (_g2182021823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2182121826_)
                        (let ()
                          (declare (not safe))
                          (cons _g2182021823_ _g2182121826_)))
                      '()
                      _L21625_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L21674_ __tmp25765)))
                                               (__tmp25763
                                                (foldr (lambda (_g2181821829_
                                                                _g2181921832_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g2181821829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2181921832_)))
               '()
               _L21623_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (cons __tmp25764 __tmp25763))))
                                    (declare (not safe))
                                    (cons __tmp25766 __tmp25762))
                                  (gx#stx-source _stx21486_))))))
                          _g2175821769_))))
                 (_g2175621835_
                  (gx#stx-wrap-source
                   (let ((__tmp25794 (gx#datum->syntax '#f 'defrules))
                         (__tmp25767
                          (let ((__tmp25768
                                 (let ((__tmp25769
                                        (let ((__tmp25782
                                               (let ((__tmp25791
                                                      (let ((__tmp25793
                                                             (gx#datum->syntax
                                                              '#f
                                                              '_))
                                                            (__tmp25792
                                                             (foldr (lambda (_g2184421847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2184521850_)
                              (let ()
                                (declare (not safe))
                                (cons _g2184421847_ _g2184521850_)))
                            '()
                            _L21740_)))
                (declare (not safe))
                (cons __tmp25793 __tmp25792)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp25783
                                                      (let ((__tmp25784
                                                             (let ((__tmp25786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25790 (gx#datum->syntax '#f 'lambda))
                                  (__tmp25787
                                   (let ((__tmp25789
                                          (foldr (lambda (_g2184221853_
                                                          _g2184321856_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2184221853_
                                                           _g2184321856_)))
                                                 '()
                                                 _L21625_))
                                         (__tmp25788
                                          (foldr (lambda (_g2184021859_
                                                          _g2184121862_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2184021859_
                                                           _g2184121862_)))
                                                 '()
                                                 _L21623_)))
                                     (declare (not safe))
                                     (cons __tmp25789 __tmp25788))))
                              (declare (not safe))
                              (cons __tmp25790 __tmp25787)))
                           (__tmp25785
                            (foldr (lambda (_g2183821865_ _g2183921868_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2183821865_ _g2183921868_)))
                                   '()
                                   _L21740_)))
                       (declare (not safe))
                       (cons __tmp25786 __tmp25785))))
                (declare (not safe))
                (cons __tmp25784 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25791 __tmp25783)))
                                              (__tmp25770
                                               (let ((__tmp25771
                                                      (let ((__tmp25781
                                                             (gx#datum->syntax
                                                              '#f
                                                              'ref))
                                                            (__tmp25772
                                                             (let ((__tmp25774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25780
                                   (gx#datum->syntax '#f 'identifier?))
                                  (__tmp25775
                                   (let ((__tmp25776
                                          (let ((__tmp25779
                                                 (gx#datum->syntax
                                                  '#f
                                                  'syntax))
                                                (__tmp25777
                                                 (let ((__tmp25778
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ref)))
                                                   (declare (not safe))
                                                   (cons __tmp25778 '()))))
                                            (declare (not safe))
                                            (cons __tmp25779 __tmp25777))))
                                     (declare (not safe))
                                     (cons __tmp25776 '()))))
                              (declare (not safe))
                              (cons __tmp25780 __tmp25775)))
                           (__tmp25773
                            (let () (declare (not safe)) (cons _L21674_ '()))))
                       (declare (not safe))
                       (cons __tmp25774 __tmp25773))))
                (declare (not safe))
                (cons __tmp25781 __tmp25772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25771 '()))))
                                          (declare (not safe))
                                          (cons __tmp25782 __tmp25770))))
                                   (declare (not safe))
                                   (cons '() __tmp25769))))
                            (declare (not safe))
                            (cons _L21626_ __tmp25768))))
                     (declare (not safe))
                     (cons __tmp25794 __tmp25767))
                   (gx#stx-source _stx21486_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _xarg2169721736_))))))
                                  (_loop2169221716_ _target2168921710_ '()))
                                (_g2168621703_ _g2168721707_)))))
                      (_g2168621703_ _g2168721707_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2168521871_
                                                   (gx#gentemps
                                                    (foldr (lambda (_g2187421877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2187521880_)
                     (let ()
                       (declare (not safe))
                       (cons _g2187421877_ _g2187521880_)))
                   '()
                   _L21625_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2166021671_))))
                                   (_g2165821883_
                                    (gx#stx-identifier
                                     _L21626_
                                     _L21626_
                                     '"__impl")))
                                 (_g2148921526_ _g2149021530_)))
                           _body2152021619_
                           _arg2151121589_
                           _hd2150121557_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2151521599_
                                                   _target2151221593_
                                                   '()))
                                                (_g2148921526_
                                                 _g2149021530_)))))
                                      (_g2148921526_ _g2149021530_)))))))
                  (_loop2150621569_ _target2150321563_ '()))
                (_g2148921526_ _g2149021530_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2148921526_ _g2149021530_))))
                                      (_g2148921526_ _g2149021530_))))
                              (_g2148921526_ _g2149021530_))))
                      (_g2148921526_ _g2149021530_)))))
          (_g2148821887_ _stx21486_))))
    (define |gerbil/core/sugar~Sugar-3[:0:]#defconst|
      (lambda (_$stx21894_)
        (let* ((___stx2435824359_ _$stx21894_)
               (_g2189921935_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2435824359_))))
          (let ((___kont2436124362_
                 (lambda (_L22049_ _L22051_)
                   (let ((__tmp25812 (gx#datum->syntax '#f 'defrules))
                         (__tmp25795
                          (let ((__tmp25796
                                 (let ((__tmp25797
                                        (let ((__tmp25798
                                               (let ((__tmp25811
                                                      (gx#datum->syntax
                                                       '#f
                                                       'x))
                                                     (__tmp25799
                                                      (let ((__tmp25804
                                                             (let ((__tmp25810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'identifier?))
                           (__tmp25805
                            (let ((__tmp25806
                                   (let ((__tmp25809
                                          (gx#datum->syntax '#f 'syntax))
                                         (__tmp25807
                                          (let ((__tmp25808
                                                 (gx#datum->syntax '#f 'x)))
                                            (declare (not safe))
                                            (cons __tmp25808 '()))))
                                     (declare (not safe))
                                     (cons __tmp25809 __tmp25807))))
                              (declare (not safe))
                              (cons __tmp25806 '()))))
                       (declare (not safe))
                       (cons __tmp25810 __tmp25805)))
                    (__tmp25800
                     (let ((__tmp25801
                            (let ((__tmp25803 (gx#datum->syntax '#f 'quote))
                                  (__tmp25802
                                   (let ()
                                     (declare (not safe))
                                     (cons _L22049_ '()))))
                              (declare (not safe))
                              (cons __tmp25803 __tmp25802))))
                       (declare (not safe))
                       (cons __tmp25801 '()))))
                (declare (not safe))
                (cons __tmp25804 __tmp25800))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25811
                                                       __tmp25799))))
                                          (declare (not safe))
                                          (cons __tmp25798 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp25797))))
                            (declare (not safe))
                            (cons _L22051_ __tmp25796))))
                     (declare (not safe))
                     (cons __tmp25812 __tmp25795))))
                (___kont2436324364_
                 (lambda (_L21972_ _L21974_ _L21975_)
                   (let ((__tmp25813
                          (let ((__tmp25814
                                 (let ((__tmp25815
                                        (let ((__tmp25817
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp25816
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L21972_ '()))))
                                          (declare (not safe))
                                          (cons __tmp25817 __tmp25816))))
                                   (declare (not safe))
                                   (cons __tmp25815 '()))))
                            (declare (not safe))
                            (cons _L21974_ __tmp25814))))
                     (declare (not safe))
                     (cons _L21975_ __tmp25813)))))
            (let* ((___match2442324424_
                    (lambda (_e2192321942_
                             _hd2192221946_
                             _tl2192121949_
                             _e2192621952_
                             _hd2192521956_
                             _tl2192421959_
                             _e2192921962_
                             _hd2192821966_
                             _tl2192721969_)
                      (let ((_L21972_ _hd2192821966_)
                            (_L21974_ _hd2192521956_)
                            (_L21975_ _hd2192221946_))
                        (if (and (gx#identifier? _L21974_)
                                 (gx#stx-datum? _L21972_))
                            (___kont2436324364_ _L21972_ _L21974_ _L21975_)
                            (let () (declare (not safe)) (_g2189921935_))))))
                   (___match2440324404_
                    (lambda (_e2190521999_
                             _hd2190422003_
                             _tl2190322006_
                             _e2190822009_
                             _hd2190722013_
                             _tl2190622016_
                             _e2191122019_
                             _hd2191022023_
                             _tl2190922026_
                             _e2191422029_
                             _hd2191322033_
                             _tl2191222036_
                             _e2191722039_
                             _hd2191622043_
                             _tl2191522046_)
                      (let ((_L22049_ _hd2191622043_)
                            (_L22051_ _hd2190722013_))
                        (if (gx#identifier? _L22051_)
                            (___kont2436124362_ _L22049_ _L22051_)
                            (___match2442324424_
                             _e2190521999_
                             _hd2190422003_
                             _tl2190322006_
                             _e2190822009_
                             _hd2190722013_
                             _tl2190622016_
                             _e2191122019_
                             _hd2191022023_
                             _tl2190922026_))))))
              (if (gx#stx-pair? ___stx2435824359_)
                  (let ((_e2190521999_ (gx#syntax-e ___stx2435824359_)))
                    (let ((_tl2190322006_
                           (let () (declare (not safe)) (##cdr _e2190521999_)))
                          (_hd2190422003_
                           (let ()
                             (declare (not safe))
                             (##car _e2190521999_))))
                      (if (gx#stx-pair? _tl2190322006_)
                          (let ((_e2190822009_ (gx#syntax-e _tl2190322006_)))
                            (let ((_tl2190622016_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2190822009_)))
                                  (_hd2190722013_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2190822009_))))
                              (if (gx#stx-pair? _tl2190622016_)
                                  (let ((_e2191122019_
                                         (gx#syntax-e _tl2190622016_)))
                                    (let ((_tl2190922026_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2191122019_)))
                                          (_hd2191022023_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2191122019_))))
                                      (if (gx#stx-pair? _hd2191022023_)
                                          (let ((_e2191422029_
                                                 (gx#syntax-e _hd2191022023_)))
                                            (let ((_tl2191222036_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2191422029_)))
                                                  (_hd2191322033_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2191422029_))))
                                              (if (gx#identifier?
                                                   _hd2191322033_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-3[1]#_g25818_|
                                                       _hd2191322033_)
                                                      (if (gx#stx-pair?
                                                           _tl2191222036_)
                                                          (let ((_e2191722039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2191222036_)))
                    (let ((_tl2191522046_
                           (let () (declare (not safe)) (##cdr _e2191722039_)))
                          (_hd2191622043_
                           (let ()
                             (declare (not safe))
                             (##car _e2191722039_))))
                      (if (gx#stx-null? _tl2191522046_)
                          (if (gx#stx-null? _tl2190922026_)
                              (___match2440324404_
                               _e2190521999_
                               _hd2190422003_
                               _tl2190322006_
                               _e2190822009_
                               _hd2190722013_
                               _tl2190622016_
                               _e2191122019_
                               _hd2191022023_
                               _tl2190922026_
                               _e2191422029_
                               _hd2191322033_
                               _tl2191222036_
                               _e2191722039_
                               _hd2191622043_
                               _tl2191522046_)
                              (let () (declare (not safe)) (_g2189921935_)))
                          (if (gx#stx-null? _tl2190922026_)
                              (___match2442324424_
                               _e2190521999_
                               _hd2190422003_
                               _tl2190322006_
                               _e2190822009_
                               _hd2190722013_
                               _tl2190622016_
                               _e2191122019_
                               _hd2191022023_
                               _tl2190922026_)
                              (let () (declare (not safe)) (_g2189921935_))))))
                  (if (gx#stx-null? _tl2190922026_)
                      (___match2442324424_
                       _e2190521999_
                       _hd2190422003_
                       _tl2190322006_
                       _e2190822009_
                       _hd2190722013_
                       _tl2190622016_
                       _e2191122019_
                       _hd2191022023_
                       _tl2190922026_)
                      (let () (declare (not safe)) (_g2189921935_))))
              (if (gx#stx-null? _tl2190922026_)
                  (___match2442324424_
                   _e2190521999_
                   _hd2190422003_
                   _tl2190322006_
                   _e2190822009_
                   _hd2190722013_
                   _tl2190622016_
                   _e2191122019_
                   _hd2191022023_
                   _tl2190922026_)
                  (let () (declare (not safe)) (_g2189921935_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl2190922026_)
                                                      (___match2442324424_
                                                       _e2190521999_
                                                       _hd2190422003_
                                                       _tl2190322006_
                                                       _e2190822009_
                                                       _hd2190722013_
                                                       _tl2190622016_
                                                       _e2191122019_
                                                       _hd2191022023_
                                                       _tl2190922026_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2189921935_))))))
                                          (if (gx#stx-null? _tl2190922026_)
                                              (___match2442324424_
                                               _e2190521999_
                                               _hd2190422003_
                                               _tl2190322006_
                                               _e2190822009_
                                               _hd2190722013_
                                               _tl2190622016_
                                               _e2191122019_
                                               _hd2191022023_
                                               _tl2190922026_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2189921935_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2189921935_)))))
                          (let () (declare (not safe)) (_g2189921935_)))))
                  (let () (declare (not safe)) (_g2189921935_))))))))))
