(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx298120_)
      (let* ((_g298124298142_
              (lambda (_g298125298138_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298125298138_))))
             (_g298123298197_
              (lambda (_g298125298146_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298125298146_))
                    (let ((_e298130298149_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298125298146_))))
                      (let ((_hd298129298153_
                             (let ()
                               (declare (not safe))
                               (##car _e298130298149_)))
                            (_tl298128298156_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298130298149_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298128298156_))
                            (let ((_e298133298159_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298128298156_))))
                              (let ((_hd298132298163_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298133298159_)))
                                    (_tl298131298166_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298133298159_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298131298166_))
                                    (let ((_e298136298169_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298131298166_))))
                                      (let ((_hd298135298173_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298136298169_)))
                                            (_tl298134298176_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298136298169_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298134298176_))
                                            ((lambda (_L298179_ _L298181_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L298181_))
                                                   (let ((__tmp306229
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp306224
                                                          (let ((__tmp306226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp306228
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp306227
                                (let ()
                                  (declare (not safe))
                                  (cons _L298181_ '()))))
                           (declare (not safe))
                           (cons __tmp306228 __tmp306227)))
                        (__tmp306225
                         (let () (declare (not safe)) (cons _L298179_ '()))))
                    (declare (not safe))
                    (cons __tmp306226 __tmp306225))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp306229
                                                           __tmp306224))
                                                   (_g298124298142_
                                                    _g298125298146_)))
                                             _hd298135298173_
                                             _hd298132298163_)
                                            (_g298124298142_
                                             _g298125298146_))))
                                    (_g298124298142_ _g298125298146_))))
                            (_g298124298142_ _g298125298146_))))
                    (_g298124298142_ _g298125298146_)))))
        (_g298123298197_ _$stx298120_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx298201_)
      (let* ((_g298205298234_
              (lambda (_g298206298230_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298206298230_))))
             (_g298204298334_
              (lambda (_g298206298238_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298206298238_))
                    (let ((_e298211298241_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298206298238_))))
                      (let ((_hd298210298245_
                             (let ()
                               (declare (not safe))
                               (##car _e298211298241_)))
                            (_tl298209298248_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298211298241_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl298209298248_))
                            (let ((_g306230_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl298209298248_
                                      '0))))
                              (begin
                                (let ((_g306231_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306230_)
                                             (##vector-length _g306230_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306231_ 2)))
                                      (error "Context expects 2 values"
                                             _g306231_)))
                                (let ((_target298212298251_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306230_ 0)))
                                      (_tl298214298254_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306230_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298214298254_))
                                      (letrec ((_loop298215298257_
                                                (lambda (_hd298213298261_
                                                         _type298219298264_
                                                         _symbol298220298266_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd298213298261_))
                                                      (let ((_e298216298269_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd298213298261_))))
                (let ((_lp-hd298217298273_
                       (let () (declare (not safe)) (##car _e298216298269_)))
                      (_lp-tl298218298276_
                       (let () (declare (not safe)) (##cdr _e298216298269_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd298217298273_))
                      (let ((_e298225298279_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd298217298273_))))
                        (let ((_hd298224298283_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298225298279_)))
                              (_tl298223298286_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298225298279_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl298223298286_))
                              (let ((_e298228298289_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl298223298286_))))
                                (let ((_hd298227298293_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298228298289_)))
                                      (_tl298226298296_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298228298289_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298226298296_))
                                      (_loop298215298257_
                                       _lp-tl298218298276_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd298227298293_
                                               _type298219298264_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd298224298283_
                                               _symbol298220298266_)))
                                      (_g298205298234_ _g298206298238_))))
                              (_g298205298234_ _g298206298238_))))
                      (_g298205298234_ _g298206298238_))))
              (let ((_type298221298299_ (reverse _type298219298264_))
                    (_symbol298222298302_ (reverse _symbol298220298266_)))
                ((lambda (_L298305_ _L298307_)
                   (let ((__tmp306238
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306232
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L298305_
                               _L298307_))
                            (let ((__tmp306233
                                   (lambda (_g298322298326_
                                            _g298323298329_
                                            _g298324298331_)
                                     (let ((__tmp306234
                                            (let ((__tmp306237
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp306235
                                                   (let ((__tmp306236
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g298322298326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g298323298329_
                                                           __tmp306236))))
                                              (declare (not safe))
                                              (cons __tmp306237 __tmp306235))))
                                       (declare (not safe))
                                       (cons __tmp306234 _g298324298331_)))))
                              (declare (not safe))
                              (foldr2 __tmp306233 '() _L298305_ _L298307_)))))
                     (declare (not safe))
                     (cons __tmp306238 __tmp306232)))
                 _type298221298299_
                 _symbol298222298302_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop298215298257_
                                         _target298212298251_
                                         '()
                                         '()))
                                      (_g298205298234_ _g298206298238_)))))
                            (_g298205298234_ _g298206298238_))))
                    (_g298205298234_ _g298206298238_)))))
        (_g298204298334_ _$stx298201_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx298339_)
      (let* ((___stx305789305790_ _$stx298339_)
             (_g298344298386_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305789305790_)))))
        (let ((___kont305792305793_
               (lambda (_L298514_ _L298516_ _L298517_ _L298518_)
                 (let ((__tmp306252
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp306239
                        (let ((__tmp306249
                               (let ((__tmp306251
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306250
                                      (let ()
                                        (declare (not safe))
                                        (cons _L298518_ '()))))
                                 (declare (not safe))
                                 (cons __tmp306251 __tmp306250)))
                              (__tmp306240
                               (let ((__tmp306246
                                      (let ((__tmp306248
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306247
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298517_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306248 __tmp306247)))
                                     (__tmp306241
                                      (let ((__tmp306243
                                             (let ((__tmp306245
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306244
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298516_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306245 __tmp306244)))
                                            (__tmp306242
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298514_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306243 __tmp306242))))
                                 (declare (not safe))
                                 (cons __tmp306246 __tmp306241))))
                          (declare (not safe))
                          (cons __tmp306249 __tmp306240))))
                   (declare (not safe))
                   (cons __tmp306252 __tmp306239))))
              (___kont305794305795_
               (lambda (_L298433_ _L298435_ _L298436_ _L298437_)
                 (let ((__tmp306253
                        (let ((__tmp306254
                               (let ((__tmp306255
                                      (let ((__tmp306256
                                             (let ((__tmp306257
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp306257 '()))))
                                        (declare (not safe))
                                        (cons _L298433_ __tmp306256))))
                                 (declare (not safe))
                                 (cons _L298435_ __tmp306255))))
                          (declare (not safe))
                          (cons _L298436_ __tmp306254))))
                   (declare (not safe))
                   (cons _L298437_ __tmp306253)))))
          (let ((___match305828305829_
                 (lambda (_e298352298464_
                          _hd298351298468_
                          _tl298350298471_
                          _e298355298474_
                          _hd298354298478_
                          _tl298353298481_
                          _e298358298484_
                          _hd298357298488_
                          _tl298356298491_
                          _e298361298494_
                          _hd298360298498_
                          _tl298359298501_
                          _e298364298504_
                          _hd298363298508_
                          _tl298362298511_)
                   (let ((_L298514_ _hd298363298508_)
                         (_L298516_ _hd298360298498_)
                         (_L298517_ _hd298357298488_)
                         (_L298518_ _hd298354298478_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L298518_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L298517_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L298516_)))
                         (___kont305792305793_
                          _L298514_
                          _L298516_
                          _L298517_
                          _L298518_)
                         (let () (declare (not safe)) (_g298344298386_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx305789305790_))
                (let ((_e298352298464_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx305789305790_))))
                  (let ((_tl298350298471_
                         (let () (declare (not safe)) (##cdr _e298352298464_)))
                        (_hd298351298468_
                         (let ()
                           (declare (not safe))
                           (##car _e298352298464_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl298350298471_))
                        (let ((_e298355298474_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl298350298471_))))
                          (let ((_tl298353298481_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e298355298474_)))
                                (_hd298354298478_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e298355298474_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl298353298481_))
                                (let ((_e298358298484_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl298353298481_))))
                                  (let ((_tl298356298491_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e298358298484_)))
                                        (_hd298357298488_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e298358298484_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl298356298491_))
                                        (let ((_e298361298494_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl298356298491_))))
                                          (let ((_tl298359298501_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e298361298494_)))
                                                (_hd298360298498_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e298361298494_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl298359298501_))
                                                (let ((_e298364298504_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl298359298501_))))
                                                  (let ((_tl298362298511_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e298364298504_)))
                                                        (_hd298363298508_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e298364298504_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl298362298511_))
                                                        (___match305828305829_
                                                         _e298352298464_
                                                         _hd298351298468_
                                                         _tl298350298471_
                                                         _e298355298474_
                                                         _hd298354298478_
                                                         _tl298353298481_
                                                         _e298358298484_
                                                         _hd298357298488_
                                                         _tl298356298491_
                                                         _e298361298494_
                                                         _hd298360298498_
                                                         _tl298359298501_
                                                         _e298364298504_
                                                         _hd298363298508_
                                                         _tl298362298511_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g298344298386_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl298359298501_))
                                                    (___kont305794305795_
                                                     _hd298360298498_
                                                     _hd298357298488_
                                                     _hd298354298478_
                                                     _hd298351298468_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g298344298386_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g298344298386_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g298344298386_)))))
                        (let () (declare (not safe)) (_g298344298386_)))))
                (let () (declare (not safe)) (_g298344298386_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx298543_)
      (let* ((_g298547298582_
              (lambda (_g298548298578_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298548298578_))))
             (_g298546298701_
              (lambda (_g298548298586_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298548298586_))
                    (let ((_e298554298589_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298548298586_))))
                      (let ((_hd298553298593_
                             (let ()
                               (declare (not safe))
                               (##car _e298554298589_)))
                            (_tl298552298596_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298554298589_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl298552298596_))
                            (let ((_g306258_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl298552298596_
                                      '0))))
                              (begin
                                (let ((_g306259_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306258_)
                                             (##vector-length _g306258_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306259_ 2)))
                                      (error "Context expects 2 values"
                                             _g306259_)))
                                (let ((_target298555298599_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306258_ 0)))
                                      (_tl298557298602_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306258_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298557298602_))
                                      (letrec ((_loop298558298605_
                                                (lambda (_hd298556298609_
                                                         _symbol298562298612_
                                                         _method298563298614_
                                                         _type-t298564298616_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd298556298609_))
                                                      (let ((_e298559298619_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd298556298609_))))
                (let ((_lp-hd298560298623_
                       (let () (declare (not safe)) (##car _e298559298619_)))
                      (_lp-tl298561298626_
                       (let () (declare (not safe)) (##cdr _e298559298619_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd298560298623_))
                      (let ((_e298570298629_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd298560298623_))))
                        (let ((_hd298569298633_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298570298629_)))
                              (_tl298568298636_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298570298629_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl298568298636_))
                              (let ((_e298573298639_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl298568298636_))))
                                (let ((_hd298572298643_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298573298639_)))
                                      (_tl298571298646_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298573298639_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl298571298646_))
                                      (let ((_e298576298649_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl298571298646_))))
                                        (let ((_hd298575298653_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e298576298649_)))
                                              (_tl298574298656_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e298576298649_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298574298656_))
                                              (_loop298558298605_
                                               _lp-tl298561298626_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298575298653_
                                                       _symbol298562298612_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298572298643_
                                                       _method298563298614_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298569298633_
                                                       _type-t298564298616_)))
                                              (_g298547298582_
                                               _g298548298586_))))
                                      (_g298547298582_ _g298548298586_))))
                              (_g298547298582_ _g298548298586_))))
                      (_g298547298582_ _g298548298586_))))
              (let ((_symbol298565298659_ (reverse _symbol298562298612_))
                    (_method298566298662_ (reverse _method298563298614_))
                    (_type-t298567298664_ (reverse _type-t298564298616_)))
                ((lambda (_L298667_ _L298669_ _L298670_)
                   (let ((__tmp306267
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306260
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L298667_
                               _L298669_
                               _L298670_))
                            (let ((__tmp306261
                                   (lambda (_g298686298691_
                                            _g298687298694_
                                            _g298688298696_
                                            _g298689298698_)
                                     (let ((__tmp306262
                                            (let ((__tmp306266
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp306263
                                                   (let ((__tmp306264
                                                          (let ((__tmp306265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g298686298691_ '()))))
                    (declare (not safe))
                    (cons _g298687298694_ __tmp306265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g298688298696_
                                                           __tmp306264))))
                                              (declare (not safe))
                                              (cons __tmp306266 __tmp306263))))
                                       (declare (not safe))
                                       (cons __tmp306262 _g298689298698_)))))
                              (declare (not safe))
                              (foldr* __tmp306261
                                      '()
                                      _L298667_
                                      _L298669_
                                      _L298670_)))))
                     (declare (not safe))
                     (cons __tmp306267 __tmp306260)))
                 _symbol298565298659_
                 _method298566298662_
                 _type-t298567298664_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop298558298605_
                                         _target298555298599_
                                         '()
                                         '()
                                         '()))
                                      (_g298547298582_ _g298548298586_)))))
                            (_g298547298582_ _g298548298586_))))
                    (_g298547298582_ _g298548298586_)))))
        (_g298546298701_ _$stx298543_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx298706_)
      (let* ((_g298710298743_
              (lambda (_g298711298739_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298711298739_))))
             (_g298709298857_
              (lambda (_g298711298747_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298711298747_))
                    (let ((_e298717298750_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298711298747_))))
                      (let ((_hd298716298754_
                             (let ()
                               (declare (not safe))
                               (##car _e298717298750_)))
                            (_tl298715298757_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298717298750_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298715298757_))
                            (let ((_e298720298760_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298715298757_))))
                              (let ((_hd298719298764_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298720298760_)))
                                    (_tl298718298767_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298720298760_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl298718298767_))
                                    (let ((_g306268_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl298718298767_
                                              '0))))
                                      (begin
                                        (let ((_g306269_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g306268_)
                                                     (##vector-length
                                                      _g306268_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g306269_ 2)))
                                              (error "Context expects 2 values"
                                                     _g306269_)))
                                        (let ((_target298721298770_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g306268_ 0)))
                                              (_tl298723298773_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g306268_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298723298773_))
                                              (letrec ((_loop298724298776_
                                                        (lambda (_hd298722298780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol298728298783_
                         _method298729298785_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd298722298780_))
                      (let ((_e298725298788_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd298722298780_))))
                        (let ((_lp-hd298726298792_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298725298788_)))
                              (_lp-tl298727298795_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298725298788_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd298726298792_))
                              (let ((_e298734298798_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd298726298792_))))
                                (let ((_hd298733298802_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298734298798_)))
                                      (_tl298732298805_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298734298798_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl298732298805_))
                                      (let ((_e298737298808_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl298732298805_))))
                                        (let ((_hd298736298812_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e298737298808_)))
                                              (_tl298735298815_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e298737298808_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298735298815_))
                                              (_loop298724298776_
                                               _lp-tl298727298795_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298736298812_
                                                       _symbol298728298783_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd298733298802_
                                                       _method298729298785_)))
                                              (_g298710298743_
                                               _g298711298747_))))
                                      (_g298710298743_ _g298711298747_))))
                              (_g298710298743_ _g298711298747_))))
                      (let ((_symbol298730298818_
                             (reverse _symbol298728298783_))
                            (_method298731298821_
                             (reverse _method298729298785_)))
                        ((lambda (_L298824_ _L298826_ _L298827_)
                           (let ((__tmp306277
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp306270
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L298824_
                                       _L298826_))
                                    (let ((__tmp306271
                                           (lambda (_g298845298849_
                                                    _g298846298852_
                                                    _g298847298854_)
                                             (let ((__tmp306272
                                                    (let ((__tmp306276
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp306273
                                                           (let ((__tmp306274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp306275
                                 (let ()
                                   (declare (not safe))
                                   (cons _g298845298849_ '()))))
                            (declare (not safe))
                            (cons _g298846298852_ __tmp306275))))
                     (declare (not safe))
                     (cons _L298827_ __tmp306274))))
              (declare (not safe))
              (cons __tmp306276 __tmp306273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp306272
                                                     _g298847298854_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp306271
                                              '()
                                              _L298824_
                                              _L298826_)))))
                             (declare (not safe))
                             (cons __tmp306277 __tmp306270)))
                         _symbol298730298818_
                         _method298731298821_
                         _hd298719298764_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop298724298776_
                                                 _target298721298770_
                                                 '()
                                                 '()))
                                              (_g298710298743_
                                               _g298711298747_)))))
                                    (_g298710298743_ _g298711298747_))))
                            (_g298710298743_ _g298711298747_))))
                    (_g298710298743_ _g298711298747_)))))
        (_g298709298857_ _$stx298706_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx298862_)
      (let* ((_g298866298880_
              (lambda (_g298867298876_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298867298876_))))
             (_g298865298921_
              (lambda (_g298867298884_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298867298884_))
                    (let ((_e298871298887_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298867298884_))))
                      (let ((_hd298870298891_
                             (let ()
                               (declare (not safe))
                               (##car _e298871298887_)))
                            (_tl298869298894_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298871298887_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298869298894_))
                            (let ((_e298874298897_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298869298894_))))
                              (let ((_hd298873298901_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298874298897_)))
                                    (_tl298872298904_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298874298897_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl298872298904_))
                                    ((lambda (_L298907_)
                                       (let ((__tmp306282
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp306278
                                              (let ((__tmp306279
                                                     (let ((__tmp306281
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp306280
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L298907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp306281 __tmp306280))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp306279 '()))))
                                         (declare (not safe))
                                         (cons __tmp306282 __tmp306278)))
                                     _hd298873298901_)
                                    (_g298866298880_ _g298867298884_))))
                            (_g298866298880_ _g298867298884_))))
                    (_g298866298880_ _g298867298884_)))))
        (_g298865298921_ _$stx298862_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx298925_)
      (let* ((_g298929298979_
              (lambda (_g298930298975_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298930298975_))))
             (_g298928299146_
              (lambda (_g298930298983_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298930298983_))
                    (let ((_e298943298986_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298930298983_))))
                      (let ((_hd298942298990_
                             (let ()
                               (declare (not safe))
                               (##car _e298943298986_)))
                            (_tl298941298993_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298943298986_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298941298993_))
                            (let ((_e298946298996_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298941298993_))))
                              (let ((_hd298945299000_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298946298996_)))
                                    (_tl298944299003_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298946298996_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298944299003_))
                                    (let ((_e298949299006_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298944299003_))))
                                      (let ((_hd298948299010_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298949299006_)))
                                            (_tl298947299013_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298949299006_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl298947299013_))
                                            (let ((_e298952299016_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl298947299013_))))
                                              (let ((_hd298951299020_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298952299016_)))
                                                    (_tl298950299023_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298952299016_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298950299023_))
                                                    (let ((_e298955299026_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298950299023_))))
                                                      (let ((_hd298954299030_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e298955299026_)))
                    (_tl298953299033_
                     (let () (declare (not safe)) (##cdr _e298955299026_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl298953299033_))
                    (let ((_e298958299036_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl298953299033_))))
                      (let ((_hd298957299040_
                             (let ()
                               (declare (not safe))
                               (##car _e298958299036_)))
                            (_tl298956299043_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298958299036_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298956299043_))
                            (let ((_e298961299046_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298956299043_))))
                              (let ((_hd298960299050_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298961299046_)))
                                    (_tl298959299053_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298961299046_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298959299053_))
                                    (let ((_e298964299056_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298959299053_))))
                                      (let ((_hd298963299060_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298964299056_)))
                                            (_tl298962299063_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298964299056_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl298962299063_))
                                            (let ((_e298967299066_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl298962299063_))))
                                              (let ((_hd298966299070_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298967299066_)))
                                                    (_tl298965299073_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298967299066_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298965299073_))
                                                    (let ((_e298970299076_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298965299073_))))
                                                      (let ((_hd298969299080_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e298970299076_)))
                    (_tl298968299083_
                     (let () (declare (not safe)) (##cdr _e298970299076_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl298968299083_))
                    (let ((_e298973299086_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl298968299083_))))
                      (let ((_hd298972299090_
                             (let ()
                               (declare (not safe))
                               (##car _e298973299086_)))
                            (_tl298971299093_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298973299086_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl298971299093_))
                            ((lambda (_L299096_
                                      _L299098_
                                      _L299099_
                                      _L299100_
                                      _L299101_
                                      _L299102_
                                      _L299103_
                                      _L299104_
                                      _L299105_
                                      _L299106_)
                               (let ((__tmp306317
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp306283
                                      (let ((__tmp306314
                                             (let ((__tmp306316
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306315
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299106_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306316 __tmp306315)))
                                            (__tmp306284
                                             (let ((__tmp306311
                                                    (let ((__tmp306313
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp306312
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L299105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp306313 __tmp306312)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp306285
                                                    (let ((__tmp306308
                                                           (let ((__tmp306310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp306309
                          (let () (declare (not safe)) (cons _L299104_ '()))))
                     (declare (not safe))
                     (cons __tmp306310 __tmp306309)))
                  (__tmp306286
                   (let ((__tmp306305
                          (let ((__tmp306307
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp306306
                                 (let ()
                                   (declare (not safe))
                                   (cons _L299103_ '()))))
                            (declare (not safe))
                            (cons __tmp306307 __tmp306306)))
                         (__tmp306287
                          (let ((__tmp306302
                                 (let ((__tmp306304
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp306303
                                        (let ()
                                          (declare (not safe))
                                          (cons _L299102_ '()))))
                                   (declare (not safe))
                                   (cons __tmp306304 __tmp306303)))
                                (__tmp306288
                                 (let ((__tmp306299
                                        (let ((__tmp306301
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp306300
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L299101_ '()))))
                                          (declare (not safe))
                                          (cons __tmp306301 __tmp306300)))
                                       (__tmp306289
                                        (let ((__tmp306290
                                               (let ((__tmp306291
                                                      (let ((__tmp306296
                                                             (let ((__tmp306298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306297
                            (let ()
                              (declare (not safe))
                              (cons _L299098_ '()))))
                       (declare (not safe))
                       (cons __tmp306298 __tmp306297)))
                    (__tmp306292
                     (let ((__tmp306293
                            (let ((__tmp306295
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306294
                                   (let ()
                                     (declare (not safe))
                                     (cons _L299096_ '()))))
                              (declare (not safe))
                              (cons __tmp306295 __tmp306294))))
                       (declare (not safe))
                       (cons __tmp306293 '()))))
                (declare (not safe))
                (cons __tmp306296 __tmp306292))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L299099_
                                                       __tmp306291))))
                                          (declare (not safe))
                                          (cons _L299100_ __tmp306290))))
                                   (declare (not safe))
                                   (cons __tmp306299 __tmp306289))))
                            (declare (not safe))
                            (cons __tmp306302 __tmp306288))))
                     (declare (not safe))
                     (cons __tmp306305 __tmp306287))))
              (declare (not safe))
              (cons __tmp306308 __tmp306286))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp306311
                                                     __tmp306285))))
                                        (declare (not safe))
                                        (cons __tmp306314 __tmp306284))))
                                 (declare (not safe))
                                 (cons __tmp306317 __tmp306283)))
                             _hd298972299090_
                             _hd298969299080_
                             _hd298966299070_
                             _hd298963299060_
                             _hd298960299050_
                             _hd298957299040_
                             _hd298954299030_
                             _hd298951299020_
                             _hd298948299010_
                             _hd298945299000_)
                            (_g298929298979_ _g298930298983_))))
                    (_g298929298979_ _g298930298983_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g298929298979_
                                                     _g298930298983_))))
                                            (_g298929298979_
                                             _g298930298983_))))
                                    (_g298929298979_ _g298930298983_))))
                            (_g298929298979_ _g298930298983_))))
                    (_g298929298979_ _g298930298983_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g298929298979_
                                                     _g298930298983_))))
                                            (_g298929298979_
                                             _g298930298983_))))
                                    (_g298929298979_ _g298930298983_))))
                            (_g298929298979_ _g298930298983_))))
                    (_g298929298979_ _g298930298983_)))))
        (_g298928299146_ _$stx298925_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx299150_)
      (let* ((_g299154299168_
              (lambda (_g299155299164_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299155299164_))))
             (_g299153299209_
              (lambda (_g299155299172_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299155299172_))
                    (let ((_e299159299175_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299155299172_))))
                      (let ((_hd299158299179_
                             (let ()
                               (declare (not safe))
                               (##car _e299159299175_)))
                            (_tl299157299182_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299159299175_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299157299182_))
                            (let ((_e299162299185_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299157299182_))))
                              (let ((_hd299161299189_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299162299185_)))
                                    (_tl299160299192_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299162299185_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299160299192_))
                                    ((lambda (_L299195_)
                                       (let ((__tmp306322
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp306318
                                              (let ((__tmp306319
                                                     (let ((__tmp306321
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp306320
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L299195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp306321 __tmp306320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp306319 '()))))
                                         (declare (not safe))
                                         (cons __tmp306322 __tmp306318)))
                                     _hd299161299189_)
                                    (_g299154299168_ _g299155299172_))))
                            (_g299154299168_ _g299155299172_))))
                    (_g299154299168_ _g299155299172_)))))
        (_g299153299209_ _$stx299150_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx299213_)
      (let* ((_g299217299231_
              (lambda (_g299218299227_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299218299227_))))
             (_g299216299272_
              (lambda (_g299218299235_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299218299235_))
                    (let ((_e299222299238_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299218299235_))))
                      (let ((_hd299221299242_
                             (let ()
                               (declare (not safe))
                               (##car _e299222299238_)))
                            (_tl299220299245_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299222299238_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299220299245_))
                            (let ((_e299225299248_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299220299245_))))
                              (let ((_hd299224299252_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299225299248_)))
                                    (_tl299223299255_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299225299248_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299223299255_))
                                    ((lambda (_L299258_)
                                       (let ((__tmp306327
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp306323
                                              (let ((__tmp306324
                                                     (let ((__tmp306326
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp306325
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L299258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp306326 __tmp306325))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp306324 '()))))
                                         (declare (not safe))
                                         (cons __tmp306327 __tmp306323)))
                                     _hd299224299252_)
                                    (_g299217299231_ _g299218299235_))))
                            (_g299217299231_ _g299218299235_))))
                    (_g299217299231_ _g299218299235_)))))
        (_g299216299272_ _$stx299213_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx299276_)
      (let* ((_g299280299302_
              (lambda (_g299281299298_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299281299298_))))
             (_g299279299371_
              (lambda (_g299281299306_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299281299306_))
                    (let ((_e299287299309_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299281299306_))))
                      (let ((_hd299286299313_
                             (let ()
                               (declare (not safe))
                               (##car _e299287299309_)))
                            (_tl299285299316_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299287299309_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299285299316_))
                            (let ((_e299290299319_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299285299316_))))
                              (let ((_hd299289299323_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299290299319_)))
                                    (_tl299288299326_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299290299319_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl299288299326_))
                                    (let ((_e299293299329_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl299288299326_))))
                                      (let ((_hd299292299333_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299293299329_)))
                                            (_tl299291299336_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299293299329_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl299291299336_))
                                            (let ((_e299296299339_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl299291299336_))))
                                              (let ((_hd299295299343_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299296299339_)))
                                                    (_tl299294299346_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299296299339_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299294299346_))
                                                    ((lambda (_L299349_
                                                              _L299351_
                                                              _L299352_)
                                                       (let ((__tmp306337
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp306328
                      (let ((__tmp306334
                             (let ((__tmp306336
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp306335
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299352_ '()))))
                               (declare (not safe))
                               (cons __tmp306336 __tmp306335)))
                            (__tmp306329
                             (let ((__tmp306331
                                    (let ((__tmp306333
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp306332
                                           (let ()
                                             (declare (not safe))
                                             (cons _L299351_ '()))))
                                      (declare (not safe))
                                      (cons __tmp306333 __tmp306332)))
                                   (__tmp306330
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299349_ '()))))
                               (declare (not safe))
                               (cons __tmp306331 __tmp306330))))
                        (declare (not safe))
                        (cons __tmp306334 __tmp306329))))
                 (declare (not safe))
                 (cons __tmp306337 __tmp306328)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd299295299343_
                                                     _hd299292299333_
                                                     _hd299289299323_)
                                                    (_g299280299302_
                                                     _g299281299306_))))
                                            (_g299280299302_
                                             _g299281299306_))))
                                    (_g299280299302_ _g299281299306_))))
                            (_g299280299302_ _g299281299306_))))
                    (_g299280299302_ _g299281299306_)))))
        (_g299279299371_ _$stx299276_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx299375_)
      (let* ((_g299379299401_
              (lambda (_g299380299397_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299380299397_))))
             (_g299378299470_
              (lambda (_g299380299405_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299380299405_))
                    (let ((_e299386299408_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299380299405_))))
                      (let ((_hd299385299412_
                             (let ()
                               (declare (not safe))
                               (##car _e299386299408_)))
                            (_tl299384299415_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299386299408_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl299384299415_))
                            (let ((_e299389299418_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl299384299415_))))
                              (let ((_hd299388299422_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e299389299418_)))
                                    (_tl299387299425_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e299389299418_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl299387299425_))
                                    (let ((_e299392299428_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl299387299425_))))
                                      (let ((_hd299391299432_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299392299428_)))
                                            (_tl299390299435_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299392299428_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl299390299435_))
                                            (let ((_e299395299438_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl299390299435_))))
                                              (let ((_hd299394299442_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299395299438_)))
                                                    (_tl299393299445_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299395299438_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299393299445_))
                                                    ((lambda (_L299448_
                                                              _L299450_
                                                              _L299451_)
                                                       (let ((__tmp306347
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp306338
                      (let ((__tmp306344
                             (let ((__tmp306346
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp306345
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299451_ '()))))
                               (declare (not safe))
                               (cons __tmp306346 __tmp306345)))
                            (__tmp306339
                             (let ((__tmp306341
                                    (let ((__tmp306343
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp306342
                                           (let ()
                                             (declare (not safe))
                                             (cons _L299450_ '()))))
                                      (declare (not safe))
                                      (cons __tmp306343 __tmp306342)))
                                   (__tmp306340
                                    (let ()
                                      (declare (not safe))
                                      (cons _L299448_ '()))))
                               (declare (not safe))
                               (cons __tmp306341 __tmp306340))))
                        (declare (not safe))
                        (cons __tmp306344 __tmp306339))))
                 (declare (not safe))
                 (cons __tmp306347 __tmp306338)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd299394299442_
                                                     _hd299391299432_
                                                     _hd299388299422_)
                                                    (_g299379299401_
                                                     _g299380299405_))))
                                            (_g299379299401_
                                             _g299380299405_))))
                                    (_g299379299401_ _g299380299405_))))
                            (_g299379299401_ _g299380299405_))))
                    (_g299379299401_ _g299380299405_)))))
        (_g299378299470_ _$stx299375_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx299474_)
      (let* ((___stx305857305858_ _$stx299474_)
             (_g299482299550_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305857305858_)))))
        (let ((___kont305860305861_
               (lambda (_L299828_ _L299830_)
                 (let ((__tmp306363
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp306348
                        (let ((__tmp306359
                               (let ((__tmp306362
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306360
                                      (let ((__tmp306361
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp306361 '()))))
                                 (declare (not safe))
                                 (cons __tmp306362 __tmp306360)))
                              (__tmp306349
                               (let ((__tmp306356
                                      (let ((__tmp306358
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306357
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299830_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306358 __tmp306357)))
                                     (__tmp306350
                                      (let ((__tmp306351
                                             (let ((__tmp306352
                                                    (let ((__tmp306353
                                                           (let ((__tmp306355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp306354
                          (let () (declare (not safe)) (cons _L299828_ '()))))
                     (declare (not safe))
                     (cons __tmp306355 __tmp306354))))
              (declare (not safe))
              (cons __tmp306353 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L299828_ __tmp306352))))
                                        (declare (not safe))
                                        (cons '#f __tmp306351))))
                                 (declare (not safe))
                                 (cons __tmp306356 __tmp306350))))
                          (declare (not safe))
                          (cons __tmp306359 __tmp306349))))
                   (declare (not safe))
                   (cons __tmp306363 __tmp306348))))
              (___kont305862305863_
               (lambda (_L299759_ _L299761_)
                 (let ((__tmp306364
                        (let ((__tmp306365
                               (let ((__tmp306366
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L299759_ __tmp306366))))
                          (declare (not safe))
                          (cons 'primitive: __tmp306365))))
                   (declare (not safe))
                   (cons _L299761_ __tmp306364))))
              (___kont305864305865_
               (lambda (_L299698_ _L299700_)
                 (let ((__tmp306380
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp306367
                        (let ((__tmp306376
                               (let ((__tmp306379
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306377
                                      (let ((__tmp306378
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp306378 '()))))
                                 (declare (not safe))
                                 (cons __tmp306379 __tmp306377)))
                              (__tmp306368
                               (let ((__tmp306373
                                      (let ((__tmp306375
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306374
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299700_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306375 __tmp306374)))
                                     (__tmp306369
                                      (let ((__tmp306370
                                             (let ((__tmp306372
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306371
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299698_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306372
                                                     __tmp306371))))
                                        (declare (not safe))
                                        (cons __tmp306370 '()))))
                                 (declare (not safe))
                                 (cons __tmp306373 __tmp306369))))
                          (declare (not safe))
                          (cons __tmp306376 __tmp306368))))
                   (declare (not safe))
                   (cons __tmp306380 __tmp306367))))
              (___kont305866305867_
               (lambda (_L299630_ _L299632_)
                 (let ((__tmp306394
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp306381
                        (let ((__tmp306390
                               (let ((__tmp306393
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306391
                                      (let ((__tmp306392
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp306392 '()))))
                                 (declare (not safe))
                                 (cons __tmp306393 __tmp306391)))
                              (__tmp306382
                               (let ((__tmp306387
                                      (let ((__tmp306389
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp306388
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299632_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306389 __tmp306388)))
                                     (__tmp306383
                                      (let ((__tmp306384
                                             (let ((__tmp306386
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp306385
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299630_ '()))))
                                               (declare (not safe))
                                               (cons __tmp306386
                                                     __tmp306385))))
                                        (declare (not safe))
                                        (cons __tmp306384 '()))))
                                 (declare (not safe))
                                 (cons __tmp306387 __tmp306383))))
                          (declare (not safe))
                          (cons __tmp306390 __tmp306382))))
                   (declare (not safe))
                   (cons __tmp306394 __tmp306381))))
              (___kont305868305869_
               (lambda (_L299577_ _L299579_)
                 (let ((__tmp306395
                        (let ((__tmp306396
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L299577_ __tmp306396))))
                   (declare (not safe))
                   (cons _L299579_ __tmp306395)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx305857305858_))
              (let ((_e299488299784_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx305857305858_))))
                (let ((_tl299486299791_
                       (let () (declare (not safe)) (##cdr _e299488299784_)))
                      (_hd299487299788_
                       (let () (declare (not safe)) (##car _e299488299784_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl299486299791_))
                      (let ((_e299491299794_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl299486299791_))))
                        (let ((_tl299489299801_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299491299794_)))
                              (_hd299490299798_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299491299794_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl299489299801_))
                              (let ((_e299494299804_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl299489299801_))))
                                (let ((_tl299492299811_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e299494299804_)))
                                      (_hd299493299808_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e299494299804_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd299493299808_))
                                      (let ((_e299495299814_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd299493299808_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e299495299814_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl299492299811_))
                                                (let ((_e299498299818_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl299492299811_))))
                                                  (let ((_tl299496299825_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e299498299818_)))
                                                        (_hd299497299822_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e299498299818_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl299496299825_))
                                                        (___kont305860305861_
                                                         _hd299497299822_
                                                         _hd299490299798_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd299490299798_))
                                                            (let ((_e299507299745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd299490299798_))))
                      (declare (not safe))
                      (_g299482299550_))
                    (let () (declare (not safe)) (_g299482299550_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd299490299798_))
                                                    (let ((_e299507299745_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd299490299798_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e299507299745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299492299811_))
                      (___kont305862305863_ _hd299493299808_ _hd299487299788_)
                      (let () (declare (not safe)) (_g299482299550_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299492299811_))
                      (___kont305866305867_ _hd299493299808_ _hd299490299798_)
                      (let () (declare (not safe)) (_g299482299550_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl299492299811_))
                                                        (___kont305866305867_
                                                         _hd299493299808_
                                                         _hd299490299798_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g299482299550_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd299490299798_))
                                                (let ((_e299507299745_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd299490299798_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e299507299745_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl299492299811_))
                                                          (___kont305862305863_
                                                           _hd299493299808_
                                                           _hd299487299788_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl299492299811_))
                      (let ((_e299525299688_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl299492299811_))))
                        (let ((_tl299523299695_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299525299688_)))
                              (_hd299524299692_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299525299688_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl299523299695_))
                              (___kont305864305865_
                               _hd299524299692_
                               _hd299493299808_)
                              (let ()
                                (declare (not safe))
                                (_g299482299550_)))))
                      (let () (declare (not safe)) (_g299482299550_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl299492299811_))
                  (___kont305866305867_ _hd299493299808_ _hd299490299798_)
                  (let () (declare (not safe)) (_g299482299550_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299492299811_))
                                                    (___kont305866305867_
                                                     _hd299493299808_
                                                     _hd299490299798_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299482299550_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd299490299798_))
                                          (let ((_e299507299745_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd299490299798_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e299507299745_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299492299811_))
                                                    (___kont305862305863_
                                                     _hd299493299808_
                                                     _hd299487299788_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl299492299811_))
                                                        (let ((_e299525299688_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl299492299811_))))
                  (let ((_tl299523299695_
                         (let () (declare (not safe)) (##cdr _e299525299688_)))
                        (_hd299524299692_
                         (let ()
                           (declare (not safe))
                           (##car _e299525299688_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl299523299695_))
                        (___kont305864305865_
                         _hd299524299692_
                         _hd299493299808_)
                        (let () (declare (not safe)) (_g299482299550_)))))
                (let () (declare (not safe)) (_g299482299550_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299492299811_))
                                                    (___kont305866305867_
                                                     _hd299493299808_
                                                     _hd299490299798_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299482299550_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl299492299811_))
                                              (___kont305866305867_
                                               _hd299493299808_
                                               _hd299490299798_)
                                              (let ()
                                                (declare (not safe))
                                                (_g299482299550_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd299490299798_))
                                  (let ((_e299507299745_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd299490299798_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299489299801_))
                                        (___kont305868305869_
                                         _hd299490299798_
                                         _hd299487299788_)
                                        (let ()
                                          (declare (not safe))
                                          (_g299482299550_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl299489299801_))
                                      (___kont305868305869_
                                       _hd299490299798_
                                       _hd299487299788_)
                                      (let ()
                                        (declare (not safe))
                                        (_g299482299550_)))))))
                      (let () (declare (not safe)) (_g299482299550_)))))
              (let () (declare (not safe)) (_g299482299550_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx299852_)
      (let* ((___stx305997305998_ _$stx299852_)
             (_g299857299912_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx305997305998_)))))
        (let ((___kont306000306001_
               (lambda (_L300097_ _L300099_)
                 (let ((__tmp306412
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp306397
                        (let ((__tmp306408
                               (let ((__tmp306411
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306409
                                      (let ((__tmp306410
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp306410 '()))))
                                 (declare (not safe))
                                 (cons __tmp306411 __tmp306409)))
                              (__tmp306398
                               (let ((__tmp306399
                                      (let ((__tmp306407
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp306400
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L300097_
                                                  _L300099_))
                                               (let ((__tmp306401
                                                      (lambda (_g300116300120_
                                                               _g300117300123_
                                                               _g300118300125_)
                                                        (let ((__tmp306402
                                                               (let ((__tmp306406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp306403
                              (let ((__tmp306404
                                     (let ((__tmp306405
                                            (let ()
                                              (declare (not safe))
                                              (cons _g300116300120_ '()))))
                                       (declare (not safe))
                                       (cons _g300117300123_ __tmp306405))))
                                (declare (not safe))
                                (cons 'primitive: __tmp306404))))
                         (declare (not safe))
                         (cons __tmp306406 __tmp306403))))
                  (declare (not safe))
                  (cons __tmp306402 _g300118300125_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp306401
                                                         '()
                                                         _L300097_
                                                         _L300099_)))))
                                        (declare (not safe))
                                        (cons __tmp306407 __tmp306400))))
                                 (declare (not safe))
                                 (cons __tmp306399 '()))))
                          (declare (not safe))
                          (cons __tmp306408 __tmp306398))))
                   (declare (not safe))
                   (cons __tmp306412 __tmp306397))))
              (___kont306004306005_
               (lambda (_L299983_ _L299985_)
                 (let ((__tmp306427
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp306413
                        (let ((__tmp306423
                               (let ((__tmp306426
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp306424
                                      (let ((__tmp306425
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp306425 '()))))
                                 (declare (not safe))
                                 (cons __tmp306426 __tmp306424)))
                              (__tmp306414
                               (let ((__tmp306415
                                      (let ((__tmp306422
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp306416
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L299983_
                                                  _L299985_))
                                               (let ((__tmp306417
                                                      (lambda (_g300000300004_
                                                               _g300001300007_
                                                               _g300002300009_)
                                                        (let ((__tmp306418
                                                               (let ((__tmp306421
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp306419
                              (let ((__tmp306420
                                     (let ()
                                       (declare (not safe))
                                       (cons _g300000300004_ '()))))
                                (declare (not safe))
                                (cons _g300001300007_ __tmp306420))))
                         (declare (not safe))
                         (cons __tmp306421 __tmp306419))))
                  (declare (not safe))
                  (cons __tmp306418 _g300002300009_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp306417
                                                         '()
                                                         _L299983_
                                                         _L299985_)))))
                                        (declare (not safe))
                                        (cons __tmp306422 __tmp306416))))
                                 (declare (not safe))
                                 (cons __tmp306415 '()))))
                          (declare (not safe))
                          (cons __tmp306423 __tmp306414))))
                   (declare (not safe))
                   (cons __tmp306427 __tmp306413)))))
          (let* ((___match306048306049_
                  (lambda (_e299889299919_
                           _hd299888299923_
                           _tl299887299926_
                           ___splice306006306007_
                           _target299890299929_
                           _tl299892299932_)
                    (letrec ((_loop299893299935_
                              (lambda (_hd299891299939_
                                       _dispatch299897299942_
                                       _arity299898299944_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299891299939_))
                                    (let ((_e299894299947_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299891299939_))))
                                      (let ((_lp-tl299896299954_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299894299947_)))
                                            (_lp-hd299895299951_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299894299947_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd299895299951_))
                                            (let ((_e299903299957_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd299895299951_))))
                                              (let ((_tl299901299964_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299903299957_)))
                                                    (_hd299902299961_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299903299957_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl299901299964_))
                                                    (let ((_e299906299967_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl299901299964_))))
                                                      (let ((_tl299904299974_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e299906299967_)))
                    (_hd299905299971_
                     (let () (declare (not safe)) (##car _e299906299967_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl299904299974_))
                    (_loop299893299935_
                     _lp-tl299896299954_
                     (let ()
                       (declare (not safe))
                       (cons _hd299905299971_ _dispatch299897299942_))
                     (let ()
                       (declare (not safe))
                       (cons _hd299902299961_ _arity299898299944_)))
                    (let () (declare (not safe)) (_g299857299912_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299857299912_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g299857299912_)))))
                                    (let ((_arity299900299980_
                                           (reverse _arity299898299944_))
                                          (_dispatch299899299977_
                                           (reverse _dispatch299897299942_)))
                                      (___kont306004306005_
                                       _dispatch299899299977_
                                       _arity299900299980_))))))
                      (_loop299893299935_ _target299890299929_ '() '()))))
                 (___match306040306041_
                  (lambda (_e299889299919_ _hd299888299923_ _tl299887299926_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl299887299926_))
                        (let ((___splice306006306007_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl299887299926_
                                  '0))))
                          (let ((_tl299892299932_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice306006306007_ '1)))
                                (_target299890299929_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice306006306007_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl299892299932_))
                                (___match306048306049_
                                 _e299889299919_
                                 _hd299888299923_
                                 _tl299887299926_
                                 ___splice306006306007_
                                 _target299890299929_
                                 _tl299892299932_)
                                (let ()
                                  (declare (not safe))
                                  (_g299857299912_)))))
                        (let () (declare (not safe)) (_g299857299912_)))))
                 (___match306034306035_
                  (lambda (_e299863300019_
                           _hd299862300023_
                           _tl299861300026_
                           _e299866300029_
                           _hd299865300033_
                           _tl299864300036_
                           _e299867300039_
                           ___splice306002306003_
                           _target299868300043_
                           _tl299870300046_)
                    (letrec ((_loop299871300049_
                              (lambda (_hd299869300053_
                                       _dispatch299875300056_
                                       _arity299876300058_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299869300053_))
                                    (let ((_e299872300061_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299869300053_))))
                                      (let ((_lp-tl299874300068_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299872300061_)))
                                            (_lp-hd299873300065_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299872300061_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd299873300065_))
                                            (let ((_e299881300071_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd299873300065_))))
                                              (let ((_tl299879300078_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e299881300071_)))
                                                    (_hd299880300075_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e299881300071_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl299879300078_))
                                                    (let ((_e299884300081_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl299879300078_))))
                                                      (let ((_tl299882300088_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e299884300081_)))
                    (_hd299883300085_
                     (let () (declare (not safe)) (##car _e299884300081_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl299882300088_))
                    (_loop299871300049_
                     _lp-tl299874300068_
                     (let ()
                       (declare (not safe))
                       (cons _hd299883300085_ _dispatch299875300056_))
                     (let ()
                       (declare (not safe))
                       (cons _hd299880300075_ _arity299876300058_)))
                    (___match306040306041_
                     _e299863300019_
                     _hd299862300023_
                     _tl299861300026_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match306040306041_
                                                     _e299863300019_
                                                     _hd299862300023_
                                                     _tl299861300026_))))
                                            (___match306040306041_
                                             _e299863300019_
                                             _hd299862300023_
                                             _tl299861300026_))))
                                    (let ((_arity299878300094_
                                           (reverse _arity299876300058_))
                                          (_dispatch299877300091_
                                           (reverse _dispatch299875300056_)))
                                      (___kont306000306001_
                                       _dispatch299877300091_
                                       _arity299878300094_))))))
                      (_loop299871300049_ _target299868300043_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx305997305998_))
                (let ((_e299863300019_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx305997305998_))))
                  (let ((_tl299861300026_
                         (let () (declare (not safe)) (##cdr _e299863300019_)))
                        (_hd299862300023_
                         (let ()
                           (declare (not safe))
                           (##car _e299863300019_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl299861300026_))
                        (let ((_e299866300029_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl299861300026_))))
                          (let ((_tl299864300036_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e299866300029_)))
                                (_hd299865300033_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e299866300029_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd299865300033_))
                                (let ((_e299867300039_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd299865300033_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e299867300039_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl299864300036_))
                                          (let ((___splice306002306003_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl299864300036_
                                                    '0))))
                                            (let ((_tl299870300046_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306002306003_
                                                      '1)))
                                                  (_target299868300043_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306002306003_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl299870300046_))
                                                  (___match306034306035_
                                                   _e299863300019_
                                                   _hd299862300023_
                                                   _tl299861300026_
                                                   _e299866300029_
                                                   _hd299865300033_
                                                   _tl299864300036_
                                                   _e299867300039_
                                                   ___splice306002306003_
                                                   _target299868300043_
                                                   _tl299870300046_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl299861300026_))
                                                      (let ((___splice306006306007_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl299861300026_ '0))))
                (let ((_tl299892299932_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306006306007_ '1)))
                      (_target299890299929_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306006306007_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299892299932_))
                      (___match306048306049_
                       _e299863300019_
                       _hd299862300023_
                       _tl299861300026_
                       ___splice306006306007_
                       _target299890299929_
                       _tl299892299932_)
                      (let () (declare (not safe)) (_g299857299912_)))))
              (let () (declare (not safe)) (_g299857299912_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl299861300026_))
                                              (let ((___splice306006306007_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl299861300026_
                                                        '0))))
                                                (let ((_tl299892299932_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice306006306007_
                                                          '1)))
                                                      (_target299890299929_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice306006306007_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl299892299932_))
                                                      (___match306048306049_
                                                       _e299863300019_
                                                       _hd299862300023_
                                                       _tl299861300026_
                                                       ___splice306006306007_
                                                       _target299890299929_
                                                       _tl299892299932_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g299857299912_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g299857299912_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl299861300026_))
                                          (let ((___splice306006306007_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl299861300026_
                                                    '0))))
                                            (let ((_tl299892299932_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306006306007_
                                                      '1)))
                                                  (_target299890299929_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice306006306007_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl299892299932_))
                                                  (___match306048306049_
                                                   _e299863300019_
                                                   _hd299862300023_
                                                   _tl299861300026_
                                                   ___splice306006306007_
                                                   _target299890299929_
                                                   _tl299892299932_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g299857299912_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g299857299912_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl299861300026_))
                                    (let ((___splice306006306007_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl299861300026_
                                              '0))))
                                      (let ((_tl299892299932_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306006306007_
                                                '1)))
                                            (_target299890299929_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306006306007_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299892299932_))
                                            (___match306048306049_
                                             _e299863300019_
                                             _hd299862300023_
                                             _tl299861300026_
                                             ___splice306006306007_
                                             _target299890299929_
                                             _tl299892299932_)
                                            (let ()
                                              (declare (not safe))
                                              (_g299857299912_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g299857299912_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl299861300026_))
                            (let ((___splice306006306007_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl299861300026_
                                      '0))))
                              (let ((_tl299892299932_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice306006306007_
                                        '1)))
                                    (_target299890299929_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice306006306007_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl299892299932_))
                                    (___match306048306049_
                                     _e299863300019_
                                     _hd299862300023_
                                     _tl299861300026_
                                     ___splice306006306007_
                                     _target299890299929_
                                     _tl299892299932_)
                                    (let ()
                                      (declare (not safe))
                                      (_g299857299912_)))))
                            (let () (declare (not safe)) (_g299857299912_))))))
                (let () (declare (not safe)) (_g299857299912_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx300134_)
      (let* ((_g300138300156_
              (lambda (_g300139300152_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300139300152_))))
             (_g300137300211_
              (lambda (_g300139300160_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300139300160_))
                    (let ((_e300144300163_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300139300160_))))
                      (let ((_hd300143300167_
                             (let ()
                               (declare (not safe))
                               (##car _e300144300163_)))
                            (_tl300142300170_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300144300163_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl300142300170_))
                            (let ((_e300147300173_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl300142300170_))))
                              (let ((_hd300146300177_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e300147300173_)))
                                    (_tl300145300180_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e300147300173_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl300145300180_))
                                    (let ((_e300150300183_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl300145300180_))))
                                      (let ((_hd300149300187_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300150300183_)))
                                            (_tl300148300190_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300150300183_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300148300190_))
                                            ((lambda (_L300193_ _L300195_)
                                               (let ((__tmp306441
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp306428
                                                      (let ((__tmp306437
                                                             (let ((__tmp306440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306438
                            (let ((__tmp306439
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp306439 '()))))
                       (declare (not safe))
                       (cons __tmp306440 __tmp306438)))
                    (__tmp306429
                     (let ((__tmp306434
                            (let ((__tmp306436
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306435
                                   (let ()
                                     (declare (not safe))
                                     (cons _L300195_ '()))))
                              (declare (not safe))
                              (cons __tmp306436 __tmp306435)))
                           (__tmp306430
                            (let ((__tmp306431
                                   (let ((__tmp306433
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp306432
                                          (let ()
                                            (declare (not safe))
                                            (cons _L300193_ '()))))
                                     (declare (not safe))
                                     (cons __tmp306433 __tmp306432))))
                              (declare (not safe))
                              (cons __tmp306431 '()))))
                       (declare (not safe))
                       (cons __tmp306434 __tmp306430))))
                (declare (not safe))
                (cons __tmp306437 __tmp306429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp306441
                                                       __tmp306428)))
                                             _hd300149300187_
                                             _hd300146300177_)
                                            (_g300138300156_
                                             _g300139300160_))))
                                    (_g300138300156_ _g300139300160_))))
                            (_g300138300156_ _g300139300160_))))
                    (_g300138300156_ _g300139300160_)))))
        (_g300137300211_ _$stx300134_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx300215_)
      (let* ((_g300219300237_
              (lambda (_g300220300233_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300220300233_))))
             (_g300218300292_
              (lambda (_g300220300241_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300220300241_))
                    (let ((_e300225300244_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300220300241_))))
                      (let ((_hd300224300248_
                             (let ()
                               (declare (not safe))
                               (##car _e300225300244_)))
                            (_tl300223300251_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300225300244_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl300223300251_))
                            (let ((_e300228300254_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl300223300251_))))
                              (let ((_hd300227300258_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e300228300254_)))
                                    (_tl300226300261_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e300228300254_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl300226300261_))
                                    (let ((_e300231300264_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl300226300261_))))
                                      (let ((_hd300230300268_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300231300264_)))
                                            (_tl300229300271_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300231300264_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300229300271_))
                                            ((lambda (_L300274_ _L300276_)
                                               (let ((__tmp306455
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp306442
                                                      (let ((__tmp306451
                                                             (let ((__tmp306454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp306452
                            (let ((__tmp306453
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp306453 '()))))
                       (declare (not safe))
                       (cons __tmp306454 __tmp306452)))
                    (__tmp306443
                     (let ((__tmp306448
                            (let ((__tmp306450
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp306449
                                   (let ()
                                     (declare (not safe))
                                     (cons _L300276_ '()))))
                              (declare (not safe))
                              (cons __tmp306450 __tmp306449)))
                           (__tmp306444
                            (let ((__tmp306445
                                   (let ((__tmp306447
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp306446
                                          (let ()
                                            (declare (not safe))
                                            (cons _L300274_ '()))))
                                     (declare (not safe))
                                     (cons __tmp306447 __tmp306446))))
                              (declare (not safe))
                              (cons __tmp306445 '()))))
                       (declare (not safe))
                       (cons __tmp306448 __tmp306444))))
                (declare (not safe))
                (cons __tmp306451 __tmp306443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp306455
                                                       __tmp306442)))
                                             _hd300230300268_
                                             _hd300227300258_)
                                            (_g300219300237_
                                             _g300220300241_))))
                                    (_g300219300237_ _g300220300241_))))
                            (_g300219300237_ _g300220300241_))))
                    (_g300219300237_ _g300220300241_)))))
        (_g300218300292_ _$stx300215_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx300296_)
      (let* ((___stx306051306052_ _$stx300296_)
             (_g300303300374_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx306051306052_)))))
        (let ((___kont306054306055_
               (lambda (_L300665_ _L300667_)
                 (let ((__tmp306461
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306456
                        (let ((__tmp306457
                               (let ((__tmp306458
                                      (let ((__tmp306460
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306459
                                             (let ()
                                               (declare (not safe))
                                               (cons _L300665_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306460 __tmp306459))))
                                 (declare (not safe))
                                 (cons __tmp306458 '()))))
                          (declare (not safe))
                          (cons _L300667_ __tmp306457))))
                   (declare (not safe))
                   (cons __tmp306461 __tmp306456))))
              (___kont306056306057_
               (lambda (_L300584_ _L300586_)
                 (let ((__tmp306470
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306462
                        (let ((__tmp306463
                               (let ((__tmp306464
                                      (let ((__tmp306469
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306465
                                             (let ((__tmp306466
                                                    (lambda (_g300605300608_
                                                             _g300606300611_)
                                                      (let ((__tmp306467
                                                             (let ((__tmp306468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g300605300608_ __tmp306468))))
                (declare (not safe))
                (cons __tmp306467 _g300606300611_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp306466
                                                       '()
                                                       _L300584_))))
                                        (declare (not safe))
                                        (cons __tmp306469 __tmp306465))))
                                 (declare (not safe))
                                 (cons __tmp306464 '()))))
                          (declare (not safe))
                          (cons _L300586_ __tmp306463))))
                   (declare (not safe))
                   (cons __tmp306470 __tmp306462))))
              (___kont306060306061_
               (lambda (_L300496_ _L300498_)
                 (let ((__tmp306477
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306471
                        (let ((__tmp306472
                               (let ((__tmp306473
                                      (let ((__tmp306476
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306474
                                             (let ((__tmp306475
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L300496_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp306475))))
                                        (declare (not safe))
                                        (cons __tmp306476 __tmp306474))))
                                 (declare (not safe))
                                 (cons __tmp306473 '()))))
                          (declare (not safe))
                          (cons _L300498_ __tmp306472))))
                   (declare (not safe))
                   (cons __tmp306477 __tmp306471))))
              (___kont306062306063_
               (lambda (_L300431_ _L300433_)
                 (let ((__tmp306487
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306478
                        (let ((__tmp306479
                               (let ((__tmp306480
                                      (let ((__tmp306486
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306481
                                             (let ((__tmp306482
                                                    (let ((__tmp306483
                                                           (lambda (_g300450300453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g300451300456_)
                     (let ((__tmp306484
                            (let ((__tmp306485
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g300450300453_ __tmp306485))))
                       (declare (not safe))
                       (cons __tmp306484 _g300451300456_)))))
              (declare (not safe))
              (foldr1 __tmp306483 '() _L300431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp306482))))
                                        (declare (not safe))
                                        (cons __tmp306486 __tmp306481))))
                                 (declare (not safe))
                                 (cons __tmp306480 '()))))
                          (declare (not safe))
                          (cons _L300433_ __tmp306479))))
                   (declare (not safe))
                   (cons __tmp306487 __tmp306478)))))
          (let* ((___match306170306171_
                  (lambda (_e300356300381_
                           _hd300355300385_
                           _tl300354300388_
                           _e300359300391_
                           _hd300358300395_
                           _tl300357300398_
                           ___splice306064306065_
                           _target300360300401_
                           _tl300362300404_)
                    (letrec ((_loop300363300407_
                              (lambda (_hd300361300411_ _arity300367300414_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd300361300411_))
                                    (let ((_e300364300417_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd300361300411_))))
                                      (let ((_lp-tl300366300424_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300364300417_)))
                                            (_lp-hd300365300421_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300364300417_))))
                                        (_loop300363300407_
                                         _lp-tl300366300424_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd300365300421_
                                                 _arity300367300414_)))))
                                    (let ((_arity300368300427_
                                           (reverse _arity300367300414_)))
                                      (___kont306062306063_
                                       _arity300368300427_
                                       _hd300358300395_))))))
                      (_loop300363300407_ _target300360300401_ '()))))
                 (___match306130306131_
                  (lambda (_e300324300520_
                           _hd300323300524_
                           _tl300322300527_
                           _e300327300530_
                           _hd300326300534_
                           _tl300325300537_
                           _e300330300540_
                           _hd300329300544_
                           _tl300328300547_
                           _e300331300550_
                           ___splice306058306059_
                           _target300332300554_
                           _tl300334300557_)
                    (letrec ((_loop300335300560_
                              (lambda (_hd300333300564_ _arity300339300567_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd300333300564_))
                                    (let ((_e300336300570_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd300333300564_))))
                                      (let ((_lp-tl300338300577_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e300336300570_)))
                                            (_lp-hd300337300574_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e300336300570_))))
                                        (_loop300335300560_
                                         _lp-tl300338300577_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd300337300574_
                                                 _arity300339300567_)))))
                                    (let ((_arity300340300580_
                                           (reverse _arity300339300567_)))
                                      (___kont306056306057_
                                       _arity300340300580_
                                       _hd300326300534_))))))
                      (_loop300335300560_ _target300332300554_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx306051306052_))
                (let ((_e300309300621_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx306051306052_))))
                  (let ((_tl300307300628_
                         (let () (declare (not safe)) (##cdr _e300309300621_)))
                        (_hd300308300625_
                         (let ()
                           (declare (not safe))
                           (##car _e300309300621_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl300307300628_))
                        (let ((_e300312300631_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl300307300628_))))
                          (let ((_tl300310300638_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e300312300631_)))
                                (_hd300311300635_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e300312300631_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl300310300638_))
                                (let ((_e300315300641_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl300310300638_))))
                                  (let ((_tl300313300648_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e300315300641_)))
                                        (_hd300314300645_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e300315300641_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd300314300645_))
                                        (let ((_e300316300651_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd300314300645_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e300316300651_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl300313300648_))
                                                  (let ((_e300319300655_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl300313300648_))))
                                                    (let ((_tl300317300662_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e300319300655_)))
                                                          (_hd300318300659_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e300319300655_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl300317300662_))
                                                          (___kont306054306055_
                                                           _hd300318300659_
                                                           _hd300311300635_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl300313300648_))
                      (let ((___splice306058306059_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl300313300648_ '0))))
                        (let ((_tl300334300557_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306058306059_ '1)))
                              (_target300332300554_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306058306059_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl300334300557_))
                              (___match306130306131_
                               _e300309300621_
                               _hd300308300625_
                               _tl300307300628_
                               _e300312300631_
                               _hd300311300635_
                               _tl300310300638_
                               _e300315300641_
                               _hd300314300645_
                               _tl300313300648_
                               _e300316300651_
                               ___splice306058306059_
                               _target300332300554_
                               _tl300334300557_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl300310300638_))
                                  (let ((___splice306064306065_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl300310300638_
                                            '0))))
                                    (let ((_tl300362300404_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice306064306065_
                                              '1)))
                                          (_target300360300401_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice306064306065_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl300362300404_))
                                          (___match306170306171_
                                           _e300309300621_
                                           _hd300308300625_
                                           _tl300307300628_
                                           _e300312300631_
                                           _hd300311300635_
                                           _tl300310300638_
                                           ___splice306064306065_
                                           _target300360300401_
                                           _tl300362300404_)
                                          (let ()
                                            (declare (not safe))
                                            (_g300303300374_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g300303300374_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl300310300638_))
                          (let ((___splice306064306065_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl300310300638_
                                    '0))))
                            (let ((_tl300362300404_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice306064306065_ '1)))
                                  (_target300360300401_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice306064306065_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl300362300404_))
                                  (___match306170306171_
                                   _e300309300621_
                                   _hd300308300625_
                                   _tl300307300628_
                                   _e300312300631_
                                   _hd300311300635_
                                   _tl300310300638_
                                   ___splice306064306065_
                                   _target300360300401_
                                   _tl300362300404_)
                                  (let ()
                                    (declare (not safe))
                                    (_g300303300374_)))))
                          (let () (declare (not safe)) (_g300303300374_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl300313300648_))
                                                      (let ((___splice306058306059_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl300313300648_ '0))))
                (let ((_tl300334300557_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306058306059_ '1)))
                      (_target300332300554_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306058306059_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl300334300557_))
                      (___match306130306131_
                       _e300309300621_
                       _hd300308300625_
                       _tl300307300628_
                       _e300312300631_
                       _hd300311300635_
                       _tl300310300638_
                       _e300315300641_
                       _hd300314300645_
                       _tl300313300648_
                       _e300316300651_
                       ___splice306058306059_
                       _target300332300554_
                       _tl300334300557_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl300313300648_))
                          (___kont306060306061_
                           _hd300314300645_
                           _hd300311300635_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl300310300638_))
                              (let ((___splice306064306065_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl300310300638_
                                        '0))))
                                (let ((_tl300362300404_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice306064306065_
                                          '1)))
                                      (_target300360300401_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice306064306065_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300362300404_))
                                      (___match306170306171_
                                       _e300309300621_
                                       _hd300308300625_
                                       _tl300307300628_
                                       _e300312300631_
                                       _hd300311300635_
                                       _tl300310300638_
                                       ___splice306064306065_
                                       _target300360300401_
                                       _tl300362300404_)
                                      (let ()
                                        (declare (not safe))
                                        (_g300303300374_)))))
                              (let ()
                                (declare (not safe))
                                (_g300303300374_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl300313300648_))
                  (___kont306060306061_ _hd300314300645_ _hd300311300635_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl300310300638_))
                      (let ((___splice306064306065_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl300310300638_ '0))))
                        (let ((_tl300362300404_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306064306065_ '1)))
                              (_target300360300401_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice306064306065_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl300362300404_))
                              (___match306170306171_
                               _e300309300621_
                               _hd300308300625_
                               _tl300307300628_
                               _e300312300631_
                               _hd300311300635_
                               _tl300310300638_
                               ___splice306064306065_
                               _target300360300401_
                               _tl300362300404_)
                              (let ()
                                (declare (not safe))
                                (_g300303300374_)))))
                      (let () (declare (not safe)) (_g300303300374_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl300313300648_))
                                                  (___kont306060306061_
                                                   _hd300314300645_
                                                   _hd300311300635_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl300310300638_))
                                                      (let ((___splice306064306065_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl300310300638_ '0))))
                (let ((_tl300362300404_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306064306065_ '1)))
                      (_target300360300401_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice306064306065_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl300362300404_))
                      (___match306170306171_
                       _e300309300621_
                       _hd300308300625_
                       _tl300307300628_
                       _e300312300631_
                       _hd300311300635_
                       _tl300310300638_
                       ___splice306064306065_
                       _target300360300401_
                       _tl300362300404_)
                      (let () (declare (not safe)) (_g300303300374_)))))
              (let () (declare (not safe)) (_g300303300374_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300313300648_))
                                            (___kont306060306061_
                                             _hd300314300645_
                                             _hd300311300635_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl300310300638_))
                                                (let ((___splice306064306065_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl300310300638_
                                                          '0))))
                                                  (let ((_tl300362300404_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice306064306065_
                                                            '1)))
                                                        (_target300360300401_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice306064306065_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl300362300404_))
                                                        (___match306170306171_
                                                         _e300309300621_
                                                         _hd300308300625_
                                                         _tl300307300628_
                                                         _e300312300631_
                                                         _hd300311300635_
                                                         _tl300310300638_
                                                         ___splice306064306065_
                                                         _target300360300401_
                                                         _tl300362300404_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g300303300374_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g300303300374_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl300310300638_))
                                    (let ((___splice306064306065_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl300310300638_
                                              '0))))
                                      (let ((_tl300362300404_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306064306065_
                                                '1)))
                                            (_target300360300401_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306064306065_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300362300404_))
                                            (___match306170306171_
                                             _e300309300621_
                                             _hd300308300625_
                                             _tl300307300628_
                                             _e300312300631_
                                             _hd300311300635_
                                             _tl300310300638_
                                             ___splice306064306065_
                                             _target300360300401_
                                             _tl300362300404_)
                                            (let ()
                                              (declare (not safe))
                                              (_g300303300374_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g300303300374_))))))
                        (let () (declare (not safe)) (_g300303300374_)))))
                (let () (declare (not safe)) (_g300303300374_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx300691_)
      (let* ((___stx306173306174_ _$stx300691_)
             (_g300696300731_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx306173306174_)))))
        (let ((___kont306176306177_
               (lambda (_L300853_ _L300855_)
                 (let ((__tmp306493
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306488
                        (let ((__tmp306489
                               (let ((__tmp306490
                                      (let ((__tmp306492
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp306491
                                             (let ()
                                               (declare (not safe))
                                               (cons _L300853_ '()))))
                                        (declare (not safe))
                                        (cons __tmp306492 __tmp306491))))
                                 (declare (not safe))
                                 (cons __tmp306490 '()))))
                          (declare (not safe))
                          (cons _L300855_ __tmp306489))))
                   (declare (not safe))
                   (cons __tmp306493 __tmp306488))))
              (___kont306178306179_
               (lambda (_L300788_ _L300790_)
                 (let ((__tmp306502
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp306494
                        (let ((__tmp306495
                               (let ((__tmp306496
                                      (let ((__tmp306501
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp306497
                                             (let ((__tmp306498
                                                    (lambda (_g300807300810_
                                                             _g300808300813_)
                                                      (let ((__tmp306499
                                                             (let ((__tmp306500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g300807300810_ __tmp306500))))
                (declare (not safe))
                (cons __tmp306499 _g300808300813_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp306498
                                                       '()
                                                       _L300788_))))
                                        (declare (not safe))
                                        (cons __tmp306501 __tmp306497))))
                                 (declare (not safe))
                                 (cons __tmp306496 '()))))
                          (declare (not safe))
                          (cons _L300790_ __tmp306495))))
                   (declare (not safe))
                   (cons __tmp306502 __tmp306494)))))
          (let ((___match306222306223_
                 (lambda (_e300713300738_
                          _hd300712300742_
                          _tl300711300745_
                          _e300716300748_
                          _hd300715300752_
                          _tl300714300755_
                          ___splice306180306181_
                          _target300717300758_
                          _tl300719300761_)
                   (letrec ((_loop300720300764_
                             (lambda (_hd300718300768_ _arity300724300771_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd300718300768_))
                                   (let ((_e300721300774_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd300718300768_))))
                                     (let ((_lp-tl300723300781_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e300721300774_)))
                                           (_lp-hd300722300778_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e300721300774_))))
                                       (_loop300720300764_
                                        _lp-tl300723300781_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd300722300778_
                                                _arity300724300771_)))))
                                   (let ((_arity300725300784_
                                          (reverse _arity300724300771_)))
                                     (___kont306178306179_
                                      _arity300725300784_
                                      _hd300715300752_))))))
                     (_loop300720300764_ _target300717300758_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx306173306174_))
                (let ((_e300702300823_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx306173306174_))))
                  (let ((_tl300700300830_
                         (let () (declare (not safe)) (##cdr _e300702300823_)))
                        (_hd300701300827_
                         (let ()
                           (declare (not safe))
                           (##car _e300702300823_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl300700300830_))
                        (let ((_e300705300833_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl300700300830_))))
                          (let ((_tl300703300840_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e300705300833_)))
                                (_hd300704300837_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e300705300833_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl300703300840_))
                                (let ((_e300708300843_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl300703300840_))))
                                  (let ((_tl300706300850_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e300708300843_)))
                                        (_hd300707300847_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e300708300843_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl300706300850_))
                                        (___kont306176306177_
                                         _hd300707300847_
                                         _hd300704300837_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl300703300840_))
                                            (let ((___splice306180306181_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl300703300840_
                                                      '0))))
                                              (let ((_tl300719300761_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice306180306181_
                                                        '1)))
                                                    (_target300717300758_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice306180306181_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl300719300761_))
                                                    (___match306222306223_
                                                     _e300702300823_
                                                     _hd300701300827_
                                                     _tl300700300830_
                                                     _e300705300833_
                                                     _hd300704300837_
                                                     _tl300703300840_
                                                     ___splice306180306181_
                                                     _target300717300758_
                                                     _tl300719300761_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g300696300731_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g300696300731_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl300703300840_))
                                    (let ((___splice306180306181_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl300703300840_
                                              '0))))
                                      (let ((_tl300719300761_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306180306181_
                                                '1)))
                                            (_target300717300758_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice306180306181_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl300719300761_))
                                            (___match306222306223_
                                             _e300702300823_
                                             _hd300701300827_
                                             _tl300700300830_
                                             _e300705300833_
                                             _hd300704300837_
                                             _tl300703300840_
                                             ___splice306180306181_
                                             _target300717300758_
                                             _tl300719300761_)
                                            (let ()
                                              (declare (not safe))
                                              (_g300696300731_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g300696300731_))))))
                        (let () (declare (not safe)) (_g300696300731_)))))
                (let () (declare (not safe)) (_g300696300731_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx300875_)
      (let* ((_g300879300914_
              (lambda (_g300880300910_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g300880300910_))))
             (_g300878301042_
              (lambda (_g300880300918_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g300880300918_))
                    (let ((_e300885300921_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g300880300918_))))
                      (let ((_hd300884300925_
                             (let ()
                               (declare (not safe))
                               (##car _e300885300921_)))
                            (_tl300883300928_
                             (let ()
                               (declare (not safe))
                               (##cdr _e300885300921_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl300883300928_))
                            (let ((_g306503_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl300883300928_
                                      '0))))
                              (begin
                                (let ((_g306504_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306503_)
                                             (##vector-length _g306503_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306504_ 2)))
                                      (error "Context expects 2 values"
                                             _g306504_)))
                                (let ((_target300886300931_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306503_ 0)))
                                      (_tl300888300934_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306503_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl300888300934_))
                                      (letrec ((_loop300889300937_
                                                (lambda (_hd300887300941_
                                                         _arity300893300944_
                                                         _prim300894300946_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd300887300941_))
                                                      (let ((_e300890300949_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd300887300941_))))
                (let ((_lp-hd300891300953_
                       (let () (declare (not safe)) (##car _e300890300949_)))
                      (_lp-tl300892300956_
                       (let () (declare (not safe)) (##cdr _e300890300949_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd300891300953_))
                      (let ((_e300899300959_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd300891300953_))))
                        (let ((_hd300898300963_
                               (let ()
                                 (declare (not safe))
                                 (##car _e300899300959_)))
                              (_tl300897300966_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e300899300959_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl300897300966_))
                              (let ((_g306513_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl300897300966_
                                        '0))))
                                (begin
                                  (let ((_g306514_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g306513_)
                                               (##vector-length _g306513_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g306514_ 2)))
                                        (error "Context expects 2 values"
                                               _g306514_)))
                                  (let ((_target300900300969_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306513_ 0)))
                                        (_tl300902300972_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306513_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl300902300972_))
                                        (letrec ((_loop300903300975_
                                                  (lambda (_hd300901300979_
                                                           _arity300907300982_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd300901300979_))
                                                        (let ((_e300904300985_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd300901300979_))))
                  (let ((_lp-hd300905300989_
                         (let () (declare (not safe)) (##car _e300904300985_)))
                        (_lp-tl300906300992_
                         (let ()
                           (declare (not safe))
                           (##cdr _e300904300985_))))
                    (_loop300903300975_
                     _lp-tl300906300992_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd300905300989_ _arity300907300982_)))))
                (let ((_arity300908300995_ (reverse _arity300907300982_)))
                  (_loop300889300937_
                   _lp-tl300892300956_
                   (let ()
                     (declare (not safe))
                     (cons _arity300908300995_ _arity300893300944_))
                   (let ()
                     (declare (not safe))
                     (cons _hd300898300963_ _prim300894300946_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop300903300975_
                                           _target300900300969_
                                           '()))
                                        (_g300879300914_ _g300880300918_)))))
                              (_g300879300914_ _g300880300918_))))
                      (_g300879300914_ _g300880300918_))))
              (let ((_arity300895300999_ (reverse _arity300893300944_))
                    (_prim300896301002_ (reverse _prim300894300946_)))
                ((lambda (_L301005_ _L301007_)
                   (let ((__tmp306512
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306505
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L301005_
                               _L301007_))
                            (let ((__tmp306506
                                   (lambda (_g301022301028_
                                            _g301023301031_
                                            _g301024301033_)
                                     (let ((__tmp306507
                                            (let ((__tmp306511
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp306508
                                                   (let ((__tmp306509
                                                          (let ((__tmp306510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g301025301036_ _g301026301039_)
                           (let ()
                             (declare (not safe))
                             (cons _g301025301036_ _g301026301039_)))))
                    (declare (not safe))
                    (foldr1 __tmp306510 '() _g301022301028_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g301023301031_
                                                           __tmp306509))))
                                              (declare (not safe))
                                              (cons __tmp306511 __tmp306508))))
                                       (declare (not safe))
                                       (cons __tmp306507 _g301024301033_)))))
                              (declare (not safe))
                              (foldr2 __tmp306506 '() _L301005_ _L301007_)))))
                     (declare (not safe))
                     (cons __tmp306512 __tmp306505)))
                 _arity300895300999_
                 _prim300896301002_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop300889300937_
                                         _target300886300931_
                                         '()
                                         '()))
                                      (_g300879300914_ _g300880300918_)))))
                            (_g300879300914_ _g300880300918_))))
                    (_g300879300914_ _g300880300918_)))))
        (_g300878301042_ _$stx300875_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx301048_)
      (let* ((_g301052301087_
              (lambda (_g301053301083_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g301053301083_))))
             (_g301051301215_
              (lambda (_g301053301091_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g301053301091_))
                    (let ((_e301058301094_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g301053301091_))))
                      (let ((_hd301057301098_
                             (let ()
                               (declare (not safe))
                               (##car _e301058301094_)))
                            (_tl301056301101_
                             (let ()
                               (declare (not safe))
                               (##cdr _e301058301094_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl301056301101_))
                            (let ((_g306515_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl301056301101_
                                      '0))))
                              (begin
                                (let ((_g306516_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g306515_)
                                             (##vector-length _g306515_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g306516_ 2)))
                                      (error "Context expects 2 values"
                                             _g306516_)))
                                (let ((_target301059301104_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306515_ 0)))
                                      (_tl301061301107_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g306515_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl301061301107_))
                                      (letrec ((_loop301062301110_
                                                (lambda (_hd301060301114_
                                                         _arity301066301117_
                                                         _prim301067301119_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd301060301114_))
                                                      (let ((_e301063301122_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd301060301114_))))
                (let ((_lp-hd301064301126_
                       (let () (declare (not safe)) (##car _e301063301122_)))
                      (_lp-tl301065301129_
                       (let () (declare (not safe)) (##cdr _e301063301122_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd301064301126_))
                      (let ((_e301072301132_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd301064301126_))))
                        (let ((_hd301071301136_
                               (let ()
                                 (declare (not safe))
                                 (##car _e301072301132_)))
                              (_tl301070301139_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e301072301132_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl301070301139_))
                              (let ((_g306525_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl301070301139_
                                        '0))))
                                (begin
                                  (let ((_g306526_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g306525_)
                                               (##vector-length _g306525_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g306526_ 2)))
                                        (error "Context expects 2 values"
                                               _g306526_)))
                                  (let ((_target301073301142_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306525_ 0)))
                                        (_tl301075301145_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g306525_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl301075301145_))
                                        (letrec ((_loop301076301148_
                                                  (lambda (_hd301074301152_
                                                           _arity301080301155_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd301074301152_))
                                                        (let ((_e301077301158_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd301074301152_))))
                  (let ((_lp-hd301078301162_
                         (let () (declare (not safe)) (##car _e301077301158_)))
                        (_lp-tl301079301165_
                         (let ()
                           (declare (not safe))
                           (##cdr _e301077301158_))))
                    (_loop301076301148_
                     _lp-tl301079301165_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd301078301162_ _arity301080301155_)))))
                (let ((_arity301081301168_ (reverse _arity301080301155_)))
                  (_loop301062301110_
                   _lp-tl301065301129_
                   (let ()
                     (declare (not safe))
                     (cons _arity301081301168_ _arity301066301117_))
                   (let ()
                     (declare (not safe))
                     (cons _hd301071301136_ _prim301067301119_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop301076301148_
                                           _target301073301142_
                                           '()))
                                        (_g301052301087_ _g301053301091_)))))
                              (_g301052301087_ _g301053301091_))))
                      (_g301052301087_ _g301053301091_))))
              (let ((_arity301068301172_ (reverse _arity301066301117_))
                    (_prim301069301175_ (reverse _prim301067301119_)))
                ((lambda (_L301178_ _L301180_)
                   (let ((__tmp306524
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp306517
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L301178_
                               _L301180_))
                            (let ((__tmp306518
                                   (lambda (_g301195301201_
                                            _g301196301204_
                                            _g301197301206_)
                                     (let ((__tmp306519
                                            (let ((__tmp306523
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp306520
                                                   (let ((__tmp306521
                                                          (let ((__tmp306522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g301198301209_ _g301199301212_)
                           (let ()
                             (declare (not safe))
                             (cons _g301198301209_ _g301199301212_)))))
                    (declare (not safe))
                    (foldr1 __tmp306522 '() _g301195301201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g301196301204_
                                                           __tmp306521))))
                                              (declare (not safe))
                                              (cons __tmp306523 __tmp306520))))
                                       (declare (not safe))
                                       (cons __tmp306519 _g301197301206_)))))
                              (declare (not safe))
                              (foldr2 __tmp306518 '() _L301178_ _L301180_)))))
                     (declare (not safe))
                     (cons __tmp306524 __tmp306517)))
                 _arity301068301172_
                 _prim301069301175_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop301062301110_
                                         _target301059301104_
                                         '()
                                         '()))
                                      (_g301052301087_ _g301053301091_)))))
                            (_g301052301087_ _g301053301091_))))
                    (_g301052301087_ _g301053301091_)))))
        (_g301051301215_ _$stx301048_)))))
