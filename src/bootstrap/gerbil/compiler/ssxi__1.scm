(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx74458_)
      (let* ((_g7446274480_
              (lambda (_g7446374476_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7446374476_))))
             (_g7446174535_
              (lambda (_g7446374484_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7446374484_))
                    (let ((_e7446874487_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7446374484_))))
                      (let ((_hd7446774491_
                             (let ()
                               (declare (not safe))
                               (##car _e7446874487_)))
                            (_tl7446674494_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7446874487_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7446674494_))
                            (let ((_e7447174497_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7446674494_))))
                              (let ((_hd7447074501_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7447174497_)))
                                    (_tl7446974504_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7447174497_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7446974504_))
                                    (let ((_e7447474507_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7446974504_))))
                                      (let ((_hd7447374511_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7447474507_)))
                                            (_tl7447274514_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7447474507_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7447274514_))
                                            ((lambda (_L74517_ _L74519_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier? _L74519_))
                                                   (let ((__tmp79542
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp79537
                                                          (let ((__tmp79539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79541
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp79540
                                (let ()
                                  (declare (not safe))
                                  (cons _L74519_ '()))))
                           (declare (not safe))
                           (cons __tmp79541 __tmp79540)))
                        (__tmp79538
                         (let () (declare (not safe)) (cons _L74517_ '()))))
                    (declare (not safe))
                    (cons __tmp79539 __tmp79538))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79542
                                                           __tmp79537))
                                                   (_g7446274480_
                                                    _g7446374484_)))
                                             _hd7447374511_
                                             _hd7447074501_)
                                            (_g7446274480_ _g7446374484_))))
                                    (_g7446274480_ _g7446374484_))))
                            (_g7446274480_ _g7446374484_))))
                    (_g7446274480_ _g7446374484_)))))
        (_g7446174535_ _$stx74458_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx74539_)
      (let* ((_g7454374572_
              (lambda (_g7454474568_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7454474568_))))
             (_g7454274672_
              (lambda (_g7454474576_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7454474576_))
                    (let ((_e7454974579_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7454474576_))))
                      (let ((_hd7454874583_
                             (let ()
                               (declare (not safe))
                               (##car _e7454974579_)))
                            (_tl7454774586_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7454974579_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7454774586_))
                            (let ((_g79543_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7454774586_
                                      '0))))
                              (begin
                                (let ((_g79544_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g79543_)
                                             (##vector-length _g79543_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g79544_ 2)))
                                      (error "Context expects 2 values"
                                             _g79544_)))
                                (let ((_target7455074589_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79543_ 0)))
                                      (_tl7455274592_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79543_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7455274592_))
                                      (letrec ((_loop7455374595_
                                                (lambda (_hd7455174599_
                                                         _type7455774602_
                                                         _symbol7455874604_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7455174599_))
                                                      (let ((_e7455474607_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7455174599_))))
                (let ((_lp-hd7455574611_
                       (let () (declare (not safe)) (##car _e7455474607_)))
                      (_lp-tl7455674614_
                       (let () (declare (not safe)) (##cdr _e7455474607_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7455574611_))
                      (let ((_e7456374617_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7455574611_))))
                        (let ((_hd7456274621_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7456374617_)))
                              (_tl7456174624_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7456374617_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7456174624_))
                              (let ((_e7456674627_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7456174624_))))
                                (let ((_hd7456574631_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7456674627_)))
                                      (_tl7456474634_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7456674627_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7456474634_))
                                      (_loop7455374595_
                                       _lp-tl7455674614_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd7456574631_
                                               _type7455774602_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd7456274621_
                                               _symbol7455874604_)))
                                      (_g7454374572_ _g7454474576_))))
                              (_g7454374572_ _g7454474576_))))
                      (_g7454374572_ _g7454474576_))))
              (let ((_type7455974637_ (reverse _type7455774602_))
                    (_symbol7456074640_ (reverse _symbol7455874604_)))
                ((lambda (_L74643_ _L74645_)
                   (let ((__tmp79551
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp79545
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L74643_
                               _L74645_))
                            (let ((__tmp79546
                                   (lambda (_g7466074664_
                                            _g7466174667_
                                            _g7466274669_)
                                     (let ((__tmp79547
                                            (let ((__tmp79550
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp79548
                                                   (let ((__tmp79549
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g7466074664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7466174667_
                                                           __tmp79549))))
                                              (declare (not safe))
                                              (cons __tmp79550 __tmp79548))))
                                       (declare (not safe))
                                       (cons __tmp79547 _g7466274669_)))))
                              (declare (not safe))
                              (foldr2 __tmp79546 '() _L74643_ _L74645_)))))
                     (declare (not safe))
                     (cons __tmp79551 __tmp79545)))
                 _type7455974637_
                 _symbol7456074640_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7455374595_
                                         _target7455074589_
                                         '()
                                         '()))
                                      (_g7454374572_ _g7454474576_)))))
                            (_g7454374572_ _g7454474576_))))
                    (_g7454374572_ _g7454474576_)))))
        (_g7454274672_ _$stx74539_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx74677_)
      (let* ((___stx7867878679_ _$stx74677_)
             (_g7468274724_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7867878679_)))))
        (let ((___kont7868178682_
               (lambda (_L74852_ _L74854_ _L74855_ _L74856_)
                 (let ((__tmp79565
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp79552
                        (let ((__tmp79562
                               (let ((__tmp79564
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79563
                                      (let ()
                                        (declare (not safe))
                                        (cons _L74856_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79564 __tmp79563)))
                              (__tmp79553
                               (let ((__tmp79559
                                      (let ((__tmp79561
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79560
                                             (let ()
                                               (declare (not safe))
                                               (cons _L74855_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79561 __tmp79560)))
                                     (__tmp79554
                                      (let ((__tmp79556
                                             (let ((__tmp79558
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp79557
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L74854_ '()))))
                                               (declare (not safe))
                                               (cons __tmp79558 __tmp79557)))
                                            (__tmp79555
                                             (let ()
                                               (declare (not safe))
                                               (cons _L74852_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79556 __tmp79555))))
                                 (declare (not safe))
                                 (cons __tmp79559 __tmp79554))))
                          (declare (not safe))
                          (cons __tmp79562 __tmp79553))))
                   (declare (not safe))
                   (cons __tmp79565 __tmp79552))))
              (___kont7868378684_
               (lambda (_L74771_ _L74773_ _L74774_ _L74775_)
                 (let ((__tmp79566
                        (let ((__tmp79567
                               (let ((__tmp79568
                                      (let ((__tmp79569
                                             (let ((__tmp79570
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp79570 '()))))
                                        (declare (not safe))
                                        (cons _L74771_ __tmp79569))))
                                 (declare (not safe))
                                 (cons _L74773_ __tmp79568))))
                          (declare (not safe))
                          (cons _L74774_ __tmp79567))))
                   (declare (not safe))
                   (cons _L74775_ __tmp79566)))))
          (let ((___match7871778718_
                 (lambda (_e7469074802_
                          _hd7468974806_
                          _tl7468874809_
                          _e7469374812_
                          _hd7469274816_
                          _tl7469174819_
                          _e7469674822_
                          _hd7469574826_
                          _tl7469474829_
                          _e7469974832_
                          _hd7469874836_
                          _tl7469774839_
                          _e7470274842_
                          _hd7470174846_
                          _tl7470074849_)
                   (let ((_L74852_ _hd7470174846_)
                         (_L74854_ _hd7469874836_)
                         (_L74855_ _hd7469574826_)
                         (_L74856_ _hd7469274816_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L74856_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L74855_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L74854_)))
                         (___kont7868178682_
                          _L74852_
                          _L74854_
                          _L74855_
                          _L74856_)
                         (let () (declare (not safe)) (_g7468274724_)))))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7867878679_))
                (let ((_e7469074802_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7867878679_))))
                  (let ((_tl7468874809_
                         (let () (declare (not safe)) (##cdr _e7469074802_)))
                        (_hd7468974806_
                         (let () (declare (not safe)) (##car _e7469074802_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7468874809_))
                        (let ((_e7469374812_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7468874809_))))
                          (let ((_tl7469174819_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7469374812_)))
                                (_hd7469274816_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7469374812_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7469174819_))
                                (let ((_e7469674822_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7469174819_))))
                                  (let ((_tl7469474829_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7469674822_)))
                                        (_hd7469574826_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7469674822_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl7469474829_))
                                        (let ((_e7469974832_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl7469474829_))))
                                          (let ((_tl7469774839_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7469974832_)))
                                                (_hd7469874836_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7469974832_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7469774839_))
                                                (let ((_e7470274842_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7469774839_))))
                                                  (let ((_tl7470074849_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7470274842_)))
                                                        (_hd7470174846_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7470274842_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7470074849_))
                                                        (___match7871778718_
                                                         _e7469074802_
                                                         _hd7468974806_
                                                         _tl7468874809_
                                                         _e7469374812_
                                                         _hd7469274816_
                                                         _tl7469174819_
                                                         _e7469674822_
                                                         _hd7469574826_
                                                         _tl7469474829_
                                                         _e7469974832_
                                                         _hd7469874836_
                                                         _tl7469774839_
                                                         _e7470274842_
                                                         _hd7470174846_
                                                         _tl7470074849_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7468274724_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7469774839_))
                                                    (___kont7868378684_
                                                     _hd7469874836_
                                                     _hd7469574826_
                                                     _hd7469274816_
                                                     _hd7468974806_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7468274724_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g7468274724_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g7468274724_)))))
                        (let () (declare (not safe)) (_g7468274724_)))))
                (let () (declare (not safe)) (_g7468274724_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx74881_)
      (let* ((_g7488574920_
              (lambda (_g7488674916_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7488674916_))))
             (_g7488475039_
              (lambda (_g7488674924_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7488674924_))
                    (let ((_e7489274927_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7488674924_))))
                      (let ((_hd7489174931_
                             (let ()
                               (declare (not safe))
                               (##car _e7489274927_)))
                            (_tl7489074934_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7489274927_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7489074934_))
                            (let ((_g79571_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7489074934_
                                      '0))))
                              (begin
                                (let ((_g79572_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g79571_)
                                             (##vector-length _g79571_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g79572_ 2)))
                                      (error "Context expects 2 values"
                                             _g79572_)))
                                (let ((_target7489374937_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79571_ 0)))
                                      (_tl7489574940_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79571_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7489574940_))
                                      (letrec ((_loop7489674943_
                                                (lambda (_hd7489474947_
                                                         _symbol7490074950_
                                                         _method7490174952_
                                                         _type-t7490274954_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7489474947_))
                                                      (let ((_e7489774957_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7489474947_))))
                (let ((_lp-hd7489874961_
                       (let () (declare (not safe)) (##car _e7489774957_)))
                      (_lp-tl7489974964_
                       (let () (declare (not safe)) (##cdr _e7489774957_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7489874961_))
                      (let ((_e7490874967_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7489874961_))))
                        (let ((_hd7490774971_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7490874967_)))
                              (_tl7490674974_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7490874967_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7490674974_))
                              (let ((_e7491174977_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7490674974_))))
                                (let ((_hd7491074981_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7491174977_)))
                                      (_tl7490974984_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7491174977_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7490974984_))
                                      (let ((_e7491474987_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7490974984_))))
                                        (let ((_hd7491374991_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7491474987_)))
                                              (_tl7491274994_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7491474987_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7491274994_))
                                              (_loop7489674943_
                                               _lp-tl7489974964_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7491374991_
                                                       _symbol7490074950_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7491074981_
                                                       _method7490174952_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7490774971_
                                                       _type-t7490274954_)))
                                              (_g7488574920_ _g7488674924_))))
                                      (_g7488574920_ _g7488674924_))))
                              (_g7488574920_ _g7488674924_))))
                      (_g7488574920_ _g7488674924_))))
              (let ((_symbol7490374997_ (reverse _symbol7490074950_))
                    (_method7490475000_ (reverse _method7490174952_))
                    (_type-t7490575002_ (reverse _type-t7490274954_)))
                ((lambda (_L75005_ _L75007_ _L75008_)
                   (let ((__tmp79580
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp79573
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L75005_
                               _L75007_
                               _L75008_))
                            (let ((__tmp79574
                                   (lambda (_g7502475029_
                                            _g7502575032_
                                            _g7502675034_
                                            _g7502775036_)
                                     (let ((__tmp79575
                                            (let ((__tmp79579
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp79576
                                                   (let ((__tmp79577
                                                          (let ((__tmp79578
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g7502475029_ '()))))
                    (declare (not safe))
                    (cons _g7502575032_ __tmp79578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7502675034_
                                                           __tmp79577))))
                                              (declare (not safe))
                                              (cons __tmp79579 __tmp79576))))
                                       (declare (not safe))
                                       (cons __tmp79575 _g7502775036_)))))
                              (declare (not safe))
                              (foldr* __tmp79574
                                      '()
                                      _L75005_
                                      _L75007_
                                      _L75008_)))))
                     (declare (not safe))
                     (cons __tmp79580 __tmp79573)))
                 _symbol7490374997_
                 _method7490475000_
                 _type-t7490575002_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7489674943_
                                         _target7489374937_
                                         '()
                                         '()
                                         '()))
                                      (_g7488574920_ _g7488674924_)))))
                            (_g7488574920_ _g7488674924_))))
                    (_g7488574920_ _g7488674924_)))))
        (_g7488475039_ _$stx74881_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx75044_)
      (let* ((_g7504875081_
              (lambda (_g7504975077_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7504975077_))))
             (_g7504775195_
              (lambda (_g7504975085_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7504975085_))
                    (let ((_e7505575088_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7504975085_))))
                      (let ((_hd7505475092_
                             (let ()
                               (declare (not safe))
                               (##car _e7505575088_)))
                            (_tl7505375095_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7505575088_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7505375095_))
                            (let ((_e7505875098_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7505375095_))))
                              (let ((_hd7505775102_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7505875098_)))
                                    (_tl7505675105_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7505875098_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7505675105_))
                                    (let ((_g79581_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7505675105_
                                              '0))))
                                      (begin
                                        (let ((_g79582_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g79581_)
                                                     (##vector-length _g79581_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g79582_ 2)))
                                              (error "Context expects 2 values"
                                                     _g79582_)))
                                        (let ((_target7505975108_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79581_ 0)))
                                              (_tl7506175111_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79581_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7506175111_))
                                              (letrec ((_loop7506275114_
                                                        (lambda (_hd7506075118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol7506675121_
                         _method7506775123_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd7506075118_))
                      (let ((_e7506375126_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd7506075118_))))
                        (let ((_lp-hd7506475130_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7506375126_)))
                              (_lp-tl7506575133_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7506375126_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd7506475130_))
                              (let ((_e7507275136_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd7506475130_))))
                                (let ((_hd7507175140_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7507275136_)))
                                      (_tl7507075143_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7507275136_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7507075143_))
                                      (let ((_e7507575146_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7507075143_))))
                                        (let ((_hd7507475150_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7507575146_)))
                                              (_tl7507375153_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7507575146_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7507375153_))
                                              (_loop7506275114_
                                               _lp-tl7506575133_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7507475150_
                                                       _symbol7506675121_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd7507175140_
                                                       _method7506775123_)))
                                              (_g7504875081_ _g7504975085_))))
                                      (_g7504875081_ _g7504975085_))))
                              (_g7504875081_ _g7504975085_))))
                      (let ((_symbol7506875156_ (reverse _symbol7506675121_))
                            (_method7506975159_ (reverse _method7506775123_)))
                        ((lambda (_L75162_ _L75164_ _L75165_)
                           (let ((__tmp79590
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp79583
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L75162_
                                       _L75164_))
                                    (let ((__tmp79584
                                           (lambda (_g7518375187_
                                                    _g7518475190_
                                                    _g7518575192_)
                                             (let ((__tmp79585
                                                    (let ((__tmp79589
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp79586
                                                           (let ((__tmp79587
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp79588
                                 (let ()
                                   (declare (not safe))
                                   (cons _g7518375187_ '()))))
                            (declare (not safe))
                            (cons _g7518475190_ __tmp79588))))
                     (declare (not safe))
                     (cons _L75165_ __tmp79587))))
              (declare (not safe))
              (cons __tmp79589 __tmp79586))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79585
                                                     _g7518575192_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp79584
                                              '()
                                              _L75162_
                                              _L75164_)))))
                             (declare (not safe))
                             (cons __tmp79590 __tmp79583)))
                         _symbol7506875156_
                         _method7506975159_
                         _hd7505775102_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7506275114_
                                                 _target7505975108_
                                                 '()
                                                 '()))
                                              (_g7504875081_ _g7504975085_)))))
                                    (_g7504875081_ _g7504975085_))))
                            (_g7504875081_ _g7504975085_))))
                    (_g7504875081_ _g7504975085_)))))
        (_g7504775195_ _$stx75044_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx75200_)
      (let* ((_g7520475218_
              (lambda (_g7520575214_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7520575214_))))
             (_g7520375259_
              (lambda (_g7520575222_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7520575222_))
                    (let ((_e7520975225_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7520575222_))))
                      (let ((_hd7520875229_
                             (let ()
                               (declare (not safe))
                               (##car _e7520975225_)))
                            (_tl7520775232_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7520975225_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7520775232_))
                            (let ((_e7521275235_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7520775232_))))
                              (let ((_hd7521175239_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7521275235_)))
                                    (_tl7521075242_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7521275235_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7521075242_))
                                    ((lambda (_L75245_)
                                       (let ((__tmp79595
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp79591
                                              (let ((__tmp79592
                                                     (let ((__tmp79594
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79593
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L75245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79594 __tmp79593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79592 '()))))
                                         (declare (not safe))
                                         (cons __tmp79595 __tmp79591)))
                                     _hd7521175239_)
                                    (_g7520475218_ _g7520575222_))))
                            (_g7520475218_ _g7520575222_))))
                    (_g7520475218_ _g7520575222_)))))
        (_g7520375259_ _$stx75200_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx75263_)
      (let* ((___stx7874678747_ _$stx75263_)
             (_g7526975335_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7874678747_)))))
        (let ((___kont7874978750_
               (lambda (_L75557_ _L75559_ _L75560_ _L75561_ _L75562_)
                 (let ((__tmp79601
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f '@make-struct-type)))
                       (__tmp79596
                        (let ((__tmp79597
                               (let ((__tmp79598
                                      (let ((__tmp79599
                                             (let ((__tmp79600
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L75557_ '()))))
                                               (declare (not safe))
                                               (cons _L75559_ __tmp79600))))
                                        (declare (not safe))
                                        (cons _L75560_ __tmp79599))))
                                 (declare (not safe))
                                 (cons _L75561_ __tmp79598))))
                          (declare (not safe))
                          (cons _L75562_ __tmp79597))))
                   (declare (not safe))
                   (cons __tmp79601 __tmp79596))))
              (___kont7875178752_
               (lambda (_L75467_ _L75469_ _L75470_ _L75471_)
                 (let ((__tmp79602
                        (let ((__tmp79603
                               (let ((__tmp79604
                                      (let ((__tmp79605
                                             (let ((__tmp79606
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons '#f __tmp79606))))
                                        (declare (not safe))
                                        (cons _L75467_ __tmp79605))))
                                 (declare (not safe))
                                 (cons _L75469_ __tmp79604))))
                          (declare (not safe))
                          (cons _L75470_ __tmp79603))))
                   (declare (not safe))
                   (cons _L75471_ __tmp79602))))
              (___kont7875378754_
               (lambda (_L75392_ _L75394_ _L75395_ _L75396_ _L75397_)
                 (let ((__tmp79607
                        (let ((__tmp79612
                               (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'type)))
                              (__tmp79608
                               (let ((__tmp79609
                                      (let ((__tmp79610
                                             (let ((__tmp79611
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '#f '()))))
                                               (declare (not safe))
                                               (cons _L75392_ __tmp79611))))
                                        (declare (not safe))
                                        (cons _L75394_ __tmp79610))))
                                 (declare (not safe))
                                 (cons _L75395_ __tmp79609))))
                          (declare (not safe))
                          (cons __tmp79612 __tmp79608))))
                   (declare (not safe))
                   (cons _L75397_ __tmp79607)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7874678747_))
              (let ((_e7527875497_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7874678747_))))
                (let ((_tl7527675504_
                       (let () (declare (not safe)) (##cdr _e7527875497_)))
                      (_hd7527775501_
                       (let () (declare (not safe)) (##car _e7527875497_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7527675504_))
                      (let ((_e7528175507_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7527675504_))))
                        (let ((_tl7527975514_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7528175507_)))
                              (_hd7528075511_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7528175507_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7527975514_))
                              (let ((_e7528475517_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7527975514_))))
                                (let ((_tl7528275524_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7528475517_)))
                                      (_hd7528375521_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7528475517_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7528275524_))
                                      (let ((_e7528775527_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7528275524_))))
                                        (let ((_tl7528575534_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7528775527_)))
                                              (_hd7528675531_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7528775527_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl7528575534_))
                                              (let ((_e7529075537_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl7528575534_))))
                                                (let ((_tl7528875544_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e7529075537_)))
                                                      (_hd7528975541_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e7529075537_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl7528875544_))
                                                      (let ((_e7529375547_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _tl7528875544_))))
                (let ((_tl7529175554_
                       (let () (declare (not safe)) (##cdr _e7529375547_)))
                      (_hd7529275551_
                       (let () (declare (not safe)) (##car _e7529375547_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7529175554_))
                      (___kont7874978750_
                       _hd7529275551_
                       _hd7528975541_
                       _hd7528675531_
                       _hd7528375521_
                       _hd7528075511_)
                      (let () (declare (not safe)) (_g7526975335_)))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7528875544_))
                  (___kont7875378754_
                   _hd7528975541_
                   _hd7528675531_
                   _hd7528375521_
                   _hd7528075511_
                   _hd7527775501_)
                  (let () (declare (not safe)) (_g7526975335_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7528575534_))
                                                  (___kont7875178752_
                                                   _hd7528675531_
                                                   _hd7528375521_
                                                   _hd7528075511_
                                                   _hd7527775501_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7526975335_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g7526975335_)))))
                              (let () (declare (not safe)) (_g7526975335_)))))
                      (let () (declare (not safe)) (_g7526975335_)))))
              (let () (declare (not safe)) (_g7526975335_)))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx75590_)
      (let* ((___stx7885478855_ _$stx75590_)
             (_g7559575648_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7885478855_)))))
        (let ((___kont7885778858_
               (lambda (_L75816_ _L75818_ _L75819_ _L75820_)
                 (let ((__tmp79628
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-type)))
                       (__tmp79613
                        (let ((__tmp79625
                               (let ((__tmp79627
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79626
                                      (let ()
                                        (declare (not safe))
                                        (cons _L75820_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79627 __tmp79626)))
                              (__tmp79614
                               (let ((__tmp79615
                                      (let ((__tmp79616
                                             (let ((__tmp79617
                                                    (let ((__tmp79622
                                                           (let ((__tmp79624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp79623
                          (let () (declare (not safe)) (cons _L75818_ '()))))
                     (declare (not safe))
                     (cons __tmp79624 __tmp79623)))
                  (__tmp79618
                   (let ((__tmp79619
                          (let ((__tmp79621
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp79620
                                 (let ()
                                   (declare (not safe))
                                   (cons _L75816_ '()))))
                            (declare (not safe))
                            (cons __tmp79621 __tmp79620))))
                     (declare (not safe))
                     (cons __tmp79619 '()))))
              (declare (not safe))
              (cons __tmp79622 __tmp79618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '0 __tmp79617))))
                                        (declare (not safe))
                                        (cons _L75819_ __tmp79616))))
                                 (declare (not safe))
                                 (cons '#f __tmp79615))))
                          (declare (not safe))
                          (cons __tmp79625 __tmp79614))))
                   (declare (not safe))
                   (cons __tmp79628 __tmp79613))))
              (___kont7885978860_
               (lambda (_L75715_ _L75717_ _L75718_ _L75719_ _L75720_)
                 (let ((__tmp79710
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'let*)))
                       (__tmp79629
                        (let ((__tmp79650
                               (let ((__tmp79701
                                      (let ((__tmp79709
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'super-type)))
                                            (__tmp79702
                                             (let ((__tmp79703
                                                    (let ((__tmp79708
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-resolve-type)))
                                                          (__tmp79704
                                                           (let ((__tmp79705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp79707
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp79706
                                 (let ()
                                   (declare (not safe))
                                   (cons _L75719_ '()))))
                            (declare (not safe))
                            (cons __tmp79707 __tmp79706))))
                     (declare (not safe))
                     (cons __tmp79705 '()))))
              (declare (not safe))
              (cons __tmp79708 __tmp79704))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79703 '()))))
                                        (declare (not safe))
                                        (cons __tmp79709 __tmp79702)))
                                     (__tmp79651
                                      (let ((__tmp79673
                                             (let ((__tmp79700
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'xfields)))
                                                   (__tmp79674
                                                    (let ((__tmp79675
                                                           (let ((__tmp79699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'and)))
                         (__tmp79676
                          (let ((__tmp79698
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'super-type)))
                                (__tmp79677
                                 (let ((__tmp79678
                                        (let ((__tmp79697
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'alet)))
                                              (__tmp79679
                                               (let ((__tmp79690
                                                      (let ((__tmp79696
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'xfields)))
                    (__tmp79691
                     (let ((__tmp79692
                            (let ((__tmp79695
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-xfields)))
                                  (__tmp79693
                                   (let ((__tmp79694
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp79694 '()))))
                              (declare (not safe))
                              (cons __tmp79695 __tmp79693))))
                       (declare (not safe))
                       (cons __tmp79692 '()))))
                (declare (not safe))
                (cons __tmp79696 __tmp79691)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp79680
                                                      (let ((__tmp79681
                                                             (let ((__tmp79689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'fx+)))
                           (__tmp79682
                            (let ((__tmp79688
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'xfields)))
                                  (__tmp79683
                                   (let ((__tmp79684
                                          (let ((__tmp79687
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '!struct-type-fields)))
                                                (__tmp79685
                                                 (let ((__tmp79686
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'super-type))))
                                                   (declare (not safe))
                                                   (cons __tmp79686 '()))))
                                            (declare (not safe))
                                            (cons __tmp79687 __tmp79685))))
                                     (declare (not safe))
                                     (cons __tmp79684 '()))))
                              (declare (not safe))
                              (cons __tmp79688 __tmp79683))))
                       (declare (not safe))
                       (cons __tmp79689 __tmp79682))))
                (declare (not safe))
                (cons __tmp79681 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp79690
                                                       __tmp79680))))
                                          (declare (not safe))
                                          (cons __tmp79697 __tmp79679))))
                                   (declare (not safe))
                                   (cons __tmp79678 '()))))
                            (declare (not safe))
                            (cons __tmp79698 __tmp79677))))
                     (declare (not safe))
                     (cons __tmp79699 __tmp79676))))
              (declare (not safe))
              (cons __tmp79675 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79700 __tmp79674)))
                                            (__tmp79652
                                             (let ((__tmp79653
                                                    (let ((__tmp79672
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'xtor)))
                                                          (__tmp79654
                                                           (let ((__tmp79655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp79671
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'or)))
                                (__tmp79656
                                 (let ((__tmp79668
                                        (let ((__tmp79670
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp79669
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L75717_ '()))))
                                          (declare (not safe))
                                          (cons __tmp79670 __tmp79669)))
                                       (__tmp79657
                                        (let ((__tmp79658
                                               (let ((__tmp79667
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'if)))
                                                     (__tmp79659
                                                      (let ((__tmp79666
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'super-type)))
                    (__tmp79660
                     (let ((__tmp79662
                            (let ((__tmp79665
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      '!struct-type-ctor)))
                                  (__tmp79663
                                   (let ((__tmp79664
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'super-type))))
                                     (declare (not safe))
                                     (cons __tmp79664 '()))))
                              (declare (not safe))
                              (cons __tmp79665 __tmp79663)))
                           (__tmp79661
                            (let () (declare (not safe)) (cons '#!void '()))))
                       (declare (not safe))
                       (cons __tmp79662 __tmp79661))))
                (declare (not safe))
                (cons __tmp79666 __tmp79660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp79667
                                                       __tmp79659))))
                                          (declare (not safe))
                                          (cons __tmp79658 '()))))
                                   (declare (not safe))
                                   (cons __tmp79668 __tmp79657))))
                            (declare (not safe))
                            (cons __tmp79671 __tmp79656))))
                     (declare (not safe))
                     (cons __tmp79655 '()))))
              (declare (not safe))
              (cons __tmp79672 __tmp79654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79653 '()))))
                                        (declare (not safe))
                                        (cons __tmp79673 __tmp79652))))
                                 (declare (not safe))
                                 (cons __tmp79701 __tmp79651)))
                              (__tmp79630
                               (let ((__tmp79631
                                      (let ((__tmp79649
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!struct-type)))
                                            (__tmp79632
                                             (let ((__tmp79646
                                                    (let ((__tmp79648
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp79647
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L75720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp79648 __tmp79647)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp79633
                                                    (let ((__tmp79643
                                                           (let ((__tmp79645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp79644
                          (let () (declare (not safe)) (cons _L75719_ '()))))
                     (declare (not safe))
                     (cons __tmp79645 __tmp79644)))
                  (__tmp79634
                   (let ((__tmp79635
                          (let ((__tmp79642
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'xfields)))
                                (__tmp79636
                                 (let ((__tmp79641
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'xtor)))
                                       (__tmp79637
                                        (let ((__tmp79638
                                               (let ((__tmp79640
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'quote)))
                                                     (__tmp79639
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L75715_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79640
                                                       __tmp79639))))
                                          (declare (not safe))
                                          (cons __tmp79638 '()))))
                                   (declare (not safe))
                                   (cons __tmp79641 __tmp79637))))
                            (declare (not safe))
                            (cons __tmp79642 __tmp79636))))
                     (declare (not safe))
                     (cons _L75718_ __tmp79635))))
              (declare (not safe))
              (cons __tmp79643 __tmp79634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79646 __tmp79633))))
                                        (declare (not safe))
                                        (cons __tmp79649 __tmp79632))))
                                 (declare (not safe))
                                 (cons __tmp79631 '()))))
                          (declare (not safe))
                          (cons __tmp79650 __tmp79630))))
                   (declare (not safe))
                   (cons __tmp79710 __tmp79629)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7885478855_))
              (let ((_e7560375752_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7885478855_))))
                (let ((_tl7560175759_
                       (let () (declare (not safe)) (##cdr _e7560375752_)))
                      (_hd7560275756_
                       (let () (declare (not safe)) (##car _e7560375752_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7560175759_))
                      (let ((_e7560675762_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7560175759_))))
                        (let ((_tl7560475769_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7560675762_)))
                              (_hd7560575766_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7560675762_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7560475769_))
                              (let ((_e7560975772_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7560475769_))))
                                (let ((_tl7560775779_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7560975772_)))
                                      (_hd7560875776_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7560975772_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd7560875776_))
                                      (let ((_e7561075782_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd7560875776_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e7561075782_ '#f))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7560775779_))
                                                (let ((_e7561375786_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7560775779_))))
                                                  (let ((_tl7561175793_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7561375786_)))
                                                        (_hd7561275790_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7561375786_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7561175793_))
                                                        (let ((_e7561675796_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7561175793_))))
                  (let ((_tl7561475803_
                         (let () (declare (not safe)) (##cdr _e7561675796_)))
                        (_hd7561575800_
                         (let () (declare (not safe)) (##car _e7561675796_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7561475803_))
                        (let ((_e7561975806_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7561475803_))))
                          (let ((_tl7561775813_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7561975806_)))
                                (_hd7561875810_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7561975806_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7561775813_))
                                (___kont7885778858_
                                 _hd7561875810_
                                 _hd7561575800_
                                 _hd7561275790_
                                 _hd7560575766_)
                                (let ()
                                  (declare (not safe))
                                  (_g7559575648_)))))
                        (let () (declare (not safe)) (_g7559575648_)))))
                (let () (declare (not safe)) (_g7559575648_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7559575648_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7560775779_))
                                                (let ((_e7563675685_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7560775779_))))
                                                  (let ((_tl7563475692_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7563675685_)))
                                                        (_hd7563575689_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7563675685_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7563475692_))
                                                        (let ((_e7563975695_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7563475692_))))
                  (let ((_tl7563775702_
                         (let () (declare (not safe)) (##cdr _e7563975695_)))
                        (_hd7563875699_
                         (let () (declare (not safe)) (##car _e7563975695_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7563775702_))
                        (let ((_e7564275705_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7563775702_))))
                          (let ((_tl7564075712_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7564275705_)))
                                (_hd7564175709_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7564275705_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7564075712_))
                                (___kont7885978860_
                                 _hd7564175709_
                                 _hd7563875699_
                                 _hd7563575689_
                                 _hd7560875776_
                                 _hd7560575766_)
                                (let ()
                                  (declare (not safe))
                                  (_g7559575648_)))))
                        (let () (declare (not safe)) (_g7559575648_)))))
                (let () (declare (not safe)) (_g7559575648_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7559575648_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl7560775779_))
                                          (let ((_e7563675685_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl7560775779_))))
                                            (let ((_tl7563475692_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7563675685_)))
                                                  (_hd7563575689_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7563675685_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl7563475692_))
                                                  (let ((_e7563975695_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl7563475692_))))
                                                    (let ((_tl7563775702_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e7563975695_)))
                                                          (_hd7563875699_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e7563975695_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl7563775702_))
                                                          (let ((_e7564275705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _tl7563775702_))))
                    (let ((_tl7564075712_
                           (let () (declare (not safe)) (##cdr _e7564275705_)))
                          (_hd7564175709_
                           (let ()
                             (declare (not safe))
                             (##car _e7564275705_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl7564075712_))
                          (___kont7885978860_
                           _hd7564175709_
                           _hd7563875699_
                           _hd7563575689_
                           _hd7560875776_
                           _hd7560575766_)
                          (let () (declare (not safe)) (_g7559575648_)))))
                  (let () (declare (not safe)) (_g7559575648_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7559575648_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g7559575648_))))))
                              (let () (declare (not safe)) (_g7559575648_)))))
                      (let () (declare (not safe)) (_g7559575648_)))))
              (let () (declare (not safe)) (_g7559575648_)))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx75848_)
      (let* ((_g7585275866_
              (lambda (_g7585375862_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7585375862_))))
             (_g7585175907_
              (lambda (_g7585375870_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7585375870_))
                    (let ((_e7585775873_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7585375870_))))
                      (let ((_hd7585675877_
                             (let ()
                               (declare (not safe))
                               (##car _e7585775873_)))
                            (_tl7585575880_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7585775873_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7585575880_))
                            (let ((_e7586075883_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7585575880_))))
                              (let ((_hd7585975887_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7586075883_)))
                                    (_tl7585875890_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7586075883_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7585875890_))
                                    ((lambda (_L75893_)
                                       (let ((__tmp79715
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-pred)))
                                             (__tmp79711
                                              (let ((__tmp79712
                                                     (let ((__tmp79714
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79713
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L75893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79714 __tmp79713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79712 '()))))
                                         (declare (not safe))
                                         (cons __tmp79715 __tmp79711)))
                                     _hd7585975887_)
                                    (_g7585275866_ _g7585375870_))))
                            (_g7585275866_ _g7585375870_))))
                    (_g7585275866_ _g7585375870_)))))
        (_g7585175907_ _$stx75848_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx75911_)
      (let* ((_g7591575929_
              (lambda (_g7591675925_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7591675925_))))
             (_g7591475970_
              (lambda (_g7591675933_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7591675933_))
                    (let ((_e7592075936_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7591675933_))))
                      (let ((_hd7591975940_
                             (let ()
                               (declare (not safe))
                               (##car _e7592075936_)))
                            (_tl7591875943_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7592075936_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7591875943_))
                            (let ((_e7592375946_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7591875943_))))
                              (let ((_hd7592275950_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7592375946_)))
                                    (_tl7592175953_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7592375946_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7592175953_))
                                    ((lambda (_L75956_)
                                       (let ((__tmp79720
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!struct-cons)))
                                             (__tmp79716
                                              (let ((__tmp79717
                                                     (let ((__tmp79719
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79718
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L75956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79719 __tmp79718))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79717 '()))))
                                         (declare (not safe))
                                         (cons __tmp79720 __tmp79716)))
                                     _hd7592275950_)
                                    (_g7591575929_ _g7591675933_))))
                            (_g7591575929_ _g7591675933_))))
                    (_g7591575929_ _g7591675933_)))))
        (_g7591475970_ _$stx75911_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx75974_)
      (let* ((___stx7894678947_ _$stx75974_)
             (_g7597976012_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7894678947_)))))
        (let ((___kont7894978950_
               (lambda (_L76114_ _L76116_ _L76117_)
                 (let ((__tmp79727
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp79721
                        (let ((__tmp79724
                               (let ((__tmp79726
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79725
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76117_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79726 __tmp79725)))
                              (__tmp79722
                               (let ((__tmp79723
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76114_ '()))))
                                 (declare (not safe))
                                 (cons _L76116_ __tmp79723))))
                          (declare (not safe))
                          (cons __tmp79724 __tmp79722))))
                   (declare (not safe))
                   (cons __tmp79727 __tmp79721))))
              (___kont7895178952_
               (lambda (_L76049_ _L76051_)
                 (let ((__tmp79734
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-getf)))
                       (__tmp79728
                        (let ((__tmp79731
                               (let ((__tmp79733
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79732
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76051_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79733 __tmp79732)))
                              (__tmp79729
                               (let ((__tmp79730
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L76049_ __tmp79730))))
                          (declare (not safe))
                          (cons __tmp79731 __tmp79729))))
                   (declare (not safe))
                   (cons __tmp79734 __tmp79728)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7894678947_))
              (let ((_e7598676074_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7894678947_))))
                (let ((_tl7598476081_
                       (let () (declare (not safe)) (##cdr _e7598676074_)))
                      (_hd7598576078_
                       (let () (declare (not safe)) (##car _e7598676074_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7598476081_))
                      (let ((_e7598976084_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7598476081_))))
                        (let ((_tl7598776091_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7598976084_)))
                              (_hd7598876088_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7598976084_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7598776091_))
                              (let ((_e7599276094_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7598776091_))))
                                (let ((_tl7599076101_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7599276094_)))
                                      (_hd7599176098_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7599276094_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7599076101_))
                                      (let ((_e7599576104_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7599076101_))))
                                        (let ((_tl7599376111_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7599576104_)))
                                              (_hd7599476108_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7599576104_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7599376111_))
                                              (___kont7894978950_
                                               _hd7599476108_
                                               _hd7599176098_
                                               _hd7598876088_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7597976012_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7599076101_))
                                          (___kont7895178952_
                                           _hd7599176098_
                                           _hd7598876088_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7597976012_))))))
                              (let () (declare (not safe)) (_g7597976012_)))))
                      (let () (declare (not safe)) (_g7597976012_)))))
              (let () (declare (not safe)) (_g7597976012_)))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx76139_)
      (let* ((___stx7900279003_ _$stx76139_)
             (_g7614476177_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7900279003_)))))
        (let ((___kont7900579006_
               (lambda (_L76279_ _L76281_ _L76282_)
                 (let ((__tmp79741
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp79735
                        (let ((__tmp79738
                               (let ((__tmp79740
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79739
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76282_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79740 __tmp79739)))
                              (__tmp79736
                               (let ((__tmp79737
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76279_ '()))))
                                 (declare (not safe))
                                 (cons _L76281_ __tmp79737))))
                          (declare (not safe))
                          (cons __tmp79738 __tmp79736))))
                   (declare (not safe))
                   (cons __tmp79741 __tmp79735))))
              (___kont7900779008_
               (lambda (_L76214_ _L76216_)
                 (let ((__tmp79748
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!struct-setf)))
                       (__tmp79742
                        (let ((__tmp79745
                               (let ((__tmp79747
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79746
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76216_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79747 __tmp79746)))
                              (__tmp79743
                               (let ((__tmp79744
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L76214_ __tmp79744))))
                          (declare (not safe))
                          (cons __tmp79745 __tmp79743))))
                   (declare (not safe))
                   (cons __tmp79748 __tmp79742)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7900279003_))
              (let ((_e7615176239_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7900279003_))))
                (let ((_tl7614976246_
                       (let () (declare (not safe)) (##cdr _e7615176239_)))
                      (_hd7615076243_
                       (let () (declare (not safe)) (##car _e7615176239_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7614976246_))
                      (let ((_e7615476249_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7614976246_))))
                        (let ((_tl7615276256_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7615476249_)))
                              (_hd7615376253_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7615476249_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7615276256_))
                              (let ((_e7615776259_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7615276256_))))
                                (let ((_tl7615576266_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7615776259_)))
                                      (_hd7615676263_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7615776259_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7615576266_))
                                      (let ((_e7616076269_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7615576266_))))
                                        (let ((_tl7615876276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7616076269_)))
                                              (_hd7615976273_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7616076269_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7615876276_))
                                              (___kont7900579006_
                                               _hd7615976273_
                                               _hd7615676263_
                                               _hd7615376253_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7614476177_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7615576266_))
                                          (___kont7900779008_
                                           _hd7615676263_
                                           _hd7615376253_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7614476177_))))))
                              (let () (declare (not safe)) (_g7614476177_)))))
                      (let () (declare (not safe)) (_g7614476177_)))))
              (let () (declare (not safe)) (_g7614476177_)))))))
  (define |gxc[:0:]#@class-type|
    (lambda (_$stx76304_)
      (let* ((_g7630876346_
              (lambda (_g7630976342_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7630976342_))))
             (_g7630776471_
              (lambda (_g7630976350_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7630976350_))
                    (let ((_e7631976353_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7630976350_))))
                      (let ((_hd7631876357_
                             (let ()
                               (declare (not safe))
                               (##car _e7631976353_)))
                            (_tl7631776360_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7631976353_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7631776360_))
                            (let ((_e7632276363_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7631776360_))))
                              (let ((_hd7632176367_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7632276363_)))
                                    (_tl7632076370_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7632276363_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7632076370_))
                                    (let ((_e7632576373_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7632076370_))))
                                      (let ((_hd7632476377_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7632576373_)))
                                            (_tl7632376380_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7632576373_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl7632376380_))
                                            (let ((_e7632876383_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl7632376380_))))
                                              (let ((_hd7632776387_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7632876383_)))
                                                    (_tl7632676390_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7632876383_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7632676390_))
                                                    (let ((_e7633176393_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7632676390_))))
                                                      (let ((_hd7633076397_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e7633176393_)))
                    (_tl7632976400_
                     (let () (declare (not safe)) (##cdr _e7633176393_))))
                (if (let () (declare (not safe)) (gx#stx-pair? _tl7632976400_))
                    (let ((_e7633476403_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl7632976400_))))
                      (let ((_hd7633376407_
                             (let ()
                               (declare (not safe))
                               (##car _e7633476403_)))
                            (_tl7633276410_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7633476403_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7633276410_))
                            (let ((_e7633776413_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7633276410_))))
                              (let ((_hd7633676417_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7633776413_)))
                                    (_tl7633576420_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7633776413_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7633576420_))
                                    (let ((_e7634076423_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7633576420_))))
                                      (let ((_hd7633976427_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7634076423_)))
                                            (_tl7633876430_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7634076423_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7633876430_))
                                            ((lambda (_L76433_
                                                      _L76435_
                                                      _L76436_
                                                      _L76437_
                                                      _L76438_
                                                      _L76439_
                                                      _L76440_)
                                               (let ((__tmp79777
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!class-type)))
                                                     (__tmp79749
                                                      (let ((__tmp79774
                                                             (let ((__tmp79776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp79775
                            (let () (declare (not safe)) (cons _L76440_ '()))))
                       (declare (not safe))
                       (cons __tmp79776 __tmp79775)))
                    (__tmp79750
                     (let ((__tmp79771
                            (let ((__tmp79773
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp79772
                                   (let ()
                                     (declare (not safe))
                                     (cons _L76439_ '()))))
                              (declare (not safe))
                              (cons __tmp79773 __tmp79772)))
                           (__tmp79751
                            (let ((__tmp79768
                                   (let ((__tmp79770
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp79769
                                          (let ()
                                            (declare (not safe))
                                            (cons _L76438_ '()))))
                                     (declare (not safe))
                                     (cons __tmp79770 __tmp79769)))
                                  (__tmp79752
                                   (let ((__tmp79765
                                          (let ((__tmp79767
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote)))
                                                (__tmp79766
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L76437_ '()))))
                                            (declare (not safe))
                                            (cons __tmp79767 __tmp79766)))
                                         (__tmp79753
                                          (let ((__tmp79762
                                                 (let ((__tmp79764
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote)))
                                                       (__tmp79763
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L76436_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp79764
                                                         __tmp79763)))
                                                (__tmp79754
                                                 (let ((__tmp79759
                                                        (let ((__tmp79761
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote)))
                      (__tmp79760
                       (let () (declare (not safe)) (cons _L76435_ '()))))
                  (declare (not safe))
                  (cons __tmp79761 __tmp79760)))
               (__tmp79755
                (let ((__tmp79756
                       (let ((__tmp79758
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote)))
                             (__tmp79757
                              (let ()
                                (declare (not safe))
                                (cons _L76433_ '()))))
                         (declare (not safe))
                         (cons __tmp79758 __tmp79757))))
                  (declare (not safe))
                  (cons __tmp79756 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79759
                                                         __tmp79755))))
                                            (declare (not safe))
                                            (cons __tmp79762 __tmp79754))))
                                     (declare (not safe))
                                     (cons __tmp79765 __tmp79753))))
                              (declare (not safe))
                              (cons __tmp79768 __tmp79752))))
                       (declare (not safe))
                       (cons __tmp79771 __tmp79751))))
                (declare (not safe))
                (cons __tmp79774 __tmp79750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp79777 __tmp79749)))
                                             _hd7633976427_
                                             _hd7633676417_
                                             _hd7633376407_
                                             _hd7633076397_
                                             _hd7632776387_
                                             _hd7632476377_
                                             _hd7632176367_)
                                            (_g7630876346_ _g7630976350_))))
                                    (_g7630876346_ _g7630976350_))))
                            (_g7630876346_ _g7630976350_))))
                    (_g7630876346_ _g7630976350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7630876346_
                                                     _g7630976350_))))
                                            (_g7630876346_ _g7630976350_))))
                                    (_g7630876346_ _g7630976350_))))
                            (_g7630876346_ _g7630976350_))))
                    (_g7630876346_ _g7630976350_)))))
        (_g7630776471_ _$stx76304_))))
  (define |gxc[:0:]#@class-pred|
    (lambda (_$stx76475_)
      (let* ((_g7647976493_
              (lambda (_g7648076489_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7648076489_))))
             (_g7647876534_
              (lambda (_g7648076497_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7648076497_))
                    (let ((_e7648476500_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7648076497_))))
                      (let ((_hd7648376504_
                             (let ()
                               (declare (not safe))
                               (##car _e7648476500_)))
                            (_tl7648276507_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7648476500_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7648276507_))
                            (let ((_e7648776510_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7648276507_))))
                              (let ((_hd7648676514_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7648776510_)))
                                    (_tl7648576517_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7648776510_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7648576517_))
                                    ((lambda (_L76520_)
                                       (let ((__tmp79782
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-pred)))
                                             (__tmp79778
                                              (let ((__tmp79779
                                                     (let ((__tmp79781
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79780
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L76520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79781 __tmp79780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79779 '()))))
                                         (declare (not safe))
                                         (cons __tmp79782 __tmp79778)))
                                     _hd7648676514_)
                                    (_g7647976493_ _g7648076497_))))
                            (_g7647976493_ _g7648076497_))))
                    (_g7647976493_ _g7648076497_)))))
        (_g7647876534_ _$stx76475_))))
  (define |gxc[:0:]#@class-cons|
    (lambda (_$stx76538_)
      (let* ((_g7654276556_
              (lambda (_g7654376552_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7654376552_))))
             (_g7654176597_
              (lambda (_g7654376560_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7654376560_))
                    (let ((_e7654776563_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7654376560_))))
                      (let ((_hd7654676567_
                             (let ()
                               (declare (not safe))
                               (##car _e7654776563_)))
                            (_tl7654576570_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7654776563_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7654576570_))
                            (let ((_e7655076573_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7654576570_))))
                              (let ((_hd7654976577_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7655076573_)))
                                    (_tl7654876580_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7655076573_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7654876580_))
                                    ((lambda (_L76583_)
                                       (let ((__tmp79787
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class-cons)))
                                             (__tmp79783
                                              (let ((__tmp79784
                                                     (let ((__tmp79786
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp79785
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L76583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp79786 __tmp79785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79784 '()))))
                                         (declare (not safe))
                                         (cons __tmp79787 __tmp79783)))
                                     _hd7654976577_)
                                    (_g7654276556_ _g7654376560_))))
                            (_g7654276556_ _g7654376560_))))
                    (_g7654276556_ _g7654376560_)))))
        (_g7654176597_ _$stx76538_))))
  (define |gxc[:0:]#@class-getf|
    (lambda (_$stx76601_)
      (let* ((___stx7905879059_ _$stx76601_)
             (_g7660676639_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7905879059_)))))
        (let ((___kont7906179062_
               (lambda (_L76741_ _L76743_ _L76744_)
                 (let ((__tmp79797
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp79788
                        (let ((__tmp79794
                               (let ((__tmp79796
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79795
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76744_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79796 __tmp79795)))
                              (__tmp79789
                               (let ((__tmp79791
                                      (let ((__tmp79793
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79792
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76743_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79793 __tmp79792)))
                                     (__tmp79790
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76741_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79791 __tmp79790))))
                          (declare (not safe))
                          (cons __tmp79794 __tmp79789))))
                   (declare (not safe))
                   (cons __tmp79797 __tmp79788))))
              (___kont7906379064_
               (lambda (_L76676_ _L76678_)
                 (let ((__tmp79807
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-getf)))
                       (__tmp79798
                        (let ((__tmp79804
                               (let ((__tmp79806
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79805
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76678_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79806 __tmp79805)))
                              (__tmp79799
                               (let ((__tmp79801
                                      (let ((__tmp79803
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79802
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76676_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79803 __tmp79802)))
                                     (__tmp79800
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp79801 __tmp79800))))
                          (declare (not safe))
                          (cons __tmp79804 __tmp79799))))
                   (declare (not safe))
                   (cons __tmp79807 __tmp79798)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7905879059_))
              (let ((_e7661376701_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7905879059_))))
                (let ((_tl7661176708_
                       (let () (declare (not safe)) (##cdr _e7661376701_)))
                      (_hd7661276705_
                       (let () (declare (not safe)) (##car _e7661376701_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7661176708_))
                      (let ((_e7661676711_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7661176708_))))
                        (let ((_tl7661476718_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7661676711_)))
                              (_hd7661576715_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7661676711_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7661476718_))
                              (let ((_e7661976721_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7661476718_))))
                                (let ((_tl7661776728_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7661976721_)))
                                      (_hd7661876725_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7661976721_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7661776728_))
                                      (let ((_e7662276731_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7661776728_))))
                                        (let ((_tl7662076738_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7662276731_)))
                                              (_hd7662176735_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7662276731_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7662076738_))
                                              (___kont7906179062_
                                               _hd7662176735_
                                               _hd7661876725_
                                               _hd7661576715_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7660676639_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7661776728_))
                                          (___kont7906379064_
                                           _hd7661876725_
                                           _hd7661576715_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7660676639_))))))
                              (let () (declare (not safe)) (_g7660676639_)))))
                      (let () (declare (not safe)) (_g7660676639_)))))
              (let () (declare (not safe)) (_g7660676639_)))))))
  (define |gxc[:0:]#@class-setf|
    (lambda (_$stx76766_)
      (let* ((___stx7911479115_ _$stx76766_)
             (_g7677176804_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7911479115_)))))
        (let ((___kont7911779118_
               (lambda (_L76906_ _L76908_ _L76909_)
                 (let ((__tmp79817
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp79808
                        (let ((__tmp79814
                               (let ((__tmp79816
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79815
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76909_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79816 __tmp79815)))
                              (__tmp79809
                               (let ((__tmp79811
                                      (let ((__tmp79813
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79812
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76908_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79813 __tmp79812)))
                                     (__tmp79810
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76906_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79811 __tmp79810))))
                          (declare (not safe))
                          (cons __tmp79814 __tmp79809))))
                   (declare (not safe))
                   (cons __tmp79817 __tmp79808))))
              (___kont7911979120_
               (lambda (_L76841_ _L76843_)
                 (let ((__tmp79827
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!class-setf)))
                       (__tmp79818
                        (let ((__tmp79824
                               (let ((__tmp79826
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79825
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76843_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79826 __tmp79825)))
                              (__tmp79819
                               (let ((__tmp79821
                                      (let ((__tmp79823
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79822
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76841_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79823 __tmp79822)))
                                     (__tmp79820
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons __tmp79821 __tmp79820))))
                          (declare (not safe))
                          (cons __tmp79824 __tmp79819))))
                   (declare (not safe))
                   (cons __tmp79827 __tmp79818)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7911479115_))
              (let ((_e7677876866_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7911479115_))))
                (let ((_tl7677676873_
                       (let () (declare (not safe)) (##cdr _e7677876866_)))
                      (_hd7677776870_
                       (let () (declare (not safe)) (##car _e7677876866_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7677676873_))
                      (let ((_e7678176876_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7677676873_))))
                        (let ((_tl7677976883_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7678176876_)))
                              (_hd7678076880_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7678176876_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7677976883_))
                              (let ((_e7678476886_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7677976883_))))
                                (let ((_tl7678276893_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7678476886_)))
                                      (_hd7678376890_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7678476886_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl7678276893_))
                                      (let ((_e7678776896_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl7678276893_))))
                                        (let ((_tl7678576903_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e7678776896_)))
                                              (_hd7678676900_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e7678776896_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7678576903_))
                                              (___kont7911779118_
                                               _hd7678676900_
                                               _hd7678376890_
                                               _hd7678076880_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7677176804_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7678276893_))
                                          (___kont7911979120_
                                           _hd7678376890_
                                           _hd7678076880_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7677176804_))))))
                              (let () (declare (not safe)) (_g7677176804_)))))
                      (let () (declare (not safe)) (_g7677176804_)))))
              (let () (declare (not safe)) (_g7677176804_)))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx76931_)
      (let* ((___stx7917079171_ _$stx76931_)
             (_g7693977007_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7917079171_)))))
        (let ((___kont7917379174_
               (lambda (_L77285_ _L77287_)
                 (let ((__tmp79843
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp79828
                        (let ((__tmp79839
                               (let ((__tmp79842
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79840
                                      (let ((__tmp79841
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp79841 '()))))
                                 (declare (not safe))
                                 (cons __tmp79842 __tmp79840)))
                              (__tmp79829
                               (let ((__tmp79836
                                      (let ((__tmp79838
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79837
                                             (let ()
                                               (declare (not safe))
                                               (cons _L77287_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79838 __tmp79837)))
                                     (__tmp79830
                                      (let ((__tmp79831
                                             (let ((__tmp79832
                                                    (let ((__tmp79833
                                                           (let ((__tmp79835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp79834
                          (let () (declare (not safe)) (cons _L77285_ '()))))
                     (declare (not safe))
                     (cons __tmp79835 __tmp79834))))
              (declare (not safe))
              (cons __tmp79833 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L77285_ __tmp79832))))
                                        (declare (not safe))
                                        (cons '#f __tmp79831))))
                                 (declare (not safe))
                                 (cons __tmp79836 __tmp79830))))
                          (declare (not safe))
                          (cons __tmp79839 __tmp79829))))
                   (declare (not safe))
                   (cons __tmp79843 __tmp79828))))
              (___kont7917579176_
               (lambda (_L77216_ _L77218_)
                 (let ((__tmp79844
                        (let ((__tmp79845
                               (let ((__tmp79846
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L77216_ __tmp79846))))
                          (declare (not safe))
                          (cons 'primitive: __tmp79845))))
                   (declare (not safe))
                   (cons _L77218_ __tmp79844))))
              (___kont7917779178_
               (lambda (_L77155_ _L77157_)
                 (let ((__tmp79860
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp79847
                        (let ((__tmp79856
                               (let ((__tmp79859
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79857
                                      (let ((__tmp79858
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp79858 '()))))
                                 (declare (not safe))
                                 (cons __tmp79859 __tmp79857)))
                              (__tmp79848
                               (let ((__tmp79853
                                      (let ((__tmp79855
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79854
                                             (let ()
                                               (declare (not safe))
                                               (cons _L77157_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79855 __tmp79854)))
                                     (__tmp79849
                                      (let ((__tmp79850
                                             (let ((__tmp79852
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp79851
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L77155_ '()))))
                                               (declare (not safe))
                                               (cons __tmp79852 __tmp79851))))
                                        (declare (not safe))
                                        (cons __tmp79850 '()))))
                                 (declare (not safe))
                                 (cons __tmp79853 __tmp79849))))
                          (declare (not safe))
                          (cons __tmp79856 __tmp79848))))
                   (declare (not safe))
                   (cons __tmp79860 __tmp79847))))
              (___kont7917979180_
               (lambda (_L77087_ _L77089_)
                 (let ((__tmp79874
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp79861
                        (let ((__tmp79870
                               (let ((__tmp79873
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79871
                                      (let ((__tmp79872
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp79872 '()))))
                                 (declare (not safe))
                                 (cons __tmp79873 __tmp79871)))
                              (__tmp79862
                               (let ((__tmp79867
                                      (let ((__tmp79869
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp79868
                                             (let ()
                                               (declare (not safe))
                                               (cons _L77089_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79869 __tmp79868)))
                                     (__tmp79863
                                      (let ((__tmp79864
                                             (let ((__tmp79866
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp79865
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L77087_ '()))))
                                               (declare (not safe))
                                               (cons __tmp79866 __tmp79865))))
                                        (declare (not safe))
                                        (cons __tmp79864 '()))))
                                 (declare (not safe))
                                 (cons __tmp79867 __tmp79863))))
                          (declare (not safe))
                          (cons __tmp79870 __tmp79862))))
                   (declare (not safe))
                   (cons __tmp79874 __tmp79861))))
              (___kont7918179182_
               (lambda (_L77034_ _L77036_)
                 (let ((__tmp79875
                        (let ((__tmp79876
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L77034_ __tmp79876))))
                   (declare (not safe))
                   (cons _L77036_ __tmp79875)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx7917079171_))
              (let ((_e7694577241_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx7917079171_))))
                (let ((_tl7694377248_
                       (let () (declare (not safe)) (##cdr _e7694577241_)))
                      (_hd7694477245_
                       (let () (declare (not safe)) (##car _e7694577241_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl7694377248_))
                      (let ((_e7694877251_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7694377248_))))
                        (let ((_tl7694677258_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7694877251_)))
                              (_hd7694777255_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7694877251_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl7694677258_))
                              (let ((_e7695177261_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl7694677258_))))
                                (let ((_tl7694977268_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7695177261_)))
                                      (_hd7695077265_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7695177261_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd7695077265_))
                                      (let ((_e7695277271_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd7695077265_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e7695277271_ 'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl7694977268_))
                                                (let ((_e7695577275_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl7694977268_))))
                                                  (let ((_tl7695377282_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7695577275_)))
                                                        (_hd7695477279_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7695577275_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7695377282_))
                                                        (___kont7917379174_
                                                         _hd7695477279_
                                                         _hd7694777255_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd7694777255_))
                                                            (let ((_e7696477202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd7694777255_))))
                      (declare (not safe))
                      (_g7693977007_))
                    (let () (declare (not safe)) (_g7693977007_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd7694777255_))
                                                    (let ((_e7696477202_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd7694777255_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e7696477202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7694977268_))
                      (___kont7917579176_ _hd7695077265_ _hd7694477245_)
                      (let () (declare (not safe)) (_g7693977007_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7694977268_))
                      (___kont7917979180_ _hd7695077265_ _hd7694777255_)
                      (let () (declare (not safe)) (_g7693977007_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7694977268_))
                                                        (___kont7917979180_
                                                         _hd7695077265_
                                                         _hd7694777255_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7693977007_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd7694777255_))
                                                (let ((_e7696477202_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd7694777255_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e7696477202_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl7694977268_))
                                                          (___kont7917579176_
                                                           _hd7695077265_
                                                           _hd7694477245_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl7694977268_))
                      (let ((_e7698277145_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl7694977268_))))
                        (let ((_tl7698077152_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7698277145_)))
                              (_hd7698177149_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7698277145_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7698077152_))
                              (___kont7917779178_
                               _hd7698177149_
                               _hd7695077265_)
                              (let () (declare (not safe)) (_g7693977007_)))))
                      (let () (declare (not safe)) (_g7693977007_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7694977268_))
                  (___kont7917979180_ _hd7695077265_ _hd7694777255_)
                  (let () (declare (not safe)) (_g7693977007_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7694977268_))
                                                    (___kont7917979180_
                                                     _hd7695077265_
                                                     _hd7694777255_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7693977007_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd7694777255_))
                                          (let ((_e7696477202_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _hd7694777255_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e7696477202_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7694977268_))
                                                    (___kont7917579176_
                                                     _hd7695077265_
                                                     _hd7694477245_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl7694977268_))
                                                        (let ((_e7698277145_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl7694977268_))))
                  (let ((_tl7698077152_
                         (let () (declare (not safe)) (##cdr _e7698277145_)))
                        (_hd7698177149_
                         (let () (declare (not safe)) (##car _e7698277145_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl7698077152_))
                        (___kont7917779178_ _hd7698177149_ _hd7695077265_)
                        (let () (declare (not safe)) (_g7693977007_)))))
                (let () (declare (not safe)) (_g7693977007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7694977268_))
                                                    (___kont7917979180_
                                                     _hd7695077265_
                                                     _hd7694777255_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7693977007_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl7694977268_))
                                              (___kont7917979180_
                                               _hd7695077265_
                                               _hd7694777255_)
                                              (let ()
                                                (declare (not safe))
                                                (_g7693977007_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd7694777255_))
                                  (let ((_e7696477202_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd7694777255_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7694677258_))
                                        (___kont7918179182_
                                         _hd7694777255_
                                         _hd7694477245_)
                                        (let ()
                                          (declare (not safe))
                                          (_g7693977007_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7694677258_))
                                      (___kont7918179182_
                                       _hd7694777255_
                                       _hd7694477245_)
                                      (let ()
                                        (declare (not safe))
                                        (_g7693977007_)))))))
                      (let () (declare (not safe)) (_g7693977007_)))))
              (let () (declare (not safe)) (_g7693977007_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx77309_)
      (let* ((___stx7931079311_ _$stx77309_)
             (_g7731477369_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7931079311_)))))
        (let ((___kont7931379314_
               (lambda (_L77554_ _L77556_)
                 (let ((__tmp79892
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp79877
                        (let ((__tmp79888
                               (let ((__tmp79891
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79889
                                      (let ((__tmp79890
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp79890 '()))))
                                 (declare (not safe))
                                 (cons __tmp79891 __tmp79889)))
                              (__tmp79878
                               (let ((__tmp79879
                                      (let ((__tmp79887
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp79880
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L77554_
                                                  _L77556_))
                                               (let ((__tmp79881
                                                      (lambda (_g7757377577_
                                                               _g7757477580_
                                                               _g7757577582_)
                                                        (let ((__tmp79882
                                                               (let ((__tmp79886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp79883
                              (let ((__tmp79884
                                     (let ((__tmp79885
                                            (let ()
                                              (declare (not safe))
                                              (cons _g7757377577_ '()))))
                                       (declare (not safe))
                                       (cons _g7757477580_ __tmp79885))))
                                (declare (not safe))
                                (cons 'primitive: __tmp79884))))
                         (declare (not safe))
                         (cons __tmp79886 __tmp79883))))
                  (declare (not safe))
                  (cons __tmp79882 _g7757577582_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp79881
                                                         '()
                                                         _L77554_
                                                         _L77556_)))))
                                        (declare (not safe))
                                        (cons __tmp79887 __tmp79880))))
                                 (declare (not safe))
                                 (cons __tmp79879 '()))))
                          (declare (not safe))
                          (cons __tmp79888 __tmp79878))))
                   (declare (not safe))
                   (cons __tmp79892 __tmp79877))))
              (___kont7931779318_
               (lambda (_L77440_ _L77442_)
                 (let ((__tmp79907
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp79893
                        (let ((__tmp79903
                               (let ((__tmp79906
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp79904
                                      (let ((__tmp79905
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp79905 '()))))
                                 (declare (not safe))
                                 (cons __tmp79906 __tmp79904)))
                              (__tmp79894
                               (let ((__tmp79895
                                      (let ((__tmp79902
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp79896
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L77440_
                                                  _L77442_))
                                               (let ((__tmp79897
                                                      (lambda (_g7745777461_
                                                               _g7745877464_
                                                               _g7745977466_)
                                                        (let ((__tmp79898
                                                               (let ((__tmp79901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp79899
                              (let ((__tmp79900
                                     (let ()
                                       (declare (not safe))
                                       (cons _g7745777461_ '()))))
                                (declare (not safe))
                                (cons _g7745877464_ __tmp79900))))
                         (declare (not safe))
                         (cons __tmp79901 __tmp79899))))
                  (declare (not safe))
                  (cons __tmp79898 _g7745977466_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp79897
                                                         '()
                                                         _L77440_
                                                         _L77442_)))))
                                        (declare (not safe))
                                        (cons __tmp79902 __tmp79896))))
                                 (declare (not safe))
                                 (cons __tmp79895 '()))))
                          (declare (not safe))
                          (cons __tmp79903 __tmp79894))))
                   (declare (not safe))
                   (cons __tmp79907 __tmp79893)))))
          (let* ((___match7936179362_
                  (lambda (_e7734677376_
                           _hd7734577380_
                           _tl7734477383_
                           ___splice7931979320_
                           _target7734777386_
                           _tl7734977389_)
                    (letrec ((_loop7735077392_
                              (lambda (_hd7734877396_
                                       _dispatch7735477399_
                                       _arity7735577401_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7734877396_))
                                    (let ((_e7735177404_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7734877396_))))
                                      (let ((_lp-tl7735377411_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7735177404_)))
                                            (_lp-hd7735277408_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7735177404_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _lp-hd7735277408_))
                                            (let ((_e7736077414_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd7735277408_))))
                                              (let ((_tl7735877421_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7736077414_)))
                                                    (_hd7735977418_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7736077414_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7735877421_))
                                                    (let ((_e7736377424_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7735877421_))))
                                                      (let ((_tl7736177431_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7736377424_)))
                    (_hd7736277428_
                     (let () (declare (not safe)) (##car _e7736377424_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl7736177431_))
                    (_loop7735077392_
                     _lp-tl7735377411_
                     (let ()
                       (declare (not safe))
                       (cons _hd7736277428_ _dispatch7735477399_))
                     (let ()
                       (declare (not safe))
                       (cons _hd7735977418_ _arity7735577401_)))
                    (let () (declare (not safe)) (_g7731477369_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7731477369_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g7731477369_)))))
                                    (let ((_arity7735777437_
                                           (reverse _arity7735577401_))
                                          (_dispatch7735677434_
                                           (reverse _dispatch7735477399_)))
                                      (___kont7931779318_
                                       _dispatch7735677434_
                                       _arity7735777437_))))))
                      (_loop7735077392_ _target7734777386_ '() '()))))
                 (___match7935379354_
                  (lambda (_e7734677376_ _hd7734577380_ _tl7734477383_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl7734477383_))
                        (let ((___splice7931979320_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice _tl7734477383_ '0))))
                          (let ((_tl7734977389_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice7931979320_ '1)))
                                (_target7734777386_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice7931979320_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl7734977389_))
                                (___match7936179362_
                                 _e7734677376_
                                 _hd7734577380_
                                 _tl7734477383_
                                 ___splice7931979320_
                                 _target7734777386_
                                 _tl7734977389_)
                                (let ()
                                  (declare (not safe))
                                  (_g7731477369_)))))
                        (let () (declare (not safe)) (_g7731477369_)))))
                 (___match7934779348_
                  (lambda (_e7732077476_
                           _hd7731977480_
                           _tl7731877483_
                           _e7732377486_
                           _hd7732277490_
                           _tl7732177493_
                           _e7732477496_
                           ___splice7931579316_
                           _target7732577500_
                           _tl7732777503_)
                    (letrec ((_loop7732877506_
                              (lambda (_hd7732677510_
                                       _dispatch7733277513_
                                       _arity7733377515_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7732677510_))
                                    (let ((_e7732977518_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7732677510_))))
                                      (let ((_lp-tl7733177525_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7732977518_)))
                                            (_lp-hd7733077522_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7732977518_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _lp-hd7733077522_))
                                            (let ((_e7733877528_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd7733077522_))))
                                              (let ((_tl7733677535_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e7733877528_)))
                                                    (_hd7733777532_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e7733877528_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl7733677535_))
                                                    (let ((_e7734177538_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl7733677535_))))
                                                      (let ((_tl7733977545_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7734177538_)))
                    (_hd7734077542_
                     (let () (declare (not safe)) (##car _e7734177538_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl7733977545_))
                    (_loop7732877506_
                     _lp-tl7733177525_
                     (let ()
                       (declare (not safe))
                       (cons _hd7734077542_ _dispatch7733277513_))
                     (let ()
                       (declare (not safe))
                       (cons _hd7733777532_ _arity7733377515_)))
                    (___match7935379354_
                     _e7732077476_
                     _hd7731977480_
                     _tl7731877483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match7935379354_
                                                     _e7732077476_
                                                     _hd7731977480_
                                                     _tl7731877483_))))
                                            (___match7935379354_
                                             _e7732077476_
                                             _hd7731977480_
                                             _tl7731877483_))))
                                    (let ((_arity7733577551_
                                           (reverse _arity7733377515_))
                                          (_dispatch7733477548_
                                           (reverse _dispatch7733277513_)))
                                      (___kont7931379314_
                                       _dispatch7733477548_
                                       _arity7733577551_))))))
                      (_loop7732877506_ _target7732577500_ '() '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7931079311_))
                (let ((_e7732077476_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7931079311_))))
                  (let ((_tl7731877483_
                         (let () (declare (not safe)) (##cdr _e7732077476_)))
                        (_hd7731977480_
                         (let () (declare (not safe)) (##car _e7732077476_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7731877483_))
                        (let ((_e7732377486_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7731877483_))))
                          (let ((_tl7732177493_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7732377486_)))
                                (_hd7732277490_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7732377486_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd7732277490_))
                                (let ((_e7732477496_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd7732277490_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e7732477496_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl7732177493_))
                                          (let ((___splice7931579316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl7732177493_
                                                    '0))))
                                            (let ((_tl7732777503_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7931579316_
                                                      '1)))
                                                  (_target7732577500_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7931579316_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7732777503_))
                                                  (___match7934779348_
                                                   _e7732077476_
                                                   _hd7731977480_
                                                   _tl7731877483_
                                                   _e7732377486_
                                                   _hd7732277490_
                                                   _tl7732177493_
                                                   _e7732477496_
                                                   ___splice7931579316_
                                                   _target7732577500_
                                                   _tl7732777503_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7731877483_))
                                                      (let ((___splice7931979320_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7731877483_ '0))))
                (let ((_tl7734977389_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7931979320_ '1)))
                      (_target7734777386_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7931979320_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7734977389_))
                      (___match7936179362_
                       _e7732077476_
                       _hd7731977480_
                       _tl7731877483_
                       ___splice7931979320_
                       _target7734777386_
                       _tl7734977389_)
                      (let () (declare (not safe)) (_g7731477369_)))))
              (let () (declare (not safe)) (_g7731477369_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl7731877483_))
                                              (let ((___splice7931979320_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl7731877483_
                                                        '0))))
                                                (let ((_tl7734977389_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice7931979320_
                                                          '1)))
                                                      (_target7734777386_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice7931979320_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl7734977389_))
                                                      (___match7936179362_
                                                       _e7732077476_
                                                       _hd7731977480_
                                                       _tl7731877483_
                                                       ___splice7931979320_
                                                       _target7734777386_
                                                       _tl7734977389_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g7731477369_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g7731477369_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl7731877483_))
                                          (let ((___splice7931979320_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl7731877483_
                                                    '0))))
                                            (let ((_tl7734977389_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7931979320_
                                                      '1)))
                                                  (_target7734777386_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice7931979320_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7734977389_))
                                                  (___match7936179362_
                                                   _e7732077476_
                                                   _hd7731977480_
                                                   _tl7731877483_
                                                   ___splice7931979320_
                                                   _target7734777386_
                                                   _tl7734977389_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g7731477369_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g7731477369_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7731877483_))
                                    (let ((___splice7931979320_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7731877483_
                                              '0))))
                                      (let ((_tl7734977389_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7931979320_
                                                '1)))
                                            (_target7734777386_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7931979320_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7734977389_))
                                            (___match7936179362_
                                             _e7732077476_
                                             _hd7731977480_
                                             _tl7731877483_
                                             ___splice7931979320_
                                             _target7734777386_
                                             _tl7734977389_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7731477369_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7731477369_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7731877483_))
                            (let ((___splice7931979320_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7731877483_
                                      '0))))
                              (let ((_tl7734977389_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice7931979320_ '1)))
                                    (_target7734777386_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice7931979320_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl7734977389_))
                                    (___match7936179362_
                                     _e7732077476_
                                     _hd7731977480_
                                     _tl7731877483_
                                     ___splice7931979320_
                                     _target7734777386_
                                     _tl7734977389_)
                                    (let ()
                                      (declare (not safe))
                                      (_g7731477369_)))))
                            (let () (declare (not safe)) (_g7731477369_))))))
                (let () (declare (not safe)) (_g7731477369_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx77591_)
      (let* ((_g7759577613_
              (lambda (_g7759677609_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7759677609_))))
             (_g7759477668_
              (lambda (_g7759677617_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7759677617_))
                    (let ((_e7760177620_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7759677617_))))
                      (let ((_hd7760077624_
                             (let ()
                               (declare (not safe))
                               (##car _e7760177620_)))
                            (_tl7759977627_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7760177620_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7759977627_))
                            (let ((_e7760477630_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7759977627_))))
                              (let ((_hd7760377634_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7760477630_)))
                                    (_tl7760277637_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7760477630_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7760277637_))
                                    (let ((_e7760777640_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7760277637_))))
                                      (let ((_hd7760677644_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7760777640_)))
                                            (_tl7760577647_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7760777640_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7760577647_))
                                            ((lambda (_L77650_ _L77652_)
                                               (let ((__tmp79921
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp79908
                                                      (let ((__tmp79917
                                                             (let ((__tmp79920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp79918
                            (let ((__tmp79919
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp79919 '()))))
                       (declare (not safe))
                       (cons __tmp79920 __tmp79918)))
                    (__tmp79909
                     (let ((__tmp79914
                            (let ((__tmp79916
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp79915
                                   (let ()
                                     (declare (not safe))
                                     (cons _L77652_ '()))))
                              (declare (not safe))
                              (cons __tmp79916 __tmp79915)))
                           (__tmp79910
                            (let ((__tmp79911
                                   (let ((__tmp79913
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp79912
                                          (let ()
                                            (declare (not safe))
                                            (cons _L77650_ '()))))
                                     (declare (not safe))
                                     (cons __tmp79913 __tmp79912))))
                              (declare (not safe))
                              (cons __tmp79911 '()))))
                       (declare (not safe))
                       (cons __tmp79914 __tmp79910))))
                (declare (not safe))
                (cons __tmp79917 __tmp79909))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp79921 __tmp79908)))
                                             _hd7760677644_
                                             _hd7760377634_)
                                            (_g7759577613_ _g7759677617_))))
                                    (_g7759577613_ _g7759677617_))))
                            (_g7759577613_ _g7759677617_))))
                    (_g7759577613_ _g7759677617_)))))
        (_g7759477668_ _$stx77591_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx77672_)
      (let* ((_g7767677694_
              (lambda (_g7767777690_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7767777690_))))
             (_g7767577749_
              (lambda (_g7767777698_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7767777698_))
                    (let ((_e7768277701_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7767777698_))))
                      (let ((_hd7768177705_
                             (let ()
                               (declare (not safe))
                               (##car _e7768277701_)))
                            (_tl7768077708_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7768277701_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl7768077708_))
                            (let ((_e7768577711_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl7768077708_))))
                              (let ((_hd7768477715_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e7768577711_)))
                                    (_tl7768377718_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e7768577711_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl7768377718_))
                                    (let ((_e7768877721_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl7768377718_))))
                                      (let ((_hd7768777725_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7768877721_)))
                                            (_tl7768677728_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7768877721_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7768677728_))
                                            ((lambda (_L77731_ _L77733_)
                                               (let ((__tmp79935
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp79922
                                                      (let ((__tmp79931
                                                             (let ((__tmp79934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp79932
                            (let ((__tmp79933
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp79933 '()))))
                       (declare (not safe))
                       (cons __tmp79934 __tmp79932)))
                    (__tmp79923
                     (let ((__tmp79928
                            (let ((__tmp79930
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp79929
                                   (let ()
                                     (declare (not safe))
                                     (cons _L77733_ '()))))
                              (declare (not safe))
                              (cons __tmp79930 __tmp79929)))
                           (__tmp79924
                            (let ((__tmp79925
                                   (let ((__tmp79927
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp79926
                                          (let ()
                                            (declare (not safe))
                                            (cons _L77731_ '()))))
                                     (declare (not safe))
                                     (cons __tmp79927 __tmp79926))))
                              (declare (not safe))
                              (cons __tmp79925 '()))))
                       (declare (not safe))
                       (cons __tmp79928 __tmp79924))))
                (declare (not safe))
                (cons __tmp79931 __tmp79923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp79935 __tmp79922)))
                                             _hd7768777725_
                                             _hd7768477715_)
                                            (_g7767677694_ _g7767777698_))))
                                    (_g7767677694_ _g7767777698_))))
                            (_g7767677694_ _g7767777698_))))
                    (_g7767677694_ _g7767777698_)))))
        (_g7767577749_ _$stx77672_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx77753_)
      (let* ((___stx7936479365_ _$stx77753_)
             (_g7776077831_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7936479365_)))))
        (let ((___kont7936779368_
               (lambda (_L78122_ _L78124_)
                 (let ((__tmp79941
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp79936
                        (let ((__tmp79937
                               (let ((__tmp79938
                                      (let ((__tmp79940
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp79939
                                             (let ()
                                               (declare (not safe))
                                               (cons _L78122_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79940 __tmp79939))))
                                 (declare (not safe))
                                 (cons __tmp79938 '()))))
                          (declare (not safe))
                          (cons _L78124_ __tmp79937))))
                   (declare (not safe))
                   (cons __tmp79941 __tmp79936))))
              (___kont7936979370_
               (lambda (_L78041_ _L78043_)
                 (let ((__tmp79950
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp79942
                        (let ((__tmp79943
                               (let ((__tmp79944
                                      (let ((__tmp79949
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp79945
                                             (let ((__tmp79946
                                                    (lambda (_g7806278065_
                                                             _g7806378068_)
                                                      (let ((__tmp79947
                                                             (let ((__tmp79948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g7806278065_ __tmp79948))))
                (declare (not safe))
                (cons __tmp79947 _g7806378068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp79946
                                                       '()
                                                       _L78041_))))
                                        (declare (not safe))
                                        (cons __tmp79949 __tmp79945))))
                                 (declare (not safe))
                                 (cons __tmp79944 '()))))
                          (declare (not safe))
                          (cons _L78043_ __tmp79943))))
                   (declare (not safe))
                   (cons __tmp79950 __tmp79942))))
              (___kont7937379374_
               (lambda (_L77953_ _L77955_)
                 (let ((__tmp79957
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp79951
                        (let ((__tmp79952
                               (let ((__tmp79953
                                      (let ((__tmp79956
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp79954
                                             (let ((__tmp79955
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L77953_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive: __tmp79955))))
                                        (declare (not safe))
                                        (cons __tmp79956 __tmp79954))))
                                 (declare (not safe))
                                 (cons __tmp79953 '()))))
                          (declare (not safe))
                          (cons _L77955_ __tmp79952))))
                   (declare (not safe))
                   (cons __tmp79957 __tmp79951))))
              (___kont7937579376_
               (lambda (_L77888_ _L77890_)
                 (let ((__tmp79967
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp79958
                        (let ((__tmp79959
                               (let ((__tmp79960
                                      (let ((__tmp79966
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp79961
                                             (let ((__tmp79962
                                                    (let ((__tmp79963
                                                           (lambda (_g7790777910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g7790877913_)
                     (let ((__tmp79964
                            (let ((__tmp79965
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g7790777910_ __tmp79965))))
                       (declare (not safe))
                       (cons __tmp79964 _g7790877913_)))))
              (declare (not safe))
              (foldr1 __tmp79963 '() _L77888_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive: __tmp79962))))
                                        (declare (not safe))
                                        (cons __tmp79966 __tmp79961))))
                                 (declare (not safe))
                                 (cons __tmp79960 '()))))
                          (declare (not safe))
                          (cons _L77890_ __tmp79959))))
                   (declare (not safe))
                   (cons __tmp79967 __tmp79958)))))
          (let* ((___match7948379484_
                  (lambda (_e7781377838_
                           _hd7781277842_
                           _tl7781177845_
                           _e7781677848_
                           _hd7781577852_
                           _tl7781477855_
                           ___splice7937779378_
                           _target7781777858_
                           _tl7781977861_)
                    (letrec ((_loop7782077864_
                              (lambda (_hd7781877868_ _arity7782477871_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7781877868_))
                                    (let ((_e7782177874_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7781877868_))))
                                      (let ((_lp-tl7782377881_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7782177874_)))
                                            (_lp-hd7782277878_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7782177874_))))
                                        (_loop7782077864_
                                         _lp-tl7782377881_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd7782277878_
                                                 _arity7782477871_)))))
                                    (let ((_arity7782577884_
                                           (reverse _arity7782477871_)))
                                      (___kont7937579376_
                                       _arity7782577884_
                                       _hd7781577852_))))))
                      (_loop7782077864_ _target7781777858_ '()))))
                 (___match7944379444_
                  (lambda (_e7778177977_
                           _hd7778077981_
                           _tl7777977984_
                           _e7778477987_
                           _hd7778377991_
                           _tl7778277994_
                           _e7778777997_
                           _hd7778678001_
                           _tl7778578004_
                           _e7778878007_
                           ___splice7937179372_
                           _target7778978011_
                           _tl7779178014_)
                    (letrec ((_loop7779278017_
                              (lambda (_hd7779078021_ _arity7779678024_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd7779078021_))
                                    (let ((_e7779378027_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd7779078021_))))
                                      (let ((_lp-tl7779578034_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e7779378027_)))
                                            (_lp-hd7779478031_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e7779378027_))))
                                        (_loop7779278017_
                                         _lp-tl7779578034_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd7779478031_
                                                 _arity7779678024_)))))
                                    (let ((_arity7779778037_
                                           (reverse _arity7779678024_)))
                                      (___kont7936979370_
                                       _arity7779778037_
                                       _hd7778377991_))))))
                      (_loop7779278017_ _target7778978011_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7936479365_))
                (let ((_e7776678078_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7936479365_))))
                  (let ((_tl7776478085_
                         (let () (declare (not safe)) (##cdr _e7776678078_)))
                        (_hd7776578082_
                         (let () (declare (not safe)) (##car _e7776678078_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7776478085_))
                        (let ((_e7776978088_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7776478085_))))
                          (let ((_tl7776778095_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7776978088_)))
                                (_hd7776878092_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7776978088_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7776778095_))
                                (let ((_e7777278098_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7776778095_))))
                                  (let ((_tl7777078105_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7777278098_)))
                                        (_hd7777178102_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7777278098_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd7777178102_))
                                        (let ((_e7777378108_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd7777178102_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e7777378108_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl7777078105_))
                                                  (let ((_e7777678112_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl7777078105_))))
                                                    (let ((_tl7777478119_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e7777678112_)))
                                                          (_hd7777578116_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e7777678112_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl7777478119_))
                                                          (___kont7936779368_
                                                           _hd7777578116_
                                                           _hd7776878092_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl7777078105_))
                      (let ((___splice7937179372_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl7777078105_ '0))))
                        (let ((_tl7779178014_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7937179372_ '1)))
                              (_target7778978011_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7937179372_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7779178014_))
                              (___match7944379444_
                               _e7776678078_
                               _hd7776578082_
                               _tl7776478085_
                               _e7776978088_
                               _hd7776878092_
                               _tl7776778095_
                               _e7777278098_
                               _hd7777178102_
                               _tl7777078105_
                               _e7777378108_
                               ___splice7937179372_
                               _target7778978011_
                               _tl7779178014_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl7776778095_))
                                  (let ((___splice7937779378_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl7776778095_
                                            '0))))
                                    (let ((_tl7781977861_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice7937779378_
                                              '1)))
                                          (_target7781777858_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice7937779378_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl7781977861_))
                                          (___match7948379484_
                                           _e7776678078_
                                           _hd7776578082_
                                           _tl7776478085_
                                           _e7776978088_
                                           _hd7776878092_
                                           _tl7776778095_
                                           ___splice7937779378_
                                           _target7781777858_
                                           _tl7781977861_)
                                          (let ()
                                            (declare (not safe))
                                            (_g7776077831_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g7776077831_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl7776778095_))
                          (let ((___splice7937779378_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl7776778095_
                                    '0))))
                            (let ((_tl7781977861_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice7937779378_ '1)))
                                  (_target7781777858_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice7937779378_ '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl7781977861_))
                                  (___match7948379484_
                                   _e7776678078_
                                   _hd7776578082_
                                   _tl7776478085_
                                   _e7776978088_
                                   _hd7776878092_
                                   _tl7776778095_
                                   ___splice7937779378_
                                   _target7781777858_
                                   _tl7781977861_)
                                  (let ()
                                    (declare (not safe))
                                    (_g7776077831_)))))
                          (let () (declare (not safe)) (_g7776077831_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7777078105_))
                                                      (let ((___splice7937179372_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7777078105_ '0))))
                (let ((_tl7779178014_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7937179372_ '1)))
                      (_target7778978011_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7937179372_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7779178014_))
                      (___match7944379444_
                       _e7776678078_
                       _hd7776578082_
                       _tl7776478085_
                       _e7776978088_
                       _hd7776878092_
                       _tl7776778095_
                       _e7777278098_
                       _hd7777178102_
                       _tl7777078105_
                       _e7777378108_
                       ___splice7937179372_
                       _target7778978011_
                       _tl7779178014_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl7777078105_))
                          (___kont7937379374_ _hd7777178102_ _hd7776878092_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7776778095_))
                              (let ((___splice7937779378_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7776778095_
                                        '0))))
                                (let ((_tl7781977861_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice7937779378_
                                          '1)))
                                      (_target7781777858_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice7937779378_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7781977861_))
                                      (___match7948379484_
                                       _e7776678078_
                                       _hd7776578082_
                                       _tl7776478085_
                                       _e7776978088_
                                       _hd7776878092_
                                       _tl7776778095_
                                       ___splice7937779378_
                                       _target7781777858_
                                       _tl7781977861_)
                                      (let ()
                                        (declare (not safe))
                                        (_g7776077831_)))))
                              (let ()
                                (declare (not safe))
                                (_g7776077831_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl7777078105_))
                  (___kont7937379374_ _hd7777178102_ _hd7776878092_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl7776778095_))
                      (let ((___splice7937779378_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl7776778095_ '0))))
                        (let ((_tl7781977861_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7937779378_ '1)))
                              (_target7781777858_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice7937779378_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl7781977861_))
                              (___match7948379484_
                               _e7776678078_
                               _hd7776578082_
                               _tl7776478085_
                               _e7776978088_
                               _hd7776878092_
                               _tl7776778095_
                               ___splice7937779378_
                               _target7781777858_
                               _tl7781977861_)
                              (let () (declare (not safe)) (_g7776077831_)))))
                      (let () (declare (not safe)) (_g7776077831_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl7777078105_))
                                                  (___kont7937379374_
                                                   _hd7777178102_
                                                   _hd7776878092_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl7776778095_))
                                                      (let ((___splice7937779378_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl7776778095_ '0))))
                (let ((_tl7781977861_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7937779378_ '1)))
                      (_target7781777858_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice7937779378_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl7781977861_))
                      (___match7948379484_
                       _e7776678078_
                       _hd7776578082_
                       _tl7776478085_
                       _e7776978088_
                       _hd7776878092_
                       _tl7776778095_
                       ___splice7937779378_
                       _target7781777858_
                       _tl7781977861_)
                      (let () (declare (not safe)) (_g7776077831_)))))
              (let () (declare (not safe)) (_g7776077831_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7777078105_))
                                            (___kont7937379374_
                                             _hd7777178102_
                                             _hd7776878092_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl7776778095_))
                                                (let ((___splice7937779378_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl7776778095_
                                                          '0))))
                                                  (let ((_tl7781977861_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice7937779378_
                                                            '1)))
                                                        (_target7781777858_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice7937779378_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl7781977861_))
                                                        (___match7948379484_
                                                         _e7776678078_
                                                         _hd7776578082_
                                                         _tl7776478085_
                                                         _e7776978088_
                                                         _hd7776878092_
                                                         _tl7776778095_
                                                         ___splice7937779378_
                                                         _target7781777858_
                                                         _tl7781977861_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g7776077831_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g7776077831_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7776778095_))
                                    (let ((___splice7937779378_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7776778095_
                                              '0))))
                                      (let ((_tl7781977861_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7937779378_
                                                '1)))
                                            (_target7781777858_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7937779378_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7781977861_))
                                            (___match7948379484_
                                             _e7776678078_
                                             _hd7776578082_
                                             _tl7776478085_
                                             _e7776978088_
                                             _hd7776878092_
                                             _tl7776778095_
                                             ___splice7937779378_
                                             _target7781777858_
                                             _tl7781977861_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7776077831_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7776077831_))))))
                        (let () (declare (not safe)) (_g7776077831_)))))
                (let () (declare (not safe)) (_g7776077831_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx78148_)
      (let* ((___stx7948679487_ _$stx78148_)
             (_g7815378188_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx7948679487_)))))
        (let ((___kont7948979490_
               (lambda (_L78310_ _L78312_)
                 (let ((__tmp79973
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp79968
                        (let ((__tmp79969
                               (let ((__tmp79970
                                      (let ((__tmp79972
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp79971
                                             (let ()
                                               (declare (not safe))
                                               (cons _L78310_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79972 __tmp79971))))
                                 (declare (not safe))
                                 (cons __tmp79970 '()))))
                          (declare (not safe))
                          (cons _L78312_ __tmp79969))))
                   (declare (not safe))
                   (cons __tmp79973 __tmp79968))))
              (___kont7949179492_
               (lambda (_L78245_ _L78247_)
                 (let ((__tmp79982
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp79974
                        (let ((__tmp79975
                               (let ((__tmp79976
                                      (let ((__tmp79981
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp79977
                                             (let ((__tmp79978
                                                    (lambda (_g7826478267_
                                                             _g7826578270_)
                                                      (let ((__tmp79979
                                                             (let ((__tmp79980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g7826478267_ __tmp79980))))
                (declare (not safe))
                (cons __tmp79979 _g7826578270_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp79978
                                                       '()
                                                       _L78245_))))
                                        (declare (not safe))
                                        (cons __tmp79981 __tmp79977))))
                                 (declare (not safe))
                                 (cons __tmp79976 '()))))
                          (declare (not safe))
                          (cons _L78247_ __tmp79975))))
                   (declare (not safe))
                   (cons __tmp79982 __tmp79974)))))
          (let ((___match7953579536_
                 (lambda (_e7817078195_
                          _hd7816978199_
                          _tl7816878202_
                          _e7817378205_
                          _hd7817278209_
                          _tl7817178212_
                          ___splice7949379494_
                          _target7817478215_
                          _tl7817678218_)
                   (letrec ((_loop7817778221_
                             (lambda (_hd7817578225_ _arity7818178228_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd7817578225_))
                                   (let ((_e7817878231_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd7817578225_))))
                                     (let ((_lp-tl7818078238_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e7817878231_)))
                                           (_lp-hd7817978235_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e7817878231_))))
                                       (_loop7817778221_
                                        _lp-tl7818078238_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd7817978235_
                                                _arity7818178228_)))))
                                   (let ((_arity7818278241_
                                          (reverse _arity7818178228_)))
                                     (___kont7949179492_
                                      _arity7818278241_
                                      _hd7817278209_))))))
                     (_loop7817778221_ _target7817478215_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx7948679487_))
                (let ((_e7815978280_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx7948679487_))))
                  (let ((_tl7815778287_
                         (let () (declare (not safe)) (##cdr _e7815978280_)))
                        (_hd7815878284_
                         (let () (declare (not safe)) (##car _e7815978280_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl7815778287_))
                        (let ((_e7816278290_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl7815778287_))))
                          (let ((_tl7816078297_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7816278290_)))
                                (_hd7816178294_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7816278290_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl7816078297_))
                                (let ((_e7816578300_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl7816078297_))))
                                  (let ((_tl7816378307_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7816578300_)))
                                        (_hd7816478304_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7816578300_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7816378307_))
                                        (___kont7948979490_
                                         _hd7816478304_
                                         _hd7816178294_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl7816078297_))
                                            (let ((___splice7949379494_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl7816078297_
                                                      '0))))
                                              (let ((_tl7817678218_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice7949379494_
                                                        '1)))
                                                    (_target7817478215_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice7949379494_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl7817678218_))
                                                    (___match7953579536_
                                                     _e7815978280_
                                                     _hd7815878284_
                                                     _tl7815778287_
                                                     _e7816278290_
                                                     _hd7816178294_
                                                     _tl7816078297_
                                                     ___splice7949379494_
                                                     _target7817478215_
                                                     _tl7817678218_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g7815378188_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g7815378188_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl7816078297_))
                                    (let ((___splice7949379494_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl7816078297_
                                              '0))))
                                      (let ((_tl7817678218_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7949379494_
                                                '1)))
                                            (_target7817478215_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice7949379494_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl7817678218_))
                                            (___match7953579536_
                                             _e7815978280_
                                             _hd7815878284_
                                             _tl7815778287_
                                             _e7816278290_
                                             _hd7816178294_
                                             _tl7816078297_
                                             ___splice7949379494_
                                             _target7817478215_
                                             _tl7817678218_)
                                            (let ()
                                              (declare (not safe))
                                              (_g7815378188_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g7815378188_))))))
                        (let () (declare (not safe)) (_g7815378188_)))))
                (let () (declare (not safe)) (_g7815378188_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx78332_)
      (let* ((_g7833678371_
              (lambda (_g7833778367_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7833778367_))))
             (_g7833578499_
              (lambda (_g7833778375_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7833778375_))
                    (let ((_e7834278378_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7833778375_))))
                      (let ((_hd7834178382_
                             (let ()
                               (declare (not safe))
                               (##car _e7834278378_)))
                            (_tl7834078385_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7834278378_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7834078385_))
                            (let ((_g79983_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7834078385_
                                      '0))))
                              (begin
                                (let ((_g79984_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g79983_)
                                             (##vector-length _g79983_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g79984_ 2)))
                                      (error "Context expects 2 values"
                                             _g79984_)))
                                (let ((_target7834378388_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79983_ 0)))
                                      (_tl7834578391_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79983_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7834578391_))
                                      (letrec ((_loop7834678394_
                                                (lambda (_hd7834478398_
                                                         _arity7835078401_
                                                         _prim7835178403_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7834478398_))
                                                      (let ((_e7834778406_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7834478398_))))
                (let ((_lp-hd7834878410_
                       (let () (declare (not safe)) (##car _e7834778406_)))
                      (_lp-tl7834978413_
                       (let () (declare (not safe)) (##cdr _e7834778406_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7834878410_))
                      (let ((_e7835678416_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7834878410_))))
                        (let ((_hd7835578420_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7835678416_)))
                              (_tl7835478423_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7835678416_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7835478423_))
                              (let ((_g79993_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7835478423_
                                        '0))))
                                (begin
                                  (let ((_g79994_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g79993_)
                                               (##vector-length _g79993_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g79994_ 2)))
                                        (error "Context expects 2 values"
                                               _g79994_)))
                                  (let ((_target7835778426_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g79993_ 0)))
                                        (_tl7835978429_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g79993_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7835978429_))
                                        (letrec ((_loop7836078432_
                                                  (lambda (_hd7835878436_
                                                           _arity7836478439_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd7835878436_))
                                                        (let ((_e7836178442_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd7835878436_))))
                  (let ((_lp-hd7836278446_
                         (let () (declare (not safe)) (##car _e7836178442_)))
                        (_lp-tl7836378449_
                         (let () (declare (not safe)) (##cdr _e7836178442_))))
                    (_loop7836078432_
                     _lp-tl7836378449_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd7836278446_ _arity7836478439_)))))
                (let ((_arity7836578452_ (reverse _arity7836478439_)))
                  (_loop7834678394_
                   _lp-tl7834978413_
                   (let ()
                     (declare (not safe))
                     (cons _arity7836578452_ _arity7835078401_))
                   (let ()
                     (declare (not safe))
                     (cons _hd7835578420_ _prim7835178403_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop7836078432_
                                           _target7835778426_
                                           '()))
                                        (_g7833678371_ _g7833778375_)))))
                              (_g7833678371_ _g7833778375_))))
                      (_g7833678371_ _g7833778375_))))
              (let ((_arity7835278456_ (reverse _arity7835078401_))
                    (_prim7835378459_ (reverse _prim7835178403_)))
                ((lambda (_L78462_ _L78464_)
                   (let ((__tmp79992
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp79985
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L78462_
                               _L78464_))
                            (let ((__tmp79986
                                   (lambda (_g7847978485_
                                            _g7848078488_
                                            _g7848178490_)
                                     (let ((__tmp79987
                                            (let ((__tmp79991
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp79988
                                                   (let ((__tmp79989
                                                          (let ((__tmp79990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g7848278493_ _g7848378496_)
                           (let ()
                             (declare (not safe))
                             (cons _g7848278493_ _g7848378496_)))))
                    (declare (not safe))
                    (foldr1 __tmp79990 '() _g7847978485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7848078488_
                                                           __tmp79989))))
                                              (declare (not safe))
                                              (cons __tmp79991 __tmp79988))))
                                       (declare (not safe))
                                       (cons __tmp79987 _g7848178490_)))))
                              (declare (not safe))
                              (foldr2 __tmp79986 '() _L78462_ _L78464_)))))
                     (declare (not safe))
                     (cons __tmp79992 __tmp79985)))
                 _arity7835278456_
                 _prim7835378459_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7834678394_
                                         _target7834378388_
                                         '()
                                         '()))
                                      (_g7833678371_ _g7833778375_)))))
                            (_g7833678371_ _g7833778375_))))
                    (_g7833678371_ _g7833778375_)))))
        (_g7833578499_ _$stx78332_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx78505_)
      (let* ((_g7850978544_
              (lambda (_g7851078540_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error '#f '"Bad syntax" _g7851078540_))))
             (_g7850878672_
              (lambda (_g7851078548_)
                (if (let () (declare (not safe)) (gx#stx-pair? _g7851078548_))
                    (let ((_e7851578551_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g7851078548_))))
                      (let ((_hd7851478555_
                             (let ()
                               (declare (not safe))
                               (##car _e7851578551_)))
                            (_tl7851378558_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7851578551_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl7851378558_))
                            (let ((_g79995_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl7851378558_
                                      '0))))
                              (begin
                                (let ((_g79996_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g79995_)
                                             (##vector-length _g79995_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g79996_ 2)))
                                      (error "Context expects 2 values"
                                             _g79996_)))
                                (let ((_target7851678561_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79995_ 0)))
                                      (_tl7851878564_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g79995_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl7851878564_))
                                      (letrec ((_loop7851978567_
                                                (lambda (_hd7851778571_
                                                         _arity7852378574_
                                                         _prim7852478576_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd7851778571_))
                                                      (let ((_e7852078579_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd7851778571_))))
                (let ((_lp-hd7852178583_
                       (let () (declare (not safe)) (##car _e7852078579_)))
                      (_lp-tl7852278586_
                       (let () (declare (not safe)) (##cdr _e7852078579_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd7852178583_))
                      (let ((_e7852978589_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd7852178583_))))
                        (let ((_hd7852878593_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7852978589_)))
                              (_tl7852778596_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7852978589_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl7852778596_))
                              (let ((_g80005_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl7852778596_
                                        '0))))
                                (begin
                                  (let ((_g80006_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g80005_)
                                               (##vector-length _g80005_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g80006_ 2)))
                                        (error "Context expects 2 values"
                                               _g80006_)))
                                  (let ((_target7853078599_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g80005_ 0)))
                                        (_tl7853278602_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g80005_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl7853278602_))
                                        (letrec ((_loop7853378605_
                                                  (lambda (_hd7853178609_
                                                           _arity7853778612_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd7853178609_))
                                                        (let ((_e7853478615_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd7853178609_))))
                  (let ((_lp-hd7853578619_
                         (let () (declare (not safe)) (##car _e7853478615_)))
                        (_lp-tl7853678622_
                         (let () (declare (not safe)) (##cdr _e7853478615_))))
                    (_loop7853378605_
                     _lp-tl7853678622_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd7853578619_ _arity7853778612_)))))
                (let ((_arity7853878625_ (reverse _arity7853778612_)))
                  (_loop7851978567_
                   _lp-tl7852278586_
                   (let ()
                     (declare (not safe))
                     (cons _arity7853878625_ _arity7852378574_))
                   (let ()
                     (declare (not safe))
                     (cons _hd7852878593_ _prim7852478576_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop7853378605_
                                           _target7853078599_
                                           '()))
                                        (_g7850978544_ _g7851078548_)))))
                              (_g7850978544_ _g7851078548_))))
                      (_g7850978544_ _g7851078548_))))
              (let ((_arity7852578629_ (reverse _arity7852378574_))
                    (_prim7852678632_ (reverse _prim7852478576_)))
                ((lambda (_L78635_ _L78637_)
                   (let ((__tmp80004
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp79997
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L78635_
                               _L78637_))
                            (let ((__tmp79998
                                   (lambda (_g7865278658_
                                            _g7865378661_
                                            _g7865478663_)
                                     (let ((__tmp79999
                                            (let ((__tmp80003
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp80000
                                                   (let ((__tmp80001
                                                          (let ((__tmp80002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g7865578666_ _g7865678669_)
                           (let ()
                             (declare (not safe))
                             (cons _g7865578666_ _g7865678669_)))))
                    (declare (not safe))
                    (foldr1 __tmp80002 '() _g7865278658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g7865378661_
                                                           __tmp80001))))
                                              (declare (not safe))
                                              (cons __tmp80003 __tmp80000))))
                                       (declare (not safe))
                                       (cons __tmp79999 _g7865478663_)))))
                              (declare (not safe))
                              (foldr2 __tmp79998 '() _L78635_ _L78637_)))))
                     (declare (not safe))
                     (cons __tmp80004 __tmp79997)))
                 _arity7852578629_
                 _prim7852678632_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop7851978567_
                                         _target7851678561_
                                         '()
                                         '()))
                                      (_g7850978544_ _g7851078548_)))))
                            (_g7850978544_ _g7851078548_))))
                    (_g7850978544_ _g7851078548_)))))
        (_g7850878672_ _$stx78505_)))))
