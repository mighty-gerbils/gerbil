(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx155024_)
      (let* ((_g155028155046_
              (lambda (_g155029155042_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g155029155042_))))
             (_g155027155101_
              (lambda (_g155029155050_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g155029155050_))
                    (let ((_e155032155053_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g155029155050_))))
                      (let ((_hd155033155057_
                             (let ()
                               (declare (not safe))
                               (##car _e155032155053_)))
                            (_tl155034155060_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155032155053_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155034155060_))
                            (let ((_e155035155063_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl155034155060_))))
                              (let ((_hd155036155067_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155035155063_)))
                                    (_tl155037155070_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155035155063_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl155037155070_))
                                    (let ((_e155038155073_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl155037155070_))))
                                      (let ((_hd155039155077_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155038155073_)))
                                            (_tl155040155080_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155038155073_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl155040155080_))
                                            ((lambda (_L155083_ _L155085_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L155085_))
                                                   (let ((__tmp158565
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp158560
                                                          (let ((__tmp158562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp158564
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp158563
                                (let ()
                                  (declare (not safe))
                                  (cons _L155085_ '()))))
                           (declare (not safe))
                           (cons __tmp158564 __tmp158563)))
                        (__tmp158561
                         (let () (declare (not safe)) (cons _L155083_ '()))))
                    (declare (not safe))
                    (cons __tmp158562 __tmp158561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp158565
                                                           __tmp158560))
                                                   (_g155028155046_
                                                    _g155029155050_)))
                                             _hd155039155077_
                                             _hd155036155067_)
                                            (_g155028155046_
                                             _g155029155050_))))
                                    (_g155028155046_ _g155029155050_))))
                            (_g155028155046_ _g155029155050_))))
                    (_g155028155046_ _g155029155050_)))))
        (_g155027155101_ _$stx155024_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx155105_)
      (let* ((_g155109155138_
              (lambda (_g155110155134_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g155110155134_))))
             (_g155108155238_
              (lambda (_g155110155142_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g155110155142_))
                    (let ((_e155113155145_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g155110155142_))))
                      (let ((_hd155114155149_
                             (let ()
                               (declare (not safe))
                               (##car _e155113155145_)))
                            (_tl155115155152_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155113155145_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl155115155152_))
                            (let ((_g158566_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl155115155152_
                                      '0))))
                              (begin
                                (let ((_g158567_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g158566_)
                                             (##vector-length _g158566_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g158567_ 2)))
                                      (error "Context expects 2 values"
                                             _g158567_)))
                                (let ((_target155116155155_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g158566_ 0)))
                                      (_tl155118155158_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g158566_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl155118155158_))
                                      (letrec ((_loop155119155161_
                                                (lambda (_hd155117155165_
                                                         _type155123155168_
                                                         _symbol155124155170_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd155117155165_))
                                                      (let ((_e155120155173_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd155117155165_))))
                (let ((_lp-hd155121155177_
                       (let () (declare (not safe)) (##car _e155120155173_)))
                      (_lp-tl155122155180_
                       (let () (declare (not safe)) (##cdr _e155120155173_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd155121155177_))
                      (let ((_e155127155183_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd155121155177_))))
                        (let ((_hd155128155187_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155127155183_)))
                              (_tl155129155190_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155127155183_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl155129155190_))
                              (let ((_e155130155193_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl155129155190_))))
                                (let ((_hd155131155197_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155130155193_)))
                                      (_tl155132155200_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155130155193_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl155132155200_))
                                      (_loop155119155161_
                                       _lp-tl155122155180_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd155131155197_
                                               _type155123155168_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd155128155187_
                                               _symbol155124155170_)))
                                      (_g155109155138_ _g155110155142_))))
                              (_g155109155138_ _g155110155142_))))
                      (_g155109155138_ _g155110155142_))))
              (let ((_type155125155203_ (reverse _type155123155168_))
                    (_symbol155126155206_ (reverse _symbol155124155170_)))
                ((lambda (_L155209_ _L155211_)
                   (let ((__tmp158574
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp158568
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L155209_
                               _L155211_))
                            (let ((__tmp158569
                                   (lambda (_g155226155230_
                                            _g155227155233_
                                            _g155228155235_)
                                     (let ((__tmp158570
                                            (let ((__tmp158573
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp158571
                                                   (let ((__tmp158572
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g155226155230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g155227155233_
                                                           __tmp158572))))
                                              (declare (not safe))
                                              (cons __tmp158573 __tmp158571))))
                                       (declare (not safe))
                                       (cons __tmp158570 _g155228155235_)))))
                              (declare (not safe))
                              (foldr2 __tmp158569 '() _L155209_ _L155211_)))))
                     (declare (not safe))
                     (cons __tmp158574 __tmp158568)))
                 _type155125155203_
                 _symbol155126155206_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop155119155161_
                                         _target155116155155_
                                         '()
                                         '()))
                                      (_g155109155138_ _g155110155142_)))))
                            (_g155109155138_ _g155110155142_))))
                    (_g155109155138_ _g155110155142_)))))
        (_g155108155238_ _$stx155105_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx155243_)
      (let* ((___stx158125158126_ _$stx155243_)
             (_g155248155290_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx158125158126_)))))
        (let ((___kont158128158129_
               (lambda (_L155418_ _L155420_ _L155421_ _L155422_)
                 (let ((__tmp158588
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp158575
                        (let ((__tmp158585
                               (let ((__tmp158587
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp158586
                                      (let ()
                                        (declare (not safe))
                                        (cons _L155422_ '()))))
                                 (declare (not safe))
                                 (cons __tmp158587 __tmp158586)))
                              (__tmp158576
                               (let ((__tmp158582
                                      (let ((__tmp158584
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp158583
                                             (let ()
                                               (declare (not safe))
                                               (cons _L155421_ '()))))
                                        (declare (not safe))
                                        (cons __tmp158584 __tmp158583)))
                                     (__tmp158577
                                      (let ((__tmp158579
                                             (let ((__tmp158581
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp158580
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L155420_ '()))))
                                               (declare (not safe))
                                               (cons __tmp158581 __tmp158580)))
                                            (__tmp158578
                                             (let ()
                                               (declare (not safe))
                                               (cons _L155418_ '()))))
                                        (declare (not safe))
                                        (cons __tmp158579 __tmp158578))))
                                 (declare (not safe))
                                 (cons __tmp158582 __tmp158577))))
                          (declare (not safe))
                          (cons __tmp158585 __tmp158576))))
                   (declare (not safe))
                   (cons __tmp158588 __tmp158575))))
              (___kont158130158131_
               (lambda (_L155337_ _L155339_ _L155340_ _L155341_)
                 (let ((__tmp158589
                        (let ((__tmp158590
                               (let ((__tmp158591
                                      (let ((__tmp158592
                                             (let ((__tmp158593
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp158593 '()))))
                                        (declare (not safe))
                                        (cons _L155337_ __tmp158592))))
                                 (declare (not safe))
                                 (cons _L155339_ __tmp158591))))
                          (declare (not safe))
                          (cons _L155340_ __tmp158590))))
                   (declare (not safe))
                   (cons _L155341_ __tmp158589)))))
          (let ((___match158164158165_
                 (lambda (_e155254155368_
                          _hd155255155372_
                          _tl155256155375_
                          _e155257155378_
                          _hd155258155382_
                          _tl155259155385_
                          _e155260155388_
                          _hd155261155392_
                          _tl155262155395_
                          _e155263155398_
                          _hd155264155402_
                          _tl155265155405_
                          _e155266155408_
                          _hd155267155412_
                          _tl155268155415_)
                   (let ((_L155418_ _hd155267155412_)
                         (_L155420_ _hd155264155402_)
                         (_L155421_ _hd155261155392_)
                         (_L155422_ _hd155258155382_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L155422_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L155421_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L155420_)))
                         (___kont158128158129_
                          _L155418_
                          _L155420_
                          _L155421_
                          _L155422_)
                         (let () (declare (not safe)) (_g155248155290_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx158125158126_))
                (let ((_e155254155368_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx158125158126_))))
                  (let ((_tl155256155375_
                         (let () (declare (not safe)) (##cdr _e155254155368_)))
                        (_hd155255155372_
                         (let ()
                           (declare (not safe))
                           (##car _e155254155368_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl155256155375_))
                        (let ((_e155257155378_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl155256155375_))))
                          (let ((_tl155259155385_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e155257155378_)))
                                (_hd155258155382_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e155257155378_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl155259155385_))
                                (let ((_e155260155388_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl155259155385_))))
                                  (let ((_tl155262155395_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e155260155388_)))
                                        (_hd155261155392_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e155260155388_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl155262155395_))
                                        (let ((_e155263155398_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl155262155395_))))
                                          (let ((_tl155265155405_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e155263155398_)))
                                                (_hd155264155402_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e155263155398_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl155265155405_))
                                                (let ((_e155266155408_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl155265155405_))))
                                                  (let ((_tl155268155415_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e155266155408_)))
                                                        (_hd155267155412_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e155266155408_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155268155415_))
                                                        (___match158164158165_
                                                         _e155254155368_
                                                         _hd155255155372_
                                                         _tl155256155375_
                                                         _e155257155378_
                                                         _hd155258155382_
                                                         _tl155259155385_
                                                         _e155260155388_
                                                         _hd155261155392_
                                                         _tl155262155395_
                                                         _e155263155398_
                                                         _hd155264155402_
                                                         _tl155265155405_
                                                         _e155266155408_
                                                         _hd155267155412_
                                                         _tl155268155415_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g155248155290_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl155265155405_))
                                                    (___kont158130158131_
                                                     _hd155264155402_
                                                     _hd155261155392_
                                                     _hd155258155382_
                                                     _hd155255155372_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g155248155290_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g155248155290_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g155248155290_)))))
                        (let () (declare (not safe)) (_g155248155290_)))))
                (let () (declare (not safe)) (_g155248155290_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx155447_)
      (let* ((_g155451155486_
              (lambda (_g155452155482_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g155452155482_))))
             (_g155450155605_
              (lambda (_g155452155490_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g155452155490_))
                    (let ((_e155456155493_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g155452155490_))))
                      (let ((_hd155457155497_
                             (let ()
                               (declare (not safe))
                               (##car _e155456155493_)))
                            (_tl155458155500_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155456155493_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl155458155500_))
                            (let ((_g158594_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl155458155500_
                                      '0))))
                              (begin
                                (let ((_g158595_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g158594_)
                                             (##vector-length _g158594_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g158595_ 2)))
                                      (error "Context expects 2 values"
                                             _g158595_)))
                                (let ((_target155459155503_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g158594_ 0)))
                                      (_tl155461155506_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g158594_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl155461155506_))
                                      (letrec ((_loop155462155509_
                                                (lambda (_hd155460155513_
                                                         _symbol155466155516_
                                                         _method155467155518_
                                                         _type-t155468155520_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd155460155513_))
                                                      (let ((_e155463155523_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd155460155513_))))
                (let ((_lp-hd155464155527_
                       (let () (declare (not safe)) (##car _e155463155523_)))
                      (_lp-tl155465155530_
                       (let () (declare (not safe)) (##cdr _e155463155523_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd155464155527_))
                      (let ((_e155472155533_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd155464155527_))))
                        (let ((_hd155473155537_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155472155533_)))
                              (_tl155474155540_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155472155533_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl155474155540_))
                              (let ((_e155475155543_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl155474155540_))))
                                (let ((_hd155476155547_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155475155543_)))
                                      (_tl155477155550_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155475155543_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl155477155550_))
                                      (let ((_e155478155553_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl155477155550_))))
                                        (let ((_hd155479155557_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e155478155553_)))
                                              (_tl155480155560_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e155478155553_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155480155560_))
                                              (_loop155462155509_
                                               _lp-tl155465155530_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd155479155557_
                                                       _symbol155466155516_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd155476155547_
                                                       _method155467155518_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd155473155537_
                                                       _type-t155468155520_)))
                                              (_g155451155486_
                                               _g155452155490_))))
                                      (_g155451155486_ _g155452155490_))))
                              (_g155451155486_ _g155452155490_))))
                      (_g155451155486_ _g155452155490_))))
              (let ((_symbol155469155563_ (reverse _symbol155466155516_))
                    (_method155470155566_ (reverse _method155467155518_))
                    (_type-t155471155568_ (reverse _type-t155468155520_)))
                ((lambda (_L155571_ _L155573_ _L155574_)
                   (let ((__tmp158603
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp158596
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L155571_
                               _L155573_
                               _L155574_))
                            (let ((__tmp158597
                                   (lambda (_g155590155595_
                                            _g155591155598_
                                            _g155592155600_
                                            _g155593155602_)
                                     (let ((__tmp158598
                                            (let ((__tmp158602
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp158599
                                                   (let ((__tmp158600
                                                          (let ((__tmp158601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g155590155595_ '()))))
                    (declare (not safe))
                    (cons _g155591155598_ __tmp158601))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g155592155600_
                                                           __tmp158600))))
                                              (declare (not safe))
                                              (cons __tmp158602 __tmp158599))))
                                       (declare (not safe))
                                       (cons __tmp158598 _g155593155602_)))))
                              (declare (not safe))
                              (foldr* __tmp158597
                                      '()
                                      _L155571_
                                      _L155573_
                                      _L155574_)))))
                     (declare (not safe))
                     (cons __tmp158603 __tmp158596)))
                 _symbol155469155563_
                 _method155470155566_
                 _type-t155471155568_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop155462155509_
                                         _target155459155503_
                                         '()
                                         '()
                                         '()))
                                      (_g155451155486_ _g155452155490_)))))
                            (_g155451155486_ _g155452155490_))))
                    (_g155451155486_ _g155452155490_)))))
        (_g155450155605_ _$stx155447_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx155610_)
      (let* ((_g155614155647_
              (lambda (_g155615155643_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g155615155643_))))
             (_g155613155761_
              (lambda (_g155615155651_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g155615155651_))
                    (let ((_e155619155654_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g155615155651_))))
                      (let ((_hd155620155658_
                             (let ()
                               (declare (not safe))
                               (##car _e155619155654_)))
                            (_tl155621155661_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155619155654_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155621155661_))
                            (let ((_e155622155664_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl155621155661_))))
                              (let ((_hd155623155668_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155622155664_)))
                                    (_tl155624155671_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155622155664_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl155624155671_))
                                    (let ((_g158604_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl155624155671_
                                              '0))))
                                      (begin
                                        (let ((_g158605_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g158604_)
                                                     (##vector-length
                                                      _g158604_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g158605_ 2)))
                                              (error "Context expects 2 values"
                                                     _g158605_)))
                                        (let ((_target155625155674_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g158604_ 0)))
                                              (_tl155627155677_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g158604_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155627155677_))
                                              (letrec ((_loop155628155680_
                                                        (lambda (_hd155626155684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol155632155687_
                         _method155633155689_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd155626155684_))
                      (let ((_e155629155692_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd155626155684_))))
                        (let ((_lp-hd155630155696_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155629155692_)))
                              (_lp-tl155631155699_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155629155692_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd155630155696_))
                              (let ((_e155636155702_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd155630155696_))))
                                (let ((_hd155637155706_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155636155702_)))
                                      (_tl155638155709_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155636155702_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl155638155709_))
                                      (let ((_e155639155712_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl155638155709_))))
                                        (let ((_hd155640155716_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e155639155712_)))
                                              (_tl155641155719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e155639155712_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155641155719_))
                                              (_loop155628155680_
                                               _lp-tl155631155699_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd155640155716_
                                                       _symbol155632155687_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd155637155706_
                                                       _method155633155689_)))
                                              (_g155614155647_
                                               _g155615155651_))))
                                      (_g155614155647_ _g155615155651_))))
                              (_g155614155647_ _g155615155651_))))
                      (let ((_symbol155634155722_
                             (reverse _symbol155632155687_))
                            (_method155635155725_
                             (reverse _method155633155689_)))
                        ((lambda (_L155728_ _L155730_ _L155731_)
                           (let ((__tmp158613
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp158606
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L155728_
                                       _L155730_))
                                    (let ((__tmp158607
                                           (lambda (_g155749155753_
                                                    _g155750155756_
                                                    _g155751155758_)
                                             (let ((__tmp158608
                                                    (let ((__tmp158612
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp158609
                                                           (let ((__tmp158610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158611
                                 (let ()
                                   (declare (not safe))
                                   (cons _g155749155753_ '()))))
                            (declare (not safe))
                            (cons _g155750155756_ __tmp158611))))
                     (declare (not safe))
                     (cons _L155731_ __tmp158610))))
              (declare (not safe))
              (cons __tmp158612 __tmp158609))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158608
                                                     _g155751155758_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp158607
                                              '()
                                              _L155728_
                                              _L155730_)))))
                             (declare (not safe))
                             (cons __tmp158613 __tmp158606)))
                         _symbol155634155722_
                         _method155635155725_
                         _hd155623155668_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop155628155680_
                                                 _target155625155674_
                                                 '()
                                                 '()))
                                              (_g155614155647_
                                               _g155615155651_)))))
                                    (_g155614155647_ _g155615155651_))))
                            (_g155614155647_ _g155615155651_))))
                    (_g155614155647_ _g155615155651_)))))
        (_g155613155761_ _$stx155610_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx155766_)
      (let* ((_g155770155784_
              (lambda (_g155771155780_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g155771155780_))))
             (_g155769155825_
              (lambda (_g155771155788_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g155771155788_))
                    (let ((_e155773155791_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g155771155788_))))
                      (let ((_hd155774155795_
                             (let ()
                               (declare (not safe))
                               (##car _e155773155791_)))
                            (_tl155775155798_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155773155791_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155775155798_))
                            (let ((_e155776155801_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl155775155798_))))
                              (let ((_hd155777155805_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155776155801_)))
                                    (_tl155778155808_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155776155801_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl155778155808_))
                                    ((lambda (_L155811_)
                                       (let ((__tmp158618
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp158614
                                              (let ((__tmp158615
                                                     (let ((__tmp158617
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp158616
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L155811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp158617 __tmp158616))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158615 '()))))
                                         (declare (not safe))
                                         (cons __tmp158618 __tmp158614)))
                                     _hd155777155805_)
                                    (_g155770155784_ _g155771155788_))))
                            (_g155770155784_ _g155771155788_))))
                    (_g155770155784_ _g155771155788_)))))
        (_g155769155825_ _$stx155766_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx155829_)
      (let* ((_g155833155883_
              (lambda (_g155834155879_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g155834155879_))))
             (_g155832156050_
              (lambda (_g155834155887_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g155834155887_))
                    (let ((_e155845155890_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g155834155887_))))
                      (let ((_hd155846155894_
                             (let ()
                               (declare (not safe))
                               (##car _e155845155890_)))
                            (_tl155847155897_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155845155890_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155847155897_))
                            (let ((_e155848155900_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl155847155897_))))
                              (let ((_hd155849155904_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155848155900_)))
                                    (_tl155850155907_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155848155900_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl155850155907_))
                                    (let ((_e155851155910_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl155850155907_))))
                                      (let ((_hd155852155914_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155851155910_)))
                                            (_tl155853155917_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155851155910_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl155853155917_))
                                            (let ((_e155854155920_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl155853155917_))))
                                              (let ((_hd155855155924_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e155854155920_)))
                                                    (_tl155856155927_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e155854155920_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl155856155927_))
                                                    (let ((_e155857155930_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl155856155927_))))
                                                      (let ((_hd155858155934_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e155857155930_)))
                    (_tl155859155937_
                     (let () (declare (not safe)) (##cdr _e155857155930_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl155859155937_))
                    (let ((_e155860155940_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl155859155937_))))
                      (let ((_hd155861155944_
                             (let ()
                               (declare (not safe))
                               (##car _e155860155940_)))
                            (_tl155862155947_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155860155940_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155862155947_))
                            (let ((_e155863155950_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl155862155947_))))
                              (let ((_hd155864155954_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155863155950_)))
                                    (_tl155865155957_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155863155950_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl155865155957_))
                                    (let ((_e155866155960_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl155865155957_))))
                                      (let ((_hd155867155964_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155866155960_)))
                                            (_tl155868155967_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155866155960_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl155868155967_))
                                            (let ((_e155869155970_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl155868155967_))))
                                              (let ((_hd155870155974_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e155869155970_)))
                                                    (_tl155871155977_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e155869155970_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl155871155977_))
                                                    (let ((_e155872155980_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl155871155977_))))
                                                      (let ((_hd155873155984_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e155872155980_)))
                    (_tl155874155987_
                     (let () (declare (not safe)) (##cdr _e155872155980_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl155874155987_))
                    (let ((_e155875155990_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl155874155987_))))
                      (let ((_hd155876155994_
                             (let ()
                               (declare (not safe))
                               (##car _e155875155990_)))
                            (_tl155877155997_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155875155990_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl155877155997_))
                            ((lambda (_L156000_
                                      _L156002_
                                      _L156003_
                                      _L156004_
                                      _L156005_
                                      _L156006_
                                      _L156007_
                                      _L156008_
                                      _L156009_
                                      _L156010_)
                               (let ((__tmp158653
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp158619
                                      (let ((__tmp158650
                                             (let ((__tmp158652
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp158651
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L156010_ '()))))
                                               (declare (not safe))
                                               (cons __tmp158652 __tmp158651)))
                                            (__tmp158620
                                             (let ((__tmp158647
                                                    (let ((__tmp158649
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp158648
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L156009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp158649 __tmp158648)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp158621
                                                    (let ((__tmp158644
                                                           (let ((__tmp158646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp158645
                          (let () (declare (not safe)) (cons _L156008_ '()))))
                     (declare (not safe))
                     (cons __tmp158646 __tmp158645)))
                  (__tmp158622
                   (let ((__tmp158641
                          (let ((__tmp158643
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp158642
                                 (let ()
                                   (declare (not safe))
                                   (cons _L156007_ '()))))
                            (declare (not safe))
                            (cons __tmp158643 __tmp158642)))
                         (__tmp158623
                          (let ((__tmp158638
                                 (let ((__tmp158640
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp158639
                                        (let ()
                                          (declare (not safe))
                                          (cons _L156006_ '()))))
                                   (declare (not safe))
                                   (cons __tmp158640 __tmp158639)))
                                (__tmp158624
                                 (let ((__tmp158635
                                        (let ((__tmp158637
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp158636
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L156005_ '()))))
                                          (declare (not safe))
                                          (cons __tmp158637 __tmp158636)))
                                       (__tmp158625
                                        (let ((__tmp158626
                                               (let ((__tmp158627
                                                      (let ((__tmp158632
                                                             (let ((__tmp158634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp158633
                            (let ()
                              (declare (not safe))
                              (cons _L156002_ '()))))
                       (declare (not safe))
                       (cons __tmp158634 __tmp158633)))
                    (__tmp158628
                     (let ((__tmp158629
                            (let ((__tmp158631
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp158630
                                   (let ()
                                     (declare (not safe))
                                     (cons _L156000_ '()))))
                              (declare (not safe))
                              (cons __tmp158631 __tmp158630))))
                       (declare (not safe))
                       (cons __tmp158629 '()))))
                (declare (not safe))
                (cons __tmp158632 __tmp158628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L156003_
                                                       __tmp158627))))
                                          (declare (not safe))
                                          (cons _L156004_ __tmp158626))))
                                   (declare (not safe))
                                   (cons __tmp158635 __tmp158625))))
                            (declare (not safe))
                            (cons __tmp158638 __tmp158624))))
                     (declare (not safe))
                     (cons __tmp158641 __tmp158623))))
              (declare (not safe))
              (cons __tmp158644 __tmp158622))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158647
                                                     __tmp158621))))
                                        (declare (not safe))
                                        (cons __tmp158650 __tmp158620))))
                                 (declare (not safe))
                                 (cons __tmp158653 __tmp158619)))
                             _hd155876155994_
                             _hd155873155984_
                             _hd155870155974_
                             _hd155867155964_
                             _hd155864155954_
                             _hd155861155944_
                             _hd155858155934_
                             _hd155855155924_
                             _hd155852155914_
                             _hd155849155904_)
                            (_g155833155883_ _g155834155887_))))
                    (_g155833155883_ _g155834155887_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g155833155883_
                                                     _g155834155887_))))
                                            (_g155833155883_
                                             _g155834155887_))))
                                    (_g155833155883_ _g155834155887_))))
                            (_g155833155883_ _g155834155887_))))
                    (_g155833155883_ _g155834155887_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g155833155883_
                                                     _g155834155887_))))
                                            (_g155833155883_
                                             _g155834155887_))))
                                    (_g155833155883_ _g155834155887_))))
                            (_g155833155883_ _g155834155887_))))
                    (_g155833155883_ _g155834155887_)))))
        (_g155832156050_ _$stx155829_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx156054_)
      (let* ((_g156058156072_
              (lambda (_g156059156068_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156059156068_))))
             (_g156057156113_
              (lambda (_g156059156076_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156059156076_))
                    (let ((_e156061156079_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156059156076_))))
                      (let ((_hd156062156083_
                             (let ()
                               (declare (not safe))
                               (##car _e156061156079_)))
                            (_tl156063156086_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156061156079_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156063156086_))
                            (let ((_e156064156089_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156063156086_))))
                              (let ((_hd156065156093_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156064156089_)))
                                    (_tl156066156096_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156064156089_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156066156096_))
                                    ((lambda (_L156099_)
                                       (let ((__tmp158658
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp158654
                                              (let ((__tmp158655
                                                     (let ((__tmp158657
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp158656
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L156099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp158657 __tmp158656))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158655 '()))))
                                         (declare (not safe))
                                         (cons __tmp158658 __tmp158654)))
                                     _hd156065156093_)
                                    (_g156058156072_ _g156059156076_))))
                            (_g156058156072_ _g156059156076_))))
                    (_g156058156072_ _g156059156076_)))))
        (_g156057156113_ _$stx156054_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx156117_)
      (let* ((_g156121156135_
              (lambda (_g156122156131_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156122156131_))))
             (_g156120156176_
              (lambda (_g156122156139_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156122156139_))
                    (let ((_e156124156142_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156122156139_))))
                      (let ((_hd156125156146_
                             (let ()
                               (declare (not safe))
                               (##car _e156124156142_)))
                            (_tl156126156149_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156124156142_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156126156149_))
                            (let ((_e156127156152_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156126156149_))))
                              (let ((_hd156128156156_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156127156152_)))
                                    (_tl156129156159_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156127156152_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156129156159_))
                                    ((lambda (_L156162_)
                                       (let ((__tmp158663
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp158659
                                              (let ((__tmp158660
                                                     (let ((__tmp158662
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp158661
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L156162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp158662 __tmp158661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158660 '()))))
                                         (declare (not safe))
                                         (cons __tmp158663 __tmp158659)))
                                     _hd156128156156_)
                                    (_g156121156135_ _g156122156139_))))
                            (_g156121156135_ _g156122156139_))))
                    (_g156121156135_ _g156122156139_)))))
        (_g156120156176_ _$stx156117_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx156180_)
      (let* ((_g156184156206_
              (lambda (_g156185156202_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156185156202_))))
             (_g156183156275_
              (lambda (_g156185156210_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156185156210_))
                    (let ((_e156189156213_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156185156210_))))
                      (let ((_hd156190156217_
                             (let ()
                               (declare (not safe))
                               (##car _e156189156213_)))
                            (_tl156191156220_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156189156213_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156191156220_))
                            (let ((_e156192156223_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156191156220_))))
                              (let ((_hd156193156227_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156192156223_)))
                                    (_tl156194156230_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156192156223_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl156194156230_))
                                    (let ((_e156195156233_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl156194156230_))))
                                      (let ((_hd156196156237_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e156195156233_)))
                                            (_tl156197156240_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e156195156233_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl156197156240_))
                                            (let ((_e156198156243_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl156197156240_))))
                                              (let ((_hd156199156247_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e156198156243_)))
                                                    (_tl156200156250_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e156198156243_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl156200156250_))
                                                    ((lambda (_L156253_
                                                              _L156255_
                                                              _L156256_)
                                                       (let ((__tmp158673
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp158664
                      (let ((__tmp158670
                             (let ((__tmp158672
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp158671
                                    (let ()
                                      (declare (not safe))
                                      (cons _L156256_ '()))))
                               (declare (not safe))
                               (cons __tmp158672 __tmp158671)))
                            (__tmp158665
                             (let ((__tmp158667
                                    (let ((__tmp158669
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp158668
                                           (let ()
                                             (declare (not safe))
                                             (cons _L156255_ '()))))
                                      (declare (not safe))
                                      (cons __tmp158669 __tmp158668)))
                                   (__tmp158666
                                    (let ()
                                      (declare (not safe))
                                      (cons _L156253_ '()))))
                               (declare (not safe))
                               (cons __tmp158667 __tmp158666))))
                        (declare (not safe))
                        (cons __tmp158670 __tmp158665))))
                 (declare (not safe))
                 (cons __tmp158673 __tmp158664)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd156199156247_
                                                     _hd156196156237_
                                                     _hd156193156227_)
                                                    (_g156184156206_
                                                     _g156185156210_))))
                                            (_g156184156206_
                                             _g156185156210_))))
                                    (_g156184156206_ _g156185156210_))))
                            (_g156184156206_ _g156185156210_))))
                    (_g156184156206_ _g156185156210_)))))
        (_g156183156275_ _$stx156180_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx156279_)
      (let* ((_g156283156305_
              (lambda (_g156284156301_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g156284156301_))))
             (_g156282156374_
              (lambda (_g156284156309_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g156284156309_))
                    (let ((_e156288156312_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g156284156309_))))
                      (let ((_hd156289156316_
                             (let ()
                               (declare (not safe))
                               (##car _e156288156312_)))
                            (_tl156290156319_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156288156312_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156290156319_))
                            (let ((_e156291156322_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl156290156319_))))
                              (let ((_hd156292156326_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156291156322_)))
                                    (_tl156293156329_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156291156322_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl156293156329_))
                                    (let ((_e156294156332_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl156293156329_))))
                                      (let ((_hd156295156336_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e156294156332_)))
                                            (_tl156296156339_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e156294156332_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl156296156339_))
                                            (let ((_e156297156342_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl156296156339_))))
                                              (let ((_hd156298156346_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e156297156342_)))
                                                    (_tl156299156349_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e156297156342_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl156299156349_))
                                                    ((lambda (_L156352_
                                                              _L156354_
                                                              _L156355_)
                                                       (let ((__tmp158683
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp158674
                      (let ((__tmp158680
                             (let ((__tmp158682
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp158681
                                    (let ()
                                      (declare (not safe))
                                      (cons _L156355_ '()))))
                               (declare (not safe))
                               (cons __tmp158682 __tmp158681)))
                            (__tmp158675
                             (let ((__tmp158677
                                    (let ((__tmp158679
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp158678
                                           (let ()
                                             (declare (not safe))
                                             (cons _L156354_ '()))))
                                      (declare (not safe))
                                      (cons __tmp158679 __tmp158678)))
                                   (__tmp158676
                                    (let ()
                                      (declare (not safe))
                                      (cons _L156352_ '()))))
                               (declare (not safe))
                               (cons __tmp158677 __tmp158676))))
                        (declare (not safe))
                        (cons __tmp158680 __tmp158675))))
                 (declare (not safe))
                 (cons __tmp158683 __tmp158674)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd156298156346_
                                                     _hd156295156336_
                                                     _hd156292156326_)
                                                    (_g156283156305_
                                                     _g156284156309_))))
                                            (_g156283156305_
                                             _g156284156309_))))
                                    (_g156283156305_ _g156284156309_))))
                            (_g156283156305_ _g156284156309_))))
                    (_g156283156305_ _g156284156309_)))))
        (_g156282156374_ _$stx156279_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx156378_)
      (let* ((___stx158193158194_ _$stx156378_)
             (_g156386156454_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx158193158194_)))))
        (let ((___kont158196158197_
               (lambda (_L156732_ _L156734_)
                 (let ((__tmp158699
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp158684
                        (let ((__tmp158695
                               (let ((__tmp158698
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp158696
                                      (let ((__tmp158697
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp158697 '()))))
                                 (declare (not safe))
                                 (cons __tmp158698 __tmp158696)))
                              (__tmp158685
                               (let ((__tmp158692
                                      (let ((__tmp158694
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp158693
                                             (let ()
                                               (declare (not safe))
                                               (cons _L156734_ '()))))
                                        (declare (not safe))
                                        (cons __tmp158694 __tmp158693)))
                                     (__tmp158686
                                      (let ((__tmp158687
                                             (let ((__tmp158688
                                                    (let ((__tmp158689
                                                           (let ((__tmp158691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp158690
                          (let () (declare (not safe)) (cons _L156732_ '()))))
                     (declare (not safe))
                     (cons __tmp158691 __tmp158690))))
              (declare (not safe))
              (cons __tmp158689 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L156732_ __tmp158688))))
                                        (declare (not safe))
                                        (cons '#f __tmp158687))))
                                 (declare (not safe))
                                 (cons __tmp158692 __tmp158686))))
                          (declare (not safe))
                          (cons __tmp158695 __tmp158685))))
                   (declare (not safe))
                   (cons __tmp158699 __tmp158684))))
              (___kont158198158199_
               (lambda (_L156663_ _L156665_)
                 (let ((__tmp158700
                        (let ((__tmp158701
                               (let ((__tmp158702
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L156663_ __tmp158702))))
                          (declare (not safe))
                          (cons 'primitive: __tmp158701))))
                   (declare (not safe))
                   (cons _L156665_ __tmp158700))))
              (___kont158200158201_
               (lambda (_L156602_ _L156604_)
                 (let ((__tmp158716
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp158703
                        (let ((__tmp158712
                               (let ((__tmp158715
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp158713
                                      (let ((__tmp158714
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp158714 '()))))
                                 (declare (not safe))
                                 (cons __tmp158715 __tmp158713)))
                              (__tmp158704
                               (let ((__tmp158709
                                      (let ((__tmp158711
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp158710
                                             (let ()
                                               (declare (not safe))
                                               (cons _L156604_ '()))))
                                        (declare (not safe))
                                        (cons __tmp158711 __tmp158710)))
                                     (__tmp158705
                                      (let ((__tmp158706
                                             (let ((__tmp158708
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp158707
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L156602_ '()))))
                                               (declare (not safe))
                                               (cons __tmp158708
                                                     __tmp158707))))
                                        (declare (not safe))
                                        (cons __tmp158706 '()))))
                                 (declare (not safe))
                                 (cons __tmp158709 __tmp158705))))
                          (declare (not safe))
                          (cons __tmp158712 __tmp158704))))
                   (declare (not safe))
                   (cons __tmp158716 __tmp158703))))
              (___kont158202158203_
               (lambda (_L156534_ _L156536_)
                 (let ((__tmp158730
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp158717
                        (let ((__tmp158726
                               (let ((__tmp158729
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp158727
                                      (let ((__tmp158728
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp158728 '()))))
                                 (declare (not safe))
                                 (cons __tmp158729 __tmp158727)))
                              (__tmp158718
                               (let ((__tmp158723
                                      (let ((__tmp158725
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp158724
                                             (let ()
                                               (declare (not safe))
                                               (cons _L156536_ '()))))
                                        (declare (not safe))
                                        (cons __tmp158725 __tmp158724)))
                                     (__tmp158719
                                      (let ((__tmp158720
                                             (let ((__tmp158722
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp158721
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L156534_ '()))))
                                               (declare (not safe))
                                               (cons __tmp158722
                                                     __tmp158721))))
                                        (declare (not safe))
                                        (cons __tmp158720 '()))))
                                 (declare (not safe))
                                 (cons __tmp158723 __tmp158719))))
                          (declare (not safe))
                          (cons __tmp158726 __tmp158718))))
                   (declare (not safe))
                   (cons __tmp158730 __tmp158717))))
              (___kont158204158205_
               (lambda (_L156481_ _L156483_)
                 (let ((__tmp158731
                        (let ((__tmp158732
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L156481_ __tmp158732))))
                   (declare (not safe))
                   (cons _L156483_ __tmp158731)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx158193158194_))
              (let ((_e156390156688_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx158193158194_))))
                (let ((_tl156392156695_
                       (let () (declare (not safe)) (##cdr _e156390156688_)))
                      (_hd156391156692_
                       (let () (declare (not safe)) (##car _e156390156688_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl156392156695_))
                      (let ((_e156393156698_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl156392156695_))))
                        (let ((_tl156395156705_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156393156698_)))
                              (_hd156394156702_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156393156698_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl156395156705_))
                              (let ((_e156396156708_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl156395156705_))))
                                (let ((_tl156398156715_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e156396156708_)))
                                      (_hd156397156712_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e156396156708_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd156397156712_))
                                      (let ((_e156399156718_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd156397156712_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e156399156718_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl156398156715_))
                                                (let ((_e156400156722_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl156398156715_))))
                                                  (let ((_tl156402156729_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e156400156722_)))
                                                        (_hd156401156726_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e156400156722_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156402156729_))
                                                        (___kont158196158197_
                                                         _hd156401156726_
                                                         _hd156394156702_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd156394156702_))
                                                            (let ((_e156411156649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd156394156702_))))
                      (declare (not safe))
                      (_g156386156454_))
                    (let () (declare (not safe)) (_g156386156454_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd156394156702_))
                                                    (let ((_e156411156649_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd156394156702_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e156411156649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl156398156715_))
                      (___kont158198158199_ _hd156397156712_ _hd156391156692_)
                      (let () (declare (not safe)) (_g156386156454_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl156398156715_))
                      (___kont158202158203_ _hd156397156712_ _hd156394156702_)
                      (let () (declare (not safe)) (_g156386156454_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156398156715_))
                                                        (___kont158202158203_
                                                         _hd156397156712_
                                                         _hd156394156702_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g156386156454_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd156394156702_))
                                                (let ((_e156411156649_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd156394156702_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e156411156649_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl156398156715_))
                                                          (___kont158198158199_
                                                           _hd156397156712_
                                                           _hd156391156692_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl156398156715_))
                      (let ((_e156427156592_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl156398156715_))))
                        (let ((_tl156429156599_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156427156592_)))
                              (_hd156428156596_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156427156592_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl156429156599_))
                              (___kont158200158201_
                               _hd156428156596_
                               _hd156397156712_)
                              (let ()
                                (declare (not safe))
                                (_g156386156454_)))))
                      (let () (declare (not safe)) (_g156386156454_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl156398156715_))
                  (___kont158202158203_ _hd156397156712_ _hd156394156702_)
                  (let () (declare (not safe)) (_g156386156454_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl156398156715_))
                                                    (___kont158202158203_
                                                     _hd156397156712_
                                                     _hd156394156702_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g156386156454_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd156394156702_))
                                          (let ((_e156411156649_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd156394156702_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e156411156649_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl156398156715_))
                                                    (___kont158198158199_
                                                     _hd156397156712_
                                                     _hd156391156692_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl156398156715_))
                                                        (let ((_e156427156592_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl156398156715_))))
                  (let ((_tl156429156599_
                         (let () (declare (not safe)) (##cdr _e156427156592_)))
                        (_hd156428156596_
                         (let ()
                           (declare (not safe))
                           (##car _e156427156592_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl156429156599_))
                        (___kont158200158201_
                         _hd156428156596_
                         _hd156397156712_)
                        (let () (declare (not safe)) (_g156386156454_)))))
                (let () (declare (not safe)) (_g156386156454_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl156398156715_))
                                                    (___kont158202158203_
                                                     _hd156397156712_
                                                     _hd156394156702_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g156386156454_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl156398156715_))
                                              (___kont158202158203_
                                               _hd156397156712_
                                               _hd156394156702_)
                                              (let ()
                                                (declare (not safe))
                                                (_g156386156454_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd156394156702_))
                                  (let ((_e156411156649_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd156394156702_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl156395156705_))
                                        (___kont158204158205_
                                         _hd156394156702_
                                         _hd156391156692_)
                                        (let ()
                                          (declare (not safe))
                                          (_g156386156454_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl156395156705_))
                                      (___kont158204158205_
                                       _hd156394156702_
                                       _hd156391156692_)
                                      (let ()
                                        (declare (not safe))
                                        (_g156386156454_)))))))
                      (let () (declare (not safe)) (_g156386156454_)))))
              (let () (declare (not safe)) (_g156386156454_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx156756_)
      (let* ((___stx158333158334_ _$stx156756_)
             (_g156761156816_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx158333158334_)))))
        (let ((___kont158336158337_
               (lambda (_L157001_ _L157003_)
                 (let ((__tmp158748
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp158733
                        (let ((__tmp158744
                               (let ((__tmp158747
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp158745
                                      (let ((__tmp158746
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp158746 '()))))
                                 (declare (not safe))
                                 (cons __tmp158747 __tmp158745)))
                              (__tmp158734
                               (let ((__tmp158735
                                      (let ((__tmp158743
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp158736
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L157001_
                                                  _L157003_))
                                               (let ((__tmp158737
                                                      (lambda (_g157020157024_
                                                               _g157021157027_
                                                               _g157022157029_)
                                                        (let ((__tmp158738
                                                               (let ((__tmp158742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp158739
                              (let ((__tmp158740
                                     (let ((__tmp158741
                                            (let ()
                                              (declare (not safe))
                                              (cons _g157020157024_ '()))))
                                       (declare (not safe))
                                       (cons _g157021157027_ __tmp158741))))
                                (declare (not safe))
                                (cons 'primitive: __tmp158740))))
                         (declare (not safe))
                         (cons __tmp158742 __tmp158739))))
                  (declare (not safe))
                  (cons __tmp158738 _g157022157029_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp158737
                                                         '()
                                                         _L157001_
                                                         _L157003_)))))
                                        (declare (not safe))
                                        (cons __tmp158743 __tmp158736))))
                                 (declare (not safe))
                                 (cons __tmp158735 '()))))
                          (declare (not safe))
                          (cons __tmp158744 __tmp158734))))
                   (declare (not safe))
                   (cons __tmp158748 __tmp158733))))
              (___kont158340158341_
               (lambda (_L156887_ _L156889_)
                 (let ((__tmp158763
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp158749
                        (let ((__tmp158759
                               (let ((__tmp158762
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp158760
                                      (let ((__tmp158761
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp158761 '()))))
                                 (declare (not safe))
                                 (cons __tmp158762 __tmp158760)))
                              (__tmp158750
                               (let ((__tmp158751
                                      (let ((__tmp158758
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp158752
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L156887_
                                                  _L156889_))
                                               (let ((__tmp158753
                                                      (lambda (_g156904156908_
                                                               _g156905156911_
                                                               _g156906156913_)
                                                        (let ((__tmp158754
                                                               (let ((__tmp158757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp158755
                              (let ((__tmp158756
                                     (let ()
                                       (declare (not safe))
                                       (cons _g156904156908_ '()))))
                                (declare (not safe))
                                (cons _g156905156911_ __tmp158756))))
                         (declare (not safe))
                         (cons __tmp158757 __tmp158755))))
                  (declare (not safe))
                  (cons __tmp158754 _g156906156913_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp158753
                                                         '()
                                                         _L156887_
                                                         _L156889_)))))
                                        (declare (not safe))
                                        (cons __tmp158758 __tmp158752))))
                                 (declare (not safe))
                                 (cons __tmp158751 '()))))
                          (declare (not safe))
                          (cons __tmp158759 __tmp158750))))
                   (declare (not safe))
                   (cons __tmp158763 __tmp158749)))))
          (let* ((___match158384158385_
                  (lambda (_e156791156823_
                           _hd156792156827_
                           _tl156793156830_
                           ___splice158342158343_
                           _target156794156833_
                           _tl156796156836_)
                    (letrec ((_loop156797156839_
                              (lambda (_hd156795156843_
                                       _dispatch156801156846_
                                       _arity156802156848_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd156795156843_))
                                    (let ((_e156798156851_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd156795156843_))))
                                      (let ((_lp-tl156800156858_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e156798156851_)))
                                            (_lp-hd156799156855_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e156798156851_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd156799156855_))
                                            (let ((_e156805156861_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd156799156855_))))
                                              (let ((_tl156807156868_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e156805156861_)))
                                                    (_hd156806156865_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e156805156861_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl156807156868_))
                                                    (let ((_e156808156871_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl156807156868_))))
                                                      (let ((_tl156810156878_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e156808156871_)))
                    (_hd156809156875_
                     (let () (declare (not safe)) (##car _e156808156871_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl156810156878_))
                    (_loop156797156839_
                     _lp-tl156800156858_
                     (let ()
                       (declare (not safe))
                       (cons _hd156809156875_ _dispatch156801156846_))
                     (let ()
                       (declare (not safe))
                       (cons _hd156806156865_ _arity156802156848_)))
                    (let () (declare (not safe)) (_g156761156816_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g156761156816_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g156761156816_)))))
                                    (let ((_arity156804156884_
                                           (reverse _arity156802156848_))
                                          (_dispatch156803156881_
                                           (reverse _dispatch156801156846_)))
                                      (___kont158340158341_
                                       _dispatch156803156881_
                                       _arity156804156884_))))))
                      (_loop156797156839_ _target156794156833_ '() '()))))
                 (___match158376158377_
                  (lambda (_e156791156823_ _hd156792156827_ _tl156793156830_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl156793156830_))
                        (let ((___splice158342158343_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl156793156830_
                                  '0))))
                          (let ((_tl156796156836_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice158342158343_ '1)))
                                (_target156794156833_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice158342158343_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl156796156836_))
                                (___match158384158385_
                                 _e156791156823_
                                 _hd156792156827_
                                 _tl156793156830_
                                 ___splice158342158343_
                                 _target156794156833_
                                 _tl156796156836_)
                                (let ()
                                  (declare (not safe))
                                  (_g156761156816_)))))
                        (let () (declare (not safe)) (_g156761156816_)))))
                 (___match158370158371_
                  (lambda (_e156765156923_
                           _hd156766156927_
                           _tl156767156930_
                           _e156768156933_
                           _hd156769156937_
                           _tl156770156940_
                           _e156771156943_
                           ___splice158338158339_
                           _target156772156947_
                           _tl156774156950_)
                    (letrec ((_loop156775156953_
                              (lambda (_hd156773156957_
                                       _dispatch156779156960_
                                       _arity156780156962_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd156773156957_))
                                    (let ((_e156776156965_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd156773156957_))))
                                      (let ((_lp-tl156778156972_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e156776156965_)))
                                            (_lp-hd156777156969_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e156776156965_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd156777156969_))
                                            (let ((_e156783156975_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd156777156969_))))
                                              (let ((_tl156785156982_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e156783156975_)))
                                                    (_hd156784156979_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e156783156975_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl156785156982_))
                                                    (let ((_e156786156985_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl156785156982_))))
                                                      (let ((_tl156788156992_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e156786156985_)))
                    (_hd156787156989_
                     (let () (declare (not safe)) (##car _e156786156985_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl156788156992_))
                    (_loop156775156953_
                     _lp-tl156778156972_
                     (let ()
                       (declare (not safe))
                       (cons _hd156787156989_ _dispatch156779156960_))
                     (let ()
                       (declare (not safe))
                       (cons _hd156784156979_ _arity156780156962_)))
                    (___match158376158377_
                     _e156765156923_
                     _hd156766156927_
                     _tl156767156930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match158376158377_
                                                     _e156765156923_
                                                     _hd156766156927_
                                                     _tl156767156930_))))
                                            (___match158376158377_
                                             _e156765156923_
                                             _hd156766156927_
                                             _tl156767156930_))))
                                    (let ((_arity156782156998_
                                           (reverse _arity156780156962_))
                                          (_dispatch156781156995_
                                           (reverse _dispatch156779156960_)))
                                      (___kont158336158337_
                                       _dispatch156781156995_
                                       _arity156782156998_))))))
                      (_loop156775156953_ _target156772156947_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx158333158334_))
                (let ((_e156765156923_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx158333158334_))))
                  (let ((_tl156767156930_
                         (let () (declare (not safe)) (##cdr _e156765156923_)))
                        (_hd156766156927_
                         (let ()
                           (declare (not safe))
                           (##car _e156765156923_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl156767156930_))
                        (let ((_e156768156933_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl156767156930_))))
                          (let ((_tl156770156940_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e156768156933_)))
                                (_hd156769156937_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e156768156933_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd156769156937_))
                                (let ((_e156771156943_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd156769156937_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e156771156943_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl156770156940_))
                                          (let ((___splice158338158339_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl156770156940_
                                                    '0))))
                                            (let ((_tl156774156950_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice158338158339_
                                                      '1)))
                                                  (_target156772156947_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice158338158339_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl156774156950_))
                                                  (___match158370158371_
                                                   _e156765156923_
                                                   _hd156766156927_
                                                   _tl156767156930_
                                                   _e156768156933_
                                                   _hd156769156937_
                                                   _tl156770156940_
                                                   _e156771156943_
                                                   ___splice158338158339_
                                                   _target156772156947_
                                                   _tl156774156950_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl156767156930_))
                                                      (let ((___splice158342158343_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl156767156930_ '0))))
                (let ((_tl156796156836_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice158342158343_ '1)))
                      (_target156794156833_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice158342158343_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl156796156836_))
                      (___match158384158385_
                       _e156765156923_
                       _hd156766156927_
                       _tl156767156930_
                       ___splice158342158343_
                       _target156794156833_
                       _tl156796156836_)
                      (let () (declare (not safe)) (_g156761156816_)))))
              (let () (declare (not safe)) (_g156761156816_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl156767156930_))
                                              (let ((___splice158342158343_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl156767156930_
                                                        '0))))
                                                (let ((_tl156796156836_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice158342158343_
                                                          '1)))
                                                      (_target156794156833_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice158342158343_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl156796156836_))
                                                      (___match158384158385_
                                                       _e156765156923_
                                                       _hd156766156927_
                                                       _tl156767156930_
                                                       ___splice158342158343_
                                                       _target156794156833_
                                                       _tl156796156836_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g156761156816_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g156761156816_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl156767156930_))
                                          (let ((___splice158342158343_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl156767156930_
                                                    '0))))
                                            (let ((_tl156796156836_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice158342158343_
                                                      '1)))
                                                  (_target156794156833_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice158342158343_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl156796156836_))
                                                  (___match158384158385_
                                                   _e156765156923_
                                                   _hd156766156927_
                                                   _tl156767156930_
                                                   ___splice158342158343_
                                                   _target156794156833_
                                                   _tl156796156836_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g156761156816_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g156761156816_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl156767156930_))
                                    (let ((___splice158342158343_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl156767156930_
                                              '0))))
                                      (let ((_tl156796156836_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice158342158343_
                                                '1)))
                                            (_target156794156833_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice158342158343_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl156796156836_))
                                            (___match158384158385_
                                             _e156765156923_
                                             _hd156766156927_
                                             _tl156767156930_
                                             ___splice158342158343_
                                             _target156794156833_
                                             _tl156796156836_)
                                            (let ()
                                              (declare (not safe))
                                              (_g156761156816_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g156761156816_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl156767156930_))
                            (let ((___splice158342158343_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl156767156930_
                                      '0))))
                              (let ((_tl156796156836_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice158342158343_
                                        '1)))
                                    (_target156794156833_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice158342158343_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl156796156836_))
                                    (___match158384158385_
                                     _e156765156923_
                                     _hd156766156927_
                                     _tl156767156930_
                                     ___splice158342158343_
                                     _target156794156833_
                                     _tl156796156836_)
                                    (let ()
                                      (declare (not safe))
                                      (_g156761156816_)))))
                            (let () (declare (not safe)) (_g156761156816_))))))
                (let () (declare (not safe)) (_g156761156816_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx157038_)
      (let* ((_g157042157060_
              (lambda (_g157043157056_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157043157056_))))
             (_g157041157115_
              (lambda (_g157043157064_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157043157064_))
                    (let ((_e157046157067_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157043157064_))))
                      (let ((_hd157047157071_
                             (let ()
                               (declare (not safe))
                               (##car _e157046157067_)))
                            (_tl157048157074_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157046157067_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157048157074_))
                            (let ((_e157049157077_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157048157074_))))
                              (let ((_hd157050157081_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157049157077_)))
                                    (_tl157051157084_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157049157077_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl157051157084_))
                                    (let ((_e157052157087_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl157051157084_))))
                                      (let ((_hd157053157091_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157052157087_)))
                                            (_tl157054157094_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157052157087_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157054157094_))
                                            ((lambda (_L157097_ _L157099_)
                                               (let ((__tmp158777
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp158764
                                                      (let ((__tmp158773
                                                             (let ((__tmp158776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp158774
                            (let ((__tmp158775
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp158775 '()))))
                       (declare (not safe))
                       (cons __tmp158776 __tmp158774)))
                    (__tmp158765
                     (let ((__tmp158770
                            (let ((__tmp158772
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp158771
                                   (let ()
                                     (declare (not safe))
                                     (cons _L157099_ '()))))
                              (declare (not safe))
                              (cons __tmp158772 __tmp158771)))
                           (__tmp158766
                            (let ((__tmp158767
                                   (let ((__tmp158769
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp158768
                                          (let ()
                                            (declare (not safe))
                                            (cons _L157097_ '()))))
                                     (declare (not safe))
                                     (cons __tmp158769 __tmp158768))))
                              (declare (not safe))
                              (cons __tmp158767 '()))))
                       (declare (not safe))
                       (cons __tmp158770 __tmp158766))))
                (declare (not safe))
                (cons __tmp158773 __tmp158765))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp158777
                                                       __tmp158764)))
                                             _hd157053157091_
                                             _hd157050157081_)
                                            (_g157042157060_
                                             _g157043157064_))))
                                    (_g157042157060_ _g157043157064_))))
                            (_g157042157060_ _g157043157064_))))
                    (_g157042157060_ _g157043157064_)))))
        (_g157041157115_ _$stx157038_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx157119_)
      (let* ((_g157123157141_
              (lambda (_g157124157137_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157124157137_))))
             (_g157122157196_
              (lambda (_g157124157145_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157124157145_))
                    (let ((_e157127157148_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157124157145_))))
                      (let ((_hd157128157152_
                             (let ()
                               (declare (not safe))
                               (##car _e157127157148_)))
                            (_tl157129157155_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157127157148_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157129157155_))
                            (let ((_e157130157158_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157129157155_))))
                              (let ((_hd157131157162_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157130157158_)))
                                    (_tl157132157165_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157130157158_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl157132157165_))
                                    (let ((_e157133157168_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl157132157165_))))
                                      (let ((_hd157134157172_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157133157168_)))
                                            (_tl157135157175_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157133157168_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157135157175_))
                                            ((lambda (_L157178_ _L157180_)
                                               (let ((__tmp158791
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp158778
                                                      (let ((__tmp158787
                                                             (let ((__tmp158790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp158788
                            (let ((__tmp158789
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp158789 '()))))
                       (declare (not safe))
                       (cons __tmp158790 __tmp158788)))
                    (__tmp158779
                     (let ((__tmp158784
                            (let ((__tmp158786
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp158785
                                   (let ()
                                     (declare (not safe))
                                     (cons _L157180_ '()))))
                              (declare (not safe))
                              (cons __tmp158786 __tmp158785)))
                           (__tmp158780
                            (let ((__tmp158781
                                   (let ((__tmp158783
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp158782
                                          (let ()
                                            (declare (not safe))
                                            (cons _L157178_ '()))))
                                     (declare (not safe))
                                     (cons __tmp158783 __tmp158782))))
                              (declare (not safe))
                              (cons __tmp158781 '()))))
                       (declare (not safe))
                       (cons __tmp158784 __tmp158780))))
                (declare (not safe))
                (cons __tmp158787 __tmp158779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp158791
                                                       __tmp158778)))
                                             _hd157134157172_
                                             _hd157131157162_)
                                            (_g157123157141_
                                             _g157124157145_))))
                                    (_g157123157141_ _g157124157145_))))
                            (_g157123157141_ _g157124157145_))))
                    (_g157123157141_ _g157124157145_)))))
        (_g157122157196_ _$stx157119_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx157200_)
      (let* ((___stx158387158388_ _$stx157200_)
             (_g157207157278_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx158387158388_)))))
        (let ((___kont158390158391_
               (lambda (_L157569_ _L157571_)
                 (let ((__tmp158797
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp158792
                        (let ((__tmp158793
                               (let ((__tmp158794
                                      (let ((__tmp158796
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp158795
                                             (let ()
                                               (declare (not safe))
                                               (cons _L157569_ '()))))
                                        (declare (not safe))
                                        (cons __tmp158796 __tmp158795))))
                                 (declare (not safe))
                                 (cons __tmp158794 '()))))
                          (declare (not safe))
                          (cons _L157571_ __tmp158793))))
                   (declare (not safe))
                   (cons __tmp158797 __tmp158792))))
              (___kont158392158393_
               (lambda (_L157488_ _L157490_)
                 (let ((__tmp158806
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp158798
                        (let ((__tmp158799
                               (let ((__tmp158800
                                      (let ((__tmp158805
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp158801
                                             (let ((__tmp158802
                                                    (lambda (_g157509157512_
                                                             _g157510157515_)
                                                      (let ((__tmp158803
                                                             (let ((__tmp158804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g157509157512_ __tmp158804))))
                (declare (not safe))
                (cons __tmp158803 _g157510157515_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp158802
                                                       '()
                                                       _L157488_))))
                                        (declare (not safe))
                                        (cons __tmp158805 __tmp158801))))
                                 (declare (not safe))
                                 (cons __tmp158800 '()))))
                          (declare (not safe))
                          (cons _L157490_ __tmp158799))))
                   (declare (not safe))
                   (cons __tmp158806 __tmp158798))))
              (___kont158396158397_
               (lambda (_L157400_ _L157402_)
                 (let ((__tmp158813
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp158807
                        (let ((__tmp158808
                               (let ((__tmp158809
                                      (let ((__tmp158812
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp158810
                                             (let ((__tmp158811
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L157400_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp158811))))
                                        (declare (not safe))
                                        (cons __tmp158812 __tmp158810))))
                                 (declare (not safe))
                                 (cons __tmp158809 '()))))
                          (declare (not safe))
                          (cons _L157402_ __tmp158808))))
                   (declare (not safe))
                   (cons __tmp158813 __tmp158807))))
              (___kont158398158399_
               (lambda (_L157335_ _L157337_)
                 (let ((__tmp158823
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp158814
                        (let ((__tmp158815
                               (let ((__tmp158816
                                      (let ((__tmp158822
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp158817
                                             (let ((__tmp158818
                                                    (let ((__tmp158819
                                                           (lambda (_g157354157357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g157355157360_)
                     (let ((__tmp158820
                            (let ((__tmp158821
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g157354157357_ __tmp158821))))
                       (declare (not safe))
                       (cons __tmp158820 _g157355157360_)))))
              (declare (not safe))
              (foldr1 __tmp158819 '() _L157335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp158818))))
                                        (declare (not safe))
                                        (cons __tmp158822 __tmp158817))))
                                 (declare (not safe))
                                 (cons __tmp158816 '()))))
                          (declare (not safe))
                          (cons _L157337_ __tmp158815))))
                   (declare (not safe))
                   (cons __tmp158823 __tmp158814)))))
          (let* ((___match158506158507_
                  (lambda (_e157258157285_
                           _hd157259157289_
                           _tl157260157292_
                           _e157261157295_
                           _hd157262157299_
                           _tl157263157302_
                           ___splice158400158401_
                           _target157264157305_
                           _tl157266157308_)
                    (letrec ((_loop157267157311_
                              (lambda (_hd157265157315_ _arity157271157318_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd157265157315_))
                                    (let ((_e157268157321_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd157265157315_))))
                                      (let ((_lp-tl157270157328_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157268157321_)))
                                            (_lp-hd157269157325_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157268157321_))))
                                        (_loop157267157311_
                                         _lp-tl157270157328_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd157269157325_
                                                 _arity157271157318_)))))
                                    (let ((_arity157272157331_
                                           (reverse _arity157271157318_)))
                                      (___kont158398158399_
                                       _arity157272157331_
                                       _hd157262157299_))))))
                      (_loop157267157311_ _target157264157305_ '()))))
                 (___match158466158467_
                  (lambda (_e157226157424_
                           _hd157227157428_
                           _tl157228157431_
                           _e157229157434_
                           _hd157230157438_
                           _tl157231157441_
                           _e157232157444_
                           _hd157233157448_
                           _tl157234157451_
                           _e157235157454_
                           ___splice158394158395_
                           _target157236157458_
                           _tl157238157461_)
                    (letrec ((_loop157239157464_
                              (lambda (_hd157237157468_ _arity157243157471_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd157237157468_))
                                    (let ((_e157240157474_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd157237157468_))))
                                      (let ((_lp-tl157242157481_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157240157474_)))
                                            (_lp-hd157241157478_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157240157474_))))
                                        (_loop157239157464_
                                         _lp-tl157242157481_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd157241157478_
                                                 _arity157243157471_)))))
                                    (let ((_arity157244157484_
                                           (reverse _arity157243157471_)))
                                      (___kont158392158393_
                                       _arity157244157484_
                                       _hd157230157438_))))))
                      (_loop157239157464_ _target157236157458_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx158387158388_))
                (let ((_e157211157525_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx158387158388_))))
                  (let ((_tl157213157532_
                         (let () (declare (not safe)) (##cdr _e157211157525_)))
                        (_hd157212157529_
                         (let ()
                           (declare (not safe))
                           (##car _e157211157525_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl157213157532_))
                        (let ((_e157214157535_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl157213157532_))))
                          (let ((_tl157216157542_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e157214157535_)))
                                (_hd157215157539_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e157214157535_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl157216157542_))
                                (let ((_e157217157545_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl157216157542_))))
                                  (let ((_tl157219157552_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e157217157545_)))
                                        (_hd157218157549_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e157217157545_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd157218157549_))
                                        (let ((_e157220157555_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd157218157549_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e157220157555_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157219157552_))
                                                  (let ((_e157221157559_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl157219157552_))))
                                                    (let ((_tl157223157566_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157221157559_)))
                                                          (_hd157222157563_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157221157559_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl157223157566_))
                                                          (___kont158390158391_
                                                           _hd157222157563_
                                                           _hd157215157539_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl157219157552_))
                      (let ((___splice158394158395_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl157219157552_ '0))))
                        (let ((_tl157238157461_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice158394158395_ '1)))
                              (_target157236157458_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice158394158395_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl157238157461_))
                              (___match158466158467_
                               _e157211157525_
                               _hd157212157529_
                               _tl157213157532_
                               _e157214157535_
                               _hd157215157539_
                               _tl157216157542_
                               _e157217157545_
                               _hd157218157549_
                               _tl157219157552_
                               _e157220157555_
                               ___splice158394158395_
                               _target157236157458_
                               _tl157238157461_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl157216157542_))
                                  (let ((___splice158400158401_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl157216157542_
                                            '0))))
                                    (let ((_tl157266157308_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice158400158401_
                                              '1)))
                                          (_target157264157305_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice158400158401_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl157266157308_))
                                          (___match158506158507_
                                           _e157211157525_
                                           _hd157212157529_
                                           _tl157213157532_
                                           _e157214157535_
                                           _hd157215157539_
                                           _tl157216157542_
                                           ___splice158400158401_
                                           _target157264157305_
                                           _tl157266157308_)
                                          (let ()
                                            (declare (not safe))
                                            (_g157207157278_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g157207157278_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl157216157542_))
                          (let ((___splice158400158401_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl157216157542_
                                    '0))))
                            (let ((_tl157266157308_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice158400158401_ '1)))
                                  (_target157264157305_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice158400158401_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl157266157308_))
                                  (___match158506158507_
                                   _e157211157525_
                                   _hd157212157529_
                                   _tl157213157532_
                                   _e157214157535_
                                   _hd157215157539_
                                   _tl157216157542_
                                   ___splice158400158401_
                                   _target157264157305_
                                   _tl157266157308_)
                                  (let ()
                                    (declare (not safe))
                                    (_g157207157278_)))))
                          (let () (declare (not safe)) (_g157207157278_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl157219157552_))
                                                      (let ((___splice158394158395_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl157219157552_ '0))))
                (let ((_tl157238157461_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice158394158395_ '1)))
                      (_target157236157458_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice158394158395_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl157238157461_))
                      (___match158466158467_
                       _e157211157525_
                       _hd157212157529_
                       _tl157213157532_
                       _e157214157535_
                       _hd157215157539_
                       _tl157216157542_
                       _e157217157545_
                       _hd157218157549_
                       _tl157219157552_
                       _e157220157555_
                       ___splice158394158395_
                       _target157236157458_
                       _tl157238157461_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl157219157552_))
                          (___kont158396158397_
                           _hd157218157549_
                           _hd157215157539_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl157216157542_))
                              (let ((___splice158400158401_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl157216157542_
                                        '0))))
                                (let ((_tl157266157308_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice158400158401_
                                          '1)))
                                      (_target157264157305_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice158400158401_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl157266157308_))
                                      (___match158506158507_
                                       _e157211157525_
                                       _hd157212157529_
                                       _tl157213157532_
                                       _e157214157535_
                                       _hd157215157539_
                                       _tl157216157542_
                                       ___splice158400158401_
                                       _target157264157305_
                                       _tl157266157308_)
                                      (let ()
                                        (declare (not safe))
                                        (_g157207157278_)))))
                              (let ()
                                (declare (not safe))
                                (_g157207157278_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl157219157552_))
                  (___kont158396158397_ _hd157218157549_ _hd157215157539_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl157216157542_))
                      (let ((___splice158400158401_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl157216157542_ '0))))
                        (let ((_tl157266157308_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice158400158401_ '1)))
                              (_target157264157305_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice158400158401_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl157266157308_))
                              (___match158506158507_
                               _e157211157525_
                               _hd157212157529_
                               _tl157213157532_
                               _e157214157535_
                               _hd157215157539_
                               _tl157216157542_
                               ___splice158400158401_
                               _target157264157305_
                               _tl157266157308_)
                              (let ()
                                (declare (not safe))
                                (_g157207157278_)))))
                      (let () (declare (not safe)) (_g157207157278_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl157219157552_))
                                                  (___kont158396158397_
                                                   _hd157218157549_
                                                   _hd157215157539_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl157216157542_))
                                                      (let ((___splice158400158401_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl157216157542_ '0))))
                (let ((_tl157266157308_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice158400158401_ '1)))
                      (_target157264157305_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice158400158401_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl157266157308_))
                      (___match158506158507_
                       _e157211157525_
                       _hd157212157529_
                       _tl157213157532_
                       _e157214157535_
                       _hd157215157539_
                       _tl157216157542_
                       ___splice158400158401_
                       _target157264157305_
                       _tl157266157308_)
                      (let () (declare (not safe)) (_g157207157278_)))))
              (let () (declare (not safe)) (_g157207157278_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157219157552_))
                                            (___kont158396158397_
                                             _hd157218157549_
                                             _hd157215157539_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl157216157542_))
                                                (let ((___splice158400158401_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl157216157542_
                                                          '0))))
                                                  (let ((_tl157266157308_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158400158401_
                                                            '1)))
                                                        (_target157264157305_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice158400158401_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl157266157308_))
                                                        (___match158506158507_
                                                         _e157211157525_
                                                         _hd157212157529_
                                                         _tl157213157532_
                                                         _e157214157535_
                                                         _hd157215157539_
                                                         _tl157216157542_
                                                         ___splice158400158401_
                                                         _target157264157305_
                                                         _tl157266157308_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g157207157278_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g157207157278_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl157216157542_))
                                    (let ((___splice158400158401_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl157216157542_
                                              '0))))
                                      (let ((_tl157266157308_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice158400158401_
                                                '1)))
                                            (_target157264157305_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice158400158401_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157266157308_))
                                            (___match158506158507_
                                             _e157211157525_
                                             _hd157212157529_
                                             _tl157213157532_
                                             _e157214157535_
                                             _hd157215157539_
                                             _tl157216157542_
                                             ___splice158400158401_
                                             _target157264157305_
                                             _tl157266157308_)
                                            (let ()
                                              (declare (not safe))
                                              (_g157207157278_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g157207157278_))))))
                        (let () (declare (not safe)) (_g157207157278_)))))
                (let () (declare (not safe)) (_g157207157278_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx157595_)
      (let* ((___stx158509158510_ _$stx157595_)
             (_g157600157635_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx158509158510_)))))
        (let ((___kont158512158513_
               (lambda (_L157757_ _L157759_)
                 (let ((__tmp158829
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp158824
                        (let ((__tmp158825
                               (let ((__tmp158826
                                      (let ((__tmp158828
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp158827
                                             (let ()
                                               (declare (not safe))
                                               (cons _L157757_ '()))))
                                        (declare (not safe))
                                        (cons __tmp158828 __tmp158827))))
                                 (declare (not safe))
                                 (cons __tmp158826 '()))))
                          (declare (not safe))
                          (cons _L157759_ __tmp158825))))
                   (declare (not safe))
                   (cons __tmp158829 __tmp158824))))
              (___kont158514158515_
               (lambda (_L157692_ _L157694_)
                 (let ((__tmp158838
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp158830
                        (let ((__tmp158831
                               (let ((__tmp158832
                                      (let ((__tmp158837
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp158833
                                             (let ((__tmp158834
                                                    (lambda (_g157711157714_
                                                             _g157712157717_)
                                                      (let ((__tmp158835
                                                             (let ((__tmp158836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g157711157714_ __tmp158836))))
                (declare (not safe))
                (cons __tmp158835 _g157712157717_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp158834
                                                       '()
                                                       _L157692_))))
                                        (declare (not safe))
                                        (cons __tmp158837 __tmp158833))))
                                 (declare (not safe))
                                 (cons __tmp158832 '()))))
                          (declare (not safe))
                          (cons _L157694_ __tmp158831))))
                   (declare (not safe))
                   (cons __tmp158838 __tmp158830)))))
          (let ((___match158558158559_
                 (lambda (_e157615157642_
                          _hd157616157646_
                          _tl157617157649_
                          _e157618157652_
                          _hd157619157656_
                          _tl157620157659_
                          ___splice158516158517_
                          _target157621157662_
                          _tl157623157665_)
                   (letrec ((_loop157624157668_
                             (lambda (_hd157622157672_ _arity157628157675_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd157622157672_))
                                   (let ((_e157625157678_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd157622157672_))))
                                     (let ((_lp-tl157627157685_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e157625157678_)))
                                           (_lp-hd157626157682_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e157625157678_))))
                                       (_loop157624157668_
                                        _lp-tl157627157685_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd157626157682_
                                                _arity157628157675_)))))
                                   (let ((_arity157629157688_
                                          (reverse _arity157628157675_)))
                                     (___kont158514158515_
                                      _arity157629157688_
                                      _hd157619157656_))))))
                     (_loop157624157668_ _target157621157662_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx158509158510_))
                (let ((_e157604157727_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx158509158510_))))
                  (let ((_tl157606157734_
                         (let () (declare (not safe)) (##cdr _e157604157727_)))
                        (_hd157605157731_
                         (let ()
                           (declare (not safe))
                           (##car _e157604157727_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl157606157734_))
                        (let ((_e157607157737_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl157606157734_))))
                          (let ((_tl157609157744_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e157607157737_)))
                                (_hd157608157741_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e157607157737_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl157609157744_))
                                (let ((_e157610157747_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl157609157744_))))
                                  (let ((_tl157612157754_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e157610157747_)))
                                        (_hd157611157751_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e157610157747_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl157612157754_))
                                        (___kont158512158513_
                                         _hd157611157751_
                                         _hd157608157741_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl157609157744_))
                                            (let ((___splice158516158517_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl157609157744_
                                                      '0))))
                                              (let ((_tl157623157665_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice158516158517_
                                                        '1)))
                                                    (_target157621157662_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice158516158517_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl157623157665_))
                                                    (___match158558158559_
                                                     _e157604157727_
                                                     _hd157605157731_
                                                     _tl157606157734_
                                                     _e157607157737_
                                                     _hd157608157741_
                                                     _tl157609157744_
                                                     ___splice158516158517_
                                                     _target157621157662_
                                                     _tl157623157665_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g157600157635_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g157600157635_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl157609157744_))
                                    (let ((___splice158516158517_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl157609157744_
                                              '0))))
                                      (let ((_tl157623157665_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice158516158517_
                                                '1)))
                                            (_target157621157662_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice158516158517_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157623157665_))
                                            (___match158558158559_
                                             _e157604157727_
                                             _hd157605157731_
                                             _tl157606157734_
                                             _e157607157737_
                                             _hd157608157741_
                                             _tl157609157744_
                                             ___splice158516158517_
                                             _target157621157662_
                                             _tl157623157665_)
                                            (let ()
                                              (declare (not safe))
                                              (_g157600157635_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g157600157635_))))))
                        (let () (declare (not safe)) (_g157600157635_)))))
                (let () (declare (not safe)) (_g157600157635_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx157779_)
      (let* ((_g157783157818_
              (lambda (_g157784157814_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157784157814_))))
             (_g157782157946_
              (lambda (_g157784157822_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157784157822_))
                    (let ((_e157787157825_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157784157822_))))
                      (let ((_hd157788157829_
                             (let ()
                               (declare (not safe))
                               (##car _e157787157825_)))
                            (_tl157789157832_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157787157825_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl157789157832_))
                            (let ((_g158839_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl157789157832_
                                      '0))))
                              (begin
                                (let ((_g158840_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g158839_)
                                             (##vector-length _g158839_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g158840_ 2)))
                                      (error "Context expects 2 values"
                                             _g158840_)))
                                (let ((_target157790157835_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g158839_ 0)))
                                      (_tl157792157838_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g158839_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl157792157838_))
                                      (letrec ((_loop157793157841_
                                                (lambda (_hd157791157845_
                                                         _arity157797157848_
                                                         _prim157798157850_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd157791157845_))
                                                      (let ((_e157794157853_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd157791157845_))))
                (let ((_lp-hd157795157857_
                       (let () (declare (not safe)) (##car _e157794157853_)))
                      (_lp-tl157796157860_
                       (let () (declare (not safe)) (##cdr _e157794157853_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd157795157857_))
                      (let ((_e157801157863_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd157795157857_))))
                        (let ((_hd157802157867_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157801157863_)))
                              (_tl157803157870_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157801157863_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl157803157870_))
                              (let ((_g158841_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl157803157870_
                                        '0))))
                                (begin
                                  (let ((_g158842_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g158841_)
                                               (##vector-length _g158841_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g158842_ 2)))
                                        (error "Context expects 2 values"
                                               _g158842_)))
                                  (let ((_target157804157873_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g158841_ 0)))
                                        (_tl157806157876_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g158841_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl157806157876_))
                                        (letrec ((_loop157807157879_
                                                  (lambda (_hd157805157883_
                                                           _arity157811157886_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd157805157883_))
                                                        (let ((_e157808157889_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd157805157883_))))
                  (let ((_lp-hd157809157893_
                         (let () (declare (not safe)) (##car _e157808157889_)))
                        (_lp-tl157810157896_
                         (let ()
                           (declare (not safe))
                           (##cdr _e157808157889_))))
                    (_loop157807157879_
                     _lp-tl157810157896_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd157809157893_ _arity157811157886_)))))
                (let ((_arity157812157899_ (reverse _arity157811157886_)))
                  (_loop157793157841_
                   _lp-tl157796157860_
                   (let ()
                     (declare (not safe))
                     (cons _arity157812157899_ _arity157797157848_))
                   (let ()
                     (declare (not safe))
                     (cons _hd157802157867_ _prim157798157850_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop157807157879_
                                           _target157804157873_
                                           '()))
                                        (_g157783157818_ _g157784157822_)))))
                              (_g157783157818_ _g157784157822_))))
                      (_g157783157818_ _g157784157822_))))
              (let ((_arity157799157903_ (reverse _arity157797157848_))
                    (_prim157800157906_ (reverse _prim157798157850_)))
                ((lambda (_L157909_ _L157911_)
                   (let ((__tmp158850
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp158843
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L157909_
                               _L157911_))
                            (let ((__tmp158844
                                   (lambda (_g157926157932_
                                            _g157927157935_
                                            _g157928157937_)
                                     (let ((__tmp158845
                                            (let ((__tmp158849
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp158846
                                                   (let ((__tmp158847
                                                          (let ((__tmp158848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g157929157940_ _g157930157943_)
                           (let ()
                             (declare (not safe))
                             (cons _g157929157940_ _g157930157943_)))))
                    (declare (not safe))
                    (foldr1 __tmp158848 '() _g157926157932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g157927157935_
                                                           __tmp158847))))
                                              (declare (not safe))
                                              (cons __tmp158849 __tmp158846))))
                                       (declare (not safe))
                                       (cons __tmp158845 _g157928157937_)))))
                              (declare (not safe))
                              (foldr2 __tmp158844 '() _L157909_ _L157911_)))))
                     (declare (not safe))
                     (cons __tmp158850 __tmp158843)))
                 _arity157799157903_
                 _prim157800157906_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop157793157841_
                                         _target157790157835_
                                         '()
                                         '()))
                                      (_g157783157818_ _g157784157822_)))))
                            (_g157783157818_ _g157784157822_))))
                    (_g157783157818_ _g157784157822_)))))
        (_g157782157946_ _$stx157779_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx157952_)
      (let* ((_g157956157991_
              (lambda (_g157957157987_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157957157987_))))
             (_g157955158119_
              (lambda (_g157957157995_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157957157995_))
                    (let ((_e157960157998_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157957157995_))))
                      (let ((_hd157961158002_
                             (let ()
                               (declare (not safe))
                               (##car _e157960157998_)))
                            (_tl157962158005_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157960157998_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl157962158005_))
                            (let ((_g158851_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl157962158005_
                                      '0))))
                              (begin
                                (let ((_g158852_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g158851_)
                                             (##vector-length _g158851_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g158852_ 2)))
                                      (error "Context expects 2 values"
                                             _g158852_)))
                                (let ((_target157963158008_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g158851_ 0)))
                                      (_tl157965158011_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g158851_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl157965158011_))
                                      (letrec ((_loop157966158014_
                                                (lambda (_hd157964158018_
                                                         _arity157970158021_
                                                         _prim157971158023_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd157964158018_))
                                                      (let ((_e157967158026_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd157964158018_))))
                (let ((_lp-hd157968158030_
                       (let () (declare (not safe)) (##car _e157967158026_)))
                      (_lp-tl157969158033_
                       (let () (declare (not safe)) (##cdr _e157967158026_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd157968158030_))
                      (let ((_e157974158036_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd157968158030_))))
                        (let ((_hd157975158040_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157974158036_)))
                              (_tl157976158043_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157974158036_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl157976158043_))
                              (let ((_g158853_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl157976158043_
                                        '0))))
                                (begin
                                  (let ((_g158854_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g158853_)
                                               (##vector-length _g158853_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g158854_ 2)))
                                        (error "Context expects 2 values"
                                               _g158854_)))
                                  (let ((_target157977158046_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g158853_ 0)))
                                        (_tl157979158049_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g158853_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl157979158049_))
                                        (letrec ((_loop157980158052_
                                                  (lambda (_hd157978158056_
                                                           _arity157984158059_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd157978158056_))
                                                        (let ((_e157981158062_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd157978158056_))))
                  (let ((_lp-hd157982158066_
                         (let () (declare (not safe)) (##car _e157981158062_)))
                        (_lp-tl157983158069_
                         (let ()
                           (declare (not safe))
                           (##cdr _e157981158062_))))
                    (_loop157980158052_
                     _lp-tl157983158069_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd157982158066_ _arity157984158059_)))))
                (let ((_arity157985158072_ (reverse _arity157984158059_)))
                  (_loop157966158014_
                   _lp-tl157969158033_
                   (let ()
                     (declare (not safe))
                     (cons _arity157985158072_ _arity157970158021_))
                   (let ()
                     (declare (not safe))
                     (cons _hd157975158040_ _prim157971158023_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop157980158052_
                                           _target157977158046_
                                           '()))
                                        (_g157956157991_ _g157957157995_)))))
                              (_g157956157991_ _g157957157995_))))
                      (_g157956157991_ _g157957157995_))))
              (let ((_arity157972158076_ (reverse _arity157970158021_))
                    (_prim157973158079_ (reverse _prim157971158023_)))
                ((lambda (_L158082_ _L158084_)
                   (let ((__tmp158862
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp158855
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158082_
                               _L158084_))
                            (let ((__tmp158856
                                   (lambda (_g158099158105_
                                            _g158100158108_
                                            _g158101158110_)
                                     (let ((__tmp158857
                                            (let ((__tmp158861
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp158858
                                                   (let ((__tmp158859
                                                          (let ((__tmp158860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g158102158113_ _g158103158116_)
                           (let ()
                             (declare (not safe))
                             (cons _g158102158113_ _g158103158116_)))))
                    (declare (not safe))
                    (foldr1 __tmp158860 '() _g158099158105_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158100158108_
                                                           __tmp158859))))
                                              (declare (not safe))
                                              (cons __tmp158861 __tmp158858))))
                                       (declare (not safe))
                                       (cons __tmp158857 _g158101158110_)))))
                              (declare (not safe))
                              (foldr2 __tmp158856 '() _L158082_ _L158084_)))))
                     (declare (not safe))
                     (cons __tmp158862 __tmp158855)))
                 _arity157972158076_
                 _prim157973158079_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop157966158014_
                                         _target157963158008_
                                         '()
                                         '()))
                                      (_g157956157991_ _g157957157995_)))))
                            (_g157956157991_ _g157957157995_))))
                    (_g157956157991_ _g157957157995_)))))
        (_g157955158119_ _$stx157952_)))))
