(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx298116_)
      (let* ((_g298120298138_
              (lambda (_g298121298134_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298121298134_))))
             (_g298119298193_
              (lambda (_g298121298142_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298121298142_))
                    (let ((_e298126298145_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298121298142_))))
                      (let ((_hd298125298149_
                             (let ()
                               (declare (not safe))
                               (##car _e298126298145_)))
                            (_tl298124298152_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298126298145_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298124298152_))
                            (let ((_e298129298155_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298124298152_))))
                              (let ((_hd298128298159_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298129298155_)))
                                    (_tl298127298162_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298129298155_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298127298162_))
                                    (let ((_e298132298165_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298127298162_))))
                                      (let ((_hd298131298169_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298132298165_)))
                                            (_tl298130298172_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298132298165_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298130298172_))
                                            ((lambda (_L298175_ _L298177_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L298177_))
                                                   (let ((__tmp306225
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp306220
                                                          (let ((__tmp306222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp306224
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp306223
                                (let ()
                                  (declare (not safe))
                                  (cons _L298177_ '()))))
                           (declare (not safe))
                           (cons __tmp306224 __tmp306223)))
                        (__tmp306221
                         (let () (declare (not safe)) (cons _L298175_ '()))))
                    (declare (not safe))
                    (cons __tmp306222 __tmp306221))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp306225
                                                           __tmp306220))
                                                   (_g298120298138_
                                                    _g298121298142_)))
                                             _hd298131298169_
                                             _hd298128298159_)
                                            (_g298120298138_
                                             _g298121298142_))))
                                    (_g298120298138_ _g298121298142_))))
                            (_g298120298138_ _g298121298142_))))
                    (_g298120298138_ _g298121298142_)))))
        (_g298119298193_ _$stx298116_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx298197_)
      (let* ((_g298201298230_
              (lambda (_g298202298226_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298202298226_))))
             (_g298200298330_
              (lambda (_g298202298234_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298202298234_))
                    (let ((_e298207298237_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298202298234_))))
                      (let ((_hd298206298241_
                             (let ()
                               (declare (not safe))
                               (##car _e298207298237_)))
                            (_tl298205298244_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298207298237_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl298205298244_))
                            (let ((_g306226_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl298205298244_
                                      '0))))
                              (begin
                                (let ((_g306227_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306226_)
                                             (##vector-length _g306226_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306227_ 2)))
                                      (error "Context expects 2 values"
                                             _g306227_)))
                                (let ((_target298208298247_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306226_ 0)))
                                      (_tl298210298250_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306226_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298210298250_))
                                      (letrec ((_loop298211298253_
                                                (lambda (_hd298209298257_
                                                         _type298215298260_
                                                         _symbol298216298262_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd298209298257_))
                                                      (let ((_e298212298265_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd298209298257_))))
                (let ((_lp-hd298213298269_
                       (let () (declare (not safe)) (##car _e298212298265_)))
                      (_lp-tl298214298272_
                       (let () (declare (not safe)) (##cdr _e298212298265_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd298213298269_))
                      (let ((_e298221298275_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd298213298269_))))
                        (let ((_hd298220298279_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298221298275_)))
                              (_tl298219298282_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298221298275_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl298219298282_))
                              (let ((_e298224298285_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl298219298282_))))
                                (let ((_hd298223298289_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298224298285_)))
                                      (_tl298222298292_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298224298285_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298222298292_))
                                      (_loop298211298253_
                                       _lp-tl298214298272_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd298223298289_
                                               _type298215298260_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd298220298279_
                                               _symbol298216298262_)))
                                      (_g298201298230_ _g298202298234_))))
                              (_g298201298230_ _g298202298234_))))
                      (_g298201298230_ _g298202298234_))))
              (let ((_type298217298295_ (reverse _type298215298260_))
                    (_symbol298218298298_ (reverse _symbol298216298262_)))
                ((lambda (_L298301_ _L298303_)
                   (let ((__tmp306234
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306228
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L298301_
                               _L298303_))
                            (let ((__tmp306229
                                   (lambda (_g298318298322_
                                            _g298319298325_
                                            _g298320298327_)
                                     (let ((__tmp306230
                                            (let ((__tmp306233
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp306231
                                                   (let ((__tmp306232
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g298318298322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g298319298325_
                                                           __tmp306232))))
                                              (declare (not safe))
                                              (cons __tmp306233 __tmp306231))))
                                       (declare (not safe))
                                       (cons __tmp306230 _g298320298327_)))))
                              (declare (not safe))
                              (foldr2 __tmp306229 '() _L298301_ _L298303_)))))
                     (declare (not safe))
                     (cons __tmp306234 __tmp306228)))
                 _type298217298295_
                 _symbol298218298298_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop298211298253_
                                         _target298208298247_
                                         '()
                                         '()))
                                      (_g298201298230_ _g298202298234_)))))
                            (_g298201298230_ _g298202298234_))))
                    (_g298201298230_ _g298202298234_)))))
        (_g298200298330_ _$stx298197_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx298335_)
      (let* ((___stx305785305786_ _$stx298335_)
             (_g298340298382_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305785305786_)))))
        (let ((___kont305788305789_
               (lambda (_L298510_ _L298512_ _L298513_ _L298514_)
                 (let ((__tmp306248
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp306235
                        (let ((__tmp306245
                               (let ((__tmp306247
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306246
                                      (let ()
                                        (declare (not safe))
                                        (cons _L298514_ '()))))
                                 (declare (not safe))
                                 (cons __tmp306247 __tmp306246)))
                              (__tmp306236
                               (let ((__tmp306242
                                      (let ((__tmp306244
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306243
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298513_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306244 __tmp306243)))
                                     (__tmp306237
                                      (let ((__tmp306239
                                             (let ((__tmp306241
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306240
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298512_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306241 __tmp306240)))
                                            (__tmp306238
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298510_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306239 __tmp306238))))
                                 (declare (not safe))
                                 (cons __tmp306242 __tmp306237))))
                          (declare (not safe))
                          (cons __tmp306245 __tmp306236))))
                   (declare (not safe))
                   (cons __tmp306248 __tmp306235))))
              (___kont305790305791_
               (lambda (_L298429_ _L298431_ _L298432_ _L298433_)
                 (let ((__tmp306249
                        (let ((__tmp306250
                               (let ((__tmp306251
                                      (let ((__tmp306252
                                             (let ((__tmp306253
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp306253 '()))))
                                        (declare (not safe))
                                        (cons _L298429_ __tmp306252))))
                                 (declare (not safe))
                                 (cons _L298431_ __tmp306251))))
                          (declare (not safe))
                          (cons _L298432_ __tmp306250))))
                   (declare (not safe))
                   (cons _L298433_ __tmp306249)))))
          (let ((___match305824305825_
                 (lambda (_e298348298460_
                          _hd298347298464_
                          _tl298346298467_
                          _e298351298470_
                          _hd298350298474_
                          _tl298349298477_
                          _e298354298480_
                          _hd298353298484_
                          _tl298352298487_
                          _e298357298490_
                          _hd298356298494_
                          _tl298355298497_
                          _e298360298500_
                          _hd298359298504_
                          _tl298358298507_)
                   (let ((_L298510_ _hd298359298504_)
                         (_L298512_ _hd298356298494_)
                         (_L298513_ _hd298353298484_)
                         (_L298514_ _hd298350298474_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L298514_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L298513_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L298512_)))
                         (___kont305788305789_
                          _L298510_
                          _L298512_
                          _L298513_
                          _L298514_)
                         (let () (declare (not safe)) (_g298340298382_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx305785305786_))
                (let ((_e298348298460_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx305785305786_))))
                  (let ((_tl298346298467_
                         (let () (declare (not safe)) (##cdr _e298348298460_)))
                        (_hd298347298464_
                         (let ()
                           (declare (not safe))
                           (##car _e298348298460_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl298346298467_))
                        (let ((_e298351298470_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl298346298467_))))
                          (let ((_tl298349298477_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e298351298470_)))
                                (_hd298350298474_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e298351298470_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl298349298477_))
                                (let ((_e298354298480_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl298349298477_))))
                                  (let ((_tl298352298487_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e298354298480_)))
                                        (_hd298353298484_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e298354298480_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl298352298487_))
                                        (let ((_e298357298490_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl298352298487_))))
                                          (let ((_tl298355298497_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e298357298490_)))
                                                (_hd298356298494_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e298357298490_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl298355298497_))
                                                (let ((_e298360298500_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl298355298497_))))
                                                  (let ((_tl298358298507_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e298360298500_)))
                                                        (_hd298359298504_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e298360298500_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl298358298507_))
                                                        (___match305824305825_
                                                         _e298348298460_
                                                         _hd298347298464_
                                                         _tl298346298467_
                                                         _e298351298470_
                                                         _hd298350298474_
                                                         _tl298349298477_
                                                         _e298354298480_
                                                         _hd298353298484_
                                                         _tl298352298487_
                                                         _e298357298490_
                                                         _hd298356298494_
                                                         _tl298355298497_
                                                         _e298360298500_
                                                         _hd298359298504_
                                                         _tl298358298507_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g298340298382_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl298355298497_))
                                                    (___kont305790305791_
                                                     _hd298356298494_
                                                     _hd298353298484_
                                                     _hd298350298474_
                                                     _hd298347298464_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g298340298382_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g298340298382_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g298340298382_)))))
                        (let () (declare (not safe)) (_g298340298382_)))))
                (let () (declare (not safe)) (_g298340298382_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx298539_)
      (let* ((_g298543298578_
              (lambda (_g298544298574_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298544298574_))))
             (_g298542298697_
              (lambda (_g298544298582_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298544298582_))
                    (let ((_e298550298585_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298544298582_))))
                      (let ((_hd298549298589_
                             (let ()
                               (declare (not safe))
                               (##car _e298550298585_)))
                            (_tl298548298592_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298550298585_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl298548298592_))
                            (let ((_g306254_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl298548298592_
                                      '0))))
                              (begin
                                (let ((_g306255_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306254_)
                                             (##vector-length _g306254_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306255_ 2)))
                                      (error "Context expects 2 values"
                                             _g306255_)))
                                (let ((_target298551298595_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306254_ 0)))
                                      (_tl298553298598_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306254_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298553298598_))
                                      (letrec ((_loop298554298601_
                                                (lambda (_hd298552298605_
                                                         _symbol298558298608_
                                                         _method298559298610_
                                                         _type-t298560298612_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd298552298605_))
                                                      (let ((_e298555298615_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd298552298605_))))
                (let ((_lp-hd298556298619_
                       (let () (declare (not safe)) (##car _e298555298615_)))
                      (_lp-tl298557298622_
                       (let () (declare (not safe)) (##cdr _e298555298615_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd298556298619_))
                      (let ((_e298566298625_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd298556298619_))))
                        (let ((_hd298565298629_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298566298625_)))
                              (_tl298564298632_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298566298625_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl298564298632_))
                              (let ((_e298569298635_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl298564298632_))))
                                (let ((_hd298568298639_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298569298635_)))
                                      (_tl298567298642_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298569298635_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl298567298642_))
                                      (let ((_e298572298645_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl298567298642_))))
                                        (let ((_hd298571298649_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e298572298645_)))
                                              (_tl298570298652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e298572298645_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298570298652_))
                                              (_loop298554298601_
                                               _lp-tl298557298622_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298571298649_
                                                       _symbol298558298608_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298568298639_
                                                       _method298559298610_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298565298629_
                                                       _type-t298560298612_)))
                                              (_g298543298578_
                                               _g298544298582_))))
                                      (_g298543298578_ _g298544298582_))))
                              (_g298543298578_ _g298544298582_))))
                      (_g298543298578_ _g298544298582_))))
              (let ((_symbol298561298655_ (reverse _symbol298558298608_))
                    (_method298562298658_ (reverse _method298559298610_))
                    (_type-t298563298660_ (reverse _type-t298560298612_)))
                ((lambda (_L298663_ _L298665_ _L298666_)
                   (let ((__tmp306263
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306256
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L298663_
                               _L298665_
                               _L298666_))
                            (let ((__tmp306257
                                   (lambda (_g298682298687_
                                            _g298683298690_
                                            _g298684298692_
                                            _g298685298694_)
                                     (let ((__tmp306258
                                            (let ((__tmp306262
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp306259
                                                   (let ((__tmp306260
                                                          (let ((__tmp306261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g298682298687_ '()))))
                    (declare (not safe))
                    (cons _g298683298690_ __tmp306261))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g298684298692_
                                                           __tmp306260))))
                                              (declare (not safe))
                                              (cons __tmp306262 __tmp306259))))
                                       (declare (not safe))
                                       (cons __tmp306258 _g298685298694_)))))
                              (declare (not safe))
                              (foldr* __tmp306257
                                      '()
                                      _L298663_
                                      _L298665_
                                      _L298666_)))))
                     (declare (not safe))
                     (cons __tmp306263 __tmp306256)))
                 _symbol298561298655_
                 _method298562298658_
                 _type-t298563298660_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop298554298601_
                                         _target298551298595_
                                         '()
                                         '()
                                         '()))
                                      (_g298543298578_ _g298544298582_)))))
                            (_g298543298578_ _g298544298582_))))
                    (_g298543298578_ _g298544298582_)))))
        (_g298542298697_ _$stx298539_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx298702_)
      (let* ((_g298706298739_
              (lambda (_g298707298735_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298707298735_))))
             (_g298705298853_
              (lambda (_g298707298743_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298707298743_))
                    (let ((_e298713298746_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298707298743_))))
                      (let ((_hd298712298750_
                             (let ()
                               (declare (not safe))
                               (##car _e298713298746_)))
                            (_tl298711298753_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298713298746_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298711298753_))
                            (let ((_e298716298756_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298711298753_))))
                              (let ((_hd298715298760_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298716298756_)))
                                    (_tl298714298763_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298716298756_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl298714298763_))
                                    (let ((_g306264_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl298714298763_
                                              '0))))
                                      (begin
                                        (let ((_g306265_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g306264_)
                                                     (##vector-length
                                                      _g306264_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g306265_ 2)))
                                              (error "Context expects 2 values"
                                                     _g306265_)))
                                        (let ((_target298717298766_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g306264_ 0)))
                                              (_tl298719298769_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g306264_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298719298769_))
                                              (letrec ((_loop298720298772_
                                                        (lambda (_hd298718298776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol298724298779_
                         _method298725298781_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd298718298776_))
                      (let ((_e298721298784_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd298718298776_))))
                        (let ((_lp-hd298722298788_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298721298784_)))
                              (_lp-tl298723298791_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298721298784_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd298722298788_))
                              (let ((_e298730298794_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd298722298788_))))
                                (let ((_hd298729298798_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298730298794_)))
                                      (_tl298728298801_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298730298794_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl298728298801_))
                                      (let ((_e298733298804_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl298728298801_))))
                                        (let ((_hd298732298808_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e298733298804_)))
                                              (_tl298731298811_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e298733298804_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298731298811_))
                                              (_loop298720298772_
                                               _lp-tl298723298791_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298732298808_
                                                       _symbol298724298779_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298729298798_
                                                       _method298725298781_)))
                                              (_g298706298739_
                                               _g298707298743_))))
                                      (_g298706298739_ _g298707298743_))))
                              (_g298706298739_ _g298707298743_))))
                      (let ((_symbol298726298814_
                             (reverse _symbol298724298779_))
                            (_method298727298817_
                             (reverse _method298725298781_)))
                        ((lambda (_L298820_ _L298822_ _L298823_)
                           (let ((__tmp306273
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp306266
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L298820_
                                       _L298822_))
                                    (let ((__tmp306267
                                           (lambda (_g298841298845_
                                                    _g298842298848_
                                                    _g298843298850_)
                                             (let ((__tmp306268
                                                    (let ((__tmp306272
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp306269
                                                           (let ((__tmp306270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp306271
                                 (let ()
                                   (declare (not safe))
                                   (cons _g298841298845_ '()))))
                            (declare (not safe))
                            (cons _g298842298848_ __tmp306271))))
                     (declare (not safe))
                     (cons _L298823_ __tmp306270))))
              (declare (not safe))
              (cons __tmp306272 __tmp306269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp306268
                                                     _g298843298850_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp306267
                                              '()
                                              _L298820_
                                              _L298822_)))))
                             (declare (not safe))
                             (cons __tmp306273 __tmp306266)))
                         _symbol298726298814_
                         _method298727298817_
                         _hd298715298760_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop298720298772_
                                                 _target298717298766_
                                                 '()
                                                 '()))
                                              (_g298706298739_
                                               _g298707298743_)))))
                                    (_g298706298739_ _g298707298743_))))
                            (_g298706298739_ _g298707298743_))))
                    (_g298706298739_ _g298707298743_)))))
        (_g298705298853_ _$stx298702_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx298858_)
      (let* ((_g298862298876_
              (lambda (_g298863298872_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298863298872_))))
             (_g298861298917_
              (lambda (_g298863298880_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298863298880_))
                    (let ((_e298867298883_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298863298880_))))
                      (let ((_hd298866298887_
                             (let ()
                               (declare (not safe))
                               (##car _e298867298883_)))
                            (_tl298865298890_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298867298883_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298865298890_))
                            (let ((_e298870298893_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298865298890_))))
                              (let ((_hd298869298897_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298870298893_)))
                                    (_tl298868298900_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298870298893_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl298868298900_))
                                    ((lambda (_L298903_)
                                       (let ((__tmp306278
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp306274
                                              (let ((__tmp306275
                                                     (let ((__tmp306277
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp306276
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L298903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp306277 __tmp306276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp306275 '()))))
                                         (declare (not safe))
                                         (cons __tmp306278 __tmp306274)))
                                     _hd298869298897_)
                                    (_g298862298876_ _g298863298880_))))
                            (_g298862298876_ _g298863298880_))))
                    (_g298862298876_ _g298863298880_)))))
        (_g298861298917_ _$stx298858_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx298921_)
      (let* ((_g298925298975_
              (lambda (_g298926298971_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298926298971_))))
             (_g298924299142_
              (lambda (_g298926298979_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298926298979_))
                    (let ((_e298939298982_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298926298979_))))
                      (let ((_hd298938298986_
                             (let ()
                               (declare (not safe))
                               (##car _e298939298982_)))
                            (_tl298937298989_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298939298982_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298937298989_))
                            (let ((_e298942298992_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298937298989_))))
                              (let ((_hd298941298996_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298942298992_)))
                                    (_tl298940298999_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298942298992_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298940298999_))
                                    (let ((_e298945299002_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298940298999_))))
                                      (let ((_hd298944299006_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298945299002_)))
                                            (_tl298943299009_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298945299002_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl298943299009_))
                                            (let ((_e298948299012_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl298943299009_))))
                                              (let ((_hd298947299016_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298948299012_)))
                                                    (_tl298946299019_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298948299012_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298946299019_))
                                                    (let ((_e298951299022_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298946299019_))))
                                                      (let ((_hd298950299026_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e298951299022_)))
                    (_tl298949299029_
                     (let () (declare (not safe)) (##cdr _e298951299022_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl298949299029_))
                    (let ((_e298954299032_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl298949299029_))))
                      (let ((_hd298953299036_
                             (let ()
                               (declare (not safe))
                               (##car _e298954299032_)))
                            (_tl298952299039_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298954299032_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298952299039_))
                            (let ((_e298957299042_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298952299039_))))
                              (let ((_hd298956299046_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298957299042_)))
                                    (_tl298955299049_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298957299042_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298955299049_))
                                    (let ((_e298960299052_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298955299049_))))
                                      (let ((_hd298959299056_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298960299052_)))
                                            (_tl298958299059_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298960299052_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl298958299059_))
                                            (let ((_e298963299062_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl298958299059_))))
                                              (let ((_hd298962299066_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298963299062_)))
                                                    (_tl298961299069_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298963299062_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298961299069_))
                                                    (let ((_e298966299072_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298961299069_))))
                                                      (let ((_hd298965299076_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e298966299072_)))
                    (_tl298964299079_
                     (let () (declare (not safe)) (##cdr _e298966299072_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl298964299079_))
                    (let ((_e298969299082_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl298964299079_))))
                      (let ((_hd298968299086_
                             (let ()
                               (declare (not safe))
                               (##car _e298969299082_)))
                            (_tl298967299089_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298969299082_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl298967299089_))
                            ((lambda (_L299092_
                                      _L299094_
                                      _L299095_
                                      _L299096_
                                      _L299097_
                                      _L299098_
                                      _L299099_
                                      _L299100_
                                      _L299101_
                                      _L299102_)
                               (let ((__tmp306313
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp306279
                                      (let ((__tmp306310
                                             (let ((__tmp306312
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306311
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299102_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306312 __tmp306311)))
                                            (__tmp306280
                                             (let ((__tmp306307
                                                    (let ((__tmp306309
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp306308
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L299101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp306309 __tmp306308)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp306281
                                                    (let ((__tmp306304
                                                           (let ((__tmp306306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp306305
                          (let () (declare (not safe)) (cons _L299100_ '()))))
                     (declare (not safe))
                     (cons __tmp306306 __tmp306305)))
                  (__tmp306282
                   (let ((__tmp306301
                          (let ((__tmp306303
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp306302
                                 (let ()
                                   (declare (not safe))
                                   (cons _L299099_ '()))))
                            (declare (not safe))
                            (cons __tmp306303 __tmp306302)))
                         (__tmp306283
                          (let ((__tmp306298
                                 (let ((__tmp306300
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp306299
                                        (let ()
                                          (declare (not safe))
                                          (cons _L299098_ '()))))
                                   (declare (not safe))
                                   (cons __tmp306300 __tmp306299)))
                                (__tmp306284
                                 (let ((__tmp306295
                                        (let ((__tmp306297
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp306296
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L299097_ '()))))
                                          (declare (not safe))
                                          (cons __tmp306297 __tmp306296)))
                                       (__tmp306285
                                        (let ((__tmp306286
                                               (let ((__tmp306287
                                                      (let ((__tmp306292
                                                             (let ((__tmp306294
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306293
                            (let ()
                              (declare (not safe))
                              (cons _L299094_ '()))))
                       (declare (not safe))
                       (cons __tmp306294 __tmp306293)))
                    (__tmp306288
                     (let ((__tmp306289
                            (let ((__tmp306291
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306290
                                   (let ()
                                     (declare (not safe))
                                     (cons _L299092_ '()))))
                              (declare (not safe))
                              (cons __tmp306291 __tmp306290))))
                       (declare (not safe))
                       (cons __tmp306289 '()))))
                (declare (not safe))
                (cons __tmp306292 __tmp306288))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L299095_
                                                       __tmp306287))))
                                          (declare (not safe))
                                          (cons _L299096_ __tmp306286))))
                                   (declare (not safe))
                                   (cons __tmp306295 __tmp306285))))
                            (declare (not safe))
                            (cons __tmp306298 __tmp306284))))
                     (declare (not safe))
                     (cons __tmp306301 __tmp306283))))
              (declare (not safe))
              (cons __tmp306304 __tmp306282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp306307
                                                     __tmp306281))))
                                        (declare (not safe))
                                        (cons __tmp306310 __tmp306280))))
                                 (declare (not safe))
                                 (cons __tmp306313 __tmp306279)))
                             _hd298968299086_
                             _hd298965299076_
                             _hd298962299066_
                             _hd298959299056_
                             _hd298956299046_
                             _hd298953299036_
                             _hd298950299026_
                             _hd298947299016_
                             _hd298944299006_
                             _hd298941298996_)
                            (_g298925298975_ _g298926298979_))))
                    (_g298925298975_ _g298926298979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g298925298975_
                                                     _g298926298979_))))
                                            (_g298925298975_
                                             _g298926298979_))))
                                    (_g298925298975_ _g298926298979_))))
                            (_g298925298975_ _g298926298979_))))
                    (_g298925298975_ _g298926298979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g298925298975_
                                                     _g298926298979_))))
                                            (_g298925298975_
                                             _g298926298979_))))
                                    (_g298925298975_ _g298926298979_))))
                            (_g298925298975_ _g298926298979_))))
                    (_g298925298975_ _g298926298979_)))))
        (_g298924299142_ _$stx298921_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx299146_)
      (let* ((_g299150299164_
              (lambda (_g299151299160_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299151299160_))))
             (_g299149299205_
              (lambda (_g299151299168_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299151299168_))
                    (let ((_e299155299171_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299151299168_))))
                      (let ((_hd299154299175_
                             (let ()
                               (declare (not safe))
                               (##car _e299155299171_)))
                            (_tl299153299178_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299155299171_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299153299178_))
                            (let ((_e299158299181_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299153299178_))))
                              (let ((_hd299157299185_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299158299181_)))
                                    (_tl299156299188_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299158299181_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299156299188_))
                                    ((lambda (_L299191_)
                                       (let ((__tmp306318
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp306314
                                              (let ((__tmp306315
                                                     (let ((__tmp306317
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp306316
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L299191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp306317 __tmp306316))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp306315 '()))))
                                         (declare (not safe))
                                         (cons __tmp306318 __tmp306314)))
                                     _hd299157299185_)
                                    (_g299150299164_ _g299151299168_))))
                            (_g299150299164_ _g299151299168_))))
                    (_g299150299164_ _g299151299168_)))))
        (_g299149299205_ _$stx299146_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx299209_)
      (let* ((_g299213299227_
              (lambda (_g299214299223_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299214299223_))))
             (_g299212299268_
              (lambda (_g299214299231_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299214299231_))
                    (let ((_e299218299234_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299214299231_))))
                      (let ((_hd299217299238_
                             (let ()
                               (declare (not safe))
                               (##car _e299218299234_)))
                            (_tl299216299241_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299218299234_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299216299241_))
                            (let ((_e299221299244_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299216299241_))))
                              (let ((_hd299220299248_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299221299244_)))
                                    (_tl299219299251_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299221299244_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299219299251_))
                                    ((lambda (_L299254_)
                                       (let ((__tmp306323
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp306319
                                              (let ((__tmp306320
                                                     (let ((__tmp306322
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp306321
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L299254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp306322 __tmp306321))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp306320 '()))))
                                         (declare (not safe))
                                         (cons __tmp306323 __tmp306319)))
                                     _hd299220299248_)
                                    (_g299213299227_ _g299214299231_))))
                            (_g299213299227_ _g299214299231_))))
                    (_g299213299227_ _g299214299231_)))))
        (_g299212299268_ _$stx299209_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx299272_)
      (let* ((_g299276299298_
              (lambda (_g299277299294_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299277299294_))))
             (_g299275299367_
              (lambda (_g299277299302_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299277299302_))
                    (let ((_e299283299305_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299277299302_))))
                      (let ((_hd299282299309_
                             (let ()
                               (declare (not safe))
                               (##car _e299283299305_)))
                            (_tl299281299312_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299283299305_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299281299312_))
                            (let ((_e299286299315_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299281299312_))))
                              (let ((_hd299285299319_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299286299315_)))
                                    (_tl299284299322_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299286299315_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl299284299322_))
                                    (let ((_e299289299325_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl299284299322_))))
                                      (let ((_hd299288299329_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299289299325_)))
                                            (_tl299287299332_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299289299325_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl299287299332_))
                                            (let ((_e299292299335_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl299287299332_))))
                                              (let ((_hd299291299339_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299292299335_)))
                                                    (_tl299290299342_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299292299335_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299290299342_))
                                                    ((lambda (_L299345_
                                                              _L299347_
                                                              _L299348_)
                                                       (let ((__tmp306333
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp306324
                      (let ((__tmp306330
                             (let ((__tmp306332
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp306331
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299348_ '()))))
                               (declare (not safe))
                               (cons __tmp306332 __tmp306331)))
                            (__tmp306325
                             (let ((__tmp306327
                                    (let ((__tmp306329
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp306328
                                           (let ()
                                             (declare (not safe))
                                             (cons _L299347_ '()))))
                                      (declare (not safe))
                                      (cons __tmp306329 __tmp306328)))
                                   (__tmp306326
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299345_ '()))))
                               (declare (not safe))
                               (cons __tmp306327 __tmp306326))))
                        (declare (not safe))
                        (cons __tmp306330 __tmp306325))))
                 (declare (not safe))
                 (cons __tmp306333 __tmp306324)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd299291299339_
                                                     _hd299288299329_
                                                     _hd299285299319_)
                                                    (_g299276299298_
                                                     _g299277299302_))))
                                            (_g299276299298_
                                             _g299277299302_))))
                                    (_g299276299298_ _g299277299302_))))
                            (_g299276299298_ _g299277299302_))))
                    (_g299276299298_ _g299277299302_)))))
        (_g299275299367_ _$stx299272_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx299371_)
      (let* ((_g299375299397_
              (lambda (_g299376299393_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299376299393_))))
             (_g299374299466_
              (lambda (_g299376299401_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299376299401_))
                    (let ((_e299382299404_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299376299401_))))
                      (let ((_hd299381299408_
                             (let ()
                               (declare (not safe))
                               (##car _e299382299404_)))
                            (_tl299380299411_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299382299404_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299380299411_))
                            (let ((_e299385299414_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299380299411_))))
                              (let ((_hd299384299418_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299385299414_)))
                                    (_tl299383299421_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299385299414_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl299383299421_))
                                    (let ((_e299388299424_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl299383299421_))))
                                      (let ((_hd299387299428_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299388299424_)))
                                            (_tl299386299431_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299388299424_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl299386299431_))
                                            (let ((_e299391299434_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl299386299431_))))
                                              (let ((_hd299390299438_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299391299434_)))
                                                    (_tl299389299441_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299391299434_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299389299441_))
                                                    ((lambda (_L299444_
                                                              _L299446_
                                                              _L299447_)
                                                       (let ((__tmp306343
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp306334
                      (let ((__tmp306340
                             (let ((__tmp306342
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp306341
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299447_ '()))))
                               (declare (not safe))
                               (cons __tmp306342 __tmp306341)))
                            (__tmp306335
                             (let ((__tmp306337
                                    (let ((__tmp306339
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp306338
                                           (let ()
                                             (declare (not safe))
                                             (cons _L299446_ '()))))
                                      (declare (not safe))
                                      (cons __tmp306339 __tmp306338)))
                                   (__tmp306336
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299444_ '()))))
                               (declare (not safe))
                               (cons __tmp306337 __tmp306336))))
                        (declare (not safe))
                        (cons __tmp306340 __tmp306335))))
                 (declare (not safe))
                 (cons __tmp306343 __tmp306334)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd299390299438_
                                                     _hd299387299428_
                                                     _hd299384299418_)
                                                    (_g299375299397_
                                                     _g299376299401_))))
                                            (_g299375299397_
                                             _g299376299401_))))
                                    (_g299375299397_ _g299376299401_))))
                            (_g299375299397_ _g299376299401_))))
                    (_g299375299397_ _g299376299401_)))))
        (_g299374299466_ _$stx299371_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx299470_)
      (let* ((___stx305853305854_ _$stx299470_)
             (_g299478299546_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305853305854_)))))
        (let ((___kont305856305857_
               (lambda (_L299824_ _L299826_)
                 (let ((__tmp306359
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp306344
                        (let ((__tmp306355
                               (let ((__tmp306358
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306356
                                      (let ((__tmp306357
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp306357 '()))))
                                 (declare (not safe))
                                 (cons __tmp306358 __tmp306356)))
                              (__tmp306345
                               (let ((__tmp306352
                                      (let ((__tmp306354
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306353
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299826_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306354 __tmp306353)))
                                     (__tmp306346
                                      (let ((__tmp306347
                                             (let ((__tmp306348
                                                    (let ((__tmp306349
                                                           (let ((__tmp306351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp306350
                          (let () (declare (not safe)) (cons _L299824_ '()))))
                     (declare (not safe))
                     (cons __tmp306351 __tmp306350))))
              (declare (not safe))
              (cons __tmp306349 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L299824_ __tmp306348))))
                                        (declare (not safe))
                                        (cons '#f __tmp306347))))
                                 (declare (not safe))
                                 (cons __tmp306352 __tmp306346))))
                          (declare (not safe))
                          (cons __tmp306355 __tmp306345))))
                   (declare (not safe))
                   (cons __tmp306359 __tmp306344))))
              (___kont305858305859_
               (lambda (_L299755_ _L299757_)
                 (let ((__tmp306360
                        (let ((__tmp306361
                               (let ((__tmp306362
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L299755_ __tmp306362))))
                          (declare (not safe))
                          (cons 'primitive: __tmp306361))))
                   (declare (not safe))
                   (cons _L299757_ __tmp306360))))
              (___kont305860305861_
               (lambda (_L299694_ _L299696_)
                 (let ((__tmp306376
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp306363
                        (let ((__tmp306372
                               (let ((__tmp306375
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306373
                                      (let ((__tmp306374
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp306374 '()))))
                                 (declare (not safe))
                                 (cons __tmp306375 __tmp306373)))
                              (__tmp306364
                               (let ((__tmp306369
                                      (let ((__tmp306371
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306370
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299696_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306371 __tmp306370)))
                                     (__tmp306365
                                      (let ((__tmp306366
                                             (let ((__tmp306368
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306367
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299694_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306368
                                                     __tmp306367))))
                                        (declare (not safe))
                                        (cons __tmp306366 '()))))
                                 (declare (not safe))
                                 (cons __tmp306369 __tmp306365))))
                          (declare (not safe))
                          (cons __tmp306372 __tmp306364))))
                   (declare (not safe))
                   (cons __tmp306376 __tmp306363))))
              (___kont305862305863_
               (lambda (_L299626_ _L299628_)
                 (let ((__tmp306390
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp306377
                        (let ((__tmp306386
                               (let ((__tmp306389
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306387
                                      (let ((__tmp306388
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp306388 '()))))
                                 (declare (not safe))
                                 (cons __tmp306389 __tmp306387)))
                              (__tmp306378
                               (let ((__tmp306383
                                      (let ((__tmp306385
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306384
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299628_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306385 __tmp306384)))
                                     (__tmp306379
                                      (let ((__tmp306380
                                             (let ((__tmp306382
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306381
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299626_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306382
                                                     __tmp306381))))
                                        (declare (not safe))
                                        (cons __tmp306380 '()))))
                                 (declare (not safe))
                                 (cons __tmp306383 __tmp306379))))
                          (declare (not safe))
                          (cons __tmp306386 __tmp306378))))
                   (declare (not safe))
                   (cons __tmp306390 __tmp306377))))
              (___kont305864305865_
               (lambda (_L299573_ _L299575_)
                 (let ((__tmp306391
                        (let ((__tmp306392
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L299573_ __tmp306392))))
                   (declare (not safe))
                   (cons _L299575_ __tmp306391)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx305853305854_))
              (let ((_e299484299780_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx305853305854_))))
                (let ((_tl299482299787_
                       (let () (declare (not safe)) (##cdr _e299484299780_)))
                      (_hd299483299784_
                       (let () (declare (not safe)) (##car _e299484299780_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl299482299787_))
                      (let ((_e299487299790_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl299482299787_))))
                        (let ((_tl299485299797_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299487299790_)))
                              (_hd299486299794_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299487299790_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl299485299797_))
                              (let ((_e299490299800_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl299485299797_))))
                                (let ((_tl299488299807_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e299490299800_)))
                                      (_hd299489299804_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e299490299800_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd299489299804_))
                                      (let ((_e299491299810_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd299489299804_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e299491299810_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl299488299807_))
                                                (let ((_e299494299814_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl299488299807_))))
                                                  (let ((_tl299492299821_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e299494299814_)))
                                                        (_hd299493299818_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e299494299814_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl299492299821_))
                                                        (___kont305856305857_
                                                         _hd299493299818_
                                                         _hd299486299794_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd299486299794_))
                                                            (let ((_e299503299741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd299486299794_))))
                      (declare (not safe))
                      (_g299478299546_))
                    (let () (declare (not safe)) (_g299478299546_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd299486299794_))
                                                    (let ((_e299503299741_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd299486299794_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e299503299741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299488299807_))
                      (___kont305858305859_ _hd299489299804_ _hd299483299784_)
                      (let () (declare (not safe)) (_g299478299546_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299488299807_))
                      (___kont305862305863_ _hd299489299804_ _hd299486299794_)
                      (let () (declare (not safe)) (_g299478299546_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl299488299807_))
                                                        (___kont305862305863_
                                                         _hd299489299804_
                                                         _hd299486299794_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g299478299546_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd299486299794_))
                                                (let ((_e299503299741_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd299486299794_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e299503299741_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl299488299807_))
                                                          (___kont305858305859_
                                                           _hd299489299804_
                                                           _hd299483299784_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl299488299807_))
                      (let ((_e299521299684_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl299488299807_))))
                        (let ((_tl299519299691_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299521299684_)))
                              (_hd299520299688_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299521299684_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl299519299691_))
                              (___kont305860305861_
                               _hd299520299688_
                               _hd299489299804_)
                              (let ()
                                (declare (not safe))
                                (_g299478299546_)))))
                      (let () (declare (not safe)) (_g299478299546_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl299488299807_))
                  (___kont305862305863_ _hd299489299804_ _hd299486299794_)
                  (let () (declare (not safe)) (_g299478299546_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299488299807_))
                                                    (___kont305862305863_
                                                     _hd299489299804_
                                                     _hd299486299794_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299478299546_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd299486299794_))
                                          (let ((_e299503299741_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd299486299794_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e299503299741_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299488299807_))
                                                    (___kont305858305859_
                                                     _hd299489299804_
                                                     _hd299483299784_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl299488299807_))
                                                        (let ((_e299521299684_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl299488299807_))))
                  (let ((_tl299519299691_
                         (let () (declare (not safe)) (##cdr _e299521299684_)))
                        (_hd299520299688_
                         (let ()
                           (declare (not safe))
                           (##car _e299521299684_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl299519299691_))
                        (___kont305860305861_
                         _hd299520299688_
                         _hd299489299804_)
                        (let () (declare (not safe)) (_g299478299546_)))))
                (let () (declare (not safe)) (_g299478299546_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299488299807_))
                                                    (___kont305862305863_
                                                     _hd299489299804_
                                                     _hd299486299794_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299478299546_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl299488299807_))
                                              (___kont305862305863_
                                               _hd299489299804_
                                               _hd299486299794_)
                                              (let ()
                                                (declare (not safe))
                                                (_g299478299546_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd299486299794_))
                                  (let ((_e299503299741_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd299486299794_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299485299797_))
                                        (___kont305864305865_
                                         _hd299486299794_
                                         _hd299483299784_)
                                        (let ()
                                          (declare (not safe))
                                          (_g299478299546_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl299485299797_))
                                      (___kont305864305865_
                                       _hd299486299794_
                                       _hd299483299784_)
                                      (let ()
                                        (declare (not safe))
                                        (_g299478299546_)))))))
                      (let () (declare (not safe)) (_g299478299546_)))))
              (let () (declare (not safe)) (_g299478299546_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx299848_)
      (let* ((___stx305993305994_ _$stx299848_)
             (_g299853299908_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305993305994_)))))
        (let ((___kont305996305997_
               (lambda (_L300093_ _L300095_)
                 (let ((__tmp306408
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp306393
                        (let ((__tmp306404
                               (let ((__tmp306407
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306405
                                      (let ((__tmp306406
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp306406 '()))))
                                 (declare (not safe))
                                 (cons __tmp306407 __tmp306405)))
                              (__tmp306394
                               (let ((__tmp306395
                                      (let ((__tmp306403
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp306396
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L300093_
                                                  _L300095_))
                                               (let ((__tmp306397
                                                      (lambda (_g300112300116_
                                                               _g300113300119_
                                                               _g300114300121_)
                                                        (let ((__tmp306398
                                                               (let ((__tmp306402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp306399
                              (let ((__tmp306400
                                     (let ((__tmp306401
                                            (let ()
                                              (declare (not safe))
                                              (cons _g300112300116_ '()))))
                                       (declare (not safe))
                                       (cons _g300113300119_ __tmp306401))))
                                (declare (not safe))
                                (cons 'primitive: __tmp306400))))
                         (declare (not safe))
                         (cons __tmp306402 __tmp306399))))
                  (declare (not safe))
                  (cons __tmp306398 _g300114300121_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp306397
                                                         '()
                                                         _L300093_
                                                         _L300095_)))))
                                        (declare (not safe))
                                        (cons __tmp306403 __tmp306396))))
                                 (declare (not safe))
                                 (cons __tmp306395 '()))))
                          (declare (not safe))
                          (cons __tmp306404 __tmp306394))))
                   (declare (not safe))
                   (cons __tmp306408 __tmp306393))))
              (___kont306000306001_
               (lambda (_L299979_ _L299981_)
                 (let ((__tmp306423
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp306409
                        (let ((__tmp306419
                               (let ((__tmp306422
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306420
                                      (let ((__tmp306421
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp306421 '()))))
                                 (declare (not safe))
                                 (cons __tmp306422 __tmp306420)))
                              (__tmp306410
                               (let ((__tmp306411
                                      (let ((__tmp306418
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp306412
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L299979_
                                                  _L299981_))
                                               (let ((__tmp306413
                                                      (lambda (_g299996300000_
                                                               _g299997300003_
                                                               _g299998300005_)
                                                        (let ((__tmp306414
                                                               (let ((__tmp306417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp306415
                              (let ((__tmp306416
                                     (let ()
                                       (declare (not safe))
                                       (cons _g299996300000_ '()))))
                                (declare (not safe))
                                (cons _g299997300003_ __tmp306416))))
                         (declare (not safe))
                         (cons __tmp306417 __tmp306415))))
                  (declare (not safe))
                  (cons __tmp306414 _g299998300005_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp306413
                                                         '()
                                                         _L299979_
                                                         _L299981_)))))
                                        (declare (not safe))
                                        (cons __tmp306418 __tmp306412))))
                                 (declare (not safe))
                                 (cons __tmp306411 '()))))
                          (declare (not safe))
                          (cons __tmp306419 __tmp306410))))
                   (declare (not safe))
                   (cons __tmp306423 __tmp306409)))))
          (let* ((___match306044306045_
                  (lambda (_e299885299915_
                           _hd299884299919_
                           _tl299883299922_
                           ___splice306002306003_
                           _target299886299925_
                           _tl299888299928_)
                    (letrec ((_loop299889299931_
                              (lambda (_hd299887299935_
                                       _dispatch299893299938_
                                       _arity299894299940_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299887299935_))
                                    (let ((_e299890299943_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299887299935_))))
                                      (let ((_lp-tl299892299950_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299890299943_)))
                                            (_lp-hd299891299947_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299890299943_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd299891299947_))
                                            (let ((_e299899299953_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd299891299947_))))
                                              (let ((_tl299897299960_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299899299953_)))
                                                    (_hd299898299957_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299899299953_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl299897299960_))
                                                    (let ((_e299902299963_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl299897299960_))))
                                                      (let ((_tl299900299970_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e299902299963_)))
                    (_hd299901299967_
                     (let () (declare (not safe)) (##car _e299902299963_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl299900299970_))
                    (_loop299889299931_
                     _lp-tl299892299950_
                     (let ()
                       (declare (not safe))
                       (cons _hd299901299967_ _dispatch299893299938_))
                     (let ()
                       (declare (not safe))
                       (cons _hd299898299957_ _arity299894299940_)))
                    (let () (declare (not safe)) (_g299853299908_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299853299908_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g299853299908_)))))
                                    (let ((_arity299896299976_
                                           (reverse _arity299894299940_))
                                          (_dispatch299895299973_
                                           (reverse _dispatch299893299938_)))
                                      (___kont306000306001_
                                       _dispatch299895299973_
                                       _arity299896299976_))))))
                      (_loop299889299931_ _target299886299925_ '() '()))))
                 (___match306036306037_
                  (lambda (_e299885299915_ _hd299884299919_ _tl299883299922_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl299883299922_))
                        (let ((___splice306002306003_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl299883299922_
                                  '0))))
                          (let ((_tl299888299928_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice306002306003_ '1)))
                                (_target299886299925_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice306002306003_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl299888299928_))
                                (___match306044306045_
                                 _e299885299915_
                                 _hd299884299919_
                                 _tl299883299922_
                                 ___splice306002306003_
                                 _target299886299925_
                                 _tl299888299928_)
                                (let ()
                                  (declare (not safe))
                                  (_g299853299908_)))))
                        (let () (declare (not safe)) (_g299853299908_)))))
                 (___match306030306031_
                  (lambda (_e299859300015_
                           _hd299858300019_
                           _tl299857300022_
                           _e299862300025_
                           _hd299861300029_
                           _tl299860300032_
                           _e299863300035_
                           ___splice305998305999_
                           _target299864300039_
                           _tl299866300042_)
                    (letrec ((_loop299867300045_
                              (lambda (_hd299865300049_
                                       _dispatch299871300052_
                                       _arity299872300054_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299865300049_))
                                    (let ((_e299868300057_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299865300049_))))
                                      (let ((_lp-tl299870300064_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299868300057_)))
                                            (_lp-hd299869300061_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299868300057_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd299869300061_))
                                            (let ((_e299877300067_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd299869300061_))))
                                              (let ((_tl299875300074_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299877300067_)))
                                                    (_hd299876300071_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299877300067_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl299875300074_))
                                                    (let ((_e299880300077_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl299875300074_))))
                                                      (let ((_tl299878300084_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e299880300077_)))
                    (_hd299879300081_
                     (let () (declare (not safe)) (##car _e299880300077_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl299878300084_))
                    (_loop299867300045_
                     _lp-tl299870300064_
                     (let ()
                       (declare (not safe))
                       (cons _hd299879300081_ _dispatch299871300052_))
                     (let ()
                       (declare (not safe))
                       (cons _hd299876300071_ _arity299872300054_)))
                    (___match306036306037_
                     _e299859300015_
                     _hd299858300019_
                     _tl299857300022_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match306036306037_
                                                     _e299859300015_
                                                     _hd299858300019_
                                                     _tl299857300022_))))
                                            (___match306036306037_
                                             _e299859300015_
                                             _hd299858300019_
                                             _tl299857300022_))))
                                    (let ((_arity299874300090_
                                           (reverse _arity299872300054_))
                                          (_dispatch299873300087_
                                           (reverse _dispatch299871300052_)))
                                      (___kont305996305997_
                                       _dispatch299873300087_
                                       _arity299874300090_))))))
                      (_loop299867300045_ _target299864300039_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx305993305994_))
                (let ((_e299859300015_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx305993305994_))))
                  (let ((_tl299857300022_
                         (let () (declare (not safe)) (##cdr _e299859300015_)))
                        (_hd299858300019_
                         (let ()
                           (declare (not safe))
                           (##car _e299859300015_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl299857300022_))
                        (let ((_e299862300025_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl299857300022_))))
                          (let ((_tl299860300032_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e299862300025_)))
                                (_hd299861300029_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e299862300025_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd299861300029_))
                                (let ((_e299863300035_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd299861300029_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e299863300035_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl299860300032_))
                                          (let ((___splice305998305999_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl299860300032_
                                                    '0))))
                                            (let ((_tl299866300042_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice305998305999_
                                                      '1)))
                                                  (_target299864300039_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice305998305999_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl299866300042_))
                                                  (___match306030306031_
                                                   _e299859300015_
                                                   _hd299858300019_
                                                   _tl299857300022_
                                                   _e299862300025_
                                                   _hd299861300029_
                                                   _tl299860300032_
                                                   _e299863300035_
                                                   ___splice305998305999_
                                                   _target299864300039_
                                                   _tl299866300042_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl299857300022_))
                                                      (let ((___splice306002306003_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl299857300022_ '0))))
                (let ((_tl299888299928_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306002306003_ '1)))
                      (_target299886299925_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306002306003_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299888299928_))
                      (___match306044306045_
                       _e299859300015_
                       _hd299858300019_
                       _tl299857300022_
                       ___splice306002306003_
                       _target299886299925_
                       _tl299888299928_)
                      (let () (declare (not safe)) (_g299853299908_)))))
              (let () (declare (not safe)) (_g299853299908_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl299857300022_))
                                              (let ((___splice306002306003_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl299857300022_
                                                        '0))))
                                                (let ((_tl299888299928_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice306002306003_
                                                          '1)))
                                                      (_target299886299925_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice306002306003_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl299888299928_))
                                                      (___match306044306045_
                                                       _e299859300015_
                                                       _hd299858300019_
                                                       _tl299857300022_
                                                       ___splice306002306003_
                                                       _target299886299925_
                                                       _tl299888299928_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g299853299908_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g299853299908_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl299857300022_))
                                          (let ((___splice306002306003_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl299857300022_
                                                    '0))))
                                            (let ((_tl299888299928_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306002306003_
                                                      '1)))
                                                  (_target299886299925_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306002306003_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl299888299928_))
                                                  (___match306044306045_
                                                   _e299859300015_
                                                   _hd299858300019_
                                                   _tl299857300022_
                                                   ___splice306002306003_
                                                   _target299886299925_
                                                   _tl299888299928_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g299853299908_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g299853299908_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl299857300022_))
                                    (let ((___splice306002306003_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl299857300022_
                                              '0))))
                                      (let ((_tl299888299928_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306002306003_
                                                '1)))
                                            (_target299886299925_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306002306003_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299888299928_))
                                            (___match306044306045_
                                             _e299859300015_
                                             _hd299858300019_
                                             _tl299857300022_
                                             ___splice306002306003_
                                             _target299886299925_
                                             _tl299888299928_)
                                            (let ()
                                              (declare (not safe))
                                              (_g299853299908_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g299853299908_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl299857300022_))
                            (let ((___splice306002306003_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl299857300022_
                                      '0))))
                              (let ((_tl299888299928_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice306002306003_
                                        '1)))
                                    (_target299886299925_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice306002306003_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299888299928_))
                                    (___match306044306045_
                                     _e299859300015_
                                     _hd299858300019_
                                     _tl299857300022_
                                     ___splice306002306003_
                                     _target299886299925_
                                     _tl299888299928_)
                                    (let ()
                                      (declare (not safe))
                                      (_g299853299908_)))))
                            (let () (declare (not safe)) (_g299853299908_))))))
                (let () (declare (not safe)) (_g299853299908_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx300130_)
      (let* ((_g300134300152_
              (lambda (_g300135300148_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300135300148_))))
             (_g300133300207_
              (lambda (_g300135300156_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300135300156_))
                    (let ((_e300140300159_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300135300156_))))
                      (let ((_hd300139300163_
                             (let ()
                               (declare (not safe))
                               (##car _e300140300159_)))
                            (_tl300138300166_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300140300159_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl300138300166_))
                            (let ((_e300143300169_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl300138300166_))))
                              (let ((_hd300142300173_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e300143300169_)))
                                    (_tl300141300176_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e300143300169_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl300141300176_))
                                    (let ((_e300146300179_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl300141300176_))))
                                      (let ((_hd300145300183_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300146300179_)))
                                            (_tl300144300186_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300146300179_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300144300186_))
                                            ((lambda (_L300189_ _L300191_)
                                               (let ((__tmp306437
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp306424
                                                      (let ((__tmp306433
                                                             (let ((__tmp306436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306434
                            (let ((__tmp306435
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp306435 '()))))
                       (declare (not safe))
                       (cons __tmp306436 __tmp306434)))
                    (__tmp306425
                     (let ((__tmp306430
                            (let ((__tmp306432
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306431
                                   (let ()
                                     (declare (not safe))
                                     (cons _L300191_ '()))))
                              (declare (not safe))
                              (cons __tmp306432 __tmp306431)))
                           (__tmp306426
                            (let ((__tmp306427
                                   (let ((__tmp306429
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp306428
                                          (let ()
                                            (declare (not safe))
                                            (cons _L300189_ '()))))
                                     (declare (not safe))
                                     (cons __tmp306429 __tmp306428))))
                              (declare (not safe))
                              (cons __tmp306427 '()))))
                       (declare (not safe))
                       (cons __tmp306430 __tmp306426))))
                (declare (not safe))
                (cons __tmp306433 __tmp306425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp306437
                                                       __tmp306424)))
                                             _hd300145300183_
                                             _hd300142300173_)
                                            (_g300134300152_
                                             _g300135300156_))))
                                    (_g300134300152_ _g300135300156_))))
                            (_g300134300152_ _g300135300156_))))
                    (_g300134300152_ _g300135300156_)))))
        (_g300133300207_ _$stx300130_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx300211_)
      (let* ((_g300215300233_
              (lambda (_g300216300229_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300216300229_))))
             (_g300214300288_
              (lambda (_g300216300237_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300216300237_))
                    (let ((_e300221300240_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300216300237_))))
                      (let ((_hd300220300244_
                             (let ()
                               (declare (not safe))
                               (##car _e300221300240_)))
                            (_tl300219300247_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300221300240_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl300219300247_))
                            (let ((_e300224300250_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl300219300247_))))
                              (let ((_hd300223300254_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e300224300250_)))
                                    (_tl300222300257_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e300224300250_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl300222300257_))
                                    (let ((_e300227300260_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl300222300257_))))
                                      (let ((_hd300226300264_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300227300260_)))
                                            (_tl300225300267_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300227300260_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300225300267_))
                                            ((lambda (_L300270_ _L300272_)
                                               (let ((__tmp306451
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp306438
                                                      (let ((__tmp306447
                                                             (let ((__tmp306450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306448
                            (let ((__tmp306449
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp306449 '()))))
                       (declare (not safe))
                       (cons __tmp306450 __tmp306448)))
                    (__tmp306439
                     (let ((__tmp306444
                            (let ((__tmp306446
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306445
                                   (let ()
                                     (declare (not safe))
                                     (cons _L300272_ '()))))
                              (declare (not safe))
                              (cons __tmp306446 __tmp306445)))
                           (__tmp306440
                            (let ((__tmp306441
                                   (let ((__tmp306443
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp306442
                                          (let ()
                                            (declare (not safe))
                                            (cons _L300270_ '()))))
                                     (declare (not safe))
                                     (cons __tmp306443 __tmp306442))))
                              (declare (not safe))
                              (cons __tmp306441 '()))))
                       (declare (not safe))
                       (cons __tmp306444 __tmp306440))))
                (declare (not safe))
                (cons __tmp306447 __tmp306439))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp306451
                                                       __tmp306438)))
                                             _hd300226300264_
                                             _hd300223300254_)
                                            (_g300215300233_
                                             _g300216300237_))))
                                    (_g300215300233_ _g300216300237_))))
                            (_g300215300233_ _g300216300237_))))
                    (_g300215300233_ _g300216300237_)))))
        (_g300214300288_ _$stx300211_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx300292_)
      (let* ((___stx306047306048_ _$stx300292_)
             (_g300299300370_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx306047306048_)))))
        (let ((___kont306050306051_
               (lambda (_L300661_ _L300663_)
                 (let ((__tmp306457
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306452
                        (let ((__tmp306453
                               (let ((__tmp306454
                                      (let ((__tmp306456
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306455
                                             (let ()
                                               (declare (not safe))
                                               (cons _L300661_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306456 __tmp306455))))
                                 (declare (not safe))
                                 (cons __tmp306454 '()))))
                          (declare (not safe))
                          (cons _L300663_ __tmp306453))))
                   (declare (not safe))
                   (cons __tmp306457 __tmp306452))))
              (___kont306052306053_
               (lambda (_L300580_ _L300582_)
                 (let ((__tmp306466
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306458
                        (let ((__tmp306459
                               (let ((__tmp306460
                                      (let ((__tmp306465
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306461
                                             (let ((__tmp306462
                                                    (lambda (_g300601300604_
                                                             _g300602300607_)
                                                      (let ((__tmp306463
                                                             (let ((__tmp306464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g300601300604_ __tmp306464))))
                (declare (not safe))
                (cons __tmp306463 _g300602300607_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp306462
                                                       '()
                                                       _L300580_))))
                                        (declare (not safe))
                                        (cons __tmp306465 __tmp306461))))
                                 (declare (not safe))
                                 (cons __tmp306460 '()))))
                          (declare (not safe))
                          (cons _L300582_ __tmp306459))))
                   (declare (not safe))
                   (cons __tmp306466 __tmp306458))))
              (___kont306056306057_
               (lambda (_L300492_ _L300494_)
                 (let ((__tmp306473
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306467
                        (let ((__tmp306468
                               (let ((__tmp306469
                                      (let ((__tmp306472
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306470
                                             (let ((__tmp306471
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L300492_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp306471))))
                                        (declare (not safe))
                                        (cons __tmp306472 __tmp306470))))
                                 (declare (not safe))
                                 (cons __tmp306469 '()))))
                          (declare (not safe))
                          (cons _L300494_ __tmp306468))))
                   (declare (not safe))
                   (cons __tmp306473 __tmp306467))))
              (___kont306058306059_
               (lambda (_L300427_ _L300429_)
                 (let ((__tmp306483
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306474
                        (let ((__tmp306475
                               (let ((__tmp306476
                                      (let ((__tmp306482
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306477
                                             (let ((__tmp306478
                                                    (let ((__tmp306479
                                                           (lambda (_g300446300449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g300447300452_)
                     (let ((__tmp306480
                            (let ((__tmp306481
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g300446300449_ __tmp306481))))
                       (declare (not safe))
                       (cons __tmp306480 _g300447300452_)))))
              (declare (not safe))
              (foldr1 __tmp306479 '() _L300427_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp306478))))
                                        (declare (not safe))
                                        (cons __tmp306482 __tmp306477))))
                                 (declare (not safe))
                                 (cons __tmp306476 '()))))
                          (declare (not safe))
                          (cons _L300429_ __tmp306475))))
                   (declare (not safe))
                   (cons __tmp306483 __tmp306474)))))
          (let* ((___match306166306167_
                  (lambda (_e300352300377_
                           _hd300351300381_
                           _tl300350300384_
                           _e300355300387_
                           _hd300354300391_
                           _tl300353300394_
                           ___splice306060306061_
                           _target300356300397_
                           _tl300358300400_)
                    (letrec ((_loop300359300403_
                              (lambda (_hd300357300407_ _arity300363300410_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd300357300407_))
                                    (let ((_e300360300413_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd300357300407_))))
                                      (let ((_lp-tl300362300420_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300360300413_)))
                                            (_lp-hd300361300417_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300360300413_))))
                                        (_loop300359300403_
                                         _lp-tl300362300420_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd300361300417_
                                                 _arity300363300410_)))))
                                    (let ((_arity300364300423_
                                           (reverse _arity300363300410_)))
                                      (___kont306058306059_
                                       _arity300364300423_
                                       _hd300354300391_))))))
                      (_loop300359300403_ _target300356300397_ '()))))
                 (___match306126306127_
                  (lambda (_e300320300516_
                           _hd300319300520_
                           _tl300318300523_
                           _e300323300526_
                           _hd300322300530_
                           _tl300321300533_
                           _e300326300536_
                           _hd300325300540_
                           _tl300324300543_
                           _e300327300546_
                           ___splice306054306055_
                           _target300328300550_
                           _tl300330300553_)
                    (letrec ((_loop300331300556_
                              (lambda (_hd300329300560_ _arity300335300563_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd300329300560_))
                                    (let ((_e300332300566_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd300329300560_))))
                                      (let ((_lp-tl300334300573_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300332300566_)))
                                            (_lp-hd300333300570_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300332300566_))))
                                        (_loop300331300556_
                                         _lp-tl300334300573_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd300333300570_
                                                 _arity300335300563_)))))
                                    (let ((_arity300336300576_
                                           (reverse _arity300335300563_)))
                                      (___kont306052306053_
                                       _arity300336300576_
                                       _hd300322300530_))))))
                      (_loop300331300556_ _target300328300550_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx306047306048_))
                (let ((_e300305300617_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx306047306048_))))
                  (let ((_tl300303300624_
                         (let () (declare (not safe)) (##cdr _e300305300617_)))
                        (_hd300304300621_
                         (let ()
                           (declare (not safe))
                           (##car _e300305300617_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl300303300624_))
                        (let ((_e300308300627_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl300303300624_))))
                          (let ((_tl300306300634_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e300308300627_)))
                                (_hd300307300631_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e300308300627_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl300306300634_))
                                (let ((_e300311300637_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl300306300634_))))
                                  (let ((_tl300309300644_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e300311300637_)))
                                        (_hd300310300641_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e300311300637_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd300310300641_))
                                        (let ((_e300312300647_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd300310300641_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e300312300647_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl300309300644_))
                                                  (let ((_e300315300651_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl300309300644_))))
                                                    (let ((_tl300313300658_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e300315300651_)))
                                                          (_hd300314300655_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e300315300651_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl300313300658_))
                                                          (___kont306050306051_
                                                           _hd300314300655_
                                                           _hd300307300631_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl300309300644_))
                      (let ((___splice306054306055_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl300309300644_ '0))))
                        (let ((_tl300330300553_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306054306055_ '1)))
                              (_target300328300550_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306054306055_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl300330300553_))
                              (___match306126306127_
                               _e300305300617_
                               _hd300304300621_
                               _tl300303300624_
                               _e300308300627_
                               _hd300307300631_
                               _tl300306300634_
                               _e300311300637_
                               _hd300310300641_
                               _tl300309300644_
                               _e300312300647_
                               ___splice306054306055_
                               _target300328300550_
                               _tl300330300553_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl300306300634_))
                                  (let ((___splice306060306061_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl300306300634_
                                            '0))))
                                    (let ((_tl300358300400_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice306060306061_
                                              '1)))
                                          (_target300356300397_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice306060306061_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl300358300400_))
                                          (___match306166306167_
                                           _e300305300617_
                                           _hd300304300621_
                                           _tl300303300624_
                                           _e300308300627_
                                           _hd300307300631_
                                           _tl300306300634_
                                           ___splice306060306061_
                                           _target300356300397_
                                           _tl300358300400_)
                                          (let ()
                                            (declare (not safe))
                                            (_g300299300370_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g300299300370_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl300306300634_))
                          (let ((___splice306060306061_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl300306300634_
                                    '0))))
                            (let ((_tl300358300400_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice306060306061_ '1)))
                                  (_target300356300397_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice306060306061_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl300358300400_))
                                  (___match306166306167_
                                   _e300305300617_
                                   _hd300304300621_
                                   _tl300303300624_
                                   _e300308300627_
                                   _hd300307300631_
                                   _tl300306300634_
                                   ___splice306060306061_
                                   _target300356300397_
                                   _tl300358300400_)
                                  (let ()
                                    (declare (not safe))
                                    (_g300299300370_)))))
                          (let () (declare (not safe)) (_g300299300370_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl300309300644_))
                                                      (let ((___splice306054306055_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl300309300644_ '0))))
                (let ((_tl300330300553_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306054306055_ '1)))
                      (_target300328300550_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306054306055_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl300330300553_))
                      (___match306126306127_
                       _e300305300617_
                       _hd300304300621_
                       _tl300303300624_
                       _e300308300627_
                       _hd300307300631_
                       _tl300306300634_
                       _e300311300637_
                       _hd300310300641_
                       _tl300309300644_
                       _e300312300647_
                       ___splice306054306055_
                       _target300328300550_
                       _tl300330300553_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl300309300644_))
                          (___kont306056306057_
                           _hd300310300641_
                           _hd300307300631_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl300306300634_))
                              (let ((___splice306060306061_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl300306300634_
                                        '0))))
                                (let ((_tl300358300400_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice306060306061_
                                          '1)))
                                      (_target300356300397_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice306060306061_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300358300400_))
                                      (___match306166306167_
                                       _e300305300617_
                                       _hd300304300621_
                                       _tl300303300624_
                                       _e300308300627_
                                       _hd300307300631_
                                       _tl300306300634_
                                       ___splice306060306061_
                                       _target300356300397_
                                       _tl300358300400_)
                                      (let ()
                                        (declare (not safe))
                                        (_g300299300370_)))))
                              (let ()
                                (declare (not safe))
                                (_g300299300370_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl300309300644_))
                  (___kont306056306057_ _hd300310300641_ _hd300307300631_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl300306300634_))
                      (let ((___splice306060306061_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl300306300634_ '0))))
                        (let ((_tl300358300400_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306060306061_ '1)))
                              (_target300356300397_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306060306061_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl300358300400_))
                              (___match306166306167_
                               _e300305300617_
                               _hd300304300621_
                               _tl300303300624_
                               _e300308300627_
                               _hd300307300631_
                               _tl300306300634_
                               ___splice306060306061_
                               _target300356300397_
                               _tl300358300400_)
                              (let ()
                                (declare (not safe))
                                (_g300299300370_)))))
                      (let () (declare (not safe)) (_g300299300370_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl300309300644_))
                                                  (___kont306056306057_
                                                   _hd300310300641_
                                                   _hd300307300631_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl300306300634_))
                                                      (let ((___splice306060306061_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl300306300634_ '0))))
                (let ((_tl300358300400_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306060306061_ '1)))
                      (_target300356300397_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306060306061_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl300358300400_))
                      (___match306166306167_
                       _e300305300617_
                       _hd300304300621_
                       _tl300303300624_
                       _e300308300627_
                       _hd300307300631_
                       _tl300306300634_
                       ___splice306060306061_
                       _target300356300397_
                       _tl300358300400_)
                      (let () (declare (not safe)) (_g300299300370_)))))
              (let () (declare (not safe)) (_g300299300370_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300309300644_))
                                            (___kont306056306057_
                                             _hd300310300641_
                                             _hd300307300631_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl300306300634_))
                                                (let ((___splice306060306061_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl300306300634_
                                                          '0))))
                                                  (let ((_tl300358300400_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice306060306061_
                                                            '1)))
                                                        (_target300356300397_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice306060306061_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl300358300400_))
                                                        (___match306166306167_
                                                         _e300305300617_
                                                         _hd300304300621_
                                                         _tl300303300624_
                                                         _e300308300627_
                                                         _hd300307300631_
                                                         _tl300306300634_
                                                         ___splice306060306061_
                                                         _target300356300397_
                                                         _tl300358300400_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g300299300370_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g300299300370_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl300306300634_))
                                    (let ((___splice306060306061_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl300306300634_
                                              '0))))
                                      (let ((_tl300358300400_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306060306061_
                                                '1)))
                                            (_target300356300397_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306060306061_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300358300400_))
                                            (___match306166306167_
                                             _e300305300617_
                                             _hd300304300621_
                                             _tl300303300624_
                                             _e300308300627_
                                             _hd300307300631_
                                             _tl300306300634_
                                             ___splice306060306061_
                                             _target300356300397_
                                             _tl300358300400_)
                                            (let ()
                                              (declare (not safe))
                                              (_g300299300370_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g300299300370_))))))
                        (let () (declare (not safe)) (_g300299300370_)))))
                (let () (declare (not safe)) (_g300299300370_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx300687_)
      (let* ((___stx306169306170_ _$stx300687_)
             (_g300692300727_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx306169306170_)))))
        (let ((___kont306172306173_
               (lambda (_L300849_ _L300851_)
                 (let ((__tmp306489
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306484
                        (let ((__tmp306485
                               (let ((__tmp306486
                                      (let ((__tmp306488
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306487
                                             (let ()
                                               (declare (not safe))
                                               (cons _L300849_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306488 __tmp306487))))
                                 (declare (not safe))
                                 (cons __tmp306486 '()))))
                          (declare (not safe))
                          (cons _L300851_ __tmp306485))))
                   (declare (not safe))
                   (cons __tmp306489 __tmp306484))))
              (___kont306174306175_
               (lambda (_L300784_ _L300786_)
                 (let ((__tmp306498
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306490
                        (let ((__tmp306491
                               (let ((__tmp306492
                                      (let ((__tmp306497
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306493
                                             (let ((__tmp306494
                                                    (lambda (_g300803300806_
                                                             _g300804300809_)
                                                      (let ((__tmp306495
                                                             (let ((__tmp306496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g300803300806_ __tmp306496))))
                (declare (not safe))
                (cons __tmp306495 _g300804300809_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp306494
                                                       '()
                                                       _L300784_))))
                                        (declare (not safe))
                                        (cons __tmp306497 __tmp306493))))
                                 (declare (not safe))
                                 (cons __tmp306492 '()))))
                          (declare (not safe))
                          (cons _L300786_ __tmp306491))))
                   (declare (not safe))
                   (cons __tmp306498 __tmp306490)))))
          (let ((___match306218306219_
                 (lambda (_e300709300734_
                          _hd300708300738_
                          _tl300707300741_
                          _e300712300744_
                          _hd300711300748_
                          _tl300710300751_
                          ___splice306176306177_
                          _target300713300754_
                          _tl300715300757_)
                   (letrec ((_loop300716300760_
                             (lambda (_hd300714300764_ _arity300720300767_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd300714300764_))
                                   (let ((_e300717300770_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd300714300764_))))
                                     (let ((_lp-tl300719300777_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e300717300770_)))
                                           (_lp-hd300718300774_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e300717300770_))))
                                       (_loop300716300760_
                                        _lp-tl300719300777_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd300718300774_
                                                _arity300720300767_)))))
                                   (let ((_arity300721300780_
                                          (reverse _arity300720300767_)))
                                     (___kont306174306175_
                                      _arity300721300780_
                                      _hd300711300748_))))))
                     (_loop300716300760_ _target300713300754_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx306169306170_))
                (let ((_e300698300819_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx306169306170_))))
                  (let ((_tl300696300826_
                         (let () (declare (not safe)) (##cdr _e300698300819_)))
                        (_hd300697300823_
                         (let ()
                           (declare (not safe))
                           (##car _e300698300819_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl300696300826_))
                        (let ((_e300701300829_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl300696300826_))))
                          (let ((_tl300699300836_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e300701300829_)))
                                (_hd300700300833_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e300701300829_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl300699300836_))
                                (let ((_e300704300839_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl300699300836_))))
                                  (let ((_tl300702300846_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e300704300839_)))
                                        (_hd300703300843_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e300704300839_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl300702300846_))
                                        (___kont306172306173_
                                         _hd300703300843_
                                         _hd300700300833_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl300699300836_))
                                            (let ((___splice306176306177_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl300699300836_
                                                      '0))))
                                              (let ((_tl300715300757_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice306176306177_
                                                        '1)))
                                                    (_target300713300754_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice306176306177_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl300715300757_))
                                                    (___match306218306219_
                                                     _e300698300819_
                                                     _hd300697300823_
                                                     _tl300696300826_
                                                     _e300701300829_
                                                     _hd300700300833_
                                                     _tl300699300836_
                                                     ___splice306176306177_
                                                     _target300713300754_
                                                     _tl300715300757_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g300692300727_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g300692300727_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl300699300836_))
                                    (let ((___splice306176306177_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl300699300836_
                                              '0))))
                                      (let ((_tl300715300757_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306176306177_
                                                '1)))
                                            (_target300713300754_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306176306177_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300715300757_))
                                            (___match306218306219_
                                             _e300698300819_
                                             _hd300697300823_
                                             _tl300696300826_
                                             _e300701300829_
                                             _hd300700300833_
                                             _tl300699300836_
                                             ___splice306176306177_
                                             _target300713300754_
                                             _tl300715300757_)
                                            (let ()
                                              (declare (not safe))
                                              (_g300692300727_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g300692300727_))))))
                        (let () (declare (not safe)) (_g300692300727_)))))
                (let () (declare (not safe)) (_g300692300727_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx300871_)
      (let* ((_g300875300910_
              (lambda (_g300876300906_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300876300906_))))
             (_g300874301038_
              (lambda (_g300876300914_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300876300914_))
                    (let ((_e300881300917_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300876300914_))))
                      (let ((_hd300880300921_
                             (let ()
                               (declare (not safe))
                               (##car _e300881300917_)))
                            (_tl300879300924_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300881300917_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl300879300924_))
                            (let ((_g306499_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl300879300924_
                                      '0))))
                              (begin
                                (let ((_g306500_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306499_)
                                             (##vector-length _g306499_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306500_ 2)))
                                      (error "Context expects 2 values"
                                             _g306500_)))
                                (let ((_target300882300927_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306499_ 0)))
                                      (_tl300884300930_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306499_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300884300930_))
                                      (letrec ((_loop300885300933_
                                                (lambda (_hd300883300937_
                                                         _arity300889300940_
                                                         _prim300890300942_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd300883300937_))
                                                      (let ((_e300886300945_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd300883300937_))))
                (let ((_lp-hd300887300949_
                       (let () (declare (not safe)) (##car _e300886300945_)))
                      (_lp-tl300888300952_
                       (let () (declare (not safe)) (##cdr _e300886300945_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd300887300949_))
                      (let ((_e300895300955_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd300887300949_))))
                        (let ((_hd300894300959_
                               (let ()
                                 (declare (not safe))
                                 (##car _e300895300955_)))
                              (_tl300893300962_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e300895300955_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl300893300962_))
                              (let ((_g306509_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl300893300962_
                                        '0))))
                                (begin
                                  (let ((_g306510_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g306509_)
                                               (##vector-length _g306509_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g306510_ 2)))
                                        (error "Context expects 2 values"
                                               _g306510_)))
                                  (let ((_target300896300965_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306509_ 0)))
                                        (_tl300898300968_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306509_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl300898300968_))
                                        (letrec ((_loop300899300971_
                                                  (lambda (_hd300897300975_
                                                           _arity300903300978_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd300897300975_))
                                                        (let ((_e300900300981_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd300897300975_))))
                  (let ((_lp-hd300901300985_
                         (let () (declare (not safe)) (##car _e300900300981_)))
                        (_lp-tl300902300988_
                         (let ()
                           (declare (not safe))
                           (##cdr _e300900300981_))))
                    (_loop300899300971_
                     _lp-tl300902300988_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd300901300985_ _arity300903300978_)))))
                (let ((_arity300904300991_ (reverse _arity300903300978_)))
                  (_loop300885300933_
                   _lp-tl300888300952_
                   (let ()
                     (declare (not safe))
                     (cons _arity300904300991_ _arity300889300940_))
                   (let ()
                     (declare (not safe))
                     (cons _hd300894300959_ _prim300890300942_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop300899300971_
                                           _target300896300965_
                                           '()))
                                        (_g300875300910_ _g300876300914_)))))
                              (_g300875300910_ _g300876300914_))))
                      (_g300875300910_ _g300876300914_))))
              (let ((_arity300891300995_ (reverse _arity300889300940_))
                    (_prim300892300998_ (reverse _prim300890300942_)))
                ((lambda (_L301001_ _L301003_)
                   (let ((__tmp306508
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306501
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L301001_
                               _L301003_))
                            (let ((__tmp306502
                                   (lambda (_g301018301024_
                                            _g301019301027_
                                            _g301020301029_)
                                     (let ((__tmp306503
                                            (let ((__tmp306507
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp306504
                                                   (let ((__tmp306505
                                                          (let ((__tmp306506
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g301021301032_ _g301022301035_)
                           (let ()
                             (declare (not safe))
                             (cons _g301021301032_ _g301022301035_)))))
                    (declare (not safe))
                    (foldr1 __tmp306506 '() _g301018301024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g301019301027_
                                                           __tmp306505))))
                                              (declare (not safe))
                                              (cons __tmp306507 __tmp306504))))
                                       (declare (not safe))
                                       (cons __tmp306503 _g301020301029_)))))
                              (declare (not safe))
                              (foldr2 __tmp306502 '() _L301001_ _L301003_)))))
                     (declare (not safe))
                     (cons __tmp306508 __tmp306501)))
                 _arity300891300995_
                 _prim300892300998_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop300885300933_
                                         _target300882300927_
                                         '()
                                         '()))
                                      (_g300875300910_ _g300876300914_)))))
                            (_g300875300910_ _g300876300914_))))
                    (_g300875300910_ _g300876300914_)))))
        (_g300874301038_ _$stx300871_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx301044_)
      (let* ((_g301048301083_
              (lambda (_g301049301079_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301049301079_))))
             (_g301047301211_
              (lambda (_g301049301087_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301049301087_))
                    (let ((_e301054301090_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301049301087_))))
                      (let ((_hd301053301094_
                             (let ()
                               (declare (not safe))
                               (##car _e301054301090_)))
                            (_tl301052301097_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301054301090_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl301052301097_))
                            (let ((_g306511_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl301052301097_
                                      '0))))
                              (begin
                                (let ((_g306512_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306511_)
                                             (##vector-length _g306511_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306512_ 2)))
                                      (error "Context expects 2 values"
                                             _g306512_)))
                                (let ((_target301055301100_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306511_ 0)))
                                      (_tl301057301103_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306511_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl301057301103_))
                                      (letrec ((_loop301058301106_
                                                (lambda (_hd301056301110_
                                                         _arity301062301113_
                                                         _prim301063301115_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd301056301110_))
                                                      (let ((_e301059301118_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd301056301110_))))
                (let ((_lp-hd301060301122_
                       (let () (declare (not safe)) (##car _e301059301118_)))
                      (_lp-tl301061301125_
                       (let () (declare (not safe)) (##cdr _e301059301118_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd301060301122_))
                      (let ((_e301068301128_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd301060301122_))))
                        (let ((_hd301067301132_
                               (let ()
                                 (declare (not safe))
                                 (##car _e301068301128_)))
                              (_tl301066301135_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e301068301128_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl301066301135_))
                              (let ((_g306521_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl301066301135_
                                        '0))))
                                (begin
                                  (let ((_g306522_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g306521_)
                                               (##vector-length _g306521_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g306522_ 2)))
                                        (error "Context expects 2 values"
                                               _g306522_)))
                                  (let ((_target301069301138_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306521_ 0)))
                                        (_tl301071301141_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306521_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl301071301141_))
                                        (letrec ((_loop301072301144_
                                                  (lambda (_hd301070301148_
                                                           _arity301076301151_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd301070301148_))
                                                        (let ((_e301073301154_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd301070301148_))))
                  (let ((_lp-hd301074301158_
                         (let () (declare (not safe)) (##car _e301073301154_)))
                        (_lp-tl301075301161_
                         (let ()
                           (declare (not safe))
                           (##cdr _e301073301154_))))
                    (_loop301072301144_
                     _lp-tl301075301161_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd301074301158_ _arity301076301151_)))))
                (let ((_arity301077301164_ (reverse _arity301076301151_)))
                  (_loop301058301106_
                   _lp-tl301061301125_
                   (let ()
                     (declare (not safe))
                     (cons _arity301077301164_ _arity301062301113_))
                   (let ()
                     (declare (not safe))
                     (cons _hd301067301132_ _prim301063301115_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop301072301144_
                                           _target301069301138_
                                           '()))
                                        (_g301048301083_ _g301049301087_)))))
                              (_g301048301083_ _g301049301087_))))
                      (_g301048301083_ _g301049301087_))))
              (let ((_arity301064301168_ (reverse _arity301062301113_))
                    (_prim301065301171_ (reverse _prim301063301115_)))
                ((lambda (_L301174_ _L301176_)
                   (let ((__tmp306520
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306513
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L301174_
                               _L301176_))
                            (let ((__tmp306514
                                   (lambda (_g301191301197_
                                            _g301192301200_
                                            _g301193301202_)
                                     (let ((__tmp306515
                                            (let ((__tmp306519
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp306516
                                                   (let ((__tmp306517
                                                          (let ((__tmp306518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g301194301205_ _g301195301208_)
                           (let ()
                             (declare (not safe))
                             (cons _g301194301205_ _g301195301208_)))))
                    (declare (not safe))
                    (foldr1 __tmp306518 '() _g301191301197_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g301192301200_
                                                           __tmp306517))))
                                              (declare (not safe))
                                              (cons __tmp306519 __tmp306516))))
                                       (declare (not safe))
                                       (cons __tmp306515 _g301193301202_)))))
                              (declare (not safe))
                              (foldr2 __tmp306514 '() _L301174_ _L301176_)))))
                     (declare (not safe))
                     (cons __tmp306520 __tmp306513)))
                 _arity301064301168_
                 _prim301065301171_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop301058301106_
                                         _target301055301100_
                                         '()
                                         '()))
                                      (_g301048301083_ _g301049301087_)))))
                            (_g301048301083_ _g301049301087_))))
                    (_g301048301083_ _g301049301087_)))))
        (_g301047301211_ _$stx301044_)))))
