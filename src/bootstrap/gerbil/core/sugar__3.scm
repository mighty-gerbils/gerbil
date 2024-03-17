(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar$<sugar:3>[1]#_g25679_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar$<sugar:3>[:0:]#defsyntax|
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
                   (let ((__tmp25610 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp25604
                          (let ((__tmp25605
                                 (let ((__tmp25606
                                        (let ((__tmp25609
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp25607
                                               (let ((__tmp25608
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
                                                 (cons _L21452_ __tmp25608))))
                                          (declare (not safe))
                                          (cons __tmp25609 __tmp25607))))
                                   (declare (not safe))
                                   (cons __tmp25606 '()))))
                            (declare (not safe))
                            (cons _L21453_ __tmp25605))))
                     (declare (not safe))
                     (cons __tmp25610 __tmp25604))))
                (___kont2430724308_
                 (lambda (_L21364_ _L21366_)
                   (let ((__tmp25613 (gx#datum->syntax '#f 'define-syntax))
                         (__tmp25611
                          (let ((__tmp25612
                                 (let ()
                                   (declare (not safe))
                                   (cons _L21364_ '()))))
                            (declare (not safe))
                            (cons _L21366_ __tmp25612))))
                     (declare (not safe))
                     (cons __tmp25613 __tmp25611)))))
            (let* ((___match2435524356_
                    (lambda (_e2131321334_
                             _hd2131421338_
                             _tl2131521341_
                             _e2131621344_
                             _hd2131721348_
                             _tl2131821351_
                             _e2131921354_
                             _hd2132021358_
                             _tl2132121361_)
                      (let ((_L21364_ _hd2132021358_)
                            (_L21366_ _hd2131721348_))
                        (if (gx#identifier? _L21366_)
                            (___kont2430724308_ _L21364_ _L21366_)
                            (let () (declare (not safe)) (_g2128821327_))))))
                   (___match2434724348_
                    (lambda (_e2131321334_
                             _hd2131421338_
                             _tl2131521341_
                             _e2131621344_
                             _hd2131721348_
                             _tl2131821351_)
                      (if (gx#stx-pair? _tl2131821351_)
                          (let ((_e2131921354_ (gx#syntax-e _tl2131821351_)))
                            (let ((_tl2132121361_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2131921354_)))
                                  (_hd2132021358_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2131921354_))))
                              (if (gx#stx-null? _tl2132121361_)
                                  (___match2435524356_
                                   _e2131321334_
                                   _hd2131421338_
                                   _tl2131521341_
                                   _e2131621344_
                                   _hd2131721348_
                                   _tl2131821351_
                                   _e2131921354_
                                   _hd2132021358_
                                   _tl2132121361_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2128821327_)))))
                          (let () (declare (not safe)) (_g2128821327_)))))
                   (___match2433524336_
                    (lambda (_e2129321390_
                             _hd2129421394_
                             _tl2129521397_
                             _e2129621400_
                             _hd2129721404_
                             _tl2129821407_
                             _e2129921410_
                             _hd2130021414_
                             _tl2130121417_
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
                                              (_L21452_ _tl2130121417_)
                                              (_L21453_ _hd2130021414_))
                                          (if (gx#identifier? _L21453_)
                                              (___kont2430324304_
                                               _L21450_
                                               _L21452_
                                               _L21453_)
                                              (___match2434724348_
                                               _e2129321390_
                                               _hd2129421394_
                                               _tl2129521397_
                                               _e2129621400_
                                               _hd2129721404_
                                               _tl2129821407_))))))))
                        (_loop2130521426_ _target2130221420_ '())))))
              (if (gx#stx-pair? ___stx2430024301_)
                  (let ((_e2129321390_ (gx#syntax-e ___stx2430024301_)))
                    (let ((_tl2129521397_
                           (let () (declare (not safe)) (##cdr _e2129321390_)))
                          (_hd2129421394_
                           (let ()
                             (declare (not safe))
                             (##car _e2129321390_))))
                      (if (gx#stx-pair? _tl2129521397_)
                          (let ((_e2129621400_ (gx#syntax-e _tl2129521397_)))
                            (let ((_tl2129821407_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2129621400_)))
                                  (_hd2129721404_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2129621400_))))
                              (if (gx#stx-pair? _hd2129721404_)
                                  (let ((_e2129921410_
                                         (gx#syntax-e _hd2129721404_)))
                                    (let ((_tl2130121417_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2129921410_)))
                                          (_hd2130021414_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2129921410_))))
                                      (if (gx#stx-pair/null? _tl2129821407_)
                                          (let ((___splice2430524306_
                                                 (gx#syntax-split-splice
                                                  _tl2129821407_
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
                                                   _e2129321390_
                                                   _hd2129421394_
                                                   _tl2129521397_
                                                   _e2129621400_
                                                   _hd2129721404_
                                                   _tl2129821407_
                                                   _e2129921410_
                                                   _hd2130021414_
                                                   _tl2130121417_
                                                   ___splice2430524306_
                                                   _target2130221420_
                                                   _tl2130421423_)
                                                  (if (gx#stx-pair?
                                                       _tl2129821407_)
                                                      (let ((_e2131921354_
                                                             (gx#syntax-e
                                                              _tl2129821407_)))
                                                        (let ((_tl2132121361_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2131921354_)))
                      (_hd2132021358_
                       (let () (declare (not safe)) (##car _e2131921354_))))
                  (if (gx#stx-null? _tl2132121361_)
                      (___match2435524356_
                       _e2129321390_
                       _hd2129421394_
                       _tl2129521397_
                       _e2129621400_
                       _hd2129721404_
                       _tl2129821407_
                       _e2131921354_
                       _hd2132021358_
                       _tl2132121361_)
                      (let () (declare (not safe)) (_g2128821327_)))))
              (let () (declare (not safe)) (_g2128821327_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl2129821407_)
                                              (let ((_e2131921354_
                                                     (gx#syntax-e
                                                      _tl2129821407_)))
                                                (let ((_tl2132121361_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2131921354_)))
                                                      (_hd2132021358_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2131921354_))))
                                                  (if (gx#stx-null?
                                                       _tl2132121361_)
                                                      (___match2435524356_
                                                       _e2129321390_
                                                       _hd2129421394_
                                                       _tl2129521397_
                                                       _e2129621400_
                                                       _hd2129721404_
                                                       _tl2129821407_
                                                       _e2131921354_
                                                       _hd2132021358_
                                                       _tl2132121361_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2128821327_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2128821327_))))))
                                  (if (gx#stx-pair? _tl2129821407_)
                                      (let ((_e2131921354_
                                             (gx#syntax-e _tl2129821407_)))
                                        (let ((_tl2132121361_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2131921354_)))
                                              (_hd2132021358_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2131921354_))))
                                          (if (gx#stx-null? _tl2132121361_)
                                              (___match2435524356_
                                               _e2129321390_
                                               _hd2129421394_
                                               _tl2129521397_
                                               _e2129621400_
                                               _hd2129721404_
                                               _tl2129821407_
                                               _e2131921354_
                                               _hd2132021358_
                                               _tl2132121361_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2128821327_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2128821327_))))))
                          (let () (declare (not safe)) (_g2128821327_)))))
                  (let () (declare (not safe)) (_g2128821327_))))))))
    (define |gerbil/core/sugar$<sugar:3>[:0:]#definline|
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
                      (let ((_e2149421533_ (gx#syntax-e _g2149021530_)))
                        (let ((_hd2149521537_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2149421533_)))
                              (_tl2149621540_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2149421533_))))
                          (if (gx#stx-pair? _tl2149621540_)
                              (let ((_e2149721543_
                                     (gx#syntax-e _tl2149621540_)))
                                (let ((_hd2149821547_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2149721543_)))
                                      (_tl2149921550_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2149721543_))))
                                  (if (gx#stx-pair? _hd2149821547_)
                                      (let ((_e2150021553_
                                             (gx#syntax-e _hd2149821547_)))
                                        (let ((_hd2150121557_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2150021553_)))
                                              (_tl2150221560_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2150021553_))))
                                          (if (gx#stx-pair/null?
                                               _tl2150221560_)
                                              (let ((_g25614_
                                                     (gx#syntax-split-splice
                                                      _tl2150221560_
                                                      '0)))
                                                (begin
                                                  (let ((_g25615_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g25614_)
                                                               (##vector-length
                                                                _g25614_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g25615_ 2)))
                (error "Context expects 2 values" _g25615_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target2150321563_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25614_
                                                            0)))
                                                        (_tl2150521566_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25614_
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
                                  (if (gx#stx-pair/null? _tl2149921550_)
                                      (let ((_g25616_
                                             (gx#syntax-split-splice
                                              _tl2149921550_
                                              '0)))
                                        (begin
                                          (let ((_g25617_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25616_)
                                                       (##vector-length
                                                        _g25616_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25617_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25617_)))
                                          (let ((_target2151221593_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25616_ 0)))
                                                (_tl2151421596_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25616_ 1))))
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
                                                              (let ((_g25618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _g2168721707_ '0)))
                        (begin
                          (let ((_g25619_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g25618_)
                                       (##vector-length _g25618_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g25619_ 2)))
                                (error "Context expects 2 values" _g25619_)))
                          (let ((_target2168921710_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g25618_ 0)))
                                (_tl2169121713_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g25618_ 1))))
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
                                                (let ((__tmp25622
                                                       (gx#datum->syntax
                                                        '#f
                                                        'begin))
                                                      (__tmp25620
                                                       (let ((__tmp25621
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21772_ '()))))
                 (declare (not safe))
                 (cons _L21800_ __tmp25621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25622 __tmp25620))
                                                (gx#stx-source _stx21486_)))))
                                         _g2178621797_))))
                                (_g2178421815_
                                 (gx#stx-wrap-source
                                  (let ((__tmp25627
                                         (gx#datum->syntax '#f 'def))
                                        (__tmp25623
                                         (let ((__tmp25625
                                                (let ((__tmp25626
                                                       (foldr (lambda (_g2181821823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2181921826_)
                        (let ()
                          (declare (not safe))
                          (cons _g2181821823_ _g2181921826_)))
                      '()
                      _L21625_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L21674_ __tmp25626)))
                                               (__tmp25624
                                                (foldr (lambda (_g2182021829_
                                                                _g2182121832_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g2182021829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2182121832_)))
               '()
               _L21623_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (cons __tmp25625 __tmp25624))))
                                    (declare (not safe))
                                    (cons __tmp25627 __tmp25623))
                                  (gx#stx-source _stx21486_))))))
                          _g2175821769_))))
                 (_g2175621835_
                  (gx#stx-wrap-source
                   (let ((__tmp25655 (gx#datum->syntax '#f 'defrules))
                         (__tmp25628
                          (let ((__tmp25629
                                 (let ((__tmp25630
                                        (let ((__tmp25643
                                               (let ((__tmp25652
                                                      (let ((__tmp25654
                                                             (gx#datum->syntax
                                                              '#f
                                                              '_))
                                                            (__tmp25653
                                                             (foldr (lambda (_g2183821847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2183921850_)
                              (let ()
                                (declare (not safe))
                                (cons _g2183821847_ _g2183921850_)))
                            '()
                            _L21740_)))
                (declare (not safe))
                (cons __tmp25654 __tmp25653)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp25644
                                                      (let ((__tmp25645
                                                             (let ((__tmp25647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25651 (gx#datum->syntax '#f 'lambda))
                                  (__tmp25648
                                   (let ((__tmp25650
                                          (foldr (lambda (_g2184021853_
                                                          _g2184121856_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2184021853_
                                                           _g2184121856_)))
                                                 '()
                                                 _L21625_))
                                         (__tmp25649
                                          (foldr (lambda (_g2184221859_
                                                          _g2184321862_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2184221859_
                                                           _g2184321862_)))
                                                 '()
                                                 _L21623_)))
                                     (declare (not safe))
                                     (cons __tmp25650 __tmp25649))))
                              (declare (not safe))
                              (cons __tmp25651 __tmp25648)))
                           (__tmp25646
                            (foldr (lambda (_g2184421865_ _g2184521868_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2184421865_ _g2184521868_)))
                                   '()
                                   _L21740_)))
                       (declare (not safe))
                       (cons __tmp25647 __tmp25646))))
                (declare (not safe))
                (cons __tmp25645 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25652 __tmp25644)))
                                              (__tmp25631
                                               (let ((__tmp25632
                                                      (let ((__tmp25642
                                                             (gx#datum->syntax
                                                              '#f
                                                              'ref))
                                                            (__tmp25633
                                                             (let ((__tmp25635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25641
                                   (gx#datum->syntax '#f 'identifier?))
                                  (__tmp25636
                                   (let ((__tmp25637
                                          (let ((__tmp25640
                                                 (gx#datum->syntax
                                                  '#f
                                                  'syntax))
                                                (__tmp25638
                                                 (let ((__tmp25639
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ref)))
                                                   (declare (not safe))
                                                   (cons __tmp25639 '()))))
                                            (declare (not safe))
                                            (cons __tmp25640 __tmp25638))))
                                     (declare (not safe))
                                     (cons __tmp25637 '()))))
                              (declare (not safe))
                              (cons __tmp25641 __tmp25636)))
                           (__tmp25634
                            (let () (declare (not safe)) (cons _L21674_ '()))))
                       (declare (not safe))
                       (cons __tmp25635 __tmp25634))))
                (declare (not safe))
                (cons __tmp25642 __tmp25633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25632 '()))))
                                          (declare (not safe))
                                          (cons __tmp25643 __tmp25631))))
                                   (declare (not safe))
                                   (cons '() __tmp25630))))
                            (declare (not safe))
                            (cons _L21626_ __tmp25629))))
                     (declare (not safe))
                     (cons __tmp25655 __tmp25628))
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
    (define |gerbil/core/sugar$<sugar:3>[:0:]#defconst|
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
                   (let ((__tmp25673 (gx#datum->syntax '#f 'defrules))
                         (__tmp25656
                          (let ((__tmp25657
                                 (let ((__tmp25658
                                        (let ((__tmp25659
                                               (let ((__tmp25672
                                                      (gx#datum->syntax
                                                       '#f
                                                       'x))
                                                     (__tmp25660
                                                      (let ((__tmp25665
                                                             (let ((__tmp25671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'identifier?))
                           (__tmp25666
                            (let ((__tmp25667
                                   (let ((__tmp25670
                                          (gx#datum->syntax '#f 'syntax))
                                         (__tmp25668
                                          (let ((__tmp25669
                                                 (gx#datum->syntax '#f 'x)))
                                            (declare (not safe))
                                            (cons __tmp25669 '()))))
                                     (declare (not safe))
                                     (cons __tmp25670 __tmp25668))))
                              (declare (not safe))
                              (cons __tmp25667 '()))))
                       (declare (not safe))
                       (cons __tmp25671 __tmp25666)))
                    (__tmp25661
                     (let ((__tmp25662
                            (let ((__tmp25664 (gx#datum->syntax '#f 'quote))
                                  (__tmp25663
                                   (let ()
                                     (declare (not safe))
                                     (cons _L22049_ '()))))
                              (declare (not safe))
                              (cons __tmp25664 __tmp25663))))
                       (declare (not safe))
                       (cons __tmp25662 '()))))
                (declare (not safe))
                (cons __tmp25665 __tmp25661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25672
                                                       __tmp25660))))
                                          (declare (not safe))
                                          (cons __tmp25659 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp25658))))
                            (declare (not safe))
                            (cons _L22051_ __tmp25657))))
                     (declare (not safe))
                     (cons __tmp25673 __tmp25656))))
                (___kont2436324364_
                 (lambda (_L21972_ _L21974_ _L21975_)
                   (let ((__tmp25674
                          (let ((__tmp25675
                                 (let ((__tmp25676
                                        (let ((__tmp25678
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp25677
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L21972_ '()))))
                                          (declare (not safe))
                                          (cons __tmp25678 __tmp25677))))
                                   (declare (not safe))
                                   (cons __tmp25676 '()))))
                            (declare (not safe))
                            (cons _L21974_ __tmp25675))))
                     (declare (not safe))
                     (cons _L21975_ __tmp25674)))))
            (let* ((___match2442324424_
                    (lambda (_e2192121942_
                             _hd2192221946_
                             _tl2192321949_
                             _e2192421952_
                             _hd2192521956_
                             _tl2192621959_
                             _e2192721962_
                             _hd2192821966_
                             _tl2192921969_)
                      (let ((_L21972_ _hd2192821966_)
                            (_L21974_ _hd2192521956_)
                            (_L21975_ _hd2192221946_))
                        (if (and (gx#identifier? _L21974_)
                                 (gx#stx-datum? _L21972_))
                            (___kont2436324364_ _L21972_ _L21974_ _L21975_)
                            (let () (declare (not safe)) (_g2189921935_))))))
                   (___match2440324404_
                    (lambda (_e2190321999_
                             _hd2190422003_
                             _tl2190522006_
                             _e2190622009_
                             _hd2190722013_
                             _tl2190822016_
                             _e2190922019_
                             _hd2191022023_
                             _tl2191122026_
                             _e2191222029_
                             _hd2191322033_
                             _tl2191422036_
                             _e2191522039_
                             _hd2191622043_
                             _tl2191722046_)
                      (let ((_L22049_ _hd2191622043_)
                            (_L22051_ _hd2190722013_))
                        (if (gx#identifier? _L22051_)
                            (___kont2436124362_ _L22049_ _L22051_)
                            (___match2442324424_
                             _e2190321999_
                             _hd2190422003_
                             _tl2190522006_
                             _e2190622009_
                             _hd2190722013_
                             _tl2190822016_
                             _e2190922019_
                             _hd2191022023_
                             _tl2191122026_))))))
              (if (gx#stx-pair? ___stx2435824359_)
                  (let ((_e2190321999_ (gx#syntax-e ___stx2435824359_)))
                    (let ((_tl2190522006_
                           (let () (declare (not safe)) (##cdr _e2190321999_)))
                          (_hd2190422003_
                           (let ()
                             (declare (not safe))
                             (##car _e2190321999_))))
                      (if (gx#stx-pair? _tl2190522006_)
                          (let ((_e2190622009_ (gx#syntax-e _tl2190522006_)))
                            (let ((_tl2190822016_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2190622009_)))
                                  (_hd2190722013_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2190622009_))))
                              (if (gx#stx-pair? _tl2190822016_)
                                  (let ((_e2190922019_
                                         (gx#syntax-e _tl2190822016_)))
                                    (let ((_tl2191122026_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2190922019_)))
                                          (_hd2191022023_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2190922019_))))
                                      (if (gx#stx-pair? _hd2191022023_)
                                          (let ((_e2191222029_
                                                 (gx#syntax-e _hd2191022023_)))
                                            (let ((_tl2191422036_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2191222029_)))
                                                  (_hd2191322033_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2191222029_))))
                                              (if (gx#identifier?
                                                   _hd2191322033_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar$<sugar:3>[1]#_g25679_|
                                                       _hd2191322033_)
                                                      (if (gx#stx-pair?
                                                           _tl2191422036_)
                                                          (let ((_e2191522039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2191422036_)))
                    (let ((_tl2191722046_
                           (let () (declare (not safe)) (##cdr _e2191522039_)))
                          (_hd2191622043_
                           (let ()
                             (declare (not safe))
                             (##car _e2191522039_))))
                      (if (gx#stx-null? _tl2191722046_)
                          (if (gx#stx-null? _tl2191122026_)
                              (___match2440324404_
                               _e2190321999_
                               _hd2190422003_
                               _tl2190522006_
                               _e2190622009_
                               _hd2190722013_
                               _tl2190822016_
                               _e2190922019_
                               _hd2191022023_
                               _tl2191122026_
                               _e2191222029_
                               _hd2191322033_
                               _tl2191422036_
                               _e2191522039_
                               _hd2191622043_
                               _tl2191722046_)
                              (let () (declare (not safe)) (_g2189921935_)))
                          (if (gx#stx-null? _tl2191122026_)
                              (___match2442324424_
                               _e2190321999_
                               _hd2190422003_
                               _tl2190522006_
                               _e2190622009_
                               _hd2190722013_
                               _tl2190822016_
                               _e2190922019_
                               _hd2191022023_
                               _tl2191122026_)
                              (let () (declare (not safe)) (_g2189921935_))))))
                  (if (gx#stx-null? _tl2191122026_)
                      (___match2442324424_
                       _e2190321999_
                       _hd2190422003_
                       _tl2190522006_
                       _e2190622009_
                       _hd2190722013_
                       _tl2190822016_
                       _e2190922019_
                       _hd2191022023_
                       _tl2191122026_)
                      (let () (declare (not safe)) (_g2189921935_))))
              (if (gx#stx-null? _tl2191122026_)
                  (___match2442324424_
                   _e2190321999_
                   _hd2190422003_
                   _tl2190522006_
                   _e2190622009_
                   _hd2190722013_
                   _tl2190822016_
                   _e2190922019_
                   _hd2191022023_
                   _tl2191122026_)
                  (let () (declare (not safe)) (_g2189921935_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl2191122026_)
                                                      (___match2442324424_
                                                       _e2190321999_
                                                       _hd2190422003_
                                                       _tl2190522006_
                                                       _e2190622009_
                                                       _hd2190722013_
                                                       _tl2190822016_
                                                       _e2190922019_
                                                       _hd2191022023_
                                                       _tl2191122026_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2189921935_))))))
                                          (if (gx#stx-null? _tl2191122026_)
                                              (___match2442324424_
                                               _e2190321999_
                                               _hd2190422003_
                                               _tl2190522006_
                                               _e2190622009_
                                               _hd2190722013_
                                               _tl2190822016_
                                               _e2190922019_
                                               _hd2191022023_
                                               _tl2191122026_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2189921935_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2189921935_)))))
                          (let () (declare (not safe)) (_g2189921935_)))))
                  (let () (declare (not safe)) (_g2189921935_))))))))))
