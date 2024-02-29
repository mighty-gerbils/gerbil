(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx158461_)
      (let* ((_g158465158483_
              (lambda (_g158466158479_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158466158479_))))
             (_g158464158538_
              (lambda (_g158466158487_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158466158487_))
                    (let ((_e158471158490_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158466158487_))))
                      (let ((_hd158470158494_
                             (let ()
                               (declare (not safe))
                               (##car _e158471158490_)))
                            (_tl158469158497_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158471158490_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158469158497_))
                            (let ((_e158474158500_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158469158497_))))
                              (let ((_hd158473158504_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158474158500_)))
                                    (_tl158472158507_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158474158500_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158472158507_))
                                    (let ((_e158477158510_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158472158507_))))
                                      (let ((_hd158476158514_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158477158510_)))
                                            (_tl158475158517_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158477158510_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl158475158517_))
                                            ((lambda (_L158520_ _L158522_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L158522_))
                                                   (let ((__tmp162002
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp161997
                                                          (let ((__tmp161999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp162001
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp162000
                                (let ()
                                  (declare (not safe))
                                  (cons _L158522_ '()))))
                           (declare (not safe))
                           (cons __tmp162001 __tmp162000)))
                        (__tmp161998
                         (let () (declare (not safe)) (cons _L158520_ '()))))
                    (declare (not safe))
                    (cons __tmp161999 __tmp161998))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp162002
                                                           __tmp161997))
                                                   (_g158465158483_
                                                    _g158466158487_)))
                                             _hd158476158514_
                                             _hd158473158504_)
                                            (_g158465158483_
                                             _g158466158487_))))
                                    (_g158465158483_ _g158466158487_))))
                            (_g158465158483_ _g158466158487_))))
                    (_g158465158483_ _g158466158487_)))))
        (_g158464158538_ _$stx158461_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx158542_)
      (let* ((_g158546158575_
              (lambda (_g158547158571_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158547158571_))))
             (_g158545158675_
              (lambda (_g158547158579_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158547158579_))
                    (let ((_e158552158582_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158547158579_))))
                      (let ((_hd158551158586_
                             (let ()
                               (declare (not safe))
                               (##car _e158552158582_)))
                            (_tl158550158589_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158552158582_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158550158589_))
                            (let ((_g162003_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158550158589_
                                      '0))))
                              (begin
                                (let ((_g162004_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162003_)
                                             (##vector-length _g162003_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162004_ 2)))
                                      (error "Context expects 2 values"
                                             _g162004_)))
                                (let ((_target158553158592_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162003_ 0)))
                                      (_tl158555158595_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162003_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158555158595_))
                                      (letrec ((_loop158556158598_
                                                (lambda (_hd158554158602_
                                                         _type158560158605_
                                                         _symbol158561158607_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158554158602_))
                                                      (let ((_e158557158610_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158554158602_))))
                (let ((_lp-hd158558158614_
                       (let () (declare (not safe)) (##car _e158557158610_)))
                      (_lp-tl158559158617_
                       (let () (declare (not safe)) (##cdr _e158557158610_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158558158614_))
                      (let ((_e158566158620_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158558158614_))))
                        (let ((_hd158565158624_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158566158620_)))
                              (_tl158564158627_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158566158620_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158564158627_))
                              (let ((_e158569158630_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158564158627_))))
                                (let ((_hd158568158634_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158569158630_)))
                                      (_tl158567158637_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158569158630_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158567158637_))
                                      (_loop158556158598_
                                       _lp-tl158559158617_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158568158634_
                                               _type158560158605_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd158565158624_
                                               _symbol158561158607_)))
                                      (_g158546158575_ _g158547158579_))))
                              (_g158546158575_ _g158547158579_))))
                      (_g158546158575_ _g158547158579_))))
              (let ((_type158562158640_ (reverse _type158560158605_))
                    (_symbol158563158643_ (reverse _symbol158561158607_)))
                ((lambda (_L158646_ _L158648_)
                   (let ((__tmp162011
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162005
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158646_
                               _L158648_))
                            (let ((__tmp162006
                                   (lambda (_g158663158667_
                                            _g158664158670_
                                            _g158665158672_)
                                     (let ((__tmp162007
                                            (let ((__tmp162010
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp162008
                                                   (let ((__tmp162009
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g158663158667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158664158670_
                                                           __tmp162009))))
                                              (declare (not safe))
                                              (cons __tmp162010 __tmp162008))))
                                       (declare (not safe))
                                       (cons __tmp162007 _g158665158672_)))))
                              (declare (not safe))
                              (foldr2 __tmp162006 '() _L158646_ _L158648_)))))
                     (declare (not safe))
                     (cons __tmp162011 __tmp162005)))
                 _type158562158640_
                 _symbol158563158643_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158556158598_
                                         _target158553158592_
                                         '()
                                         '()))
                                      (_g158546158575_ _g158547158579_)))))
                            (_g158546158575_ _g158547158579_))))
                    (_g158546158575_ _g158547158579_)))))
        (_g158545158675_ _$stx158542_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx158680_)
      (let* ((___stx161562161563_ _$stx158680_)
             (_g158685158727_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161562161563_)))))
        (let ((___kont161565161566_
               (lambda (_L158855_ _L158857_ _L158858_ _L158859_)
                 (let ((__tmp162025
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp162012
                        (let ((__tmp162022
                               (let ((__tmp162024
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162023
                                      (let ()
                                        (declare (not safe))
                                        (cons _L158859_ '()))))
                                 (declare (not safe))
                                 (cons __tmp162024 __tmp162023)))
                              (__tmp162013
                               (let ((__tmp162019
                                      (let ((__tmp162021
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162020
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158858_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162021 __tmp162020)))
                                     (__tmp162014
                                      (let ((__tmp162016
                                             (let ((__tmp162018
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162017
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L158857_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162018 __tmp162017)))
                                            (__tmp162015
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158855_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162016 __tmp162015))))
                                 (declare (not safe))
                                 (cons __tmp162019 __tmp162014))))
                          (declare (not safe))
                          (cons __tmp162022 __tmp162013))))
                   (declare (not safe))
                   (cons __tmp162025 __tmp162012))))
              (___kont161567161568_
               (lambda (_L158774_ _L158776_ _L158777_ _L158778_)
                 (let ((__tmp162026
                        (let ((__tmp162027
                               (let ((__tmp162028
                                      (let ((__tmp162029
                                             (let ((__tmp162030
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp162030 '()))))
                                        (declare (not safe))
                                        (cons _L158774_ __tmp162029))))
                                 (declare (not safe))
                                 (cons _L158776_ __tmp162028))))
                          (declare (not safe))
                          (cons _L158777_ __tmp162027))))
                   (declare (not safe))
                   (cons _L158778_ __tmp162026)))))
          (let ((___match161601161602_
                 (lambda (_e158693158805_
                          _hd158692158809_
                          _tl158691158812_
                          _e158696158815_
                          _hd158695158819_
                          _tl158694158822_
                          _e158699158825_
                          _hd158698158829_
                          _tl158697158832_
                          _e158702158835_
                          _hd158701158839_
                          _tl158700158842_
                          _e158705158845_
                          _hd158704158849_
                          _tl158703158852_)
                   (let ((_L158855_ _hd158704158849_)
                         (_L158857_ _hd158701158839_)
                         (_L158858_ _hd158698158829_)
                         (_L158859_ _hd158695158819_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L158859_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158858_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158857_)))
                         (___kont161565161566_
                          _L158855_
                          _L158857_
                          _L158858_
                          _L158859_)
                         (let () (declare (not safe)) (_g158685158727_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161562161563_))
                (let ((_e158693158805_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161562161563_))))
                  (let ((_tl158691158812_
                         (let () (declare (not safe)) (##cdr _e158693158805_)))
                        (_hd158692158809_
                         (let ()
                           (declare (not safe))
                           (##car _e158693158805_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl158691158812_))
                        (let ((_e158696158815_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl158691158812_))))
                          (let ((_tl158694158822_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e158696158815_)))
                                (_hd158695158819_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e158696158815_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl158694158822_))
                                (let ((_e158699158825_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl158694158822_))))
                                  (let ((_tl158697158832_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e158699158825_)))
                                        (_hd158698158829_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e158699158825_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl158697158832_))
                                        (let ((_e158702158835_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl158697158832_))))
                                          (let ((_tl158700158842_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e158702158835_)))
                                                (_hd158701158839_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e158702158835_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl158700158842_))
                                                (let ((_e158705158845_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl158700158842_))))
                                                  (let ((_tl158703158852_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e158705158845_)))
                                                        (_hd158704158849_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e158705158845_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl158703158852_))
                                                        (___match161601161602_
                                                         _e158693158805_
                                                         _hd158692158809_
                                                         _tl158691158812_
                                                         _e158696158815_
                                                         _hd158695158819_
                                                         _tl158694158822_
                                                         _e158699158825_
                                                         _hd158698158829_
                                                         _tl158697158832_
                                                         _e158702158835_
                                                         _hd158701158839_
                                                         _tl158700158842_
                                                         _e158705158845_
                                                         _hd158704158849_
                                                         _tl158703158852_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g158685158727_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158700158842_))
                                                    (___kont161567161568_
                                                     _hd158701158839_
                                                     _hd158698158829_
                                                     _hd158695158819_
                                                     _hd158692158809_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g158685158727_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g158685158727_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g158685158727_)))))
                        (let () (declare (not safe)) (_g158685158727_)))))
                (let () (declare (not safe)) (_g158685158727_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx158884_)
      (let* ((_g158888158923_
              (lambda (_g158889158919_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158889158919_))))
             (_g158887159042_
              (lambda (_g158889158927_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158889158927_))
                    (let ((_e158895158930_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158889158927_))))
                      (let ((_hd158894158934_
                             (let ()
                               (declare (not safe))
                               (##car _e158895158930_)))
                            (_tl158893158937_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158895158930_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158893158937_))
                            (let ((_g162031_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158893158937_
                                      '0))))
                              (begin
                                (let ((_g162032_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162031_)
                                             (##vector-length _g162031_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162032_ 2)))
                                      (error "Context expects 2 values"
                                             _g162032_)))
                                (let ((_target158896158940_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162031_ 0)))
                                      (_tl158898158943_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162031_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158898158943_))
                                      (letrec ((_loop158899158946_
                                                (lambda (_hd158897158950_
                                                         _symbol158903158953_
                                                         _method158904158955_
                                                         _type-t158905158957_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158897158950_))
                                                      (let ((_e158900158960_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158897158950_))))
                (let ((_lp-hd158901158964_
                       (let () (declare (not safe)) (##car _e158900158960_)))
                      (_lp-tl158902158967_
                       (let () (declare (not safe)) (##cdr _e158900158960_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158901158964_))
                      (let ((_e158911158970_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158901158964_))))
                        (let ((_hd158910158974_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158911158970_)))
                              (_tl158909158977_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158911158970_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158909158977_))
                              (let ((_e158914158980_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158909158977_))))
                                (let ((_hd158913158984_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158914158980_)))
                                      (_tl158912158987_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158914158980_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158912158987_))
                                      (let ((_e158917158990_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158912158987_))))
                                        (let ((_hd158916158994_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158917158990_)))
                                              (_tl158915158997_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158917158990_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158915158997_))
                                              (_loop158899158946_
                                               _lp-tl158902158967_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158916158994_
                                                       _symbol158903158953_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158913158984_
                                                       _method158904158955_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158910158974_
                                                       _type-t158905158957_)))
                                              (_g158888158923_
                                               _g158889158927_))))
                                      (_g158888158923_ _g158889158927_))))
                              (_g158888158923_ _g158889158927_))))
                      (_g158888158923_ _g158889158927_))))
              (let ((_symbol158906159000_ (reverse _symbol158903158953_))
                    (_method158907159003_ (reverse _method158904158955_))
                    (_type-t158908159005_ (reverse _type-t158905158957_)))
                ((lambda (_L159008_ _L159010_ _L159011_)
                   (let ((__tmp162040
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162033
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159008_
                               _L159010_
                               _L159011_))
                            (let ((__tmp162034
                                   (lambda (_g159027159032_
                                            _g159028159035_
                                            _g159029159037_
                                            _g159030159039_)
                                     (let ((__tmp162035
                                            (let ((__tmp162039
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp162036
                                                   (let ((__tmp162037
                                                          (let ((__tmp162038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g159027159032_ '()))))
                    (declare (not safe))
                    (cons _g159028159035_ __tmp162038))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159029159037_
                                                           __tmp162037))))
                                              (declare (not safe))
                                              (cons __tmp162039 __tmp162036))))
                                       (declare (not safe))
                                       (cons __tmp162035 _g159030159039_)))))
                              (declare (not safe))
                              (foldr* __tmp162034
                                      '()
                                      _L159008_
                                      _L159010_
                                      _L159011_)))))
                     (declare (not safe))
                     (cons __tmp162040 __tmp162033)))
                 _symbol158906159000_
                 _method158907159003_
                 _type-t158908159005_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158899158946_
                                         _target158896158940_
                                         '()
                                         '()
                                         '()))
                                      (_g158888158923_ _g158889158927_)))))
                            (_g158888158923_ _g158889158927_))))
                    (_g158888158923_ _g158889158927_)))))
        (_g158887159042_ _$stx158884_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx159047_)
      (let* ((_g159051159084_
              (lambda (_g159052159080_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159052159080_))))
             (_g159050159198_
              (lambda (_g159052159088_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159052159088_))
                    (let ((_e159058159091_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159052159088_))))
                      (let ((_hd159057159095_
                             (let ()
                               (declare (not safe))
                               (##car _e159058159091_)))
                            (_tl159056159098_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159058159091_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159056159098_))
                            (let ((_e159061159101_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159056159098_))))
                              (let ((_hd159060159105_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159061159101_)))
                                    (_tl159059159108_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159061159101_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159059159108_))
                                    (let ((_g162041_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159059159108_
                                              '0))))
                                      (begin
                                        (let ((_g162042_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g162041_)
                                                     (##vector-length
                                                      _g162041_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g162042_ 2)))
                                              (error "Context expects 2 values"
                                                     _g162042_)))
                                        (let ((_target159062159111_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162041_ 0)))
                                              (_tl159064159114_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162041_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159064159114_))
                                              (letrec ((_loop159065159117_
                                                        (lambda (_hd159063159121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol159069159124_
                         _method159070159126_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd159063159121_))
                      (let ((_e159066159129_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd159063159121_))))
                        (let ((_lp-hd159067159133_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159066159129_)))
                              (_lp-tl159068159136_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159066159129_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd159067159133_))
                              (let ((_e159075159139_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd159067159133_))))
                                (let ((_hd159074159143_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159075159139_)))
                                      (_tl159073159146_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159075159139_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159073159146_))
                                      (let ((_e159078159149_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159073159146_))))
                                        (let ((_hd159077159153_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159078159149_)))
                                              (_tl159076159156_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159078159149_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159076159156_))
                                              (_loop159065159117_
                                               _lp-tl159068159136_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159077159153_
                                                       _symbol159069159124_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159074159143_
                                                       _method159070159126_)))
                                              (_g159051159084_
                                               _g159052159088_))))
                                      (_g159051159084_ _g159052159088_))))
                              (_g159051159084_ _g159052159088_))))
                      (let ((_symbol159071159159_
                             (reverse _symbol159069159124_))
                            (_method159072159162_
                             (reverse _method159070159126_)))
                        ((lambda (_L159165_ _L159167_ _L159168_)
                           (let ((__tmp162050
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp162043
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L159165_
                                       _L159167_))
                                    (let ((__tmp162044
                                           (lambda (_g159186159190_
                                                    _g159187159193_
                                                    _g159188159195_)
                                             (let ((__tmp162045
                                                    (let ((__tmp162049
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp162046
                                                           (let ((__tmp162047
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp162048
                                 (let ()
                                   (declare (not safe))
                                   (cons _g159186159190_ '()))))
                            (declare (not safe))
                            (cons _g159187159193_ __tmp162048))))
                     (declare (not safe))
                     (cons _L159168_ __tmp162047))))
              (declare (not safe))
              (cons __tmp162049 __tmp162046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162045
                                                     _g159188159195_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp162044
                                              '()
                                              _L159165_
                                              _L159167_)))))
                             (declare (not safe))
                             (cons __tmp162050 __tmp162043)))
                         _symbol159071159159_
                         _method159072159162_
                         _hd159060159105_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop159065159117_
                                                 _target159062159111_
                                                 '()
                                                 '()))
                                              (_g159051159084_
                                               _g159052159088_)))))
                                    (_g159051159084_ _g159052159088_))))
                            (_g159051159084_ _g159052159088_))))
                    (_g159051159084_ _g159052159088_)))))
        (_g159050159198_ _$stx159047_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx159203_)
      (let* ((_g159207159221_
              (lambda (_g159208159217_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159208159217_))))
             (_g159206159262_
              (lambda (_g159208159225_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159208159225_))
                    (let ((_e159212159228_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159208159225_))))
                      (let ((_hd159211159232_
                             (let ()
                               (declare (not safe))
                               (##car _e159212159228_)))
                            (_tl159210159235_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159212159228_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159210159235_))
                            (let ((_e159215159238_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159210159235_))))
                              (let ((_hd159214159242_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159215159238_)))
                                    (_tl159213159245_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159215159238_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159213159245_))
                                    ((lambda (_L159248_)
                                       (let ((__tmp162055
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp162051
                                              (let ((__tmp162052
                                                     (let ((__tmp162054
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162053
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162054 __tmp162053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162052 '()))))
                                         (declare (not safe))
                                         (cons __tmp162055 __tmp162051)))
                                     _hd159214159242_)
                                    (_g159207159221_ _g159208159225_))))
                            (_g159207159221_ _g159208159225_))))
                    (_g159207159221_ _g159208159225_)))))
        (_g159206159262_ _$stx159203_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx159266_)
      (let* ((_g159270159320_
              (lambda (_g159271159316_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159271159316_))))
             (_g159269159487_
              (lambda (_g159271159324_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159271159324_))
                    (let ((_e159284159327_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159271159324_))))
                      (let ((_hd159283159331_
                             (let ()
                               (declare (not safe))
                               (##car _e159284159327_)))
                            (_tl159282159334_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159284159327_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159282159334_))
                            (let ((_e159287159337_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159282159334_))))
                              (let ((_hd159286159341_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159287159337_)))
                                    (_tl159285159344_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159287159337_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159285159344_))
                                    (let ((_e159290159347_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159285159344_))))
                                      (let ((_hd159289159351_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159290159347_)))
                                            (_tl159288159354_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159290159347_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159288159354_))
                                            (let ((_e159293159357_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159288159354_))))
                                              (let ((_hd159292159361_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159293159357_)))
                                                    (_tl159291159364_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159293159357_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159291159364_))
                                                    (let ((_e159296159367_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159291159364_))))
                                                      (let ((_hd159295159371_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159296159367_)))
                    (_tl159294159374_
                     (let () (declare (not safe)) (##cdr _e159296159367_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159294159374_))
                    (let ((_e159299159377_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159294159374_))))
                      (let ((_hd159298159381_
                             (let ()
                               (declare (not safe))
                               (##car _e159299159377_)))
                            (_tl159297159384_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159299159377_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159297159384_))
                            (let ((_e159302159387_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159297159384_))))
                              (let ((_hd159301159391_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159302159387_)))
                                    (_tl159300159394_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159302159387_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159300159394_))
                                    (let ((_e159305159397_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159300159394_))))
                                      (let ((_hd159304159401_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159305159397_)))
                                            (_tl159303159404_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159305159397_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159303159404_))
                                            (let ((_e159308159407_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159303159404_))))
                                              (let ((_hd159307159411_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159308159407_)))
                                                    (_tl159306159414_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159308159407_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159306159414_))
                                                    (let ((_e159311159417_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159306159414_))))
                                                      (let ((_hd159310159421_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159311159417_)))
                    (_tl159309159424_
                     (let () (declare (not safe)) (##cdr _e159311159417_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159309159424_))
                    (let ((_e159314159427_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159309159424_))))
                      (let ((_hd159313159431_
                             (let ()
                               (declare (not safe))
                               (##car _e159314159427_)))
                            (_tl159312159434_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159314159427_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl159312159434_))
                            ((lambda (_L159437_
                                      _L159439_
                                      _L159440_
                                      _L159441_
                                      _L159442_
                                      _L159443_
                                      _L159444_
                                      _L159445_
                                      _L159446_
                                      _L159447_)
                               (let ((__tmp162090
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp162056
                                      (let ((__tmp162087
                                             (let ((__tmp162089
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162088
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159447_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162089 __tmp162088)))
                                            (__tmp162057
                                             (let ((__tmp162084
                                                    (let ((__tmp162086
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp162085
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L159446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp162086 __tmp162085)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp162058
                                                    (let ((__tmp162081
                                                           (let ((__tmp162083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162082
                          (let () (declare (not safe)) (cons _L159445_ '()))))
                     (declare (not safe))
                     (cons __tmp162083 __tmp162082)))
                  (__tmp162059
                   (let ((__tmp162078
                          (let ((__tmp162080
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp162079
                                 (let ()
                                   (declare (not safe))
                                   (cons _L159444_ '()))))
                            (declare (not safe))
                            (cons __tmp162080 __tmp162079)))
                         (__tmp162060
                          (let ((__tmp162075
                                 (let ((__tmp162077
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp162076
                                        (let ()
                                          (declare (not safe))
                                          (cons _L159443_ '()))))
                                   (declare (not safe))
                                   (cons __tmp162077 __tmp162076)))
                                (__tmp162061
                                 (let ((__tmp162072
                                        (let ((__tmp162074
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp162073
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L159442_ '()))))
                                          (declare (not safe))
                                          (cons __tmp162074 __tmp162073)))
                                       (__tmp162062
                                        (let ((__tmp162063
                                               (let ((__tmp162064
                                                      (let ((__tmp162069
                                                             (let ((__tmp162071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162070
                            (let ()
                              (declare (not safe))
                              (cons _L159439_ '()))))
                       (declare (not safe))
                       (cons __tmp162071 __tmp162070)))
                    (__tmp162065
                     (let ((__tmp162066
                            (let ((__tmp162068
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162067
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159437_ '()))))
                              (declare (not safe))
                              (cons __tmp162068 __tmp162067))))
                       (declare (not safe))
                       (cons __tmp162066 '()))))
                (declare (not safe))
                (cons __tmp162069 __tmp162065))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L159440_
                                                       __tmp162064))))
                                          (declare (not safe))
                                          (cons _L159441_ __tmp162063))))
                                   (declare (not safe))
                                   (cons __tmp162072 __tmp162062))))
                            (declare (not safe))
                            (cons __tmp162075 __tmp162061))))
                     (declare (not safe))
                     (cons __tmp162078 __tmp162060))))
              (declare (not safe))
              (cons __tmp162081 __tmp162059))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162084
                                                     __tmp162058))))
                                        (declare (not safe))
                                        (cons __tmp162087 __tmp162057))))
                                 (declare (not safe))
                                 (cons __tmp162090 __tmp162056)))
                             _hd159313159431_
                             _hd159310159421_
                             _hd159307159411_
                             _hd159304159401_
                             _hd159301159391_
                             _hd159298159381_
                             _hd159295159371_
                             _hd159292159361_
                             _hd159289159351_
                             _hd159286159341_)
                            (_g159270159320_ _g159271159324_))))
                    (_g159270159320_ _g159271159324_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159270159320_
                                                     _g159271159324_))))
                                            (_g159270159320_
                                             _g159271159324_))))
                                    (_g159270159320_ _g159271159324_))))
                            (_g159270159320_ _g159271159324_))))
                    (_g159270159320_ _g159271159324_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159270159320_
                                                     _g159271159324_))))
                                            (_g159270159320_
                                             _g159271159324_))))
                                    (_g159270159320_ _g159271159324_))))
                            (_g159270159320_ _g159271159324_))))
                    (_g159270159320_ _g159271159324_)))))
        (_g159269159487_ _$stx159266_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx159491_)
      (let* ((_g159495159509_
              (lambda (_g159496159505_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159496159505_))))
             (_g159494159550_
              (lambda (_g159496159513_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159496159513_))
                    (let ((_e159500159516_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159496159513_))))
                      (let ((_hd159499159520_
                             (let ()
                               (declare (not safe))
                               (##car _e159500159516_)))
                            (_tl159498159523_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159500159516_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159498159523_))
                            (let ((_e159503159526_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159498159523_))))
                              (let ((_hd159502159530_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159503159526_)))
                                    (_tl159501159533_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159503159526_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159501159533_))
                                    ((lambda (_L159536_)
                                       (let ((__tmp162095
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp162091
                                              (let ((__tmp162092
                                                     (let ((__tmp162094
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162093
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162094 __tmp162093))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162092 '()))))
                                         (declare (not safe))
                                         (cons __tmp162095 __tmp162091)))
                                     _hd159502159530_)
                                    (_g159495159509_ _g159496159513_))))
                            (_g159495159509_ _g159496159513_))))
                    (_g159495159509_ _g159496159513_)))))
        (_g159494159550_ _$stx159491_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx159554_)
      (let* ((_g159558159572_
              (lambda (_g159559159568_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159559159568_))))
             (_g159557159613_
              (lambda (_g159559159576_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159559159576_))
                    (let ((_e159563159579_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159559159576_))))
                      (let ((_hd159562159583_
                             (let ()
                               (declare (not safe))
                               (##car _e159563159579_)))
                            (_tl159561159586_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159563159579_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159561159586_))
                            (let ((_e159566159589_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159561159586_))))
                              (let ((_hd159565159593_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159566159589_)))
                                    (_tl159564159596_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159566159589_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159564159596_))
                                    ((lambda (_L159599_)
                                       (let ((__tmp162100
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp162096
                                              (let ((__tmp162097
                                                     (let ((__tmp162099
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162098
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162099 __tmp162098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162097 '()))))
                                         (declare (not safe))
                                         (cons __tmp162100 __tmp162096)))
                                     _hd159565159593_)
                                    (_g159558159572_ _g159559159576_))))
                            (_g159558159572_ _g159559159576_))))
                    (_g159558159572_ _g159559159576_)))))
        (_g159557159613_ _$stx159554_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx159617_)
      (let* ((_g159621159643_
              (lambda (_g159622159639_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159622159639_))))
             (_g159620159712_
              (lambda (_g159622159647_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159622159647_))
                    (let ((_e159628159650_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159622159647_))))
                      (let ((_hd159627159654_
                             (let ()
                               (declare (not safe))
                               (##car _e159628159650_)))
                            (_tl159626159657_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159628159650_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159626159657_))
                            (let ((_e159631159660_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159626159657_))))
                              (let ((_hd159630159664_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159631159660_)))
                                    (_tl159629159667_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159631159660_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159629159667_))
                                    (let ((_e159634159670_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159629159667_))))
                                      (let ((_hd159633159674_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159634159670_)))
                                            (_tl159632159677_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159634159670_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159632159677_))
                                            (let ((_e159637159680_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159632159677_))))
                                              (let ((_hd159636159684_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159637159680_)))
                                                    (_tl159635159687_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159637159680_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159635159687_))
                                                    ((lambda (_L159690_
                                                              _L159692_
                                                              _L159693_)
                                                       (let ((__tmp162110
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp162101
                      (let ((__tmp162107
                             (let ((__tmp162109
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162108
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159693_ '()))))
                               (declare (not safe))
                               (cons __tmp162109 __tmp162108)))
                            (__tmp162102
                             (let ((__tmp162104
                                    (let ((__tmp162106
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162105
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159692_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162106 __tmp162105)))
                                   (__tmp162103
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159690_ '()))))
                               (declare (not safe))
                               (cons __tmp162104 __tmp162103))))
                        (declare (not safe))
                        (cons __tmp162107 __tmp162102))))
                 (declare (not safe))
                 (cons __tmp162110 __tmp162101)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159636159684_
                                                     _hd159633159674_
                                                     _hd159630159664_)
                                                    (_g159621159643_
                                                     _g159622159647_))))
                                            (_g159621159643_
                                             _g159622159647_))))
                                    (_g159621159643_ _g159622159647_))))
                            (_g159621159643_ _g159622159647_))))
                    (_g159621159643_ _g159622159647_)))))
        (_g159620159712_ _$stx159617_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx159716_)
      (let* ((_g159720159742_
              (lambda (_g159721159738_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159721159738_))))
             (_g159719159811_
              (lambda (_g159721159746_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159721159746_))
                    (let ((_e159727159749_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159721159746_))))
                      (let ((_hd159726159753_
                             (let ()
                               (declare (not safe))
                               (##car _e159727159749_)))
                            (_tl159725159756_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159727159749_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159725159756_))
                            (let ((_e159730159759_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159725159756_))))
                              (let ((_hd159729159763_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159730159759_)))
                                    (_tl159728159766_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159730159759_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159728159766_))
                                    (let ((_e159733159769_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159728159766_))))
                                      (let ((_hd159732159773_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159733159769_)))
                                            (_tl159731159776_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159733159769_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159731159776_))
                                            (let ((_e159736159779_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159731159776_))))
                                              (let ((_hd159735159783_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159736159779_)))
                                                    (_tl159734159786_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159736159779_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159734159786_))
                                                    ((lambda (_L159789_
                                                              _L159791_
                                                              _L159792_)
                                                       (let ((__tmp162120
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp162111
                      (let ((__tmp162117
                             (let ((__tmp162119
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162118
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159792_ '()))))
                               (declare (not safe))
                               (cons __tmp162119 __tmp162118)))
                            (__tmp162112
                             (let ((__tmp162114
                                    (let ((__tmp162116
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162115
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159791_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162116 __tmp162115)))
                                   (__tmp162113
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159789_ '()))))
                               (declare (not safe))
                               (cons __tmp162114 __tmp162113))))
                        (declare (not safe))
                        (cons __tmp162117 __tmp162112))))
                 (declare (not safe))
                 (cons __tmp162120 __tmp162111)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd159735159783_
                                                     _hd159732159773_
                                                     _hd159729159763_)
                                                    (_g159720159742_
                                                     _g159721159746_))))
                                            (_g159720159742_
                                             _g159721159746_))))
                                    (_g159720159742_ _g159721159746_))))
                            (_g159720159742_ _g159721159746_))))
                    (_g159720159742_ _g159721159746_)))))
        (_g159719159811_ _$stx159716_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx159815_)
      (let* ((___stx161630161631_ _$stx159815_)
             (_g159823159891_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161630161631_)))))
        (let ((___kont161633161634_
               (lambda (_L160169_ _L160171_)
                 (let ((__tmp162136
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162121
                        (let ((__tmp162132
                               (let ((__tmp162135
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162133
                                      (let ((__tmp162134
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162134 '()))))
                                 (declare (not safe))
                                 (cons __tmp162135 __tmp162133)))
                              (__tmp162122
                               (let ((__tmp162129
                                      (let ((__tmp162131
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162130
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160171_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162131 __tmp162130)))
                                     (__tmp162123
                                      (let ((__tmp162124
                                             (let ((__tmp162125
                                                    (let ((__tmp162126
                                                           (let ((__tmp162128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162127
                          (let () (declare (not safe)) (cons _L160169_ '()))))
                     (declare (not safe))
                     (cons __tmp162128 __tmp162127))))
              (declare (not safe))
              (cons __tmp162126 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L160169_ __tmp162125))))
                                        (declare (not safe))
                                        (cons '#f __tmp162124))))
                                 (declare (not safe))
                                 (cons __tmp162129 __tmp162123))))
                          (declare (not safe))
                          (cons __tmp162132 __tmp162122))))
                   (declare (not safe))
                   (cons __tmp162136 __tmp162121))))
              (___kont161635161636_
               (lambda (_L160100_ _L160102_)
                 (let ((__tmp162137
                        (let ((__tmp162138
                               (let ((__tmp162139
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L160100_ __tmp162139))))
                          (declare (not safe))
                          (cons 'primitive: __tmp162138))))
                   (declare (not safe))
                   (cons _L160102_ __tmp162137))))
              (___kont161637161638_
               (lambda (_L160039_ _L160041_)
                 (let ((__tmp162153
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp162140
                        (let ((__tmp162149
                               (let ((__tmp162152
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162150
                                      (let ((__tmp162151
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162151 '()))))
                                 (declare (not safe))
                                 (cons __tmp162152 __tmp162150)))
                              (__tmp162141
                               (let ((__tmp162146
                                      (let ((__tmp162148
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162147
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160041_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162148 __tmp162147)))
                                     (__tmp162142
                                      (let ((__tmp162143
                                             (let ((__tmp162145
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162144
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160039_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162145
                                                     __tmp162144))))
                                        (declare (not safe))
                                        (cons __tmp162143 '()))))
                                 (declare (not safe))
                                 (cons __tmp162146 __tmp162142))))
                          (declare (not safe))
                          (cons __tmp162149 __tmp162141))))
                   (declare (not safe))
                   (cons __tmp162153 __tmp162140))))
              (___kont161639161640_
               (lambda (_L159971_ _L159973_)
                 (let ((__tmp162167
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162154
                        (let ((__tmp162163
                               (let ((__tmp162166
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162164
                                      (let ((__tmp162165
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162165 '()))))
                                 (declare (not safe))
                                 (cons __tmp162166 __tmp162164)))
                              (__tmp162155
                               (let ((__tmp162160
                                      (let ((__tmp162162
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162161
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159973_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162162 __tmp162161)))
                                     (__tmp162156
                                      (let ((__tmp162157
                                             (let ((__tmp162159
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162158
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159971_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162159
                                                     __tmp162158))))
                                        (declare (not safe))
                                        (cons __tmp162157 '()))))
                                 (declare (not safe))
                                 (cons __tmp162160 __tmp162156))))
                          (declare (not safe))
                          (cons __tmp162163 __tmp162155))))
                   (declare (not safe))
                   (cons __tmp162167 __tmp162154))))
              (___kont161641161642_
               (lambda (_L159918_ _L159920_)
                 (let ((__tmp162168
                        (let ((__tmp162169
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L159918_ __tmp162169))))
                   (declare (not safe))
                   (cons _L159920_ __tmp162168)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx161630161631_))
              (let ((_e159829160125_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx161630161631_))))
                (let ((_tl159827160132_
                       (let () (declare (not safe)) (##cdr _e159829160125_)))
                      (_hd159828160129_
                       (let () (declare (not safe)) (##car _e159829160125_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl159827160132_))
                      (let ((_e159832160135_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159827160132_))))
                        (let ((_tl159830160142_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159832160135_)))
                              (_hd159831160139_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159832160135_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159830160142_))
                              (let ((_e159835160145_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159830160142_))))
                                (let ((_tl159833160152_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159835160145_)))
                                      (_hd159834160149_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159835160145_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd159834160149_))
                                      (let ((_e159836160155_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd159834160149_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e159836160155_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159833160152_))
                                                (let ((_e159839160159_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159833160152_))))
                                                  (let ((_tl159837160166_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159839160159_)))
                                                        (_hd159838160163_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159839160159_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159837160166_))
                                                        (___kont161633161634_
                                                         _hd159838160163_
                                                         _hd159831160139_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd159831160139_))
                                                            (let ((_e159848160086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd159831160139_))))
                      (declare (not safe))
                      (_g159823159891_))
                    (let () (declare (not safe)) (_g159823159891_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd159831160139_))
                                                    (let ((_e159848160086_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd159831160139_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e159848160086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159833160152_))
                      (___kont161635161636_ _hd159834160149_ _hd159828160129_)
                      (let () (declare (not safe)) (_g159823159891_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159833160152_))
                      (___kont161639161640_ _hd159834160149_ _hd159831160139_)
                      (let () (declare (not safe)) (_g159823159891_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159833160152_))
                                                        (___kont161639161640_
                                                         _hd159834160149_
                                                         _hd159831160139_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159823159891_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd159831160139_))
                                                (let ((_e159848160086_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd159831160139_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e159848160086_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl159833160152_))
                                                          (___kont161635161636_
                                                           _hd159834160149_
                                                           _hd159828160129_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl159833160152_))
                      (let ((_e159866160029_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159833160152_))))
                        (let ((_tl159864160036_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159866160029_)))
                              (_hd159865160033_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159866160029_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159864160036_))
                              (___kont161637161638_
                               _hd159865160033_
                               _hd159834160149_)
                              (let ()
                                (declare (not safe))
                                (_g159823159891_)))))
                      (let () (declare (not safe)) (_g159823159891_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl159833160152_))
                  (___kont161639161640_ _hd159834160149_ _hd159831160139_)
                  (let () (declare (not safe)) (_g159823159891_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159833160152_))
                                                    (___kont161639161640_
                                                     _hd159834160149_
                                                     _hd159831160139_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159823159891_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd159831160139_))
                                          (let ((_e159848160086_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd159831160139_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e159848160086_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159833160152_))
                                                    (___kont161635161636_
                                                     _hd159834160149_
                                                     _hd159828160129_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl159833160152_))
                                                        (let ((_e159866160029_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl159833160152_))))
                  (let ((_tl159864160036_
                         (let () (declare (not safe)) (##cdr _e159866160029_)))
                        (_hd159865160033_
                         (let ()
                           (declare (not safe))
                           (##car _e159866160029_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl159864160036_))
                        (___kont161637161638_
                         _hd159865160033_
                         _hd159834160149_)
                        (let () (declare (not safe)) (_g159823159891_)))))
                (let () (declare (not safe)) (_g159823159891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159833160152_))
                                                    (___kont161639161640_
                                                     _hd159834160149_
                                                     _hd159831160139_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159823159891_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159833160152_))
                                              (___kont161639161640_
                                               _hd159834160149_
                                               _hd159831160139_)
                                              (let ()
                                                (declare (not safe))
                                                (_g159823159891_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd159831160139_))
                                  (let ((_e159848160086_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd159831160139_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl159830160142_))
                                        (___kont161641161642_
                                         _hd159831160139_
                                         _hd159828160129_)
                                        (let ()
                                          (declare (not safe))
                                          (_g159823159891_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159830160142_))
                                      (___kont161641161642_
                                       _hd159831160139_
                                       _hd159828160129_)
                                      (let ()
                                        (declare (not safe))
                                        (_g159823159891_)))))))
                      (let () (declare (not safe)) (_g159823159891_)))))
              (let () (declare (not safe)) (_g159823159891_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx160193_)
      (let* ((___stx161770161771_ _$stx160193_)
             (_g160198160253_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161770161771_)))))
        (let ((___kont161773161774_
               (lambda (_L160438_ _L160440_)
                 (let ((__tmp162185
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp162170
                        (let ((__tmp162181
                               (let ((__tmp162184
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162182
                                      (let ((__tmp162183
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162183 '()))))
                                 (declare (not safe))
                                 (cons __tmp162184 __tmp162182)))
                              (__tmp162171
                               (let ((__tmp162172
                                      (let ((__tmp162180
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162173
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160438_
                                                  _L160440_))
                                               (let ((__tmp162174
                                                      (lambda (_g160457160461_
                                                               _g160458160464_
                                                               _g160459160466_)
                                                        (let ((__tmp162175
                                                               (let ((__tmp162179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162176
                              (let ((__tmp162177
                                     (let ((__tmp162178
                                            (let ()
                                              (declare (not safe))
                                              (cons _g160457160461_ '()))))
                                       (declare (not safe))
                                       (cons _g160458160464_ __tmp162178))))
                                (declare (not safe))
                                (cons 'primitive: __tmp162177))))
                         (declare (not safe))
                         (cons __tmp162179 __tmp162176))))
                  (declare (not safe))
                  (cons __tmp162175 _g160459160466_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162174
                                                         '()
                                                         _L160438_
                                                         _L160440_)))))
                                        (declare (not safe))
                                        (cons __tmp162180 __tmp162173))))
                                 (declare (not safe))
                                 (cons __tmp162172 '()))))
                          (declare (not safe))
                          (cons __tmp162181 __tmp162171))))
                   (declare (not safe))
                   (cons __tmp162185 __tmp162170))))
              (___kont161777161778_
               (lambda (_L160324_ _L160326_)
                 (let ((__tmp162200
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp162186
                        (let ((__tmp162196
                               (let ((__tmp162199
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162197
                                      (let ((__tmp162198
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162198 '()))))
                                 (declare (not safe))
                                 (cons __tmp162199 __tmp162197)))
                              (__tmp162187
                               (let ((__tmp162188
                                      (let ((__tmp162195
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162189
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160324_
                                                  _L160326_))
                                               (let ((__tmp162190
                                                      (lambda (_g160341160345_
                                                               _g160342160348_
                                                               _g160343160350_)
                                                        (let ((__tmp162191
                                                               (let ((__tmp162194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162192
                              (let ((__tmp162193
                                     (let ()
                                       (declare (not safe))
                                       (cons _g160341160345_ '()))))
                                (declare (not safe))
                                (cons _g160342160348_ __tmp162193))))
                         (declare (not safe))
                         (cons __tmp162194 __tmp162192))))
                  (declare (not safe))
                  (cons __tmp162191 _g160343160350_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162190
                                                         '()
                                                         _L160324_
                                                         _L160326_)))))
                                        (declare (not safe))
                                        (cons __tmp162195 __tmp162189))))
                                 (declare (not safe))
                                 (cons __tmp162188 '()))))
                          (declare (not safe))
                          (cons __tmp162196 __tmp162187))))
                   (declare (not safe))
                   (cons __tmp162200 __tmp162186)))))
          (let* ((___match161821161822_
                  (lambda (_e160230160260_
                           _hd160229160264_
                           _tl160228160267_
                           ___splice161779161780_
                           _target160231160270_
                           _tl160233160273_)
                    (letrec ((_loop160234160276_
                              (lambda (_hd160232160280_
                                       _dispatch160238160283_
                                       _arity160239160285_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160232160280_))
                                    (let ((_e160235160288_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160232160280_))))
                                      (let ((_lp-tl160237160295_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160235160288_)))
                                            (_lp-hd160236160292_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160235160288_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160236160292_))
                                            (let ((_e160244160298_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160236160292_))))
                                              (let ((_tl160242160305_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160244160298_)))
                                                    (_hd160243160302_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160244160298_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160242160305_))
                                                    (let ((_e160247160308_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160242160305_))))
                                                      (let ((_tl160245160315_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160247160308_)))
                    (_hd160246160312_
                     (let () (declare (not safe)) (##car _e160247160308_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160245160315_))
                    (_loop160234160276_
                     _lp-tl160237160295_
                     (let ()
                       (declare (not safe))
                       (cons _hd160246160312_ _dispatch160238160283_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160243160302_ _arity160239160285_)))
                    (let () (declare (not safe)) (_g160198160253_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160198160253_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160198160253_)))))
                                    (let ((_arity160241160321_
                                           (reverse _arity160239160285_))
                                          (_dispatch160240160318_
                                           (reverse _dispatch160238160283_)))
                                      (___kont161777161778_
                                       _dispatch160240160318_
                                       _arity160241160321_))))))
                      (_loop160234160276_ _target160231160270_ '() '()))))
                 (___match161813161814_
                  (lambda (_e160230160260_ _hd160229160264_ _tl160228160267_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl160228160267_))
                        (let ((___splice161779161780_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl160228160267_
                                  '0))))
                          (let ((_tl160233160273_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161779161780_ '1)))
                                (_target160231160270_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161779161780_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl160233160273_))
                                (___match161821161822_
                                 _e160230160260_
                                 _hd160229160264_
                                 _tl160228160267_
                                 ___splice161779161780_
                                 _target160231160270_
                                 _tl160233160273_)
                                (let ()
                                  (declare (not safe))
                                  (_g160198160253_)))))
                        (let () (declare (not safe)) (_g160198160253_)))))
                 (___match161807161808_
                  (lambda (_e160204160360_
                           _hd160203160364_
                           _tl160202160367_
                           _e160207160370_
                           _hd160206160374_
                           _tl160205160377_
                           _e160208160380_
                           ___splice161775161776_
                           _target160209160384_
                           _tl160211160387_)
                    (letrec ((_loop160212160390_
                              (lambda (_hd160210160394_
                                       _dispatch160216160397_
                                       _arity160217160399_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160210160394_))
                                    (let ((_e160213160402_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160210160394_))))
                                      (let ((_lp-tl160215160409_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160213160402_)))
                                            (_lp-hd160214160406_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160213160402_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160214160406_))
                                            (let ((_e160222160412_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160214160406_))))
                                              (let ((_tl160220160419_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160222160412_)))
                                                    (_hd160221160416_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160222160412_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160220160419_))
                                                    (let ((_e160225160422_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160220160419_))))
                                                      (let ((_tl160223160429_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160225160422_)))
                    (_hd160224160426_
                     (let () (declare (not safe)) (##car _e160225160422_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160223160429_))
                    (_loop160212160390_
                     _lp-tl160215160409_
                     (let ()
                       (declare (not safe))
                       (cons _hd160224160426_ _dispatch160216160397_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160221160416_ _arity160217160399_)))
                    (___match161813161814_
                     _e160204160360_
                     _hd160203160364_
                     _tl160202160367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match161813161814_
                                                     _e160204160360_
                                                     _hd160203160364_
                                                     _tl160202160367_))))
                                            (___match161813161814_
                                             _e160204160360_
                                             _hd160203160364_
                                             _tl160202160367_))))
                                    (let ((_arity160219160435_
                                           (reverse _arity160217160399_))
                                          (_dispatch160218160432_
                                           (reverse _dispatch160216160397_)))
                                      (___kont161773161774_
                                       _dispatch160218160432_
                                       _arity160219160435_))))))
                      (_loop160212160390_ _target160209160384_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161770161771_))
                (let ((_e160204160360_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161770161771_))))
                  (let ((_tl160202160367_
                         (let () (declare (not safe)) (##cdr _e160204160360_)))
                        (_hd160203160364_
                         (let ()
                           (declare (not safe))
                           (##car _e160204160360_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160202160367_))
                        (let ((_e160207160370_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160202160367_))))
                          (let ((_tl160205160377_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160207160370_)))
                                (_hd160206160374_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160207160370_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd160206160374_))
                                (let ((_e160208160380_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd160206160374_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e160208160380_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160205160377_))
                                          (let ((___splice161775161776_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160205160377_
                                                    '0))))
                                            (let ((_tl160211160387_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161775161776_
                                                      '1)))
                                                  (_target160209160384_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161775161776_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160211160387_))
                                                  (___match161807161808_
                                                   _e160204160360_
                                                   _hd160203160364_
                                                   _tl160202160367_
                                                   _e160207160370_
                                                   _hd160206160374_
                                                   _tl160205160377_
                                                   _e160208160380_
                                                   ___splice161775161776_
                                                   _target160209160384_
                                                   _tl160211160387_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160202160367_))
                                                      (let ((___splice161779161780_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160202160367_ '0))))
                (let ((_tl160233160273_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161779161780_ '1)))
                      (_target160231160270_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161779161780_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160233160273_))
                      (___match161821161822_
                       _e160204160360_
                       _hd160203160364_
                       _tl160202160367_
                       ___splice161779161780_
                       _target160231160270_
                       _tl160233160273_)
                      (let () (declare (not safe)) (_g160198160253_)))))
              (let () (declare (not safe)) (_g160198160253_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl160202160367_))
                                              (let ((___splice161779161780_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl160202160367_
                                                        '0))))
                                                (let ((_tl160233160273_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161779161780_
                                                          '1)))
                                                      (_target160231160270_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161779161780_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl160233160273_))
                                                      (___match161821161822_
                                                       _e160204160360_
                                                       _hd160203160364_
                                                       _tl160202160367_
                                                       ___splice161779161780_
                                                       _target160231160270_
                                                       _tl160233160273_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g160198160253_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g160198160253_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160202160367_))
                                          (let ((___splice161779161780_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160202160367_
                                                    '0))))
                                            (let ((_tl160233160273_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161779161780_
                                                      '1)))
                                                  (_target160231160270_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161779161780_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160233160273_))
                                                  (___match161821161822_
                                                   _e160204160360_
                                                   _hd160203160364_
                                                   _tl160202160367_
                                                   ___splice161779161780_
                                                   _target160231160270_
                                                   _tl160233160273_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g160198160253_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g160198160253_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160202160367_))
                                    (let ((___splice161779161780_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160202160367_
                                              '0))))
                                      (let ((_tl160233160273_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161779161780_
                                                '1)))
                                            (_target160231160270_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161779161780_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160233160273_))
                                            (___match161821161822_
                                             _e160204160360_
                                             _hd160203160364_
                                             _tl160202160367_
                                             ___splice161779161780_
                                             _target160231160270_
                                             _tl160233160273_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160198160253_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160198160253_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160202160367_))
                            (let ((___splice161779161780_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160202160367_
                                      '0))))
                              (let ((_tl160233160273_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161779161780_
                                        '1)))
                                    (_target160231160270_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161779161780_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160233160273_))
                                    (___match161821161822_
                                     _e160204160360_
                                     _hd160203160364_
                                     _tl160202160367_
                                     ___splice161779161780_
                                     _target160231160270_
                                     _tl160233160273_)
                                    (let ()
                                      (declare (not safe))
                                      (_g160198160253_)))))
                            (let () (declare (not safe)) (_g160198160253_))))))
                (let () (declare (not safe)) (_g160198160253_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx160475_)
      (let* ((_g160479160497_
              (lambda (_g160480160493_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160480160493_))))
             (_g160478160552_
              (lambda (_g160480160501_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160480160501_))
                    (let ((_e160485160504_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160480160501_))))
                      (let ((_hd160484160508_
                             (let ()
                               (declare (not safe))
                               (##car _e160485160504_)))
                            (_tl160483160511_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160485160504_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160483160511_))
                            (let ((_e160488160514_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160483160511_))))
                              (let ((_hd160487160518_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160488160514_)))
                                    (_tl160486160521_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160488160514_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160486160521_))
                                    (let ((_e160491160524_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160486160521_))))
                                      (let ((_hd160490160528_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160491160524_)))
                                            (_tl160489160531_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160491160524_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160489160531_))
                                            ((lambda (_L160534_ _L160536_)
                                               (let ((__tmp162214
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp162201
                                                      (let ((__tmp162210
                                                             (let ((__tmp162213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162211
                            (let ((__tmp162212
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp162212 '()))))
                       (declare (not safe))
                       (cons __tmp162213 __tmp162211)))
                    (__tmp162202
                     (let ((__tmp162207
                            (let ((__tmp162209
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162208
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160536_ '()))))
                              (declare (not safe))
                              (cons __tmp162209 __tmp162208)))
                           (__tmp162203
                            (let ((__tmp162204
                                   (let ((__tmp162206
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162205
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160534_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162206 __tmp162205))))
                              (declare (not safe))
                              (cons __tmp162204 '()))))
                       (declare (not safe))
                       (cons __tmp162207 __tmp162203))))
                (declare (not safe))
                (cons __tmp162210 __tmp162202))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162214
                                                       __tmp162201)))
                                             _hd160490160528_
                                             _hd160487160518_)
                                            (_g160479160497_
                                             _g160480160501_))))
                                    (_g160479160497_ _g160480160501_))))
                            (_g160479160497_ _g160480160501_))))
                    (_g160479160497_ _g160480160501_)))))
        (_g160478160552_ _$stx160475_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx160556_)
      (let* ((_g160560160578_
              (lambda (_g160561160574_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160561160574_))))
             (_g160559160633_
              (lambda (_g160561160582_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160561160582_))
                    (let ((_e160566160585_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160561160582_))))
                      (let ((_hd160565160589_
                             (let ()
                               (declare (not safe))
                               (##car _e160566160585_)))
                            (_tl160564160592_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160566160585_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160564160592_))
                            (let ((_e160569160595_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160564160592_))))
                              (let ((_hd160568160599_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160569160595_)))
                                    (_tl160567160602_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160569160595_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160567160602_))
                                    (let ((_e160572160605_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160567160602_))))
                                      (let ((_hd160571160609_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160572160605_)))
                                            (_tl160570160612_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160572160605_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160570160612_))
                                            ((lambda (_L160615_ _L160617_)
                                               (let ((__tmp162228
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp162215
                                                      (let ((__tmp162224
                                                             (let ((__tmp162227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162225
                            (let ((__tmp162226
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp162226 '()))))
                       (declare (not safe))
                       (cons __tmp162227 __tmp162225)))
                    (__tmp162216
                     (let ((__tmp162221
                            (let ((__tmp162223
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162222
                                   (let ()
                                     (declare (not safe))
                                     (cons _L160617_ '()))))
                              (declare (not safe))
                              (cons __tmp162223 __tmp162222)))
                           (__tmp162217
                            (let ((__tmp162218
                                   (let ((__tmp162220
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162219
                                          (let ()
                                            (declare (not safe))
                                            (cons _L160615_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162220 __tmp162219))))
                              (declare (not safe))
                              (cons __tmp162218 '()))))
                       (declare (not safe))
                       (cons __tmp162221 __tmp162217))))
                (declare (not safe))
                (cons __tmp162224 __tmp162216))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162228
                                                       __tmp162215)))
                                             _hd160571160609_
                                             _hd160568160599_)
                                            (_g160560160578_
                                             _g160561160582_))))
                                    (_g160560160578_ _g160561160582_))))
                            (_g160560160578_ _g160561160582_))))
                    (_g160560160578_ _g160561160582_)))))
        (_g160559160633_ _$stx160556_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx160637_)
      (let* ((___stx161824161825_ _$stx160637_)
             (_g160644160715_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161824161825_)))))
        (let ((___kont161827161828_
               (lambda (_L161006_ _L161008_)
                 (let ((__tmp162234
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162229
                        (let ((__tmp162230
                               (let ((__tmp162231
                                      (let ((__tmp162233
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162232
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161006_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162233 __tmp162232))))
                                 (declare (not safe))
                                 (cons __tmp162231 '()))))
                          (declare (not safe))
                          (cons _L161008_ __tmp162230))))
                   (declare (not safe))
                   (cons __tmp162234 __tmp162229))))
              (___kont161829161830_
               (lambda (_L160925_ _L160927_)
                 (let ((__tmp162243
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162235
                        (let ((__tmp162236
                               (let ((__tmp162237
                                      (let ((__tmp162242
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162238
                                             (let ((__tmp162239
                                                    (lambda (_g160946160949_
                                                             _g160947160952_)
                                                      (let ((__tmp162240
                                                             (let ((__tmp162241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160946160949_ __tmp162241))))
                (declare (not safe))
                (cons __tmp162240 _g160947160952_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162239
                                                       '()
                                                       _L160925_))))
                                        (declare (not safe))
                                        (cons __tmp162242 __tmp162238))))
                                 (declare (not safe))
                                 (cons __tmp162237 '()))))
                          (declare (not safe))
                          (cons _L160927_ __tmp162236))))
                   (declare (not safe))
                   (cons __tmp162243 __tmp162235))))
              (___kont161833161834_
               (lambda (_L160837_ _L160839_)
                 (let ((__tmp162250
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162244
                        (let ((__tmp162245
                               (let ((__tmp162246
                                      (let ((__tmp162249
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162247
                                             (let ((__tmp162248
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160837_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162248))))
                                        (declare (not safe))
                                        (cons __tmp162249 __tmp162247))))
                                 (declare (not safe))
                                 (cons __tmp162246 '()))))
                          (declare (not safe))
                          (cons _L160839_ __tmp162245))))
                   (declare (not safe))
                   (cons __tmp162250 __tmp162244))))
              (___kont161835161836_
               (lambda (_L160772_ _L160774_)
                 (let ((__tmp162260
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162251
                        (let ((__tmp162252
                               (let ((__tmp162253
                                      (let ((__tmp162259
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162254
                                             (let ((__tmp162255
                                                    (let ((__tmp162256
                                                           (lambda (_g160791160794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g160792160797_)
                     (let ((__tmp162257
                            (let ((__tmp162258
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g160791160794_ __tmp162258))))
                       (declare (not safe))
                       (cons __tmp162257 _g160792160797_)))))
              (declare (not safe))
              (foldr1 __tmp162256 '() _L160772_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162255))))
                                        (declare (not safe))
                                        (cons __tmp162259 __tmp162254))))
                                 (declare (not safe))
                                 (cons __tmp162253 '()))))
                          (declare (not safe))
                          (cons _L160774_ __tmp162252))))
                   (declare (not safe))
                   (cons __tmp162260 __tmp162251)))))
          (let* ((___match161943161944_
                  (lambda (_e160697160722_
                           _hd160696160726_
                           _tl160695160729_
                           _e160700160732_
                           _hd160699160736_
                           _tl160698160739_
                           ___splice161837161838_
                           _target160701160742_
                           _tl160703160745_)
                    (letrec ((_loop160704160748_
                              (lambda (_hd160702160752_ _arity160708160755_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160702160752_))
                                    (let ((_e160705160758_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160702160752_))))
                                      (let ((_lp-tl160707160765_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160705160758_)))
                                            (_lp-hd160706160762_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160705160758_))))
                                        (_loop160704160748_
                                         _lp-tl160707160765_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160706160762_
                                                 _arity160708160755_)))))
                                    (let ((_arity160709160768_
                                           (reverse _arity160708160755_)))
                                      (___kont161835161836_
                                       _arity160709160768_
                                       _hd160699160736_))))))
                      (_loop160704160748_ _target160701160742_ '()))))
                 (___match161903161904_
                  (lambda (_e160665160861_
                           _hd160664160865_
                           _tl160663160868_
                           _e160668160871_
                           _hd160667160875_
                           _tl160666160878_
                           _e160671160881_
                           _hd160670160885_
                           _tl160669160888_
                           _e160672160891_
                           ___splice161831161832_
                           _target160673160895_
                           _tl160675160898_)
                    (letrec ((_loop160676160901_
                              (lambda (_hd160674160905_ _arity160680160908_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160674160905_))
                                    (let ((_e160677160911_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160674160905_))))
                                      (let ((_lp-tl160679160918_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160677160911_)))
                                            (_lp-hd160678160915_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160677160911_))))
                                        (_loop160676160901_
                                         _lp-tl160679160918_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd160678160915_
                                                 _arity160680160908_)))))
                                    (let ((_arity160681160921_
                                           (reverse _arity160680160908_)))
                                      (___kont161829161830_
                                       _arity160681160921_
                                       _hd160667160875_))))))
                      (_loop160676160901_ _target160673160895_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161824161825_))
                (let ((_e160650160962_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161824161825_))))
                  (let ((_tl160648160969_
                         (let () (declare (not safe)) (##cdr _e160650160962_)))
                        (_hd160649160966_
                         (let ()
                           (declare (not safe))
                           (##car _e160650160962_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160648160969_))
                        (let ((_e160653160972_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160648160969_))))
                          (let ((_tl160651160979_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160653160972_)))
                                (_hd160652160976_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160653160972_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160651160979_))
                                (let ((_e160656160982_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160651160979_))))
                                  (let ((_tl160654160989_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160656160982_)))
                                        (_hd160655160986_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160656160982_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd160655160986_))
                                        (let ((_e160657160992_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd160655160986_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e160657160992_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl160654160989_))
                                                  (let ((_e160660160996_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl160654160989_))))
                                                    (let ((_tl160658161003_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e160660160996_)))
                                                          (_hd160659161000_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e160660160996_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160658161003_))
                                                          (___kont161827161828_
                                                           _hd160659161000_
                                                           _hd160652160976_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl160654160989_))
                      (let ((___splice161831161832_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160654160989_ '0))))
                        (let ((_tl160675160898_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161831161832_ '1)))
                              (_target160673160895_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161831161832_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160675160898_))
                              (___match161903161904_
                               _e160650160962_
                               _hd160649160966_
                               _tl160648160969_
                               _e160653160972_
                               _hd160652160976_
                               _tl160651160979_
                               _e160656160982_
                               _hd160655160986_
                               _tl160654160989_
                               _e160657160992_
                               ___splice161831161832_
                               _target160673160895_
                               _tl160675160898_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl160651160979_))
                                  (let ((___splice161837161838_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl160651160979_
                                            '0))))
                                    (let ((_tl160703160745_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161837161838_
                                              '1)))
                                          (_target160701160742_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161837161838_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl160703160745_))
                                          (___match161943161944_
                                           _e160650160962_
                                           _hd160649160966_
                                           _tl160648160969_
                                           _e160653160972_
                                           _hd160652160976_
                                           _tl160651160979_
                                           ___splice161837161838_
                                           _target160701160742_
                                           _tl160703160745_)
                                          (let ()
                                            (declare (not safe))
                                            (_g160644160715_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g160644160715_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl160651160979_))
                          (let ((___splice161837161838_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl160651160979_
                                    '0))))
                            (let ((_tl160703160745_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice161837161838_ '1)))
                                  (_target160701160742_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice161837161838_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl160703160745_))
                                  (___match161943161944_
                                   _e160650160962_
                                   _hd160649160966_
                                   _tl160648160969_
                                   _e160653160972_
                                   _hd160652160976_
                                   _tl160651160979_
                                   ___splice161837161838_
                                   _target160701160742_
                                   _tl160703160745_)
                                  (let ()
                                    (declare (not safe))
                                    (_g160644160715_)))))
                          (let () (declare (not safe)) (_g160644160715_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160654160989_))
                                                      (let ((___splice161831161832_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160654160989_ '0))))
                (let ((_tl160675160898_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161831161832_ '1)))
                      (_target160673160895_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161831161832_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160675160898_))
                      (___match161903161904_
                       _e160650160962_
                       _hd160649160966_
                       _tl160648160969_
                       _e160653160972_
                       _hd160652160976_
                       _tl160651160979_
                       _e160656160982_
                       _hd160655160986_
                       _tl160654160989_
                       _e160657160992_
                       ___splice161831161832_
                       _target160673160895_
                       _tl160675160898_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl160654160989_))
                          (___kont161833161834_
                           _hd160655160986_
                           _hd160652160976_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160651160979_))
                              (let ((___splice161837161838_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160651160979_
                                        '0))))
                                (let ((_tl160703160745_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161837161838_
                                          '1)))
                                      (_target160701160742_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161837161838_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160703160745_))
                                      (___match161943161944_
                                       _e160650160962_
                                       _hd160649160966_
                                       _tl160648160969_
                                       _e160653160972_
                                       _hd160652160976_
                                       _tl160651160979_
                                       ___splice161837161838_
                                       _target160701160742_
                                       _tl160703160745_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160644160715_)))))
                              (let ()
                                (declare (not safe))
                                (_g160644160715_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160654160989_))
                  (___kont161833161834_ _hd160655160986_ _hd160652160976_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl160651160979_))
                      (let ((___splice161837161838_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160651160979_ '0))))
                        (let ((_tl160703160745_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161837161838_ '1)))
                              (_target160701160742_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161837161838_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160703160745_))
                              (___match161943161944_
                               _e160650160962_
                               _hd160649160966_
                               _tl160648160969_
                               _e160653160972_
                               _hd160652160976_
                               _tl160651160979_
                               ___splice161837161838_
                               _target160701160742_
                               _tl160703160745_)
                              (let ()
                                (declare (not safe))
                                (_g160644160715_)))))
                      (let () (declare (not safe)) (_g160644160715_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160654160989_))
                                                  (___kont161833161834_
                                                   _hd160655160986_
                                                   _hd160652160976_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160651160979_))
                                                      (let ((___splice161837161838_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160651160979_ '0))))
                (let ((_tl160703160745_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161837161838_ '1)))
                      (_target160701160742_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161837161838_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160703160745_))
                      (___match161943161944_
                       _e160650160962_
                       _hd160649160966_
                       _tl160648160969_
                       _e160653160972_
                       _hd160652160976_
                       _tl160651160979_
                       ___splice161837161838_
                       _target160701160742_
                       _tl160703160745_)
                      (let () (declare (not safe)) (_g160644160715_)))))
              (let () (declare (not safe)) (_g160644160715_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160654160989_))
                                            (___kont161833161834_
                                             _hd160655160986_
                                             _hd160652160976_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl160651160979_))
                                                (let ((___splice161837161838_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl160651160979_
                                                          '0))))
                                                  (let ((_tl160703160745_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161837161838_
                                                            '1)))
                                                        (_target160701160742_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161837161838_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160703160745_))
                                                        (___match161943161944_
                                                         _e160650160962_
                                                         _hd160649160966_
                                                         _tl160648160969_
                                                         _e160653160972_
                                                         _hd160652160976_
                                                         _tl160651160979_
                                                         ___splice161837161838_
                                                         _target160701160742_
                                                         _tl160703160745_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160644160715_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g160644160715_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160651160979_))
                                    (let ((___splice161837161838_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160651160979_
                                              '0))))
                                      (let ((_tl160703160745_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161837161838_
                                                '1)))
                                            (_target160701160742_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161837161838_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160703160745_))
                                            (___match161943161944_
                                             _e160650160962_
                                             _hd160649160966_
                                             _tl160648160969_
                                             _e160653160972_
                                             _hd160652160976_
                                             _tl160651160979_
                                             ___splice161837161838_
                                             _target160701160742_
                                             _tl160703160745_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160644160715_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160644160715_))))))
                        (let () (declare (not safe)) (_g160644160715_)))))
                (let () (declare (not safe)) (_g160644160715_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx161032_)
      (let* ((___stx161946161947_ _$stx161032_)
             (_g161037161072_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161946161947_)))))
        (let ((___kont161949161950_
               (lambda (_L161194_ _L161196_)
                 (let ((__tmp162266
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162261
                        (let ((__tmp162262
                               (let ((__tmp162263
                                      (let ((__tmp162265
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162264
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161194_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162265 __tmp162264))))
                                 (declare (not safe))
                                 (cons __tmp162263 '()))))
                          (declare (not safe))
                          (cons _L161196_ __tmp162262))))
                   (declare (not safe))
                   (cons __tmp162266 __tmp162261))))
              (___kont161951161952_
               (lambda (_L161129_ _L161131_)
                 (let ((__tmp162275
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162267
                        (let ((__tmp162268
                               (let ((__tmp162269
                                      (let ((__tmp162274
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162270
                                             (let ((__tmp162271
                                                    (lambda (_g161148161151_
                                                             _g161149161154_)
                                                      (let ((__tmp162272
                                                             (let ((__tmp162273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161148161151_ __tmp162273))))
                (declare (not safe))
                (cons __tmp162272 _g161149161154_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162271
                                                       '()
                                                       _L161129_))))
                                        (declare (not safe))
                                        (cons __tmp162274 __tmp162270))))
                                 (declare (not safe))
                                 (cons __tmp162269 '()))))
                          (declare (not safe))
                          (cons _L161131_ __tmp162268))))
                   (declare (not safe))
                   (cons __tmp162275 __tmp162267)))))
          (let ((___match161995161996_
                 (lambda (_e161054161079_
                          _hd161053161083_
                          _tl161052161086_
                          _e161057161089_
                          _hd161056161093_
                          _tl161055161096_
                          ___splice161953161954_
                          _target161058161099_
                          _tl161060161102_)
                   (letrec ((_loop161061161105_
                             (lambda (_hd161059161109_ _arity161065161112_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd161059161109_))
                                   (let ((_e161062161115_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd161059161109_))))
                                     (let ((_lp-tl161064161122_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e161062161115_)))
                                           (_lp-hd161063161119_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e161062161115_))))
                                       (_loop161061161105_
                                        _lp-tl161064161122_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd161063161119_
                                                _arity161065161112_)))))
                                   (let ((_arity161066161125_
                                          (reverse _arity161065161112_)))
                                     (___kont161951161952_
                                      _arity161066161125_
                                      _hd161056161093_))))))
                     (_loop161061161105_ _target161058161099_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161946161947_))
                (let ((_e161043161164_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161946161947_))))
                  (let ((_tl161041161171_
                         (let () (declare (not safe)) (##cdr _e161043161164_)))
                        (_hd161042161168_
                         (let ()
                           (declare (not safe))
                           (##car _e161043161164_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161041161171_))
                        (let ((_e161046161174_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161041161171_))))
                          (let ((_tl161044161181_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161046161174_)))
                                (_hd161045161178_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161046161174_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161044161181_))
                                (let ((_e161049161184_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161044161181_))))
                                  (let ((_tl161047161191_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161049161184_)))
                                        (_hd161048161188_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161049161184_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161047161191_))
                                        (___kont161949161950_
                                         _hd161048161188_
                                         _hd161045161178_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl161044161181_))
                                            (let ((___splice161953161954_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl161044161181_
                                                      '0))))
                                              (let ((_tl161060161102_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161953161954_
                                                        '1)))
                                                    (_target161058161099_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161953161954_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161060161102_))
                                                    (___match161995161996_
                                                     _e161043161164_
                                                     _hd161042161168_
                                                     _tl161041161171_
                                                     _e161046161174_
                                                     _hd161045161178_
                                                     _tl161044161181_
                                                     ___splice161953161954_
                                                     _target161058161099_
                                                     _tl161060161102_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161037161072_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g161037161072_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161044161181_))
                                    (let ((___splice161953161954_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161044161181_
                                              '0))))
                                      (let ((_tl161060161102_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161953161954_
                                                '1)))
                                            (_target161058161099_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161953161954_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161060161102_))
                                            (___match161995161996_
                                             _e161043161164_
                                             _hd161042161168_
                                             _tl161041161171_
                                             _e161046161174_
                                             _hd161045161178_
                                             _tl161044161181_
                                             ___splice161953161954_
                                             _target161058161099_
                                             _tl161060161102_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161037161072_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161037161072_))))))
                        (let () (declare (not safe)) (_g161037161072_)))))
                (let () (declare (not safe)) (_g161037161072_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx161216_)
      (let* ((_g161220161255_
              (lambda (_g161221161251_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161221161251_))))
             (_g161219161383_
              (lambda (_g161221161259_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161221161259_))
                    (let ((_e161226161262_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161221161259_))))
                      (let ((_hd161225161266_
                             (let ()
                               (declare (not safe))
                               (##car _e161226161262_)))
                            (_tl161224161269_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161226161262_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161224161269_))
                            (let ((_g162276_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161224161269_
                                      '0))))
                              (begin
                                (let ((_g162277_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162276_)
                                             (##vector-length _g162276_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162277_ 2)))
                                      (error "Context expects 2 values"
                                             _g162277_)))
                                (let ((_target161227161272_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162276_ 0)))
                                      (_tl161229161275_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162276_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161229161275_))
                                      (letrec ((_loop161230161278_
                                                (lambda (_hd161228161282_
                                                         _arity161234161285_
                                                         _prim161235161287_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161228161282_))
                                                      (let ((_e161231161290_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161228161282_))))
                (let ((_lp-hd161232161294_
                       (let () (declare (not safe)) (##car _e161231161290_)))
                      (_lp-tl161233161297_
                       (let () (declare (not safe)) (##cdr _e161231161290_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161232161294_))
                      (let ((_e161240161300_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161232161294_))))
                        (let ((_hd161239161304_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161240161300_)))
                              (_tl161238161307_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161240161300_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161238161307_))
                              (let ((_g162286_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161238161307_
                                        '0))))
                                (begin
                                  (let ((_g162287_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162286_)
                                               (##vector-length _g162286_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162287_ 2)))
                                        (error "Context expects 2 values"
                                               _g162287_)))
                                  (let ((_target161241161310_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162286_ 0)))
                                        (_tl161243161313_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162286_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161243161313_))
                                        (letrec ((_loop161244161316_
                                                  (lambda (_hd161242161320_
                                                           _arity161248161323_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161242161320_))
                                                        (let ((_e161245161326_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161242161320_))))
                  (let ((_lp-hd161246161330_
                         (let () (declare (not safe)) (##car _e161245161326_)))
                        (_lp-tl161247161333_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161245161326_))))
                    (_loop161244161316_
                     _lp-tl161247161333_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161246161330_ _arity161248161323_)))))
                (let ((_arity161249161336_ (reverse _arity161248161323_)))
                  (_loop161230161278_
                   _lp-tl161233161297_
                   (let ()
                     (declare (not safe))
                     (cons _arity161249161336_ _arity161234161285_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161239161304_ _prim161235161287_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161244161316_
                                           _target161241161310_
                                           '()))
                                        (_g161220161255_ _g161221161259_)))))
                              (_g161220161255_ _g161221161259_))))
                      (_g161220161255_ _g161221161259_))))
              (let ((_arity161236161340_ (reverse _arity161234161285_))
                    (_prim161237161343_ (reverse _prim161235161287_)))
                ((lambda (_L161346_ _L161348_)
                   (let ((__tmp162285
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162278
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161346_
                               _L161348_))
                            (let ((__tmp162279
                                   (lambda (_g161363161369_
                                            _g161364161372_
                                            _g161365161374_)
                                     (let ((__tmp162280
                                            (let ((__tmp162284
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp162281
                                                   (let ((__tmp162282
                                                          (let ((__tmp162283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161366161377_ _g161367161380_)
                           (let ()
                             (declare (not safe))
                             (cons _g161366161377_ _g161367161380_)))))
                    (declare (not safe))
                    (foldr1 __tmp162283 '() _g161363161369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161364161372_
                                                           __tmp162282))))
                                              (declare (not safe))
                                              (cons __tmp162284 __tmp162281))))
                                       (declare (not safe))
                                       (cons __tmp162280 _g161365161374_)))))
                              (declare (not safe))
                              (foldr2 __tmp162279 '() _L161346_ _L161348_)))))
                     (declare (not safe))
                     (cons __tmp162285 __tmp162278)))
                 _arity161236161340_
                 _prim161237161343_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161230161278_
                                         _target161227161272_
                                         '()
                                         '()))
                                      (_g161220161255_ _g161221161259_)))))
                            (_g161220161255_ _g161221161259_))))
                    (_g161220161255_ _g161221161259_)))))
        (_g161219161383_ _$stx161216_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx161389_)
      (let* ((_g161393161428_
              (lambda (_g161394161424_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161394161424_))))
             (_g161392161556_
              (lambda (_g161394161432_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161394161432_))
                    (let ((_e161399161435_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161394161432_))))
                      (let ((_hd161398161439_
                             (let ()
                               (declare (not safe))
                               (##car _e161399161435_)))
                            (_tl161397161442_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161399161435_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161397161442_))
                            (let ((_g162288_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161397161442_
                                      '0))))
                              (begin
                                (let ((_g162289_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162288_)
                                             (##vector-length _g162288_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162289_ 2)))
                                      (error "Context expects 2 values"
                                             _g162289_)))
                                (let ((_target161400161445_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162288_ 0)))
                                      (_tl161402161448_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162288_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161402161448_))
                                      (letrec ((_loop161403161451_
                                                (lambda (_hd161401161455_
                                                         _arity161407161458_
                                                         _prim161408161460_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161401161455_))
                                                      (let ((_e161404161463_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161401161455_))))
                (let ((_lp-hd161405161467_
                       (let () (declare (not safe)) (##car _e161404161463_)))
                      (_lp-tl161406161470_
                       (let () (declare (not safe)) (##cdr _e161404161463_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161405161467_))
                      (let ((_e161413161473_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161405161467_))))
                        (let ((_hd161412161477_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161413161473_)))
                              (_tl161411161480_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161413161473_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161411161480_))
                              (let ((_g162298_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161411161480_
                                        '0))))
                                (begin
                                  (let ((_g162299_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162298_)
                                               (##vector-length _g162298_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162299_ 2)))
                                        (error "Context expects 2 values"
                                               _g162299_)))
                                  (let ((_target161414161483_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162298_ 0)))
                                        (_tl161416161486_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162298_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161416161486_))
                                        (letrec ((_loop161417161489_
                                                  (lambda (_hd161415161493_
                                                           _arity161421161496_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161415161493_))
                                                        (let ((_e161418161499_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161415161493_))))
                  (let ((_lp-hd161419161503_
                         (let () (declare (not safe)) (##car _e161418161499_)))
                        (_lp-tl161420161506_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161418161499_))))
                    (_loop161417161489_
                     _lp-tl161420161506_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161419161503_ _arity161421161496_)))))
                (let ((_arity161422161509_ (reverse _arity161421161496_)))
                  (_loop161403161451_
                   _lp-tl161406161470_
                   (let ()
                     (declare (not safe))
                     (cons _arity161422161509_ _arity161407161458_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161412161477_ _prim161408161460_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161417161489_
                                           _target161414161483_
                                           '()))
                                        (_g161393161428_ _g161394161432_)))))
                              (_g161393161428_ _g161394161432_))))
                      (_g161393161428_ _g161394161432_))))
              (let ((_arity161409161513_ (reverse _arity161407161458_))
                    (_prim161410161516_ (reverse _prim161408161460_)))
                ((lambda (_L161519_ _L161521_)
                   (let ((__tmp162297
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162290
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161519_
                               _L161521_))
                            (let ((__tmp162291
                                   (lambda (_g161536161542_
                                            _g161537161545_
                                            _g161538161547_)
                                     (let ((__tmp162292
                                            (let ((__tmp162296
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp162293
                                                   (let ((__tmp162294
                                                          (let ((__tmp162295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161539161550_ _g161540161553_)
                           (let ()
                             (declare (not safe))
                             (cons _g161539161550_ _g161540161553_)))))
                    (declare (not safe))
                    (foldr1 __tmp162295 '() _g161536161542_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161537161545_
                                                           __tmp162294))))
                                              (declare (not safe))
                                              (cons __tmp162296 __tmp162293))))
                                       (declare (not safe))
                                       (cons __tmp162292 _g161538161547_)))))
                              (declare (not safe))
                              (foldr2 __tmp162291 '() _L161519_ _L161521_)))))
                     (declare (not safe))
                     (cons __tmp162297 __tmp162290)))
                 _arity161409161513_
                 _prim161410161516_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161403161451_
                                         _target161400161445_
                                         '()
                                         '()))
                                      (_g161393161428_ _g161394161432_)))))
                            (_g161393161428_ _g161394161432_))))
                    (_g161393161428_ _g161394161432_)))))
        (_g161392161556_ _$stx161389_)))))
